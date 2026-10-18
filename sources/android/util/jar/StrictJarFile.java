package android.util.jar;

import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.util.jar.StrictJarVerifier;
import android.view.textclassifier.TextClassifier;
import dalvik.system.CloseGuard;
import java.io.FileDescriptor;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.cert.Certificate;
import java.util.HashMap;
import java.util.Iterator;
import java.util.zip.Inflater;
import java.util.zip.InflaterInputStream;
import java.util.zip.ZipEntry;
import libcore.io.IoBridge;
import libcore.io.IoUtils;
import libcore.io.Streams;

/* loaded from: /home/user/work/dex/classes2.dex */
public final class StrictJarFile {
    private boolean closed;
    private final FileDescriptor fd;
    private final CloseGuard guard;
    private final boolean isSigned;
    private final StrictJarManifest manifest;
    private final long nativeHandle;
    private final StrictJarVerifier verifier;

    private static native void nativeClose(long j);

    private static native ZipEntry nativeFindEntry(long j, String str);

    /* JADX INFO: Access modifiers changed from: private */
    public static native ZipEntry nativeNextEntry(long j);

    private static native long nativeOpenJarFile(String str, int i) throws IOException;

    /* JADX INFO: Access modifiers changed from: private */
    public static native long nativeStartIteration(long j, String str);

    public StrictJarFile(String str) throws IOException, SecurityException {
        this(str, true, true);
    }

    public StrictJarFile(FileDescriptor fileDescriptor) throws IOException, SecurityException {
        this(fileDescriptor, true, true);
    }

    public StrictJarFile(FileDescriptor fileDescriptor, boolean z, boolean z2) throws IOException, SecurityException {
        this("[fd:" + fileDescriptor.getInt$() + "]", fileDescriptor, z, z2);
    }

    public StrictJarFile(String str, boolean z, boolean z2) throws IOException, SecurityException {
        this(str, IoBridge.open(str, OsConstants.O_RDONLY), z, z2);
    }

    private StrictJarFile(String str, FileDescriptor fileDescriptor, boolean z, boolean z2) throws IOException, SecurityException {
        this.guard = CloseGuard.get();
        this.nativeHandle = nativeOpenJarFile(str, fileDescriptor.getInt$());
        this.fd = fileDescriptor;
        boolean z3 = false;
        try {
            if (z) {
                HashMap<String, byte[]> metaEntries = getMetaEntries();
                this.manifest = new StrictJarManifest(metaEntries.get("META-INF/MANIFEST.MF"), true);
                this.verifier = new StrictJarVerifier(str, this.manifest, metaEntries, z2);
                for (String str2 : this.manifest.getEntries().keySet()) {
                    if (findEntry(str2) == null) {
                        throw new SecurityException("File " + str2 + " in manifest does not exist");
                    }
                }
                if (this.verifier.readCertificates() && this.verifier.isSignedJar()) {
                    z3 = true;
                }
                this.isSigned = z3;
            } else {
                this.isSigned = false;
                this.manifest = null;
                this.verifier = null;
            }
            this.guard.open("close");
        } catch (IOException | SecurityException e) {
            nativeClose(this.nativeHandle);
            IoUtils.closeQuietly(fileDescriptor);
            this.closed = true;
            throw e;
        }
    }

    public StrictJarManifest getManifest() {
        return this.manifest;
    }

    public Iterator<ZipEntry> iterator() throws IOException {
        return new EntryIterator(this.nativeHandle, TextClassifier.TYPE_UNKNOWN);
    }

    public ZipEntry findEntry(String str) {
        return nativeFindEntry(this.nativeHandle, str);
    }

    public Certificate[][] getCertificateChains(ZipEntry zipEntry) {
        if (this.isSigned) {
            return this.verifier.getCertificateChains(zipEntry.getName());
        }
        return null;
    }

    @Deprecated
    public Certificate[] getCertificates(ZipEntry zipEntry) {
        if (!this.isSigned) {
            return null;
        }
        Certificate[][] certificateChains = this.verifier.getCertificateChains(zipEntry.getName());
        int i = 0;
        for (Certificate[] certificateArr : certificateChains) {
            i += certificateArr.length;
        }
        Certificate[] certificateArr2 = new Certificate[i];
        int i2 = 0;
        for (Certificate[] certificateArr3 : certificateChains) {
            System.arraycopy(certificateArr3, 0, certificateArr2, i2, certificateArr3.length);
            i2 += certificateArr3.length;
        }
        return certificateArr2;
    }

    public InputStream getInputStream(ZipEntry zipEntry) {
        StrictJarVerifier.VerifierEntry initEntry;
        InputStream zipInputStream = getZipInputStream(zipEntry);
        return (!this.isSigned || (initEntry = this.verifier.initEntry(zipEntry.getName())) == null) ? zipInputStream : new JarFileInputStream(zipInputStream, zipEntry.getSize(), initEntry);
    }

    public void close() throws IOException {
        if (this.closed) {
            return;
        }
        if (this.guard != null) {
            this.guard.close();
        }
        nativeClose(this.nativeHandle);
        IoUtils.closeQuietly(this.fd);
        this.closed = true;
    }

    protected void finalize() throws Throwable {
        try {
            if (this.guard != null) {
                this.guard.warnIfOpen();
            }
            close();
        } finally {
            super.finalize();
        }
    }

