package android.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Picture;
import android.graphics.Rect;
import android.os.Debug;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.provider.SettingsStringUtil;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.textclassifier.TextClassifier;
import java.io.BufferedOutputStream;
import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: /home/user/work/dex/classes2.dex */
public class ViewDebug {
    private static final int CAPTURE_TIMEOUT = 4000;
    public static final boolean DEBUG_DRAG = false;
    public static final boolean DEBUG_POSITIONING = false;
    private static final String REMOTE_COMMAND_CAPTURE = "CAPTURE";
    private static final String REMOTE_COMMAND_CAPTURE_LAYERS = "CAPTURE_LAYERS";
    private static final String REMOTE_COMMAND_DUMP = "DUMP";
    private static final String REMOTE_COMMAND_DUMP_THEME = "DUMP_THEME";
    private static final String REMOTE_COMMAND_INVALIDATE = "INVALIDATE";
    private static final String REMOTE_COMMAND_OUTPUT_DISPLAYLIST = "OUTPUT_DISPLAYLIST";
    private static final String REMOTE_COMMAND_REQUEST_LAYOUT = "REQUEST_LAYOUT";
    private static final String REMOTE_PROFILE = "PROFILE";

    @Deprecated
    public static final boolean TRACE_HIERARCHY = false;

    @Deprecated
    public static final boolean TRACE_RECYCLER = false;
    private static HashMap<Class<?>, Field[]> mCapturedViewFieldsForClasses;
    private static HashMap<Class<?>, Method[]> mCapturedViewMethodsForClasses;
    private static HashMap<AccessibleObject, ExportedProperty> sAnnotations;
    private static HashMap<Class<?>, Field[]> sFieldsForClasses;
    private static HashMap<Class<?>, Method[]> sMethodsForClasses;

    /* loaded from: /home/user/work/dex/classes2.dex */
    public interface CanvasProvider {
        Bitmap createBitmap();

        Canvas getCanvas(View view, int i, int i2);
    }

    @Target({ElementType.FIELD, ElementType.METHOD})
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: /home/user/work/dex/classes2.dex */
    public @interface CapturedViewProperty {
        boolean retrieveReturn() default false;
    }

    @Target({ElementType.FIELD, ElementType.METHOD})
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: /home/user/work/dex/classes2.dex */
    public @interface ExportedProperty {
        String category() default "";

        boolean deepExport() default false;

        FlagToString[] flagMapping() default {};

        boolean formatToHexString() default false;

        boolean hasAdjacentMapping() default false;

        IntToString[] indexMapping() default {};

        IntToString[] mapping() default {};

        String prefix() default "";

        boolean resolveId() default false;
    }

    @Target({ElementType.TYPE})
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: /home/user/work/dex/classes2.dex */
    public @interface FlagToString {
        int equals();

        int mask();

        String name();

        boolean outputIf() default true;
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    public interface HierarchyHandler {
        void dumpViewHierarchyWithProperties(BufferedWriter bufferedWriter, int i);

        View findHierarchyView(String str, int i);
    }

    @Deprecated
    /* loaded from: /home/user/work/dex/classes2.dex */
    public enum HierarchyTraceType {
        INVALIDATE,
        INVALIDATE_CHILD,
        INVALIDATE_CHILD_IN_PARENT,
        REQUEST_LAYOUT,
        ON_LAYOUT,
        ON_MEASURE,
        DRAW,
        BUILD_CACHE
    }

    @Target({ElementType.TYPE})
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: /home/user/work/dex/classes2.dex */
    public @interface IntToString {
        int from();

        String to();
    }

    @Deprecated
    /* loaded from: /home/user/work/dex/classes2.dex */
    public enum RecyclerTraceType {
        NEW_VIEW,
        BIND_VIEW,
        RECYCLE_FROM_ACTIVE_HEAP,
        RECYCLE_FROM_SCRAP_HEAP,
        MOVE_TO_SCRAP_HEAP,
        MOVE_FROM_ACTIVE_TO_SCRAP_HEAP
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public interface ViewOperation {
        default void pre() {
        }

        void run();
    }

    @Deprecated
    public static void startHierarchyTracing(String str, View view) {
    }

    @Deprecated
    public static void startRecyclerTracing(String str, View view) {
    }

    @Deprecated
    public static void stopHierarchyTracing() {
    }

    @Deprecated
    public static void stopRecyclerTracing() {
    }

    @Deprecated
    public static void trace(View view, HierarchyTraceType hierarchyTraceType) {
    }

    @Deprecated
    public static void trace(View view, RecyclerTraceType recyclerTraceType, int... iArr) {
    }

    public static long getViewInstanceCount() {
        return Debug.countInstancesOfClass(View.class);
    }

