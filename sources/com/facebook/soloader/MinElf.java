package com.facebook.soloader;

import com.android.internal.midi.MidiConstants;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;

/* loaded from: /home/user/work/dex/classes3.dex */
public final class MinElf {
    public static final int DT_NEEDED = 1;
    public static final int DT_NULL = 0;
    public static final int DT_STRTAB = 5;
    public static final int ELF_MAGIC = 1179403647;
    public static final int PN_XNUM = 65535;
    public static final int PT_DYNAMIC = 2;
    public static final int PT_LOAD = 1;

    /* loaded from: /home/user/work/dex/classes3.dex */
    public enum ISA {
        NOT_SO("not_so"),
        X86("x86"),
        ARM("armeabi-v7a"),
        X86_64("x86_64"),
        AARCH64("arm64-v8a"),
        OTHERS("others");

        private final String value;

        ISA(String str) {
            this.value = str;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.value;
        }
    }

    public static String[] extract_DT_NEEDED(File file) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            return extract_DT_NEEDED(fileInputStream.getChannel());
        } finally {
            fileInputStream.close();
        }
    }

    public static String[] extract_DT_NEEDED(FileChannel fileChannel) throws IOException {
        long j;
        boolean z;
        long j2;
        long j3;
        long j4;
        long j5;
        long j6;
        long j7;
        long j8;
        long j9;
        long j10;
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        if (getu32(fileChannel, allocate, 0L) != 1179403647) {
            throw new ElfError("file is not ELF");
        }
        boolean z2 = getu8(fileChannel, allocate, 4L) == 1;
        if (getu8(fileChannel, allocate, 5L) == 2) {
            allocate.order(ByteOrder.BIG_ENDIAN);
        }
        long j11 = z2 ? getu32(fileChannel, allocate, 28L) : get64(fileChannel, allocate, 32L);
        long j12 = z2 ? getu16(fileChannel, allocate, 44L) : getu16(fileChannel, allocate, 56L);
        int i = getu16(fileChannel, allocate, z2 ? 42L : 54L);
        if (j12 == 65535) {
            long j13 = z2 ? getu32(fileChannel, allocate, 32L) : get64(fileChannel, allocate, 40L);
            if (z2) {
                j10 = getu32(fileChannel, allocate, j13 + 28);
            } else {
                j10 = getu32(fileChannel, allocate, j13 + 44);
            }
            j12 = j10;
        }
        long j14 = j11;
        long j15 = 0;
        while (true) {
            if (j15 >= j12) {
                j = 0;
                break;
            }
            if (z2) {
                j9 = getu32(fileChannel, allocate, j14 + 0);
            } else {
                j9 = getu32(fileChannel, allocate, j14 + 0);
            }
            if (j9 != 2) {
                j14 += i;
                j15++;
            } else if (z2) {
                j = getu32(fileChannel, allocate, j14 + 4);
            } else {
                j = get64(fileChannel, allocate, j14 + 8);
            }
        }
        long j16 = 0;
        if (j == 0) {
            throw new ElfError("ELF file does not contain dynamic linking information");
        }
        long j17 = j;
        long j18 = 0;
        int i2 = 0;
        while (true) {
            if (z2) {
                z = z2;
                j2 = getu32(fileChannel, allocate, j17 + j16);
            } else {
                z = z2;
                j2 = get64(fileChannel, allocate, j17 + j16);
            }
            long j19 = j;
            if (j2 == 1) {
                if (i2 == Integer.MAX_VALUE) {
                    throw new ElfError("malformed DT_NEEDED section");
                }
                i2++;
            } else if (j2 == 5) {
                j18 = z ? getu32(fileChannel, allocate, j17 + 4) : get64(fileChannel, allocate, j17 + 8);
            }
            long j20 = 16;
            j17 += z ? 8L : 16L;
            j16 = 0;
            if (j2 != 0) {
                z2 = z;
                j = j19;
            } else {
                if (j18 == 0) {
                    throw new ElfError("Dynamic section string-table not found");
                }
                int i3 = 0;
                while (true) {
                    if (i3 >= j12) {
                        j3 = 0;
                        break;
                    }
                    if (z) {
                        j4 = getu32(fileChannel, allocate, j11 + j16);
                    } else {
                        j4 = getu32(fileChannel, allocate, j11 + j16);
                    }
                    if (j4 == 1) {
                        if (z) {
                            j6 = getu32(fileChannel, allocate, j11 + 8);
                        } else {
                            j6 = get64(fileChannel, allocate, j11 + j20);
                        }
                        if (z) {
                            j5 = j12;
                            j7 = getu32(fileChannel, allocate, j11 + 20);
                        } else {
                            j5 = j12;
                            j7 = get64(fileChannel, allocate, j11 + 40);
                        }
                        if (j6 <= j18 && j18 < j7 + j6) {
                            if (z) {
                                j8 = getu32(fileChannel, allocate, j11 + 4);
                            } else {
                                j8 = get64(fileChannel, allocate, j11 + 8);
                            }
                            j3 = j8 + (j18 - j6);
                        }
                    } else {
                        j5 = j12;
                    }
                    j11 += i;
                    i3++;
                    j12 = j5;
                    j20 = 16;
                    j16 = 0;
                }
                long j21 = 0;
                if (j3 == 0) {
                    throw new ElfError("did not find file offset of DT_STRTAB table");
                }
                String[] strArr = new String[i2];
                int i4 = 0;
                while (true) {
                    long j22 = z ? getu32(fileChannel, allocate, j19 + j21) : get64(fileChannel, allocate, j19 + j21);
                    if (j22 == 1) {
                        strArr[i4] = getSz(fileChannel, allocate, (z ? getu32(fileChannel, allocate, j19 + 4) : get64(fileChannel, allocate, j19 + 8)) + j3);
                        if (i4 == Integer.MAX_VALUE) {
                            throw new ElfError("malformed DT_NEEDED section");
                        }
                        i4++;
                    }
                    j19 += z ? 8L : 16L;
                    if (j22 == 0) {
                        if (i4 == strArr.length) {
                            return strArr;
                        }
                        throw new ElfError("malformed DT_NEEDED section");
                    }
                    j21 = 0;
                }
            }
        }
    }

    private static String getSz(FileChannel fileChannel, ByteBuffer byteBuffer, long j) throws IOException {
        StringBuilder sb = new StringBuilder();
        while (true) {
            long j2 = 1 + j;
            short u8Var = getu8(fileChannel, byteBuffer, j);
            if (u8Var != 0) {
                sb.append((char) u8Var);
                j = j2;
            } else {
                return sb.toString();
            }
        }
    }

    private static void read(FileChannel fileChannel, ByteBuffer byteBuffer, int i, long j) throws IOException {
        int read;
        byteBuffer.position(0);
        byteBuffer.limit(i);
        while (byteBuffer.remaining() > 0 && (read = fileChannel.read(byteBuffer, j)) != -1) {
            j += read;
        }
        if (byteBuffer.remaining() > 0) {
            throw new ElfError("ELF file truncated");
        }
        byteBuffer.position(0);
    }

    private static long get64(FileChannel fileChannel, ByteBuffer byteBuffer, long j) throws IOException {
        read(fileChannel, byteBuffer, 8, j);
        return byteBuffer.getLong();
    }

    private static long getu32(FileChannel fileChannel, ByteBuffer byteBuffer, long j) throws IOException {
        read(fileChannel, byteBuffer, 4, j);
        return byteBuffer.getInt() & 4294967295L;
    }

    private static int getu16(FileChannel fileChannel, ByteBuffer byteBuffer, long j) throws IOException {
        read(fileChannel, byteBuffer, 2, j);
        return byteBuffer.getShort() & 65535;
    }

    private static short getu8(FileChannel fileChannel, ByteBuffer byteBuffer, long j) throws IOException {
        read(fileChannel, byteBuffer, 1, j);
        return (short) (byteBuffer.get() & MidiConstants.STATUS_RESET);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class ElfError extends RuntimeException {
        ElfError(String str) {
            super(str);
        }
    }
}
