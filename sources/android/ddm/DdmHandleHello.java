package android.ddm;

import android.os.Debug;
import android.os.Process;
import android.os.UserHandle;
import dalvik.system.VMRuntime;
import java.nio.ByteBuffer;
import org.apache.harmony.dalvik.ddmc.Chunk;
import org.apache.harmony.dalvik.ddmc.ChunkHandler;
import org.apache.harmony.dalvik.ddmc.DdmServer;

/* loaded from: /home/user/work/dex/classes.dex */
public class DdmHandleHello extends ChunkHandler {
    public static final int CHUNK_HELO = type("HELO");
    public static final int CHUNK_WAIT = type("WAIT");
    public static final int CHUNK_FEAT = type("FEAT");
    private static DdmHandleHello mInstance = new DdmHandleHello();
    private static final String[] FRAMEWORK_FEATURES = {"opengl-tracing", "view-hierarchy"};

    public void connected() {
    }

    public void disconnected() {
    }

    private DdmHandleHello() {
    }

    public static void register() {
        DdmServer.registerHandler(CHUNK_HELO, mInstance);
        DdmServer.registerHandler(CHUNK_FEAT, mInstance);
    }

    public Chunk handleChunk(Chunk chunk) {
        int i = chunk.type;
        if (i == CHUNK_HELO) {
            return handleHELO(chunk);
        }
        if (i == CHUNK_FEAT) {
            return handleFEAT(chunk);
        }
        throw new RuntimeException("Unknown packet " + ChunkHandler.name(i));
    }

    private Chunk handleHELO(Chunk chunk) {
        wrapChunk(chunk).getInt();
        String str = System.getProperty("java.vm.name", "?") + " v" + System.getProperty("java.vm.version", "?");
        String appName = DdmHandleAppName.getAppName();
        VMRuntime runtime = VMRuntime.getRuntime();
        String str2 = runtime.is64Bit() ? "64-bit" : "32-bit";
        String vmInstructionSet = runtime.vmInstructionSet();
        if (vmInstructionSet != null && vmInstructionSet.length() > 0) {
            str2 = str2 + " (" + vmInstructionSet + ")";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("CheckJNI=");
        sb.append(runtime.isCheckJniEnabled() ? "true" : "false");
        String sb2 = sb.toString();
        boolean isNativeDebuggable = runtime.isNativeDebuggable();
        ByteBuffer allocate = ByteBuffer.allocate((str.length() * 2) + 28 + (appName.length() * 2) + (str2.length() * 2) + (sb2.length() * 2) + 1);
        allocate.order(ChunkHandler.CHUNK_ORDER);
        allocate.putInt(1);
        allocate.putInt(Process.myPid());
        allocate.putInt(str.length());
        allocate.putInt(appName.length());
        putString(allocate, str);
        putString(allocate, appName);
        allocate.putInt(UserHandle.myUserId());
        allocate.putInt(str2.length());
        putString(allocate, str2);
        allocate.putInt(sb2.length());
        putString(allocate, sb2);
        allocate.put(isNativeDebuggable ? (byte) 1 : (byte) 0);
        Chunk chunk2 = new Chunk(CHUNK_HELO, allocate);
        if (Debug.waitingForDebugger()) {
            sendWAIT(0);
        }
        return chunk2;
    }

    private Chunk handleFEAT(Chunk chunk) {
        String[] vmFeatureList = Debug.getVmFeatureList();
        int length = ((vmFeatureList.length + FRAMEWORK_FEATURES.length) * 4) + 4;
        for (int length2 = vmFeatureList.length - 1; length2 >= 0; length2--) {
            length += vmFeatureList[length2].length() * 2;
        }
        for (int length3 = FRAMEWORK_FEATURES.length - 1; length3 >= 0; length3--) {
            length += FRAMEWORK_FEATURES[length3].length() * 2;
        }
        ByteBuffer allocate = ByteBuffer.allocate(length);
        allocate.order(ChunkHandler.CHUNK_ORDER);
        allocate.putInt(vmFeatureList.length + FRAMEWORK_FEATURES.length);
        for (int length4 = vmFeatureList.length - 1; length4 >= 0; length4--) {
            allocate.putInt(vmFeatureList[length4].length());
            putString(allocate, vmFeatureList[length4]);
        }
        for (int length5 = FRAMEWORK_FEATURES.length - 1; length5 >= 0; length5--) {
            allocate.putInt(FRAMEWORK_FEATURES[length5].length());
            putString(allocate, FRAMEWORK_FEATURES[length5]);
        }
        return new Chunk(CHUNK_FEAT, allocate);
    }

    public static void sendWAIT(int i) {
        DdmServer.sendChunk(new Chunk(CHUNK_WAIT, new byte[]{(byte) i}, 0, 1));
    }
}