    public static long getViewRootImplCount() {
        return Debug.countInstancesOfClass(ViewRootImpl.class);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void dispatchCommand(View view, String str, String str2, OutputStream outputStream) throws IOException {
        View rootView = view.getRootView();
        if (REMOTE_COMMAND_DUMP.equalsIgnoreCase(str)) {
            dump(rootView, false, true, outputStream);
            return;
        }
        if (REMOTE_COMMAND_DUMP_THEME.equalsIgnoreCase(str)) {
            dumpTheme(rootView, outputStream);
            return;
        }
        if (REMOTE_COMMAND_CAPTURE_LAYERS.equalsIgnoreCase(str)) {
            captureLayers(rootView, new DataOutputStream(outputStream));
            return;
        }
        String[] split = str2.split(" ");
        if (REMOTE_COMMAND_CAPTURE.equalsIgnoreCase(str)) {
            capture(rootView, outputStream, split[0]);
            return;
        }
        if (REMOTE_COMMAND_OUTPUT_DISPLAYLIST.equalsIgnoreCase(str)) {
            outputDisplayList(rootView, split[0]);
            return;
        }
        if (REMOTE_COMMAND_INVALIDATE.equalsIgnoreCase(str)) {
            invalidate(rootView, split[0]);
        } else if (REMOTE_COMMAND_REQUEST_LAYOUT.equalsIgnoreCase(str)) {
            requestLayout(rootView, split[0]);
        } else if (REMOTE_PROFILE.equalsIgnoreCase(str)) {
            profile(rootView, outputStream, split[0]);
        }
    }

    public static View findView(View view, String str) {
        if (str.indexOf(64) != -1) {
            String[] split = str.split("@");
            String str2 = split[0];
            int parseLong = (int) Long.parseLong(split[1], 16);
            View rootView = view.getRootView();
            if (rootView instanceof ViewGroup) {
                return findView((ViewGroup) rootView, str2, parseLong);
            }
            return null;
        }
        return view.getRootView().findViewById(view.getResources().getIdentifier(str, null, null));
    }

    private static void invalidate(View view, String str) {
        View findView = findView(view, str);
        if (findView != null) {
            findView.postInvalidate();
        }
    }

    private static void requestLayout(View view, String str) {
        final View findView = findView(view, str);
        if (findView != null) {
            view.post(new Runnable() { // from class: android.view.ViewDebug.1
                @Override // java.lang.Runnable
                public void run() {
                    View.this.requestLayout();
                }
            });
        }
    }

    private static void profile(View view, OutputStream outputStream, String str) throws IOException {
        BufferedWriter bufferedWriter;
        View findView = findView(view, str);
        BufferedWriter bufferedWriter2 = null;
        try {
            try {
                bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream), 32768);
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception e) {
            e = e;
        }
        try {
            if (findView != null) {
                profileViewAndChildren(findView, bufferedWriter);
            } else {
                bufferedWriter.write("-1 -1 -1");
                bufferedWriter.newLine();
            }
            bufferedWriter.write("DONE.");
            bufferedWriter.newLine();
            bufferedWriter.close();
        } catch (Exception e2) {
            e = e2;
            bufferedWriter2 = bufferedWriter;
            Log.w("View", "Problem profiling the view:", e);
            if (bufferedWriter2 != null) {
                bufferedWriter2.close();
            }
        } catch (Throwable th2) {
            th = th2;
            bufferedWriter2 = bufferedWriter;
            if (bufferedWriter2 != null) {
                bufferedWriter2.close();
            }
            throw th;
        }
    }

    public static void profileViewAndChildren(View view, BufferedWriter bufferedWriter) throws IOException {
        RenderNode create = RenderNode.create("ViewDebug", null);
        profileViewAndChildren(view, create, bufferedWriter, true);
        create.destroy();
    }

    private static void profileViewAndChildren(View view, RenderNode renderNode, BufferedWriter bufferedWriter, boolean z) throws IOException {
        long profileViewMeasure = (z || (view.mPrivateFlags & 2048) != 0) ? profileViewMeasure(view) : 0L;
        long profileViewLayout = (z || (view.mPrivateFlags & 8192) != 0) ? profileViewLayout(view) : 0L;
        long profileViewDraw = (!z && view.willNotDraw() && (view.mPrivateFlags & 32) == 0) ? 0L : profileViewDraw(view, renderNode);
        bufferedWriter.write(String.valueOf(profileViewMeasure));
        bufferedWriter.write(32);
        bufferedWriter.write(String.valueOf(profileViewLayout));
        bufferedWriter.write(32);
        bufferedWriter.write(String.valueOf(profileViewDraw));
        bufferedWriter.newLine();
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                profileViewAndChildren(viewGroup.getChildAt(i), renderNode, bufferedWriter, false);
            }
        }
    }

