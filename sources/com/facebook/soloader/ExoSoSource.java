package com.facebook.soloader;

import android.content.Context;
import com.facebook.soloader.UnpackingSoSource;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashSet;

/* loaded from: /home/user/work/dex/classes3.dex */
public final class ExoSoSource extends UnpackingSoSource {
    public ExoSoSource(Context context, String str) {
        super(context, str);
    }

    @Override // com.facebook.soloader.UnpackingSoSource
    protected UnpackingSoSource.Unpacker makeUnpacker() throws IOException {
        return new ExoUnpacker(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public final class ExoUnpacker extends UnpackingSoSource.Unpacker {
        private final FileDso[] mDsos;

        /* JADX WARN: Code restructure failed: missing block: B:34:0x00e2, code lost:
        
            throw new java.lang.RuntimeException("illegal line in exopackage metadata: [" + r12 + "]");
         */
        /* JADX WARN: Removed duplicated region for block: B:52:0x0103 A[Catch: all -> 0x0107, Throwable -> 0x010b, TryCatch #0 {Throwable -> 0x010b, blocks: (B:9:0x0063, B:40:0x00e3, B:53:0x0106, B:52:0x0103, B:62:0x00ff), top: B:8:0x0063 }] */
        /* JADX WARN: Removed duplicated region for block: B:55:0x00f9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:74:0x011c  */
        /* JADX WARN: Removed duplicated region for block: B:76:0x0112 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        ExoUnpacker(UnpackingSoSource unpackingSoSource) throws IOException {
            Throwable th;
            Throwable th2;
            Throwable th3;
            Throwable th4;
            boolean z;
            File file = new File("/data/local/tmp/exopackage/" + ExoSoSource.this.mContext.getPackageName() + "/native-libs/");
            ArrayList arrayList = new ArrayList();
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            String[] supportedAbis = SysUtil.getSupportedAbis();
            int length = supportedAbis.length;
            int i = 0;
            int i2 = 0;
            loop0: while (i2 < length) {
                String str = supportedAbis[i2];
                File file2 = new File(file, str);
                if (file2.isDirectory()) {
                    linkedHashSet.add(str);
                    File file3 = new File(file2, "metadata.txt");
                    if (file3.isFile()) {
                        FileReader fileReader = new FileReader(file3);
                        try {
                            try {
                                BufferedReader bufferedReader = new BufferedReader(fileReader);
                                while (true) {
                                    try {
                                        String readLine = bufferedReader.readLine();
                                        if (readLine != null) {
                                            if (readLine.length() != 0) {
                                                int indexOf = readLine.indexOf(32);
                                                if (indexOf == -1) {
                                                    break loop0;
                                                }
                                                String str2 = readLine.substring(i, indexOf) + ".so";
                                                int size = arrayList.size();
                                                while (true) {
                                                    if (i >= size) {
                                                        z = false;
                                                        break;
                                                    } else {
                                                        if (((FileDso) arrayList.get(i)).name.equals(str2)) {
                                                            z = true;
                                                            break;
                                                        }
                                                        i++;
                                                    }
                                                }
                                                if (!z) {
                                                    String substring = readLine.substring(indexOf + 1);
                                                    arrayList.add(new FileDso(str2, substring, new File(file2, substring)));
                                                }
                                                i = 0;
                                            }
                                        } else {
                                            bufferedReader.close();
                                            fileReader.close();
                                            break;
                                        }
                                    } catch (Throwable th5) {
                                        th3 = th5;
                                        th4 = null;
                                        if (th4 != null) {
                                        }
                                    }
                                }
                            } catch (Throwable th6) {
                                th2 = th6;
                                try {
                                    throw th2;
                                } catch (Throwable th7) {
                                    th = th7;
                                    if (th2 != null) {
                                    }
                                }
                            }
                        } catch (Throwable th8) {
                            th = th8;
                            th2 = null;
                            if (th2 != null) {
                                fileReader.close();
                                throw th;
                            }
                            try {
                                fileReader.close();
                                throw th;
                            } catch (Throwable th9) {
                                th2.addSuppressed(th9);
                                throw th;
                            }
                        }
                    } else {
                        continue;
                    }
                }
                i2++;
                i = 0;
            }
            unpackingSoSource.setSoSourceAbis((String[]) linkedHashSet.toArray(new String[linkedHashSet.size()]));
            this.mDsos = (FileDso[]) arrayList.toArray(new FileDso[arrayList.size()]);
        }

        @Override // com.facebook.soloader.UnpackingSoSource.Unpacker
        protected UnpackingSoSource.DsoManifest getDsoManifest() throws IOException {
            return new UnpackingSoSource.DsoManifest(this.mDsos);
        }

        @Override // com.facebook.soloader.UnpackingSoSource.Unpacker
        protected UnpackingSoSource.InputDsoIterator openDsoIterator() throws IOException {
            return new FileBackedInputDsoIterator();
        }

        /* loaded from: /home/user/work/dex/classes3.dex */
        private final class FileBackedInputDsoIterator extends UnpackingSoSource.InputDsoIterator {
            private int mCurrentDso;

            private FileBackedInputDsoIterator() {
            }

            @Override // com.facebook.soloader.UnpackingSoSource.InputDsoIterator
            public boolean hasNext() {
                return this.mCurrentDso < ExoUnpacker.this.mDsos.length;
            }

            @Override // com.facebook.soloader.UnpackingSoSource.InputDsoIterator
            public UnpackingSoSource.InputDso next() throws IOException {
                FileDso[] fileDsoArr = ExoUnpacker.this.mDsos;
                int i = this.mCurrentDso;
                this.mCurrentDso = i + 1;
                FileDso fileDso = fileDsoArr[i];
                FileInputStream fileInputStream = new FileInputStream(fileDso.backingFile);
                try {
                    return new UnpackingSoSource.InputDso(fileDso, fileInputStream);
                } catch (Throwable th) {
                    fileInputStream.close();
                    throw th;
                }
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    private static final class FileDso extends UnpackingSoSource.Dso {
        final File backingFile;

        FileDso(String str, String str2, File file) {
            super(str, str2);
            this.backingFile = file;
        }
    }
}
