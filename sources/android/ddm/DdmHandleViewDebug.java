package android.ddm;

import android.util.Log;
import android.view.View;
import android.view.ViewDebug;
import android.view.WindowManagerGlobal;
import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import org.apache.harmony.dalvik.ddmc.Chunk;
import org.apache.harmony.dalvik.ddmc.ChunkHandler;
import org.apache.harmony.dalvik.ddmc.DdmServer;

/* loaded from: /home/user/work/dex/classes.dex */
public class DdmHandleViewDebug extends ChunkHandler {
    private static final int ERR_EXCEPTION = -3;
    private static final int ERR_INVALID_OP = -1;
    private static final int ERR_INVALID_PARAM = -2;
    private static final String TAG = "DdmViewDebug";
    private static final int VUOP_CAPTURE_VIEW = 1;
    private static final int VUOP_DUMP_DISPLAYLIST = 2;
    private static final int VUOP_INVOKE_VIEW_METHOD = 4;
    private static final int VUOP_PROFILE_VIEW = 3;
    private static final int VUOP_SET_LAYOUT_PARAMETER = 5;
    private static final int VURT_CAPTURE_LAYERS = 2;
    private static final int VURT_DUMP_HIERARCHY = 1;
    private static final int VURT_DUMP_THEME = 3;
    private static final int CHUNK_VULW = type("VULW");
    private static final int CHUNK_VURT = type("VURT");
    private static final int CHUNK_VUOP = type("VUOP");
    private static final DdmHandleViewDebug sInstance = new DdmHandleViewDebug();

    public void connected() {
    }

    public void disconnected() {
    }

    private DdmHandleViewDebug() {
    }

    public static void register() {
        DdmServer.registerHandler(CHUNK_VULW, sInstance);
        DdmServer.registerHandler(CHUNK_VURT, sInstance);
        DdmServer.registerHandler(CHUNK_VUOP, sInstance);
    }

    public Chunk handleChunk(Chunk chunk) {
        int i = chunk.type;
        if (i == CHUNK_VULW) {
            return listWindows();
        }
        ByteBuffer wrapChunk = wrapChunk(chunk);
        int i2 = wrapChunk.getInt();
        View rootView = getRootView(wrapChunk);
        if (rootView == null) {
            return createFailChunk(-2, "Invalid View Root");
        }
        if (i == CHUNK_VURT) {
            if (i2 == 1) {
                return dumpHierarchy(rootView, wrapChunk);
            }
            if (i2 == 2) {
                return captureLayers(rootView);
            }
            if (i2 == 3) {
                return dumpTheme(rootView);
            }
            return createFailChunk(-1, "Unknown view root operation: " + i2);
        }
        View targetView = getTargetView(rootView, wrapChunk);
        if (targetView == null) {
            return createFailChunk(-2, "Invalid target view");
        }
        if (i == CHUNK_VUOP) {
            switch (i2) {
                case 1:
                    return captureView(rootView, targetView);
                case 2:
                    return dumpDisplayLists(rootView, targetView);
                case 3:
                    return profileView(rootView, targetView);
                case 4:
                    return invokeViewMethod(rootView, targetView, wrapChunk);
                case 5:
                    return setLayoutParameter(rootView, targetView, wrapChunk);
                default:
                    return createFailChunk(-1, "Unknown view operation: " + i2);
            }
        }
        throw new RuntimeException("Unknown packet " + ChunkHandler.name(i));
    }

    private Chunk listWindows() {
        String[] viewRootNames = WindowManagerGlobal.getInstance().getViewRootNames();
        int i = 4;
        for (String str : viewRootNames) {
            i = i + 4 + (str.length() * 2);
        }
        ByteBuffer allocate = ByteBuffer.allocate(i);
        allocate.order(ChunkHandler.CHUNK_ORDER);
        allocate.putInt(viewRootNames.length);
        for (String str2 : viewRootNames) {
            allocate.putInt(str2.length());
            putString(allocate, str2);
        }
        return new Chunk(CHUNK_VULW, allocate);
    }

    private View getRootView(ByteBuffer byteBuffer) {
        try {
            return WindowManagerGlobal.getInstance().getRootView(getString(byteBuffer, byteBuffer.getInt()));
        } catch (BufferUnderflowException unused) {
            return null;
        }
    }

    private View getTargetView(View view, ByteBuffer byteBuffer) {
        try {
            return ViewDebug.findView(view, getString(byteBuffer, byteBuffer.getInt()));
        } catch (BufferUnderflowException unused) {
            return null;
        }
    }

    private Chunk dumpHierarchy(View view, ByteBuffer byteBuffer) {
        int i = 1;
        boolean z = byteBuffer.getInt() > 0;
        boolean z2 = byteBuffer.getInt() > 0;
        boolean z3 = byteBuffer.hasRemaining() && byteBuffer.getInt() > 0;
        long currentTimeMillis = System.currentTimeMillis();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(2097152);
        try {
            if (z3) {
                ViewDebug.dumpv2(view, byteArrayOutputStream);
            } else {
                ViewDebug.dump(view, z, z2, byteArrayOutputStream);
            }
            Log.d(TAG, "Time to obtain view hierarchy (ms): " + (System.currentTimeMillis() - currentTimeMillis));
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            int i2 = CHUNK_VURT;
            i = byteArray.length;
            return new Chunk(i2, byteArray, 0, i);
        } catch (IOException | InterruptedException e) {
            return createFailChunk(i, "Unexpected error while obtaining view hierarchy: " + e.getMessage());
        }
    }