    private static long profileViewMeasure(final View view) {
        return profileViewOperation(view, new ViewOperation() { // from class: android.view.ViewDebug.2
            @Override // android.view.ViewDebug.ViewOperation
            public void pre() {
                forceLayout(View.this);
            }

            private void forceLayout(View view2) {
                view2.forceLayout();
                if (view2 instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) view2;
                    int childCount = viewGroup.getChildCount();
                    for (int i = 0; i < childCount; i++) {
                        forceLayout(viewGroup.getChildAt(i));
                    }
                }
            }

            @Override // android.view.ViewDebug.ViewOperation
            public void run() {
                View.this.measure(View.this.mOldWidthMeasureSpec, View.this.mOldHeightMeasureSpec);
            }
        });
    }

    private static long profileViewLayout(final View view) {
        return profileViewOperation(view, new ViewOperation() { // from class: android.view.-$$Lambda$ViewDebug$inOytI2zZEgp1DJv8Cu4GjQVNiE
            @Override // android.view.ViewDebug.ViewOperation
            public final void run() {
                r0.layout(r0.mLeft, r0.mTop, r0.mRight, View.this.mBottom);
            }
        });
    }

    private static long profileViewDraw(final View view, RenderNode renderNode) {
        DisplayMetrics displayMetrics = view.getResources().getDisplayMetrics();
        if (displayMetrics == null) {
            return 0L;
        }
        if (view.isHardwareAccelerated()) {
            final DisplayListCanvas start = renderNode.start(displayMetrics.widthPixels, displayMetrics.heightPixels);
            try {
                return profileViewOperation(view, new ViewOperation() { // from class: android.view.-$$Lambda$ViewDebug$bI5XH5th0NpBuGdZohDPLEpO2Ek
                    @Override // android.view.ViewDebug.ViewOperation
                    public final void run() {
                        View.this.draw(start);
                    }
                });
            } finally {
                renderNode.end(start);
            }
        }
        Bitmap createBitmap = Bitmap.createBitmap(displayMetrics, displayMetrics.widthPixels, displayMetrics.heightPixels, Bitmap.Config.RGB_565);
        final Canvas canvas = new Canvas(createBitmap);
        try {
            return profileViewOperation(view, new ViewOperation() { // from class: android.view.-$$Lambda$ViewDebug$w986pBwzwNi77yEgLa3IWusjPNw
                @Override // android.view.ViewDebug.ViewOperation
                public final void run() {
                    View.this.draw(canvas);
                }
            });
        } finally {
            canvas.setBitmap(null);
            createBitmap.recycle();
        }
    }

    private static long profileViewOperation(View view, final ViewOperation viewOperation) {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final long[] jArr = new long[1];
        view.post(new Runnable() { // from class: android.view.-$$Lambda$ViewDebug$5rTN0pemwbr3I3IL2E-xDBeDTDg
            @Override // java.lang.Runnable
            public final void run() {
                ViewDebug.lambda$profileViewOperation$3(ViewDebug.ViewOperation.this, jArr, countDownLatch);
            }
        });
        try {
            if (!countDownLatch.await(4000L, TimeUnit.MILLISECONDS)) {
                Log.w("View", "Could not complete the profiling of the view " + view);
                return -1L;
            }
            return jArr[0];
        } catch (InterruptedException unused) {
            Log.w("View", "Could not complete the profiling of the view " + view);
            Thread.currentThread().interrupt();
            return -1L;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$profileViewOperation$3(ViewOperation viewOperation, long[] jArr, CountDownLatch countDownLatch) {
        try {
            viewOperation.pre();
            long threadCpuTimeNanos = Debug.threadCpuTimeNanos();
            viewOperation.run();
            jArr[0] = Debug.threadCpuTimeNanos() - threadCpuTimeNanos;
        } finally {
            countDownLatch.countDown();
        }
    }

    public static void captureLayers(View view, DataOutputStream dataOutputStream) throws IOException {
        try {
            Rect rect = new Rect();
            try {
                view.mAttachInfo.mSession.getDisplayFrame(view.mAttachInfo.mWindow, rect);
            } catch (RemoteException unused) {
            }
            dataOutputStream.writeInt(rect.width());
            dataOutputStream.writeInt(rect.height());
            captureViewLayer(view, dataOutputStream, true);
            dataOutputStream.write(2);
        } finally {
            dataOutputStream.close();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r8v3 */
    private static void captureViewLayer(View view, DataOutputStream dataOutputStream, boolean z) throws IOException {
        ?? r8 = (view.getVisibility() == 0 && z) ? 1 : 0;
        if ((view.mPrivateFlags & 128) != 128) {
            int id = view.getId();
            String simpleName = view.getClass().getSimpleName();
            if (id != -1) {
                simpleName = resolveId(view.getContext(), id).toString();
            }
            dataOutputStream.write(1);
            dataOutputStream.writeUTF(simpleName);
            dataOutputStream.writeByte(r8);
            int[] iArr = new int[2];
            view.getLocationInWindow(iArr);
            dataOutputStream.writeInt(iArr[0]);
            dataOutputStream.writeInt(iArr[1]);
            dataOutputStream.flush();
            Bitmap performViewCapture = performViewCapture(view, true);
            if (performViewCapture != null) {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(performViewCapture.getWidth() * performViewCapture.getHeight() * 2);
                performViewCapture.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
                dataOutputStream.writeInt(byteArrayOutputStream.size());
                byteArrayOutputStream.writeTo(dataOutputStream);
            }
            dataOutputStream.flush();
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                captureViewLayer(viewGroup.getChildAt(i), dataOutputStream, r8);
            }
        }
        if (view.mOverlay != null) {
            captureViewLayer(view.getOverlay().mOverlayViewGroup, dataOutputStream, r8);
        }
    }

    private static void outputDisplayList(View view, String str) throws IOException {
        View findView = findView(view, str);
        findView.getViewRootImpl().outputDisplayList(findView);
    }

    public static void outputDisplayList(View view, View view2) {
        view.getViewRootImpl().outputDisplayList(view2);
    }

    private static void capture(View view, OutputStream outputStream, String str) throws IOException {
        capture(view, outputStream, findView(view, str));
    }

    public static void capture(View view, OutputStream outputStream, View view2) throws IOException {
        BufferedOutputStream bufferedOutputStream;
        Throwable th;
        Bitmap performViewCapture = performViewCapture(view2, false);
        if (performViewCapture == null) {
            Log.w("View", "Failed to create capture bitmap!");
            performViewCapture = Bitmap.createBitmap(view.getResources().getDisplayMetrics(), 1, 1, Bitmap.Config.ARGB_8888);
        }
        try {
            bufferedOutputStream = new BufferedOutputStream(outputStream, 32768);
            try {
                performViewCapture.compress(Bitmap.CompressFormat.PNG, 100, bufferedOutputStream);
                bufferedOutputStream.flush();
                bufferedOutputStream.close();
                performViewCapture.recycle();
            } catch (Throwable th2) {
                th = th2;
                if (bufferedOutputStream != null) {
                    bufferedOutputStream.close();
                }
                performViewCapture.recycle();
                throw th;
            }
        } catch (Throwable th3) {
            bufferedOutputStream = null;
            th = th3;
        }
    }

    private static Bitmap performViewCapture(final View view, final boolean z) {
        if (view == null) {
            return null;
        }
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final Bitmap[] bitmapArr = new Bitmap[1];
        view.post(new Runnable() { // from class: android.view.-$$Lambda$ViewDebug$SYbJuwHeGrHQLha0YsHp4VI9JLg
            @Override // java.lang.Runnable
            public final void run() {
                ViewDebug.lambda$performViewCapture$4(View.this, bitmapArr, z, countDownLatch);
            }
        });
        try {
            countDownLatch.await(4000L, TimeUnit.MILLISECONDS);
            return bitmapArr[0];
        } catch (InterruptedException unused) {
            Log.w("View", "Could not complete the capture of the view " + view);
            Thread.currentThread().interrupt();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$performViewCapture$4(View view, Bitmap[] bitmapArr, boolean z, CountDownLatch countDownLatch) {
        try {
            try {
                bitmapArr[0] = view.createSnapshot(view.isHardwareAccelerated() ? new HardwareCanvasProvider() : new SoftwareCanvasProvider(), z);
            } catch (OutOfMemoryError unused) {
                Log.w("View", "Out of memory for bitmap");
            }
        } finally {
            countDownLatch.countDown();
        }
    }

    @Deprecated
    public static void dump(View view, boolean z, boolean z2, OutputStream outputStream) throws IOException {
        BufferedWriter bufferedWriter;
        BufferedWriter bufferedWriter2 = null;
        try {
            try {
                bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, "utf-8"), 32768);
            } catch (Exception e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            View rootView = view.getRootView();
            if (rootView instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) rootView;
                dumpViewHierarchy(viewGroup.getContext(), viewGroup, bufferedWriter, 0, z, z2);
            }
            bufferedWriter.write("DONE.");
            bufferedWriter.newLine();
            bufferedWriter.close();
        } catch (Exception e2) {
            e = e2;
            bufferedWriter2 = bufferedWriter;
            Log.w("View", "Problem dumping the view:", e);
            if (bufferedWriter2 != null) {
                bufferedWriter2.close();
            }
        } catch (Throwable th2) {
            th = th2;
            bufferedWriter2 = bufferedWriter;
            if (bufferedWriter2 != null) {
                bufferedWriter2.close();
            }
            throw th;
        }
    }

    public static void dumpv2(final View view, ByteArrayOutputStream byteArrayOutputStream) throws InterruptedException {
        final ViewHierarchyEncoder viewHierarchyEncoder = new ViewHierarchyEncoder(byteArrayOutputStream);
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        view.post(new Runnable() { // from class: android.view.ViewDebug.3
            @Override // java.lang.Runnable
            public void run() {
                ViewHierarchyEncoder.this.addProperty("window:left", view.mAttachInfo.mWindowLeft);
                ViewHierarchyEncoder.this.addProperty("window:top", view.mAttachInfo.mWindowTop);
                view.encode(ViewHierarchyEncoder.this);
                countDownLatch.countDown();
            }
        });
        countDownLatch.await(2L, TimeUnit.SECONDS);
        viewHierarchyEncoder.endStream();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5 */
    public static void dumpTheme(View view, OutputStream outputStream) throws IOException {
        BufferedWriter bufferedWriter;
        BufferedWriter bufferedWriter2 = null;
        int i = 0;
        BufferedWriter bufferedWriter3 = null;
        try {
            try {
                bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, "utf-8"), 32768);
            } catch (Throwable th) {
                th = th;
                bufferedWriter = bufferedWriter2;
            }
        } catch (Exception e) {
            e = e;
        }
        try {
            String[] styleAttributesDump = getStyleAttributesDump(view.getContext().getResources(), view.getContext().getTheme());
            if (styleAttributesDump != null) {
                int i2 = 0;
                while (true) {
                    i = styleAttributesDump.length;
                    if (i2 >= i) {
                        break;
                    }
                    if (styleAttributesDump[i2] != null) {
                        bufferedWriter.write(styleAttributesDump[i2] + "\n");
                        bufferedWriter.write(styleAttributesDump[i2 + 1] + "\n");
                    }
                    i2 += 2;
                }
            }
            bufferedWriter.write("DONE.");
            bufferedWriter.newLine();
            bufferedWriter.close();
            bufferedWriter2 = i;
        } catch (Exception e2) {
            e = e2;
            bufferedWriter3 = bufferedWriter;
            Log.w("View", "Problem dumping View Theme:", e);
            bufferedWriter2 = bufferedWriter3;
            if (bufferedWriter3 != null) {
                bufferedWriter3.close();
                bufferedWriter2 = bufferedWriter3;
            }
        } catch (Throwable th2) {
            th = th2;
            if (bufferedWriter != null) {
                bufferedWriter.close();
            }
            throw th;
        }
    }

    private static String[] getStyleAttributesDump(Resources resources, Resources.Theme theme) {
        TypedValue typedValue = new TypedValue();
        int[] allAttributes = theme.getAllAttributes();
        String[] strArr = new String[allAttributes.length * 2];
        int i = 0;
        for (int i2 : allAttributes) {
            try {
                strArr[i] = resources.getResourceName(i2);
                strArr[i + 1] = theme.resolveAttribute(i2, typedValue, true) ? typedValue.coerceToString().toString() : "null";
                i += 2;
                if (typedValue.type == 1) {
                    strArr[i - 1] = resources.getResourceName(typedValue.resourceId);
                }
            } catch (Resources.NotFoundException unused) {
            }
        }
        return strArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static View findView(ViewGroup viewGroup, String str, int i) {
        View findHierarchyView;
        View findView;
        if (isRequestedView(viewGroup, str, i)) {
            return viewGroup;
        }
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = viewGroup.getChildAt(i2);
            if (childAt instanceof ViewGroup) {
                View findView2 = findView((ViewGroup) childAt, str, i);
                if (findView2 != null) {
                    return findView2;
                }
            } else if (isRequestedView(childAt, str, i)) {
                return childAt;
            }
            if (childAt.mOverlay != null && (findView = findView(childAt.mOverlay.mOverlayViewGroup, str, i)) != null) {
                return findView;
            }
            if ((childAt instanceof HierarchyHandler) && (findHierarchyView = ((HierarchyHandler) childAt).findHierarchyView(str, i)) != null) {
                return findHierarchyView;
            }
        }
        return null;
    }

    private static boolean isRequestedView(View view, String str, int i) {
        if (view.hashCode() != i) {
            return false;
        }
        String name = view.getClass().getName();
        if (str.equals("ViewOverlay")) {
            return name.equals("android.view.ViewOverlay$OverlayViewGroup");
        }
        return str.equals(name);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static void dumpViewHierarchy(Context context, ViewGroup viewGroup, BufferedWriter bufferedWriter, int i, boolean z, boolean z2) {
        if (dumpView(context, viewGroup, bufferedWriter, i, z2) && !z) {
            int childCount = viewGroup.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = viewGroup.getChildAt(i2);
                if (childAt instanceof ViewGroup) {
                    dumpViewHierarchy(context, (ViewGroup) childAt, bufferedWriter, i + 1, z, z2);
                } else {
                    dumpView(context, childAt, bufferedWriter, i + 1, z2);
                }
                if (childAt.mOverlay != null) {
                    dumpViewHierarchy(context, childAt.getOverlay().mOverlayViewGroup, bufferedWriter, i + 2, z, z2);
                }
            }
            if (viewGroup instanceof HierarchyHandler) {
                ((HierarchyHandler) viewGroup).dumpViewHierarchyWithProperties(bufferedWriter, i + 1);
            }
        }
    }

    private static boolean dumpView(Context context, View view, BufferedWriter bufferedWriter, int i, boolean z) {
        for (int i2 = 0; i2 < i; i2++) {
            try {
                bufferedWriter.write(32);
            } catch (IOException unused) {
                Log.w("View", "Error while dumping hierarchy tree");
                return false;
            }
        }
        String name = view.getClass().getName();
        if (name.equals("android.view.ViewOverlay$OverlayViewGroup")) {
            name = "ViewOverlay";
        }
        bufferedWriter.write(name);
        bufferedWriter.write(64);
        bufferedWriter.write(Integer.toHexString(view.hashCode()));
        bufferedWriter.write(32);
        if (z) {
            dumpViewProperties(context, view, bufferedWriter);
        }
        bufferedWriter.newLine();
        return true;
    }

    private static Field[] getExportedPropertyFields(Class<?> cls) {
        if (sFieldsForClasses == null) {
            sFieldsForClasses = new HashMap<>();
        }
        if (sAnnotations == null) {
            sAnnotations = new HashMap<>(512);
        }
        HashMap<Class<?>, Field[]> hashMap = sFieldsForClasses;
        Field[] fieldArr = hashMap.get(cls);
        if (fieldArr != null) {
            return fieldArr;
        }
        try {
            Field[] declaredFieldsUnchecked = cls.getDeclaredFieldsUnchecked(false);
            ArrayList arrayList = new ArrayList();
            for (Field field : declaredFieldsUnchecked) {
                if (field.getType() != null && field.isAnnotationPresent(ExportedProperty.class)) {
                    field.setAccessible(true);
                    arrayList.add(field);
                    sAnnotations.put(field, (ExportedProperty) field.getAnnotation(ExportedProperty.class));
                }
            }
            Field[] fieldArr2 = (Field[]) arrayList.toArray(new Field[arrayList.size()]);
            hashMap.put(cls, fieldArr2);
            return fieldArr2;
        } catch (NoClassDefFoundError e) {
            throw new AssertionError(e);
        }
    }

    private static Method[] getExportedPropertyMethods(Class<?> cls) {
        if (sMethodsForClasses == null) {
            sMethodsForClasses = new HashMap<>(100);
        }
        if (sAnnotations == null) {
            sAnnotations = new HashMap<>(512);
        }
        HashMap<Class<?>, Method[]> hashMap = sMethodsForClasses;
        Method[] methodArr = hashMap.get(cls);
        if (methodArr != null) {
            return methodArr;
        }
        Method[] declaredMethodsUnchecked = cls.getDeclaredMethodsUnchecked(false);
        ArrayList arrayList = new ArrayList();
        for (Method method : declaredMethodsUnchecked) {
            try {
                method.getReturnType();
                method.getParameterTypes();
                if (method.getParameterTypes().length == 0 && method.isAnnotationPresent(ExportedProperty.class) && method.getReturnType() != Void.class) {
                    method.setAccessible(true);
                    arrayList.add(method);
                    sAnnotations.put(method, (ExportedProperty) method.getAnnotation(ExportedProperty.class));
                }
            } catch (NoClassDefFoundError unused) {
            }
        }
        Method[] methodArr2 = (Method[]) arrayList.toArray(new Method[arrayList.size()]);
        hashMap.put(cls, methodArr2);
        return methodArr2;
    }

    private static void dumpViewProperties(Context context, Object obj, BufferedWriter bufferedWriter) throws IOException {
        dumpViewProperties(context, obj, bufferedWriter, TextClassifier.TYPE_UNKNOWN);
    }

    private static void dumpViewProperties(Context context, Object obj, BufferedWriter bufferedWriter, String str) throws IOException {
        if (obj == null) {
            bufferedWriter.write(str + "=4,null ");
            return;
        }
        Class<?> cls = obj.getClass();
        do {
            exportFields(context, obj, bufferedWriter, cls, str);
            exportMethods(context, obj, bufferedWriter, cls, str);
            cls = cls.getSuperclass();
        } while (cls != Object.class);
    }

    private static Object callMethodOnAppropriateTheadBlocking(final Method method, Object obj) throws IllegalAccessException, InvocationTargetException, TimeoutException {
        if (!(obj instanceof View)) {
            return method.invoke(obj, (Object[]) null);
        }
        final View view = (View) obj;
        FutureTask futureTask = new FutureTask(new Callable<Object>() { // from class: android.view.ViewDebug.4
            @Override // java.util.concurrent.Callable
            public Object call() throws IllegalAccessException, InvocationTargetException {
                return method.invoke(view, (Object[]) null);
            }
        });
        Handler handler = view.getHandler();
        if (handler == null) {
            handler = new Handler(Looper.getMainLooper());
        }
        handler.post(futureTask);
        while (true) {
            try {
                return futureTask.get(4000L, TimeUnit.MILLISECONDS);
            } catch (InterruptedException unused) {
            } catch (CancellationException e) {
                throw new RuntimeException("Unexpected cancellation exception", e);
            } catch (ExecutionException e2) {
                Throwable cause = e2.getCause();
                if (cause instanceof IllegalAccessException) {
                    throw ((IllegalAccessException) cause);
                }
                if (cause instanceof InvocationTargetException) {
                    throw ((InvocationTargetException) cause);
                }
                throw new RuntimeException("Unexpected exception", cause);
            }
        }
    }

    private static String formatIntToHexString(int i) {
        return "0x" + Integer.toHexString(i).toUpperCase();
    }

    private static void exportMethods(Context context, Object obj, BufferedWriter bufferedWriter, Class<?> cls, String str) throws IOException {
        Object callMethodOnAppropriateTheadBlocking;
        Class<?> returnType;
        ExportedProperty exportedProperty;
        String str2;
        boolean z;
        for (Method method : getExportedPropertyMethods(cls)) {
            try {
                callMethodOnAppropriateTheadBlocking = callMethodOnAppropriateTheadBlocking(method, obj);
                returnType = method.getReturnType();
                exportedProperty = sAnnotations.get(method);
                str2 = exportedProperty.category().length() != 0 ? exportedProperty.category() + SettingsStringUtil.DELIMITER : TextClassifier.TYPE_UNKNOWN;
            } catch (IllegalAccessException | InvocationTargetException | TimeoutException unused) {
            }
            if (returnType == Integer.TYPE) {
                if (exportedProperty.resolveId() && context != null) {
                    callMethodOnAppropriateTheadBlocking = resolveId(context, ((Integer) callMethodOnAppropriateTheadBlocking).intValue());
                } else {
                    FlagToString[] flagMapping = exportedProperty.flagMapping();
                    if (flagMapping.length > 0) {
                        exportUnrolledFlags(bufferedWriter, flagMapping, ((Integer) callMethodOnAppropriateTheadBlocking).intValue(), str2 + str + method.getName() + '_');
                    }
                    IntToString[] mapping = exportedProperty.mapping();
                    if (mapping.length > 0) {
                        int intValue = ((Integer) callMethodOnAppropriateTheadBlocking).intValue();
                        int length = mapping.length;
                        int i = 0;
                        while (true) {
                            if (i >= length) {
                                z = false;
                                break;
                            }
                            IntToString intToString = mapping[i];
                            if (intToString.from() == intValue) {
                                callMethodOnAppropriateTheadBlocking = intToString.to();
                                z = true;
                                break;
                            }
                            i++;
                        }
                        if (!z) {
                            callMethodOnAppropriateTheadBlocking = Integer.valueOf(intValue);
                        }
                    }
                }
            } else {
                if (returnType == int[].class) {
                    exportUnrolledArray(context, bufferedWriter, exportedProperty, (int[]) callMethodOnAppropriateTheadBlocking, str2 + str + method.getName() + '_', "()");
                } else if (returnType == String[].class) {
                    String[] strArr = (String[]) callMethodOnAppropriateTheadBlocking;
                    if (exportedProperty.hasAdjacentMapping() && strArr != null) {
                        for (int i2 = 0; i2 < strArr.length; i2 += 2) {
                            if (strArr[i2] != null) {
                                int i3 = i2 + 1;
                                writeEntry(bufferedWriter, str2 + str, strArr[i2], "()", strArr[i3] == null ? "null" : strArr[i3]);
                            }
                        }
                    }
                } else if (!returnType.isPrimitive() && exportedProperty.deepExport()) {
                    dumpViewProperties(context, callMethodOnAppropriateTheadBlocking, bufferedWriter, str + exportedProperty.prefix());
                }
            }
            writeEntry(bufferedWriter, str2 + str, method.getName(), "()", callMethodOnAppropriateTheadBlocking);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x0187 A[Catch: IllegalAccessException -> 0x01a3, TryCatch #0 {IllegalAccessException -> 0x01a3, blocks: (B:5:0x0012, B:7:0x0028, B:8:0x0040, B:10:0x0046, B:15:0x0050, B:20:0x0082, B:24:0x0091, B:26:0x0094, B:28:0x0098, B:31:0x00b6, B:34:0x00b4, B:33:0x00b9, B:39:0x00bc, B:41:0x00c2, B:43:0x00c8, B:47:0x0187, B:48:0x018b, B:50:0x00e7, B:53:0x00ef, B:54:0x00f9, B:56:0x0100, B:57:0x0120, B:59:0x0127, B:61:0x012f, B:65:0x0139, B:67:0x0146, B:68:0x014c, B:70:0x0152, B:72:0x015a, B:73:0x0165, B:75:0x0169, B:63:0x013e), top: B:4:0x0012 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void exportFields(Context context, Object obj, BufferedWriter bufferedWriter, Class<?> cls, String str) throws IOException {
        Class<?> type;
        ExportedProperty exportedProperty;
        String str2;
        Object obj2;
        for (Field field : getExportedPropertyFields(cls)) {
            try {
                type = field.getType();
                exportedProperty = sAnnotations.get(field);
                str2 = exportedProperty.category().length() != 0 ? exportedProperty.category() + SettingsStringUtil.DELIMITER : TextClassifier.TYPE_UNKNOWN;
            } catch (IllegalAccessException unused) {
            }
            if (type != Integer.TYPE && type != Byte.TYPE) {
                if (type == int[].class) {
                    exportUnrolledArray(context, bufferedWriter, exportedProperty, (int[]) field.get(obj), str2 + str + field.getName() + '_', TextClassifier.TYPE_UNKNOWN);
                } else if (type == String[].class) {
                    String[] strArr = (String[]) field.get(obj);
                    if (exportedProperty.hasAdjacentMapping() && strArr != null) {
                        for (int i = 0; i < strArr.length; i += 2) {
                            if (strArr[i] != null) {
                                int i2 = i + 1;
                                writeEntry(bufferedWriter, str2 + str, strArr[i], TextClassifier.TYPE_UNKNOWN, strArr[i2] == null ? "null" : strArr[i2]);
                            }
                        }
                    }
                } else if (!type.isPrimitive() && exportedProperty.deepExport()) {
                    dumpViewProperties(context, field.get(obj), bufferedWriter, str + exportedProperty.prefix());
                } else {
                    obj2 = null;
                    if (obj2 == null) {
                        obj2 = field.get(obj);
                    }
                    writeEntry(bufferedWriter, str2 + str, field.getName(), TextClassifier.TYPE_UNKNOWN, obj2);
                }
            }
            if (exportedProperty.resolveId() && context != null) {
                obj2 = resolveId(context, field.getInt(obj));
            } else {
                FlagToString[] flagMapping = exportedProperty.flagMapping();
                if (flagMapping.length > 0) {
                    exportUnrolledFlags(bufferedWriter, flagMapping, field.getInt(obj), str2 + str + field.getName() + '_');
                }
                IntToString[] mapping = exportedProperty.mapping();
                if (mapping.length > 0) {
                    int i3 = field.getInt(obj);
                    int length = mapping.length;
                    int i4 = 0;
                    while (true) {
                        if (i4 >= length) {
                            obj2 = null;
                            break;
                        }
                        IntToString intToString = mapping[i4];
                        IntToString[] intToStringArr = mapping;
                        if (intToString.from() == i3) {
                            obj2 = intToString.to();
                            break;
                        } else {
                            i4++;
                            mapping = intToStringArr;
                        }
                    }
                    if (obj2 == null) {
                        obj2 = Integer.valueOf(i3);
                    }
                } else {
                    obj2 = null;
                }
                if (exportedProperty.formatToHexString()) {
                    obj2 = field.get(obj);
                    if (type == Integer.TYPE) {
                        obj2 = formatIntToHexString(((Integer) obj2).intValue());
                    } else if (type == Byte.TYPE) {
                        obj2 = "0x" + Byte.toHexString(((Byte) obj2).byteValue(), true);
                    }
                }
            }
            if (obj2 == null) {
            }
            writeEntry(bufferedWriter, str2 + str, field.getName(), TextClassifier.TYPE_UNKNOWN, obj2);
        }
    }

    private static void writeEntry(BufferedWriter bufferedWriter, String str, String str2, String str3, Object obj) throws IOException {
        bufferedWriter.write(str);
        bufferedWriter.write(str2);
        bufferedWriter.write(str3);
        bufferedWriter.write("=");
        writeValue(bufferedWriter, obj);
        bufferedWriter.write(32);
    }

    private static void exportUnrolledFlags(BufferedWriter bufferedWriter, FlagToString[] flagToStringArr, int i, String str) throws IOException {
        for (FlagToString flagToString : flagToStringArr) {
            boolean outputIf = flagToString.outputIf();
            int mask = flagToString.mask() & i;
            boolean z = mask == flagToString.equals();
            if ((z && outputIf) || (!z && !outputIf)) {
                writeEntry(bufferedWriter, str, flagToString.name(), TextClassifier.TYPE_UNKNOWN, formatIntToHexString(mask));
            }
        }
    }

    public static String intToString(Class<?> cls, String str, int i) {
        IntToString[] mapping = getMapping(cls, str);
        if (mapping == null) {
            return Integer.toString(i);
        }
        for (IntToString intToString : mapping) {
            if (intToString.from() == i) {
                return intToString.to();
            }
        }
        return Integer.toString(i);
    }

    public static String flagsToString(Class<?> cls, String str, int i) {
        FlagToString[] flagMapping = getFlagMapping(cls, str);
        if (flagMapping == null) {
            return Integer.toHexString(i);
        }
        StringBuilder sb = new StringBuilder();
        int length = flagMapping.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                break;
            }
            FlagToString flagToString = flagMapping[i2];
            boolean outputIf = flagToString.outputIf();
            if (((flagToString.mask() & i) == flagToString.equals()) && outputIf) {
                sb.append(flagToString.name());
                sb.append(' ');
            }
            i2++;
        }
        if (sb.length() > 0) {
            sb.deleteCharAt(sb.length() - 1);
        }
        return sb.toString();
    }

    private static FlagToString[] getFlagMapping(Class<?> cls, String str) {
        try {
            return ((ExportedProperty) cls.getDeclaredField(str).getAnnotation(ExportedProperty.class)).flagMapping();
        } catch (NoSuchFieldException unused) {
            return null;
        }
    }

    private static IntToString[] getMapping(Class<?> cls, String str) {
        try {
            return ((ExportedProperty) cls.getDeclaredField(str).getAnnotation(ExportedProperty.class)).mapping();
        } catch (NoSuchFieldException unused) {
            return null;
        }
    }

    private static void exportUnrolledArray(Context context, BufferedWriter bufferedWriter, ExportedProperty exportedProperty, int[] iArr, String str, String str2) throws IOException {
        IntToString[] indexMapping = exportedProperty.indexMapping();
        boolean z = indexMapping.length > 0;
        IntToString[] mapping = exportedProperty.mapping();
        boolean z2 = mapping.length > 0;
        boolean z3 = exportedProperty.resolveId() && context != null;
        int length = iArr.length;
        for (int i = 0; i < length; i++) {
            String str3 = null;
            int i2 = iArr[i];
            String valueOf = String.valueOf(i);
            if (z) {
                int length2 = indexMapping.length;
                int i3 = 0;
                while (true) {
                    if (i3 >= length2) {
                        break;
                    }
                    IntToString intToString = indexMapping[i3];
                    if (intToString.from() == i) {
                        valueOf = intToString.to();
                        break;
                    }
                    i3++;
                }
            }
            if (z2) {
                int length3 = mapping.length;
                int i4 = 0;
                while (true) {
                    if (i4 >= length3) {
                        break;
                    }
                    IntToString intToString2 = mapping[i4];
                    if (intToString2.from() == i2) {
                        str3 = intToString2.to();
                        break;
                    }
                    i4++;
                }
            }
            if (!z3) {
                str3 = String.valueOf(i2);
            } else if (str3 == null) {
                str3 = (String) resolveId(context, i2);
            }
            writeEntry(bufferedWriter, str, valueOf, str2, str3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object resolveId(Context context, int i) {
        Resources resources = context.getResources();
        if (i < 0) {
            return "NO_ID";
        }
        try {
            return resources.getResourceTypeName(i) + '/' + resources.getResourceEntryName(i);
        } catch (Resources.NotFoundException unused) {
            return "id/" + formatIntToHexString(i);
        }
    }

    private static void writeValue(BufferedWriter bufferedWriter, Object obj) throws IOException {
        if (obj != null) {
            try {
                String replace = obj.toString().replace("\n", "\\n");
                bufferedWriter.write(String.valueOf(replace.length()));
                bufferedWriter.write(",");
                bufferedWriter.write(replace);
                return;
            } catch (Throwable th) {
                bufferedWriter.write(String.valueOf("[EXCEPTION]".length()));
                bufferedWriter.write(",");
                bufferedWriter.write("[EXCEPTION]");
                throw th;
            }
        }
        bufferedWriter.write("4,null");
    }

    private static Field[] capturedViewGetPropertyFields(Class<?> cls) {
        if (mCapturedViewFieldsForClasses == null) {
            mCapturedViewFieldsForClasses = new HashMap<>();
        }
        HashMap<Class<?>, Field[]> hashMap = mCapturedViewFieldsForClasses;
        Field[] fieldArr = hashMap.get(cls);
        if (fieldArr != null) {
            return fieldArr;
        }
        ArrayList arrayList = new ArrayList();
        for (Field field : cls.getFields()) {
            if (field.isAnnotationPresent(CapturedViewProperty.class)) {
                field.setAccessible(true);
                arrayList.add(field);
            }
        }
        Field[] fieldArr2 = (Field[]) arrayList.toArray(new Field[arrayList.size()]);
        hashMap.put(cls, fieldArr2);
        return fieldArr2;
    }

    private static Method[] capturedViewGetPropertyMethods(Class<?> cls) {
        if (mCapturedViewMethodsForClasses == null) {
            mCapturedViewMethodsForClasses = new HashMap<>();
        }
        HashMap<Class<?>, Method[]> hashMap = mCapturedViewMethodsForClasses;
        Method[] methodArr = hashMap.get(cls);
        if (methodArr != null) {
            return methodArr;
        }
        ArrayList arrayList = new ArrayList();
        for (Method method : cls.getMethods()) {
            if (method.getParameterTypes().length == 0 && method.isAnnotationPresent(CapturedViewProperty.class) && method.getReturnType() != Void.class) {
                method.setAccessible(true);
                arrayList.add(method);
            }
        }
        Method[] methodArr2 = (Method[]) arrayList.toArray(new Method[arrayList.size()]);
        hashMap.put(cls, methodArr2);
        return methodArr2;
    }

    private static String capturedViewExportMethods(Object obj, Class<?> cls, String str) {
        if (obj == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder();
        for (Method method : capturedViewGetPropertyMethods(cls)) {
            try {
                Object invoke = method.invoke(obj, (Object[]) null);
                Class<?> returnType = method.getReturnType();
                if (((CapturedViewProperty) method.getAnnotation(CapturedViewProperty.class)).retrieveReturn()) {
                    sb.append(capturedViewExportMethods(invoke, returnType, method.getName() + "#"));
                } else {
                    sb.append(str);
                    sb.append(method.getName());
                    sb.append("()=");
                    if (invoke != null) {
                        sb.append(invoke.toString().replace("\n", "\\n"));
                    } else {
                        sb.append("null");
                    }
                    sb.append("; ");
                }
            } catch (IllegalAccessException | InvocationTargetException unused) {
            }
        }
        return sb.toString();
    }

    private static String capturedViewExportFields(Object obj, Class<?> cls, String str) {
        if (obj == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder();
        for (Field field : capturedViewGetPropertyFields(cls)) {
            try {
                Object obj2 = field.get(obj);
                sb.append(str);
                sb.append(field.getName());
                sb.append("=");
                if (obj2 != null) {
                    sb.append(obj2.toString().replace("\n", "\\n"));
                } else {
                    sb.append("null");
                }
                sb.append(' ');
            } catch (IllegalAccessException unused) {
            }
        }
        return sb.toString();
    }

    public static void dumpCapturedView(String str, Object obj) {
        Class<?> cls = obj.getClass();
        StringBuilder sb = new StringBuilder(cls.getName() + ": ");
        sb.append(capturedViewExportFields(obj, cls, TextClassifier.TYPE_UNKNOWN));
        sb.append(capturedViewExportMethods(obj, cls, TextClassifier.TYPE_UNKNOWN));
        Log.d(str, sb.toString());
    }

    public static Object invokeViewMethod(final View view, final Method method, final Object[] objArr) {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final AtomicReference atomicReference = new AtomicReference();
        final AtomicReference atomicReference2 = new AtomicReference();
        view.post(new Runnable() { // from class: android.view.ViewDebug.5
            @Override // java.lang.Runnable
            public void run() {
                try {
                    atomicReference.set(method.invoke(view, objArr));
                } catch (InvocationTargetException e) {
                    atomicReference2.set(e.getCause());
                } catch (Exception e2) {
                    atomicReference2.set(e2);
                }
                countDownLatch.countDown();
            }
        });
        try {
            countDownLatch.await();
            if (atomicReference2.get() != null) {
                throw new RuntimeException((Throwable) atomicReference2.get());
            }
            return atomicReference.get();
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }

    public static void setLayoutParameter(final View view, String str, int i) throws NoSuchFieldException, IllegalAccessException {
        final ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        Field field = layoutParams.getClass().getField(str);
        if (field.getType() != Integer.TYPE) {
            throw new RuntimeException("Only integer layout parameters can be set. Field " + str + " is of type " + field.getType().getSimpleName());
        }
        field.set(layoutParams, Integer.valueOf(i));
        view.post(new Runnable() { // from class: android.view.ViewDebug.6
            @Override // java.lang.Runnable
            public void run() {
                View.this.setLayoutParams(layoutParams);
            }
        });
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    public static class SoftwareCanvasProvider implements CanvasProvider {
        private Bitmap mBitmap;
        private Canvas mCanvas;
        private boolean mEnabledHwBitmapsInSwMode;

        @Override // android.view.ViewDebug.CanvasProvider
        public Canvas getCanvas(View view, int i, int i2) {
            this.mBitmap = Bitmap.createBitmap(view.getResources().getDisplayMetrics(), i, i2, Bitmap.Config.ARGB_8888);
            if (this.mBitmap == null) {
                throw new OutOfMemoryError();
            }
            this.mBitmap.setDensity(view.getResources().getDisplayMetrics().densityDpi);
            if (view.mAttachInfo != null) {
                this.mCanvas = view.mAttachInfo.mCanvas;
            }
            if (this.mCanvas == null) {
                this.mCanvas = new Canvas();
            }
            this.mEnabledHwBitmapsInSwMode = this.mCanvas.isHwBitmapsInSwModeEnabled();
            this.mCanvas.setBitmap(this.mBitmap);
            return this.mCanvas;
        }

        @Override // android.view.ViewDebug.CanvasProvider
        public Bitmap createBitmap() {
            this.mCanvas.setBitmap(null);
            this.mCanvas.setHwBitmapsInSwModeEnabled(this.mEnabledHwBitmapsInSwMode);
            return this.mBitmap;
        }
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    public static class HardwareCanvasProvider implements CanvasProvider {
        private Picture mPicture;

        @Override // android.view.ViewDebug.CanvasProvider
        public Canvas getCanvas(View view, int i, int i2) {
            this.mPicture = new Picture();
            return this.mPicture.beginRecording(i, i2);
        }

        @Override // android.view.ViewDebug.CanvasProvider
        public Bitmap createBitmap() {
            this.mPicture.endRecording();
            return Bitmap.createBitmap(this.mPicture);
        }
    }
}
