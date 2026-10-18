package com.facebook.soloader;

import android.content.Context;
import android.os.Parcel;
import android.os.StrictMode;
import android.util.Log;
import com.facebook.imagepipeline.common.BytesRange;
import java.io.Closeable;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.EOFException;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.Nullable;

/* loaded from: /home/user/work/dex/classes3.dex */
public abstract class UnpackingSoSource extends DirectorySoSource {
    private static final String DEPS_FILE_NAME = "dso_deps";
    private static final String LOCK_FILE_NAME = "dso_lock";
    private static final String MANIFEST_FILE_NAME = "dso_manifest";
    private static final byte MANIFEST_VERSION = 1;
    private static final byte STATE_CLEAN = 1;
    private static final byte STATE_DIRTY = 0;
    private static final String STATE_FILE_NAME = "dso_state";
    private static final String TAG = "fb-UnpackingSoSource";

    @Nullable
    private String[] mAbis;
    protected final Context mContext;

    @Nullable
    protected String mCorruptedLib;
    private final Map<String, Object> mLibsBeingLoaded;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public static abstract class InputDsoIterator implements Closeable {
        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }

        public abstract boolean hasNext();

        public abstract InputDso next() throws IOException;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public static abstract class Unpacker implements Closeable {
        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }

        protected abstract DsoManifest getDsoManifest() throws IOException;

