package android.ddm;

import java.nio.ByteBuffer;
import org.apache.harmony.dalvik.ddmc.Chunk;
import org.apache.harmony.dalvik.ddmc.ChunkHandler;
import org.apache.harmony.dalvik.ddmc.DdmServer;
import org.apache.harmony.dalvik.ddmc.DdmVmInternal;

/* loaded from: /home/user/work/dex/classes.dex */
public class DdmHandleThread extends ChunkHandler {
    public static final int CHUNK_THEN = type("THEN");
    public static final int CHUNK_THCR = type("THCR");
    public static final int CHUNK_THDE = type("THDE");
    public static final int CHUNK_THST = type("THST");
    public static final int CHUNK_STKL = type("STKL");
    private static DdmHandleThread mInstance = new DdmHandleThread();

    public void connected() {
    }

    public void disconnected() {
    }

    private DdmHandleThread() {
    }

    public static void register() {
        DdmServer.registerHandler(CHUNK_THEN, mInstance);
        DdmServer.registerHandler(CHUNK_THST, mInstance);
        DdmServer.registerHandler(CHUNK_STKL, mInstance);
    }

    public Chunk handleChunk(Chunk chunk) {
        int i = chunk.type;
        if (i == CHUNK_THEN) {
            return handleTHEN(chunk);
        }
        if (i == CHUNK_THST) {
            return handleTHST(chunk);
        }
        if (i == CHUNK_STKL) {
            return handleSTKL(chunk);
        }
        throw new RuntimeException("Unknown packet " + ChunkHandler.name(i));
    }

    private Chunk handleTHEN(Chunk chunk) {
        DdmVmInternal.threadNotify(wrapChunk(chunk).get() != 0);
        return null;
    }

    private Chunk handleTHST(Chunk chunk) {
        wrapChunk(chunk);
        byte[] threadStats = DdmVmInternal.getThreadStats();
        if (threadStats != null) {
            return new Chunk(CHUNK_THST, threadStats, 0, threadStats.length);
        }
        return createFailChunk(1, "Can't build THST chunk");
    }

    private Chunk handleSTKL(Chunk chunk) {
        int i = wrapChunk(chunk).getInt();
        StackTraceElement[] stackTraceById = DdmVmInternal.getStackTraceById(i);
        if (stackTraceById == null) {
            return createFailChunk(1, "Stack trace unavailable");
        }
        return createStackChunk(stackTraceById, i);
    }

    private Chunk createStackChunk(StackTraceElement[] stackTraceElementArr, int i) {
        int i2 = 12;
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            int length = i2 + (stackTraceElement.getClassName().length() * 2) + 4 + (stackTraceElement.getMethodName().length() * 2) + 4 + 4;
            if (stackTraceElement.getFileName() != null) {
                length += stackTraceElement.getFileName().length() * 2;
            }
            i2 = length + 4;
        }
        ByteBuffer allocate = ByteBuffer.allocate(i2);
        allocate.putInt(0);
        allocate.putInt(i);
        allocate.putInt(stackTraceElementArr.length);
        for (StackTraceElement stackTraceElement2 : stackTraceElementArr) {
            allocate.putInt(stackTraceElement2.getClassName().length());
            putString(allocate, stackTraceElement2.getClassName());
            allocate.putInt(stackTraceElement2.getMethodName().length());
            putString(allocate, stackTraceElement2.getMethodName());
            if (stackTraceElement2.getFileName() != null) {
                allocate.putInt(stackTraceElement2.getFileName().length());
                putString(allocate, stackTraceElement2.getFileName());
            } else {
                allocate.putInt(0);
            }
            allocate.putInt(stackTraceElement2.getLineNumber());
        }
        return new Chunk(CHUNK_STKL, allocate);
    }
}
