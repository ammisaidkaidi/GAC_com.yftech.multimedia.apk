package com.facebook.binaryresource;

import com.facebook.common.internal.Files;
import com.facebook.common.internal.Preconditions;
import com.facebook.infer.annotation.Nullsafe;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import javax.annotation.Nullable;

@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: /home/user/work/dex/classes3.dex */
public class FileBinaryResource implements BinaryResource {
    private final File mFile;

    private FileBinaryResource(File file) {
        this.mFile = (File) Preconditions.checkNotNull(file);
    }

    public File getFile() {
        return this.mFile;
    }

    @Override // com.facebook.binaryresource.BinaryResource
    public InputStream openStream() throws IOException {
        return new FileInputStream(this.mFile);
    }

    @Override // com.facebook.binaryresource.BinaryResource
    public long size() {
        return this.mFile.length();
    }

    @Override // com.facebook.binaryresource.BinaryResource
    public byte[] read() throws IOException {
        return Files.toByteArray(this.mFile);
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == null || !(obj instanceof FileBinaryResource)) {
            return false;
        }
        return this.mFile.equals(((FileBinaryResource) obj).mFile);
    }

    public int hashCode() {
        return this.mFile.hashCode();
    }

    @Nullable
    public static FileBinaryResource createOrNull(File file) {
        if (file != null) {
            return new FileBinaryResource(file);
        }
        return null;
    }

    public static FileBinaryResource create(File file) {
        return new FileBinaryResource(file);
    }
}