    private Chunk captureLayers(View view) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(1024);
        DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
        try {
            try {
                ViewDebug.captureLayers(view, dataOutputStream);
                try {
                    dataOutputStream.close();
                } catch (IOException unused) {
                }
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                return new Chunk(CHUNK_VURT, byteArray, 0, byteArray.length);
            } catch (Throwable th) {
                try {
                    dataOutputStream.close();
                } catch (IOException unused2) {
                }
                throw th;
            }
        } catch (IOException e) {
            Chunk createFailChunk = createFailChunk(1, "Unexpected error while obtaining view hierarchy: " + e.getMessage());
            try {
                dataOutputStream.close();
            } catch (IOException unused3) {
            }
            return createFailChunk;
        }
    }

    private Chunk dumpTheme(View view) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(1024);
        try {
            ViewDebug.dumpTheme(view, byteArrayOutputStream);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            return new Chunk(CHUNK_VURT, byteArray, 0, byteArray.length);
        } catch (IOException e) {
            return createFailChunk(1, "Unexpected error while dumping the theme: " + e.getMessage());
        }
    }

    private Chunk captureView(View view, View view2) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(1024);
        try {
            ViewDebug.capture(view, byteArrayOutputStream, view2);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            return new Chunk(CHUNK_VUOP, byteArray, 0, byteArray.length);
        } catch (IOException e) {
            return createFailChunk(1, "Unexpected error while capturing view: " + e.getMessage());
        }
    }

    private Chunk dumpDisplayLists(final View view, final View view2) {
        view.post(new Runnable() { // from class: android.ddm.DdmHandleViewDebug.1
            @Override // java.lang.Runnable
            public void run() {
                ViewDebug.outputDisplayList(view, view2);
            }
        });
        return null;
    }

    private Chunk invokeViewMethod(View view, View view2, ByteBuffer byteBuffer) {
        Class<?>[] clsArr;
        Object[] objArr;
        String string = getString(byteBuffer, byteBuffer.getInt());
        if (!byteBuffer.hasRemaining()) {
            clsArr = new Class[0];
            objArr = new Object[0];
        } else {
            int i = byteBuffer.getInt();
            Class<?>[] clsArr2 = new Class[i];
            Object[] objArr2 = new Object[i];
            for (int i2 = 0; i2 < i; i2++) {
                char c = byteBuffer.getChar();
                if (c == 'F') {
                    clsArr2[i2] = Float.TYPE;
                    objArr2[i2] = Float.valueOf(byteBuffer.getFloat());
                } else if (c == 'S') {
                    clsArr2[i2] = Short.TYPE;
                    objArr2[i2] = Short.valueOf(byteBuffer.getShort());
                } else if (c == 'Z') {
                    clsArr2[i2] = Boolean.TYPE;
                    objArr2[i2] = Boolean.valueOf(byteBuffer.get() != 0);
                } else {
                    switch (c) {
                        case 'B':
                            clsArr2[i2] = Byte.TYPE;
                            objArr2[i2] = Byte.valueOf(byteBuffer.get());
                            break;
                        case 'C':
                            clsArr2[i2] = Character.TYPE;
                            objArr2[i2] = Character.valueOf(byteBuffer.getChar());
                            break;
                        case 'D':
                            clsArr2[i2] = Double.TYPE;
                            objArr2[i2] = Double.valueOf(byteBuffer.getDouble());
                            break;
                        default:
                            switch (c) {
                                case 'I':
                                    clsArr2[i2] = Integer.TYPE;
                                    objArr2[i2] = Integer.valueOf(byteBuffer.getInt());
                                    break;
                                case 'J':
                                    clsArr2[i2] = Long.TYPE;
                                    objArr2[i2] = Long.valueOf(byteBuffer.getLong());
                                    break;
                                default:
                                    Log.e(TAG, "arg " + i2 + ", unrecognized type: " + c);
                                    return createFailChunk(-2, "Unsupported parameter type (" + c + ") to invoke view method.");
                            }
                    }
                }
            }
            clsArr = clsArr2;
            objArr = objArr2;
        }
        try {
            try {
                ViewDebug.invokeViewMethod(view2, view2.getClass().getMethod(string, clsArr), objArr);
                return null;
            } catch (Exception e) {
                Log.e(TAG, "Exception while invoking method: " + e.getCause().getMessage());
                String message = e.getCause().getMessage();
                if (message == null) {
                    message = e.getCause().toString();
                }
                return createFailChunk(-3, message);
            }
        } catch (NoSuchMethodException e2) {
            Log.e(TAG, "No such method: " + e2.getMessage());
            return createFailChunk(-2, "No such method: " + e2.getMessage());
        }
    }

    private Chunk setLayoutParameter(View view, View view2, ByteBuffer byteBuffer) {
        String string = getString(byteBuffer, byteBuffer.getInt());
        try {
            ViewDebug.setLayoutParameter(view2, string, byteBuffer.getInt());
            return null;
        } catch (Exception e) {
            Log.e(TAG, "Exception setting layout parameter: " + e);
            return createFailChunk(-3, "Error accessing field " + string + ":" + e.getMessage());
        }
    }

    private Chunk profileView(View view, View view2) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(32768);
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(byteArrayOutputStream), 32768);
        try {
            try {
                ViewDebug.profileViewAndChildren(view2, bufferedWriter);
                try {
                    bufferedWriter.close();
                } catch (IOException unused) {
                }
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                return new Chunk(CHUNK_VUOP, byteArray, 0, byteArray.length);
            } catch (IOException e) {
                Chunk createFailChunk = createFailChunk(1, "Unexpected error while profiling view: " + e.getMessage());
                try {
                    bufferedWriter.close();
                } catch (IOException unused2) {
                }
                return createFailChunk;
            }
        } catch (Throwable th) {
            try {
                bufferedWriter.close();
            } catch (IOException unused3) {
            }
            throw th;
        }
    }
}