        protected abstract InputDsoIterator openDsoIterator() throws IOException;
    }

    protected abstract Unpacker makeUnpacker() throws IOException;

    /* JADX INFO: Access modifiers changed from: protected */
    public UnpackingSoSource(Context context, String str) {
        super(getSoStorePath(context, str), 1);
        this.mLibsBeingLoaded = new HashMap();
        this.mContext = context;
    }

    protected UnpackingSoSource(Context context, File file) {
        super(file, 1);
        this.mLibsBeingLoaded = new HashMap();
        this.mContext = context;
    }

    public static File getSoStorePath(Context context, String str) {
        return new File(context.getApplicationInfo().dataDir + "/" + str);
    }

    @Override // com.facebook.soloader.SoSource
    public String[] getSoSourceAbis() {
        if (this.mAbis == null) {
            return super.getSoSourceAbis();
        }
        return this.mAbis;
    }

    public void setSoSourceAbis(String[] strArr) {
        this.mAbis = strArr;
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class Dso {
        public final String hash;
        public final String name;

        public Dso(String str, String str2) {
            this.name = str;
            this.hash = str2;
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static final class DsoManifest {
        public final Dso[] dsos;

        public DsoManifest(Dso[] dsoArr) {
            this.dsos = dsoArr;
        }

        static final DsoManifest read(DataInput dataInput) throws IOException {
            if (dataInput.readByte() != 1) {
                throw new RuntimeException("wrong dso manifest version");
            }
            int readInt = dataInput.readInt();
            if (readInt < 0) {
                throw new RuntimeException("illegal number of shared libraries");
            }
            Dso[] dsoArr = new Dso[readInt];
            for (int i = 0; i < readInt; i++) {
                dsoArr[i] = new Dso(dataInput.readUTF(), dataInput.readUTF());
            }
            return new DsoManifest(dsoArr);
        }

        public final void write(DataOutput dataOutput) throws IOException {
            dataOutput.writeByte(1);
            dataOutput.writeInt(this.dsos.length);
            for (int i = 0; i < this.dsos.length; i++) {
                dataOutput.writeUTF(this.dsos[i].name);
                dataOutput.writeUTF(this.dsos[i].hash);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public static final class InputDso implements Closeable {
        public final InputStream content;
        public final Dso dso;

        public InputDso(Dso dso, InputStream inputStream) {
            this.dso = dso;
            this.content = inputStream;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.content.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void writeState(File file, byte b) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
        Throwable th = null;
        try {
            randomAccessFile.seek(0L);
            randomAccessFile.write(b);
            randomAccessFile.setLength(randomAccessFile.getFilePointer());
            randomAccessFile.getFD().sync();
            randomAccessFile.close();
        } catch (Throwable th2) {
            if (0 != 0) {
                try {
                    randomAccessFile.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
            } else {
                randomAccessFile.close();
            }
            throw th2;
        }
    }

    private void deleteUnmentionedFiles(Dso[] dsoArr) throws IOException {
        String[] list = this.soDirectory.list();
        if (list == null) {
            throw new IOException("unable to list directory " + this.soDirectory);
        }
        for (String str : list) {
            if (!str.equals(STATE_FILE_NAME) && !str.equals(LOCK_FILE_NAME) && !str.equals(DEPS_FILE_NAME) && !str.equals(MANIFEST_FILE_NAME)) {
                boolean z = false;
                for (int i = 0; !z && i < dsoArr.length; i++) {
                    if (dsoArr[i].name.equals(str)) {
                        z = true;
                    }
                }
                if (!z) {
                    File file = new File(this.soDirectory, str);
                    Log.v(TAG, "deleting unaccounted-for file " + file);
                    SysUtil.dumbDeleteRecursive(file);
                }
            }
        }
    }

    private void extractDso(InputDso inputDso, byte[] bArr) throws IOException {
        RandomAccessFile randomAccessFile;
        Log.i(TAG, "extracting DSO " + inputDso.dso.name);
        if (!this.soDirectory.setWritable(true, true)) {
            throw new IOException("cannot make directory writable for us: " + this.soDirectory);
        }
        File file = new File(this.soDirectory, inputDso.dso.name);
        try {
            randomAccessFile = new RandomAccessFile(file, "rw");
        } catch (IOException e) {
            Log.w(TAG, "error overwriting " + file + " trying to delete and start over", e);
            SysUtil.dumbDeleteRecursive(file);
            randomAccessFile = new RandomAccessFile(file, "rw");
        }
        try {
            try {
                int available = inputDso.content.available();
                if (available > 1) {
                    SysUtil.fallocateIfSupported(randomAccessFile.getFD(), available);
                }
                SysUtil.copyBytes(randomAccessFile, inputDso.content, BytesRange.TO_END_OF_CONTENT, bArr);
                randomAccessFile.setLength(randomAccessFile.getFilePointer());
                if (file.setExecutable(true, false)) {
                    return;
                }
                throw new IOException("cannot make file executable: " + file);
            } catch (IOException e2) {
                SysUtil.dumbDeleteRecursive(file);
                throw e2;
            }
        } finally {
            randomAccessFile.close();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0063 A[Catch: all -> 0x0039, Throwable -> 0x003c, TRY_LEAVE, TryCatch #3 {, blocks: (B:67:0x0034, B:7:0x004c, B:8:0x0053, B:9:0x005d, B:11:0x0063, B:31:0x00b7, B:40:0x00b1, B:52:0x00ad, B:41:0x00b4, B:70:0x0041), top: B:66:0x0034, outer: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:54:? A[Catch: all -> 0x0039, Throwable -> 0x003c, SYNTHETIC, TryCatch #3 {, blocks: (B:67:0x0034, B:7:0x004c, B:8:0x0053, B:9:0x005d, B:11:0x0063, B:31:0x00b7, B:40:0x00b1, B:52:0x00ad, B:41:0x00b4, B:70:0x0041), top: B:66:0x0034, outer: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x004c A[Catch: all -> 0x0039, Throwable -> 0x003c, TryCatch #3 {, blocks: (B:67:0x0034, B:7:0x004c, B:8:0x0053, B:9:0x005d, B:11:0x0063, B:31:0x00b7, B:40:0x00b1, B:52:0x00ad, B:41:0x00b4, B:70:0x0041), top: B:66:0x0034, outer: #5 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void regenerate(byte b, DsoManifest dsoManifest, InputDsoIterator inputDsoIterator) throws IOException {
        DsoManifest read;
        Throwable th;
        Throwable th2;
        Log.v(TAG, "regenerating DSO store " + getClass().getName());
        RandomAccessFile randomAccessFile = new RandomAccessFile(new File(this.soDirectory, MANIFEST_FILE_NAME), "rw");
        Throwable th3 = null;
        try {
            if (b == 1) {
                try {
                    read = DsoManifest.read(randomAccessFile);
                } catch (Exception e) {
                    Log.i(TAG, "error reading existing DSO manifest", e);
                }
                if (read == null) {
                    read = new DsoManifest(new Dso[0]);
                }
                deleteUnmentionedFiles(dsoManifest.dsos);
                byte[] bArr = new byte[32768];
                while (inputDsoIterator.hasNext()) {
                    InputDso next = inputDsoIterator.next();
                    boolean z = true;
                    int i = 0;
                    while (z) {
                        try {
                            if (i >= read.dsos.length) {
                                break;
                            }
                            if (read.dsos[i].name.equals(next.dso.name) && read.dsos[i].hash.equals(next.dso.hash)) {
                                z = false;
                            }
                            i++;
                        } catch (Throwable th4) {
                            try {
                                throw th4;
                            } catch (Throwable th5) {
                                th = th4;
                                th2 = th5;
                                if (next != null) {
                                    throw th2;
                                }
                                if (th == null) {
                                    next.close();
                                    throw th2;
                                }
                                try {
                                    next.close();
                                    throw th2;
                                } catch (Throwable th6) {
                                    th.addSuppressed(th6);
                                    throw th2;
                                }
                            }
                        }
                    }
                    if (z) {
                        extractDso(next, bArr);
                    }
                    if (next != null) {
                        next.close();
                    }
                }
                randomAccessFile.close();
                Log.v(TAG, "Finished regenerating DSO store " + getClass().getName());
            }
            read = null;
            if (read == null) {
            }
            deleteUnmentionedFiles(dsoManifest.dsos);
            byte[] bArr2 = new byte[32768];
            while (inputDsoIterator.hasNext()) {
            }
            randomAccessFile.close();
            Log.v(TAG, "Finished regenerating DSO store " + getClass().getName());
        } catch (Throwable th7) {
            if (0 != 0) {
                try {
                    randomAccessFile.close();
                } catch (Throwable th8) {
                    th3.addSuppressed(th8);
                }
            } else {
                randomAccessFile.close();
            }
            throw th7;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00b8 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:53:? A[Catch: all -> 0x0106, Throwable -> 0x0109, SYNTHETIC, TRY_LEAVE, TryCatch #3 {all -> 0x0106, blocks: (B:32:0x009e, B:36:0x00ab, B:47:0x00f9, B:44:0x0102, B:51:0x00fe, B:45:0x0105), top: B:31:0x009e }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:73:? A[Catch: all -> 0x0120, Throwable -> 0x0122, SYNTHETIC, TRY_LEAVE, TryCatch #4 {, blocks: (B:10:0x0061, B:12:0x006f, B:13:0x0078, B:15:0x007e, B:17:0x0088, B:30:0x008f, B:38:0x00b0, B:64:0x011c, B:71:0x0118, B:65:0x011f), top: B:9:0x0061, outer: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean refreshLocked(final FileLocker fileLocker, int i, final byte[] bArr) throws IOException {
        byte b;
        Unpacker makeUnpacker;
        Throwable th;
        Throwable th2;
        DsoManifest dsoManifest;
        InputDsoIterator openDsoIterator;
        Throwable th3;
        Throwable th4;
        final File file = new File(this.soDirectory, STATE_FILE_NAME);
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
        try {
            try {
                b = randomAccessFile.readByte();
            } finally {
            }
        } catch (EOFException unused) {
        }
        if (b != 1) {
            Log.v(TAG, "dso store " + this.soDirectory + " regeneration interrupted: wiping clean");
            b = 0;
        }
        randomAccessFile.close();
        final File file2 = new File(this.soDirectory, DEPS_FILE_NAME);
        randomAccessFile = new RandomAccessFile(file2, "rw");
        try {
            byte[] bArr2 = new byte[(int) randomAccessFile.length()];
            if (randomAccessFile.read(bArr2) != bArr2.length) {
                Log.v(TAG, "short read of so store deps file: marking unclean");
                b = 0;
            }
            if (!Arrays.equals(bArr2, bArr)) {
                Log.v(TAG, "deps mismatch on deps store: regenerating");
                b = 0;
            }
            try {
                try {
                    try {
                        if (b != 0 && (i & 2) == 0) {
                            dsoManifest = null;
                            randomAccessFile.close();
                            if (dsoManifest != null) {
                                return false;
                            }
                            final DsoManifest dsoManifest2 = dsoManifest;
                            Runnable runnable = new Runnable() { // from class: com.facebook.soloader.UnpackingSoSource.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    try {
                                        try {
                                            Log.v(UnpackingSoSource.TAG, "starting syncer worker");
                                            RandomAccessFile randomAccessFile2 = new RandomAccessFile(file2, "rw");
                                            try {
                                                randomAccessFile2.write(bArr);
                                                randomAccessFile2.setLength(randomAccessFile2.getFilePointer());
                                                randomAccessFile2.close();
                                                randomAccessFile2 = new RandomAccessFile(new File(UnpackingSoSource.this.soDirectory, UnpackingSoSource.MANIFEST_FILE_NAME), "rw");
                                                try {
                                                    dsoManifest2.write(randomAccessFile2);
                                                    randomAccessFile2.close();
                                                    SysUtil.fsyncRecursive(UnpackingSoSource.this.soDirectory);
                                                    UnpackingSoSource.writeState(file, (byte) 1);
                                                } finally {
                                                }
                                            } finally {
                                            }
                                        } finally {
                                            Log.v(UnpackingSoSource.TAG, "releasing dso store lock for " + UnpackingSoSource.this.soDirectory + " (from syncer thread)");
                                            fileLocker.close();
                                        }
                                    } catch (IOException e) {
                                        throw new RuntimeException(e);
                                    }
                                }
                            };
                            if ((i & 1) != 0) {
                                new Thread(runnable, "SoSync:" + this.soDirectory.getName()).start();
                            } else {
                                runnable.run();
                            }
                            return true;
                        }
                        regenerate(b, dsoManifest, openDsoIterator);
                        if (openDsoIterator != null) {
                            openDsoIterator.close();
                        }
                        if (makeUnpacker != null) {
                            makeUnpacker.close();
                        }
                        randomAccessFile.close();
                        if (dsoManifest != null) {
                        }
                    } catch (Throwable th5) {
                        try {
                            throw th5;
                        } catch (Throwable th6) {
                            th3 = th5;
                            th4 = th6;
                            if (openDsoIterator != null) {
                                throw th4;
                            }
                            if (th3 == null) {
                                openDsoIterator.close();
                                throw th4;
                            }
                            try {
                                openDsoIterator.close();
                                throw th4;
                            } catch (Throwable th7) {
                                th3.addSuppressed(th7);
                                throw th4;
                            }
                        }
                    }
                    dsoManifest = makeUnpacker.getDsoManifest();
                    openDsoIterator = makeUnpacker.openDsoIterator();
                } catch (Throwable th8) {
                    th2 = th8;
                    th = null;
                    if (makeUnpacker != null) {
                        throw th2;
                    }
                    if (th == null) {
                        makeUnpacker.close();
                        throw th2;
                    }
                    try {
                        makeUnpacker.close();
                        throw th2;
                    } catch (Throwable th9) {
                        th.addSuppressed(th9);
                        throw th2;
                    }
                }
            } catch (Throwable th10) {
                try {
                    throw th10;
                } catch (Throwable th11) {
                    th = th10;
                    th2 = th11;
                    if (makeUnpacker != null) {
                    }
                }
            }
            Log.v(TAG, "so store dirty: regenerating");
            writeState(file, (byte) 0);
            makeUnpacker = makeUnpacker();
        } finally {
        }
    }

    protected byte[] getDepsBlock() throws IOException {
        Parcel obtain = Parcel.obtain();
        Unpacker makeUnpacker = makeUnpacker();
        Throwable th = null;
        try {
            try {
                Dso[] dsoArr = makeUnpacker.getDsoManifest().dsos;
                obtain.writeByte((byte) 1);
                obtain.writeInt(dsoArr.length);
                for (int i = 0; i < dsoArr.length; i++) {
                    obtain.writeString(dsoArr[i].name);
                    obtain.writeString(dsoArr[i].hash);
                }
                if (makeUnpacker != null) {
                    makeUnpacker.close();
                }
                byte[] marshall = obtain.marshall();
                obtain.recycle();
                return marshall;
            } finally {
            }
        } catch (Throwable th2) {
            if (makeUnpacker != null) {
                if (th != null) {
                    try {
                        makeUnpacker.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                } else {
                    makeUnpacker.close();
                }
            }
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.soloader.SoSource
    public void prepare(int i) throws IOException {
        SysUtil.mkdirOrThrow(this.soDirectory);
        FileLocker lock = FileLocker.lock(new File(this.soDirectory, LOCK_FILE_NAME));
        try {
            Log.v(TAG, "locked dso store " + this.soDirectory);
            if (refreshLocked(lock, i, getDepsBlock())) {
                lock = null;
            } else {
                Log.i(TAG, "dso store is up-to-date: " + this.soDirectory);
            }
            if (lock != null) {
                Log.v(TAG, "releasing dso store lock for " + this.soDirectory);
                lock.close();
                return;
            }
            Log.v(TAG, "not releasing dso store lock for " + this.soDirectory + " (syncer thread started)");
        } catch (Throwable th) {
            if (lock != null) {
                Log.v(TAG, "releasing dso store lock for " + this.soDirectory);
                lock.close();
            } else {
                Log.v(TAG, "not releasing dso store lock for " + this.soDirectory + " (syncer thread started)");
            }
            throw th;
        }
    }

    private Object getLibraryLock(String str) {
        Object obj;
        synchronized (this.mLibsBeingLoaded) {
            obj = this.mLibsBeingLoaded.get(str);
            if (obj == null) {
                obj = new Object();
                this.mLibsBeingLoaded.put(str, obj);
            }
        }
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public synchronized void prepare(String str) throws IOException {
        synchronized (getLibraryLock(str)) {
            this.mCorruptedLib = str;
            prepare(2);
        }
    }

    @Override // com.facebook.soloader.DirectorySoSource, com.facebook.soloader.SoSource
    public int loadLibrary(String str, int i, StrictMode.ThreadPolicy threadPolicy) throws IOException {
        int loadLibraryFrom;
        synchronized (getLibraryLock(str)) {
            loadLibraryFrom = loadLibraryFrom(str, i, this.soDirectory, threadPolicy);
        }
        return loadLibraryFrom;
    }
}