    private InputStream getZipInputStream(ZipEntry zipEntry) {
        if (zipEntry.getMethod() == 0) {
            return new FDStream(this.fd, zipEntry.getDataOffset(), zipEntry.getDataOffset() + zipEntry.getSize());
        }
        return new ZipInflaterInputStream(new FDStream(this.fd, zipEntry.getDataOffset(), zipEntry.getDataOffset() + zipEntry.getCompressedSize()), new Inflater(true), Math.max(1024, (int) Math.min(zipEntry.getSize(), 65535L)), zipEntry);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public static final class EntryIterator implements Iterator<ZipEntry> {
        private final long iterationHandle;
        private ZipEntry nextEntry;

        EntryIterator(long j, String str) throws IOException {
            this.iterationHandle = StrictJarFile.nativeStartIteration(j, str);
        }

        @Override // java.util.Iterator
        public ZipEntry next() {
            if (this.nextEntry == null) {
                return StrictJarFile.nativeNextEntry(this.iterationHandle);
            }
            ZipEntry zipEntry = this.nextEntry;
            this.nextEntry = null;
            return zipEntry;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.nextEntry != null) {
                return true;
            }
            ZipEntry nativeNextEntry = StrictJarFile.nativeNextEntry(this.iterationHandle);
            if (nativeNextEntry == null) {
                return false;
            }
            this.nextEntry = nativeNextEntry;
            return true;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    private HashMap<String, byte[]> getMetaEntries() throws IOException {
        HashMap<String, byte[]> hashMap = new HashMap<>();
        EntryIterator entryIterator = new EntryIterator(this.nativeHandle, "META-INF/");
        while (entryIterator.hasNext()) {
            ZipEntry next = entryIterator.next();
            hashMap.put(next.getName(), Streams.readFully(getInputStream(next)));
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public static final class JarFileInputStream extends FilterInputStream {
        private long count;
        private boolean done;
        private final StrictJarVerifier.VerifierEntry entry;

        JarFileInputStream(InputStream inputStream, long j, StrictJarVerifier.VerifierEntry verifierEntry) {
            super(inputStream);
            this.done = false;
            this.entry = verifierEntry;
            this.count = j;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read() throws IOException {
            if (this.done) {
                return -1;
            }
            if (this.count > 0) {
                int read = super.read();
                if (read != -1) {
                    this.entry.write(read);
                    this.count--;
                } else {
                    this.count = 0L;
                }
                if (this.count == 0) {
                    this.done = true;
                    this.entry.verify();
                }
                return read;
            }
            this.done = true;
            this.entry.verify();
            return -1;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            if (this.done) {
                return -1;
            }
            if (this.count > 0) {
                int read = super.read(bArr, i, i2);
                if (read != -1) {
                    int i3 = this.count < ((long) read) ? (int) this.count : read;
                    this.entry.write(bArr, i, i3);
                    this.count -= i3;
                } else {
                    this.count = 0L;
                }
                if (this.count == 0) {
                    this.done = true;
                    this.entry.verify();
                }
                return read;
            }
            this.done = true;
            this.entry.verify();
            return -1;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int available() throws IOException {
            if (this.done) {
                return 0;
            }
            return super.available();
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public long skip(long j) throws IOException {
            return Streams.skipByReading(this, j);
        }
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    public static class ZipInflaterInputStream extends InflaterInputStream {
        private long bytesRead;
        private final ZipEntry entry;

        public ZipInflaterInputStream(InputStream inputStream, Inflater inflater, int i, ZipEntry zipEntry) {
            super(inputStream, inflater, i);
            this.bytesRead = 0L;
            this.entry = zipEntry;
        }

        @Override // java.util.zip.InflaterInputStream, java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            try {
                int read = super.read(bArr, i, i2);
                if (read != -1) {
                    this.bytesRead += read;
                } else if (this.entry.getSize() != this.bytesRead) {
                    throw new IOException("Size mismatch on inflated file: " + this.bytesRead + " vs " + this.entry.getSize());
                }
                return read;
            } catch (IOException e) {
                throw new IOException("Error reading data for " + this.entry.getName() + " near offset " + this.bytesRead, e);
            }
        }

        @Override // java.util.zip.InflaterInputStream, java.io.FilterInputStream, java.io.InputStream
        public int available() throws IOException {
            if (this.closed || super.available() == 0) {
                return 0;
            }
            return (int) (this.entry.getSize() - this.bytesRead);
        }
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    public static class FDStream extends InputStream {
        private long endOffset;
        private final FileDescriptor fd;
        private long offset;

        public FDStream(FileDescriptor fileDescriptor, long j, long j2) {
            this.fd = fileDescriptor;
            this.offset = j;
            this.endOffset = j2;
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            return this.offset < this.endOffset ? 1 : 0;
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            return Streams.readSingleByte(this);
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            synchronized (this.fd) {
                long j = this.endOffset - this.offset;
                if (i2 > j) {
                    i2 = (int) j;
                }
                try {
                    Os.lseek(this.fd, this.offset, OsConstants.SEEK_SET);
                    int read = IoBridge.read(this.fd, bArr, i, i2);
                    if (read <= 0) {
                        return -1;
                    }
                    this.offset += read;
                    return read;
                } catch (ErrnoException e) {
                    throw new IOException(e);
                }
            }
        }

        @Override // java.io.InputStream
        public long skip(long j) throws IOException {
            if (j > this.endOffset - this.offset) {
                j = this.endOffset - this.offset;
            }
            this.offset += j;
            return j;
        }
    }
}
