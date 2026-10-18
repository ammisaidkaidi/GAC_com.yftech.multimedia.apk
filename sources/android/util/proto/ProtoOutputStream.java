package android.util.proto;

import android.opengl.GLES32;
import android.provider.Telephony;
import android.util.Log;
import android.view.KeyEvent;
import android.view.textclassifier.TextClassifier;
import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;

/* loaded from: /home/user/work/dex/classes2.dex */
public final class ProtoOutputStream {
    public static final long FIELD_COUNT_MASK = 16492674416640L;
    public static final long FIELD_COUNT_PACKED = 5497558138880L;
    public static final long FIELD_COUNT_REPEATED = 2199023255552L;
    public static final int FIELD_COUNT_SHIFT = 40;
    public static final long FIELD_COUNT_SINGLE = 1099511627776L;
    public static final long FIELD_COUNT_UNKNOWN = 0;
    public static final int FIELD_ID_MASK = -8;
    public static final int FIELD_ID_SHIFT = 3;
    public static final long FIELD_TYPE_BOOL = 34359738368L;
    public static final long FIELD_TYPE_BYTES = 51539607552L;
    public static final long FIELD_TYPE_DOUBLE = 4294967296L;
    public static final long FIELD_TYPE_ENUM = 60129542144L;
    public static final long FIELD_TYPE_FIXED32 = 30064771072L;
    public static final long FIELD_TYPE_FIXED64 = 25769803776L;
    public static final long FIELD_TYPE_FLOAT = 8589934592L;
    public static final long FIELD_TYPE_INT32 = 21474836480L;
    public static final long FIELD_TYPE_INT64 = 12884901888L;
    public static final long FIELD_TYPE_MASK = 1095216660480L;
    public static final long FIELD_TYPE_MESSAGE = 47244640256L;
    private static final String[] FIELD_TYPE_NAMES = {"Double", "Float", "Int64", "UInt64", "Int32", "Fixed64", "Fixed32", "Bool", "String", "Group", "Message", "Bytes", "UInt32", "Enum", "SFixed32", "SFixed64", "SInt32", "SInt64"};
    public static final long FIELD_TYPE_SFIXED32 = 64424509440L;
    public static final long FIELD_TYPE_SFIXED64 = 68719476736L;
    public static final int FIELD_TYPE_SHIFT = 32;
    public static final long FIELD_TYPE_SINT32 = 73014444032L;
    public static final long FIELD_TYPE_SINT64 = 77309411328L;
    public static final long FIELD_TYPE_STRING = 38654705664L;
    public static final long FIELD_TYPE_UINT32 = 55834574848L;
    public static final long FIELD_TYPE_UINT64 = 17179869184L;
    public static final long FIELD_TYPE_UNKNOWN = 0;
    public static final String TAG = "ProtoOutputStream";
    public static final int WIRE_TYPE_END_GROUP = 4;
    public static final int WIRE_TYPE_FIXED32 = 5;
    public static final int WIRE_TYPE_FIXED64 = 1;
    public static final int WIRE_TYPE_LENGTH_DELIMITED = 2;
    public static final int WIRE_TYPE_MASK = 7;
    public static final int WIRE_TYPE_START_GROUP = 3;
    public static final int WIRE_TYPE_VARINT = 0;
    private EncodedBuffer mBuffer;
    private boolean mCompacted;
    private int mCopyBegin;
    private int mDepth;
    private long mExpectedObjectToken;
    private int mNextObjectId;
    private OutputStream mStream;

    public static int convertObjectIdToOrdinal(int i) {
        return 524287 - i;
    }

    public static int getDepthFromToken(long j) {
        return (int) ((j >> 51) & 511);
    }

    private static String getFieldCountString(long j) {
        if (j == FIELD_COUNT_SINGLE) {
            return TextClassifier.TYPE_UNKNOWN;
        }
        if (j == FIELD_COUNT_REPEATED) {
            return "Repeated";
        }
        if (j == FIELD_COUNT_PACKED) {
            return "Packed";
        }
        return null;
    }

    public static int getObjectIdFromToken(long j) {
        return (int) ((j >> 32) & 524287);
    }

    public static boolean getRepeatedFromToken(long j) {
        return ((j >> 60) & 1) != 0;
    }

    public static int getSizePosFromToken(long j) {
        return (int) j;
    }

    public static int getTagSizeFromToken(long j) {
        return (int) ((j >> 61) & 7);
    }

    public static long makeFieldId(int i, long j) {
        return j | (i & 4294967295L);
    }

    public static long makeToken(int i, boolean z, int i2, int i3, int i4) {
        return (z ? 1152921504606846976L : 0L) | ((i & 7) << 61) | ((511 & i2) << 51) | ((i3 & 524287) << 32) | (4294967295L & i4);
    }

    public ProtoOutputStream() {
        this(0);
    }

    public ProtoOutputStream(int i) {
        this.mNextObjectId = -1;
        this.mBuffer = new EncodedBuffer(i);
    }

    public ProtoOutputStream(OutputStream outputStream) {
        this();
        this.mStream = outputStream;
    }

    public ProtoOutputStream(FileDescriptor fileDescriptor) {
        this(new FileOutputStream(fileDescriptor));
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0018. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x001b. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x001e. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:11:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x008e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void write(long j, double d) {
        assertNotCompacted();
        int i = (int) j;
        int i2 = (int) ((17587891077120L & j) >> 32);
        switch (i2) {
            case 257:
                writeDoubleImpl(i, d);
                return;
            case 258:
                writeFloatImpl(i, (float) d);
                return;
            case 259:
                writeInt64Impl(i, (long) d);
                return;
            case 260:
                writeUInt64Impl(i, (long) d);
                return;
            case 261:
                writeInt32Impl(i, (int) d);
                return;
            case 262:
                writeFixed64Impl(i, (long) d);
                return;
            case KeyEvent.KEYCODE_NAVIGATE_OUT /* 263 */:
                writeFixed32Impl(i, (int) d);
                return;
            case KeyEvent.KEYCODE_STEM_PRIMARY /* 264 */:
                writeBoolImpl(i, d != 0.0d);
                return;
            default:
                switch (i2) {
                    case KeyEvent.KEYCODE_DPAD_DOWN_LEFT /* 269 */:
                        writeUInt32Impl(i, (int) d);
                        return;
                    case KeyEvent.KEYCODE_DPAD_UP_RIGHT /* 270 */:
                        writeEnumImpl(i, (int) d);
                        return;
                    case KeyEvent.KEYCODE_DPAD_DOWN_RIGHT /* 271 */:
                        writeSFixed32Impl(i, (int) d);
                        return;
                    case KeyEvent.KEYCODE_MEDIA_SKIP_FORWARD /* 272 */:
                        writeSFixed64Impl(i, (long) d);
                        return;
                    case KeyEvent.KEYCODE_MEDIA_SKIP_BACKWARD /* 273 */:
                        writeSInt32Impl(i, (int) d);
                        return;
                    case KeyEvent.KEYCODE_MEDIA_STEP_FORWARD /* 274 */:
                        writeSInt64Impl(i, (long) d);
                        return;
                    default:
                        switch (i2) {
                            case 513:
                                writeRepeatedDoubleImpl(i, d);
                                return;
                            case 514:
                                writeRepeatedFloatImpl(i, (float) d);
                                return;
                            case 515:
                                writeRepeatedInt64Impl(i, (long) d);
                                return;
                            case 516:
                                writeRepeatedUInt64Impl(i, (long) d);
                                return;
                            case 517:
                                writeRepeatedInt32Impl(i, (int) d);
                                return;
                            case 518:
                                writeRepeatedFixed64Impl(i, (long) d);
                                return;
                            case 519:
                                writeRepeatedFixed32Impl(i, (int) d);
                                return;
                            case 520:
                                writeRepeatedBoolImpl(i, d != 0.0d);
                                return;
                            default:
                                switch (i2) {
                                    case 525:
                                        writeRepeatedUInt32Impl(i, (int) d);
                                        return;
                                    case 526:
                                        writeRepeatedEnumImpl(i, (int) d);
                                        return;
                                    case 527:
                                        writeRepeatedSFixed32Impl(i, (int) d);
                                        return;
                                    case 528:
                                        writeRepeatedSFixed64Impl(i, (long) d);
                                        return;
                                    case 529:
                                        writeRepeatedSInt32Impl(i, (int) d);
                                        return;
                                    case 530:
                                        writeRepeatedSInt64Impl(i, (long) d);
                                        return;
                                    default:
                                        switch (i2) {
                                            case 1281:
                                                break;
                                            case 1282:
                                                break;
                                            case 1283:
                                                break;
                                            case 1284:
                                                break;
                                            case 1285:
                                                break;
                                            case 1286:
                                                break;
                                            case GLES32.GL_CONTEXT_LOST /* 1287 */:
                                                break;
                                            case 1288:
                                                break;
                                            default:
                                                switch (i2) {
                                                    case 1293:
                                                        break;
                                                    case 1294:
                                                        break;
                                                    case 1295:
                                                        break;
                                                    case 1296:
                                                        break;
                                                    case 1297:
                                                        break;
                                                    case 1298:
                                                        break;
                                                    default:
                                                        throw new IllegalArgumentException("Attempt to call write(long, double) with " + getFieldIdString(j));
                                                }
                                        }
                                }
                        }
                }
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0017. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x001a. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x001d. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:11:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x008c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void write(long j, float f) {
        assertNotCompacted();
        int i = (int) j;
        int i2 = (int) ((17587891077120L & j) >> 32);
        switch (i2) {
            case 257:
                writeDoubleImpl(i, f);
                return;
            case 258:
                writeFloatImpl(i, f);
                return;
            case 259:
                writeInt64Impl(i, f);
                return;
            case 260:
                writeUInt64Impl(i, f);
                return;
            case 261:
                writeInt32Impl(i, (int) f);
                return;
            case 262:
                writeFixed64Impl(i, f);
                return;
            case KeyEvent.KEYCODE_NAVIGATE_OUT /* 263 */:
                writeFixed32Impl(i, (int) f);
                return;
            case KeyEvent.KEYCODE_STEM_PRIMARY /* 264 */:
                writeBoolImpl(i, f != 0.0f);
                return;
            default:
                switch (i2) {
                    case KeyEvent.KEYCODE_DPAD_DOWN_LEFT /* 269 */:
                        writeUInt32Impl(i, (int) f);
                        return;
                    case KeyEvent.KEYCODE_DPAD_UP_RIGHT /* 270 */:
                        writeEnumImpl(i, (int) f);
                        return;
                    case KeyEvent.KEYCODE_DPAD_DOWN_RIGHT /* 271 */:
                        writeSFixed32Impl(i, (int) f);
                        return;
                    case KeyEvent.KEYCODE_MEDIA_SKIP_FORWARD /* 272 */:
                        writeSFixed64Impl(i, f);
                        return;
                    case KeyEvent.KEYCODE_MEDIA_SKIP_BACKWARD /* 273 */:
                        writeSInt32Impl(i, (int) f);
                        return;
                    case KeyEvent.KEYCODE_MEDIA_STEP_FORWARD /* 274 */:
                        writeSInt64Impl(i, f);
                        return;
                    default:
                        switch (i2) {
                            case 513:
                                writeRepeatedDoubleImpl(i, f);
                                return;
                            case 514:
                                writeRepeatedFloatImpl(i, f);
                                return;
                            case 515:
                                writeRepeatedInt64Impl(i, f);
                                return;
                            case 516:
                                writeRepeatedUInt64Impl(i, f);
                                return;
                            case 517:
                                writeRepeatedInt32Impl(i, (int) f);
                                return;
                            case 518:
                                writeRepeatedFixed64Impl(i, f);
                                return;
                            case 519:
                                writeRepeatedFixed32Impl(i, (int) f);
                                return;
                            case 520:
                                writeRepeatedBoolImpl(i, f != 0.0f);
                                return;
                            default:
                                switch (i2) {
                                    case 525:
                                        writeRepeatedUInt32Impl(i, (int) f);
                                        return;
                                    case 526:
                                        writeRepeatedEnumImpl(i, (int) f);
                                        return;
                                    case 527:
                                        writeRepeatedSFixed32Impl(i, (int) f);
                                        return;
                                    case 528:
                                        writeRepeatedSFixed64Impl(i, f);
                                        return;
                                    case 529:
                                        writeRepeatedSInt32Impl(i, (int) f);
                                        return;
                                    case 530:
                                        writeRepeatedSInt64Impl(i, f);
                                        return;
                                    default:
                                        switch (i2) {
                                            case 1281:
                                                break;
                                            case 1282:
                                                break;
                                            case 1283:
                                                break;
                                            case 1284:
                                                break;
                                            case 1285:
                                                break;
                                            case 1286:
                                                break;
                                            case GLES32.GL_CONTEXT_LOST /* 1287 */:
                                                break;
                                            case 1288:
                                                break;
                                            default:
                                                switch (i2) {
                                                    case 1293:
                                                        break;
                                                    case 1294:
                                                        break;
                                                    case 1295:
                                                        break;
                                                    case 1296:
                                                        break;
                                                    case 1297:
                                                        break;
                                                    case 1298:
                                                        break;
                                                    default:
                                                        throw new IllegalArgumentException("Attempt to call write(long, float) with " + getFieldIdString(j));
                                                }
                                        }
                                }
                        }
                }
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0016. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0019. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x001c. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:11:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0083  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void write(long j, int i) {
        assertNotCompacted();
        int i2 = (int) j;
        int i3 = (int) ((17587891077120L & j) >> 32);
        switch (i3) {
            case 257:
                writeDoubleImpl(i2, i);
                return;
            case 258:
                writeFloatImpl(i2, i);
                return;
            case 259:
                writeInt64Impl(i2, i);
                return;
            case 260:
                writeUInt64Impl(i2, i);
                return;
            case 261:
                writeInt32Impl(i2, i);
                return;
            case 262:
                writeFixed64Impl(i2, i);
                return;
            case KeyEvent.KEYCODE_NAVIGATE_OUT /* 263 */:
                writeFixed32Impl(i2, i);
                return;
            case KeyEvent.KEYCODE_STEM_PRIMARY /* 264 */:
                writeBoolImpl(i2, i != 0);
                return;
            default:
                switch (i3) {
                    case KeyEvent.KEYCODE_DPAD_DOWN_LEFT /* 269 */:
                        writeUInt32Impl(i2, i);
                        return;
                    case KeyEvent.KEYCODE_DPAD_UP_RIGHT /* 270 */:
                        writeEnumImpl(i2, i);
                        return;
                    case KeyEvent.KEYCODE_DPAD_DOWN_RIGHT /* 271 */:
                        writeSFixed32Impl(i2, i);
                        return;
                    case KeyEvent.KEYCODE_MEDIA_SKIP_FORWARD /* 272 */:
                        writeSFixed64Impl(i2, i);
                        return;
                    case KeyEvent.KEYCODE_MEDIA_SKIP_BACKWARD /* 273 */:
                        writeSInt32Impl(i2, i);
                        return;
                    case KeyEvent.KEYCODE_MEDIA_STEP_FORWARD /* 274 */:
                        writeSInt64Impl(i2, i);
                        return;
                    default:
                        switch (i3) {
                            case 513:
                                writeRepeatedDoubleImpl(i2, i);
                                return;
                            case 514:
                                writeRepeatedFloatImpl(i2, i);
                                return;
                            case 515:
                                writeRepeatedInt64Impl(i2, i);
                                return;
                            case 516:
                                writeRepeatedUInt64Impl(i2, i);
                                return;
                            case 517:
                                writeRepeatedInt32Impl(i2, i);
                                return;
                            case 518:
                                writeRepeatedFixed64Impl(i2, i);
                                return;
                            case 519:
                                writeRepeatedFixed32Impl(i2, i);
                                return;
                            case 520:
                                writeRepeatedBoolImpl(i2, i != 0);
                                return;
                            default:
                                switch (i3) {
                                    case 525:
                                        writeRepeatedUInt32Impl(i2, i);
                                        return;
                                    case 526:
                                        writeRepeatedEnumImpl(i2, i);
                                        return;
                                    case 527:
                                        writeRepeatedSFixed32Impl(i2, i);
                                        return;
                                    case 528:
                                        writeRepeatedSFixed64Impl(i2, i);
                                        return;
                                    case 529:
                                        writeRepeatedSInt32Impl(i2, i);
                                        return;
                                    case 530:
                                        writeRepeatedSInt64Impl(i2, i);
                                        return;
                                    default:
                                        switch (i3) {
                                            case 1281:
                                                break;
                                            case 1282:
                                                break;
                                            case 1283:
                                                break;
                                            case 1284:
                                                break;
                                            case 1285:
                                                break;
                                            case 1286:
                                                break;
                                            case GLES32.GL_CONTEXT_LOST /* 1287 */:
                                                break;
                                            case 1288:
                                                break;
                                            default:
                                                switch (i3) {
                                                    case 1293:
                                                        break;
                                                    case 1294:
                                                        break;
                                                    case 1295:
                                                        break;
                                                    case 1296:
                                                        break;
                                                    case 1297:
                                                        break;
                                                    case 1298:
                                                        break;
                                                    default:
                                                        throw new IllegalArgumentException("Attempt to call write(long, int) with " + getFieldIdString(j));
                                                }
                                        }
                                }
                        }
                }
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0018. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x001b. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x001e. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:11:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0088  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void write(long j, long j2) {
        assertNotCompacted();
        int i = (int) j;
        int i2 = (int) ((17587891077120L & j) >> 32);
        switch (i2) {
            case 257:
                writeDoubleImpl(i, j2);
                return;
            case 258:
                writeFloatImpl(i, (float) j2);
                return;
            case 259:
                writeInt64Impl(i, j2);
                return;
            case 260:
                writeUInt64Impl(i, j2);
                return;
            case 261:
                writeInt32Impl(i, (int) j2);
                return;
            case 262:
                writeFixed64Impl(i, j2);
                return;
            case KeyEvent.KEYCODE_NAVIGATE_OUT /* 263 */:
                writeFixed32Impl(i, (int) j2);
                return;
            case KeyEvent.KEYCODE_STEM_PRIMARY /* 264 */:
                writeBoolImpl(i, j2 != 0);
                return;
            default:
                switch (i2) {
                    case KeyEvent.KEYCODE_DPAD_DOWN_LEFT /* 269 */:
                        writeUInt32Impl(i, (int) j2);
                        return;
                    case KeyEvent.KEYCODE_DPAD_UP_RIGHT /* 270 */:
                        writeEnumImpl(i, (int) j2);
                        return;
                    case KeyEvent.KEYCODE_DPAD_DOWN_RIGHT /* 271 */:
                        writeSFixed32Impl(i, (int) j2);
                        return;
                    case KeyEvent.KEYCODE_MEDIA_SKIP_FORWARD /* 272 */:
                        writeSFixed64Impl(i, j2);
                        return;
                    case KeyEvent.KEYCODE_MEDIA_SKIP_BACKWARD /* 273 */:
                        writeSInt32Impl(i, (int) j2);
                        return;
                    case KeyEvent.KEYCODE_MEDIA_STEP_FORWARD /* 274 */:
                        writeSInt64Impl(i, j2);
                        return;
                    default:
                        switch (i2) {
                            case 513:
                                writeRepeatedDoubleImpl(i, j2);
                                return;
                            case 514:
                                writeRepeatedFloatImpl(i, (float) j2);
                                return;
                            case 515:
                                writeRepeatedInt64Impl(i, j2);
                                return;
                            case 516:
                                writeRepeatedUInt64Impl(i, j2);
                                return;
                            case 517:
                                writeRepeatedInt32Impl(i, (int) j2);
                                return;
                            case 518:
                                writeRepeatedFixed64Impl(i, j2);
                                return;
                            case 519:
                                writeRepeatedFixed32Impl(i, (int) j2);
                                return;
                            case 520:
                                writeRepeatedBoolImpl(i, j2 != 0);
                                return;
                            default:
                                switch (i2) {
                                    case 525:
                                        writeRepeatedUInt32Impl(i, (int) j2);
                                        return;
                                    case 526:
                                        writeRepeatedEnumImpl(i, (int) j2);
                                        return;
                                    case 527:
                                        writeRepeatedSFixed32Impl(i, (int) j2);
                                        return;
                                    case 528:
                                        writeRepeatedSFixed64Impl(i, j2);
                                        return;
                                    case 529:
                                        writeRepeatedSInt32Impl(i, (int) j2);
                                        return;
                                    case 530:
                                        writeRepeatedSInt64Impl(i, j2);
                                        return;
                                    default:
                                        switch (i2) {
                                            case 1281:
                                                break;
                                            case 1282:
                                                break;
                                            case 1283:
                                                break;
                                            case 1284:
                                                break;
                                            case 1285:
                                                break;
                                            case 1286:
                                                break;
                                            case GLES32.GL_CONTEXT_LOST /* 1287 */:
                                                break;
                                            case 1288:
                                                break;
                                            default:
                                                switch (i2) {
                                                    case 1293:
                                                        break;
                                                    case 1294:
                                                        break;
                                                    case 1295:
                                                        break;
                                                    case 1296:
                                                        break;
                                                    case 1297:
                                                        break;
                                                    case 1298:
                                                        break;
                                                    default:
                                                        throw new IllegalArgumentException("Attempt to call write(long, long) with " + getFieldIdString(j));
                                                }
                                        }
                                }
                        }
                }
        }
    }

    public void write(long j, boolean z) {
        assertNotCompacted();
        int i = (int) j;
        int i2 = (int) ((17587891077120L & j) >> 32);
        if (i2 == 264) {
            writeBoolImpl(i, z);
            return;
        }
        if (i2 == 520 || i2 == 1288) {
            writeRepeatedBoolImpl(i, z);
            return;
        }
        throw new IllegalArgumentException("Attempt to call write(long, boolean) with " + getFieldIdString(j));
    }

    public void write(long j, String str) {
        assertNotCompacted();
        int i = (int) j;
        int i2 = (int) ((17587891077120L & j) >> 32);
        if (i2 == 265) {
            writeStringImpl(i, str);
            return;
        }
        if (i2 == 521 || i2 == 1289) {
            writeRepeatedStringImpl(i, str);
            return;
        }
        throw new IllegalArgumentException("Attempt to call write(long, String) with " + getFieldIdString(j));
    }

    public void write(long j, byte[] bArr) {
        assertNotCompacted();
        int i = (int) j;
        switch ((int) ((17587891077120L & j) >> 32)) {
            case KeyEvent.KEYCODE_STEM_3 /* 267 */:
                writeObjectImpl(i, bArr);
                return;
            case KeyEvent.KEYCODE_DPAD_UP_LEFT /* 268 */:
                writeBytesImpl(i, bArr);
                return;
            case 523:
            case 1291:
                writeRepeatedObjectImpl(i, bArr);
                return;
            case 524:
            case 1292:
                writeRepeatedBytesImpl(i, bArr);
                return;
            default:
                throw new IllegalArgumentException("Attempt to call write(long, byte[]) with " + getFieldIdString(j));
        }
    }

    public long start(long j) {
        assertNotCompacted();
        int i = (int) j;
        if ((FIELD_TYPE_MASK & j) == FIELD_TYPE_MESSAGE) {
            long j2 = FIELD_COUNT_MASK & j;
            if (j2 == FIELD_COUNT_SINGLE) {
                return startObjectImpl(i, false);
            }
            if (j2 == FIELD_COUNT_REPEATED || j2 == FIELD_COUNT_PACKED) {
                return startObjectImpl(i, true);
            }
        }
        throw new IllegalArgumentException("Attempt to call start(long) with " + getFieldIdString(j));
    }

    public void end(long j) {
        endObjectImpl(j, getRepeatedFromToken(j));
    }

    @Deprecated
    public void writeDouble(long j, double d) {
        assertNotCompacted();
        writeDoubleImpl(checkFieldId(j, 1103806595072L), d);
    }

    private void writeDoubleImpl(int i, double d) {
        if (d != 0.0d) {
            writeTag(i, 1);
            this.mBuffer.writeRawFixed64(Double.doubleToLongBits(d));
        }
    }

    @Deprecated
    public void writeRepeatedDouble(long j, double d) {
        assertNotCompacted();
        writeRepeatedDoubleImpl(checkFieldId(j, 2203318222848L), d);
    }

    private void writeRepeatedDoubleImpl(int i, double d) {
        writeTag(i, 1);
        this.mBuffer.writeRawFixed64(Double.doubleToLongBits(d));
    }

    @Deprecated
    public void writePackedDouble(long j, double[] dArr) {
        assertNotCompacted();
        int checkFieldId = checkFieldId(j, 5501853106176L);
        int length = dArr != null ? dArr.length : 0;
        if (length > 0) {
            writeKnownLengthHeader(checkFieldId, length * 8);
            for (int i = 0; i < length; i++) {
                this.mBuffer.writeRawFixed64(Double.doubleToLongBits(dArr[i]));
            }
        }
    }

    @Deprecated
    public void writeFloat(long j, float f) {
        assertNotCompacted();
        writeFloatImpl(checkFieldId(j, 1108101562368L), f);
    }

    private void writeFloatImpl(int i, float f) {
        if (f != 0.0f) {
            writeTag(i, 5);
            this.mBuffer.writeRawFixed32(Float.floatToIntBits(f));
        }
    }

    @Deprecated
    public void writeRepeatedFloat(long j, float f) {
        assertNotCompacted();
        writeRepeatedFloatImpl(checkFieldId(j, 2207613190144L), f);
    }

    private void writeRepeatedFloatImpl(int i, float f) {
        writeTag(i, 5);
        this.mBuffer.writeRawFixed32(Float.floatToIntBits(f));
    }

    @Deprecated
    public void writePackedFloat(long j, float[] fArr) {
        assertNotCompacted();
        int checkFieldId = checkFieldId(j, 5506148073472L);
        int length = fArr != null ? fArr.length : 0;
        if (length > 0) {
            writeKnownLengthHeader(checkFieldId, length * 4);
            for (int i = 0; i < length; i++) {
                this.mBuffer.writeRawFixed32(Float.floatToIntBits(fArr[i]));
            }
        }
    }

    private void writeUnsignedVarintFromSignedInt(int i) {
        if (i >= 0) {
            this.mBuffer.writeRawVarint32(i);
        } else {
            this.mBuffer.writeRawVarint64(i);
        }
    }

    @Deprecated
    public void writeInt32(long j, int i) {
        assertNotCompacted();
        writeInt32Impl(checkFieldId(j, 1120986464256L), i);
    }

    private void writeInt32Impl(int i, int i2) {
        if (i2 != 0) {
            writeTag(i, 0);
            writeUnsignedVarintFromSignedInt(i2);
        }
    }

    @Deprecated
    public void writeRepeatedInt32(long j, int i) {
        assertNotCompacted();
        writeRepeatedInt32Impl(checkFieldId(j, 2220498092032L), i);
    }

    private void writeRepeatedInt32Impl(int i, int i2) {
        writeTag(i, 0);
        writeUnsignedVarintFromSignedInt(i2);
    }

    @Deprecated
    public void writePackedInt32(long j, int[] iArr) {
        assertNotCompacted();
        int checkFieldId = checkFieldId(j, 5519032975360L);
        int length = iArr != null ? iArr.length : 0;
        if (length > 0) {
            int i = 0;
            for (int i2 = 0; i2 < length; i2++) {
                int i3 = iArr[i2];
                i += i3 >= 0 ? EncodedBuffer.getRawVarint32Size(i3) : 10;
            }
            writeKnownLengthHeader(checkFieldId, i);
            for (int i4 = 0; i4 < length; i4++) {
                writeUnsignedVarintFromSignedInt(iArr[i4]);
            }
        }
    }

    @Deprecated
    public void writeInt64(long j, long j2) {
        assertNotCompacted();
        writeInt64Impl(checkFieldId(j, 1112396529664L), j2);
    }

    private void writeInt64Impl(int i, long j) {
        if (j != 0) {
            writeTag(i, 0);
            this.mBuffer.writeRawVarint64(j);
        }
    }

    @Deprecated
    public void writeRepeatedInt64(long j, long j2) {
        assertNotCompacted();
        writeRepeatedInt64Impl(checkFieldId(j, 2211908157440L), j2);
    }

    private void writeRepeatedInt64Impl(int i, long j) {
        writeTag(i, 0);
        this.mBuffer.writeRawVarint64(j);
    }

    @Deprecated
    public void writePackedInt64(long j, long[] jArr) {
        assertNotCompacted();
        int checkFieldId = checkFieldId(j, 5510443040768L);
        int length = jArr != null ? jArr.length : 0;
        if (length > 0) {
            int i = 0;
            for (int i2 = 0; i2 < length; i2++) {
                i += EncodedBuffer.getRawVarint64Size(jArr[i2]);
            }
            writeKnownLengthHeader(checkFieldId, i);
            for (int i3 = 0; i3 < length; i3++) {
                this.mBuffer.writeRawVarint64(jArr[i3]);
            }
        }
    }

    @Deprecated
    public void writeUInt32(long j, int i) {
        assertNotCompacted();
        writeUInt32Impl(checkFieldId(j, 1155346202624L), i);
    }

    private void writeUInt32Impl(int i, int i2) {
        if (i2 != 0) {
            writeTag(i, 0);
            this.mBuffer.writeRawVarint32(i2);
        }
    }

    @Deprecated
    public void writeRepeatedUInt32(long j, int i) {
        assertNotCompacted();
        writeRepeatedUInt32Impl(checkFieldId(j, 2254857830400L), i);
    }

    private void writeRepeatedUInt32Impl(int i, int i2) {
        writeTag(i, 0);
        this.mBuffer.writeRawVarint32(i2);
    }

    @Deprecated
    public void writePackedUInt32(long j, int[] iArr) {
        assertNotCompacted();
        int checkFieldId = checkFieldId(j, 5553392713728L);
        int length = iArr != null ? iArr.length : 0;
        if (length > 0) {
            int i = 0;
            for (int i2 = 0; i2 < length; i2++) {
                i += EncodedBuffer.getRawVarint32Size(iArr[i2]);
            }
            writeKnownLengthHeader(checkFieldId, i);
            for (int i3 = 0; i3 < length; i3++) {
                this.mBuffer.writeRawVarint32(iArr[i3]);
            }
        }
    }

    @Deprecated
    public void writeUInt64(long j, long j2) {
        assertNotCompacted();
        writeUInt64Impl(checkFieldId(j, 1116691496960L), j2);
    }

    private void writeUInt64Impl(int i, long j) {
        if (j != 0) {
            writeTag(i, 0);
            this.mBuffer.writeRawVarint64(j);
        }
    }

    @Deprecated
    public void writeRepeatedUInt64(long j, long j2) {
        assertNotCompacted();
        writeRepeatedUInt64Impl(checkFieldId(j, 2216203124736L), j2);
    }

    private void writeRepeatedUInt64Impl(int i, long j) {
        writeTag(i, 0);
        this.mBuffer.writeRawVarint64(j);
    }

    @Deprecated
    public void writePackedUInt64(long j, long[] jArr) {
        assertNotCompacted();
        int checkFieldId = checkFieldId(j, 5514738008064L);
        int length = jArr != null ? jArr.length : 0;
        if (length > 0) {
            int i = 0;
            for (int i2 = 0; i2 < length; i2++) {
                i += EncodedBuffer.getRawVarint64Size(jArr[i2]);
            }
            writeKnownLengthHeader(checkFieldId, i);
            for (int i3 = 0; i3 < length; i3++) {
                this.mBuffer.writeRawVarint64(jArr[i3]);
            }
        }
    }

    @Deprecated
    public void writeSInt32(long j, int i) {
        assertNotCompacted();
        writeSInt32Impl(checkFieldId(j, 1172526071808L), i);
    }

    private void writeSInt32Impl(int i, int i2) {
        if (i2 != 0) {
            writeTag(i, 0);
            this.mBuffer.writeRawZigZag32(i2);
        }
    }

    @Deprecated
    public void writeRepeatedSInt32(long j, int i) {
        assertNotCompacted();
        writeRepeatedSInt32Impl(checkFieldId(j, 2272037699584L), i);
    }

    private void writeRepeatedSInt32Impl(int i, int i2) {
        writeTag(i, 0);
        this.mBuffer.writeRawZigZag32(i2);
    }

    @Deprecated
    public void writePackedSInt32(long j, int[] iArr) {
        assertNotCompacted();
        int checkFieldId = checkFieldId(j, 5570572582912L);
        int length = iArr != null ? iArr.length : 0;
        if (length > 0) {
            int i = 0;
            for (int i2 = 0; i2 < length; i2++) {
                i += EncodedBuffer.getRawZigZag32Size(iArr[i2]);
            }
            writeKnownLengthHeader(checkFieldId, i);
            for (int i3 = 0; i3 < length; i3++) {
                this.mBuffer.writeRawZigZag32(iArr[i3]);
            }
        }
    }

    @Deprecated
    public void writeSInt64(long j, long j2) {
        assertNotCompacted();
        writeSInt64Impl(checkFieldId(j, 1176821039104L), j2);
    }

    private void writeSInt64Impl(int i, long j) {
        if (j != 0) {
            writeTag(i, 0);
            this.mBuffer.writeRawZigZag64(j);
        }
    }

    @Deprecated
    public void writeRepeatedSInt64(long j, long j2) {
        assertNotCompacted();
        writeRepeatedSInt64Impl(checkFieldId(j, 2276332666880L), j2);
    }

    private void writeRepeatedSInt64Impl(int i, long j) {
        writeTag(i, 0);
        this.mBuffer.writeRawZigZag64(j);
    }

    @Deprecated
    public void writePackedSInt64(long j, long[] jArr) {
        assertNotCompacted();
        int checkFieldId = checkFieldId(j, 5574867550208L);
        int length = jArr != null ? jArr.length : 0;
        if (length > 0) {
            int i = 0;
            for (int i2 = 0; i2 < length; i2++) {
                i += EncodedBuffer.getRawZigZag64Size(jArr[i2]);
            }
            writeKnownLengthHeader(checkFieldId, i);
            for (int i3 = 0; i3 < length; i3++) {
                this.mBuffer.writeRawZigZag64(jArr[i3]);
            }
        }
    }

    @Deprecated
    public void writeFixed32(long j, int i) {
        assertNotCompacted();
        writeFixed32Impl(checkFieldId(j, 1129576398848L), i);
    }

    private void writeFixed32Impl(int i, int i2) {
        if (i2 != 0) {
            writeTag(i, 5);
            this.mBuffer.writeRawFixed32(i2);
        }
    }

    @Deprecated
    public void writeRepeatedFixed32(long j, int i) {
        assertNotCompacted();
        writeRepeatedFixed32Impl(checkFieldId(j, 2229088026624L), i);
    }

    private void writeRepeatedFixed32Impl(int i, int i2) {
        writeTag(i, 5);
        this.mBuffer.writeRawFixed32(i2);
    }

    @Deprecated
    public void writePackedFixed32(long j, int[] iArr) {
        assertNotCompacted();
        int checkFieldId = checkFieldId(j, 5527622909952L);
        int length = iArr != null ? iArr.length : 0;
        if (length > 0) {
            writeKnownLengthHeader(checkFieldId, length * 4);
            for (int i = 0; i < length; i++) {
                this.mBuffer.writeRawFixed32(iArr[i]);
            }
        }
    }

    @Deprecated
    public void writeFixed64(long j, long j2) {
        assertNotCompacted();
        writeFixed64Impl(checkFieldId(j, 1125281431552L), j2);
    }

    private void writeFixed64Impl(int i, long j) {
        if (j != 0) {
            writeTag(i, 1);
            this.mBuffer.writeRawFixed64(j);
        }
    }

    @Deprecated
    public void writeRepeatedFixed64(long j, long j2) {
        assertNotCompacted();
        writeRepeatedFixed64Impl(checkFieldId(j, 2224793059328L), j2);
    }

    private void writeRepeatedFixed64Impl(int i, long j) {
        writeTag(i, 1);
        this.mBuffer.writeRawFixed64(j);
    }

    @Deprecated
    public void writePackedFixed64(long j, long[] jArr) {
        assertNotCompacted();
        int checkFieldId = checkFieldId(j, 5523327942656L);
        int length = jArr != null ? jArr.length : 0;
        if (length > 0) {
            writeKnownLengthHeader(checkFieldId, length * 8);
            for (int i = 0; i < length; i++) {
                this.mBuffer.writeRawFixed64(jArr[i]);
            }
        }
    }

    @Deprecated
    public void writeSFixed32(long j, int i) {
        assertNotCompacted();
        writeSFixed32Impl(checkFieldId(j, 1163936137216L), i);
    }

    private void writeSFixed32Impl(int i, int i2) {
        if (i2 != 0) {
            writeTag(i, 5);
            this.mBuffer.writeRawFixed32(i2);
        }
    }

    @Deprecated
    public void writeRepeatedSFixed32(long j, int i) {
        assertNotCompacted();
        writeRepeatedSFixed32Impl(checkFieldId(j, 2263447764992L), i);
    }

    private void writeRepeatedSFixed32Impl(int i, int i2) {
        writeTag(i, 5);
        this.mBuffer.writeRawFixed32(i2);
    }

    @Deprecated
    public void writePackedSFixed32(long j, int[] iArr) {
        assertNotCompacted();
        int checkFieldId = checkFieldId(j, 5561982648320L);
        int length = iArr != null ? iArr.length : 0;
        if (length > 0) {
            writeKnownLengthHeader(checkFieldId, length * 4);
            for (int i = 0; i < length; i++) {
                this.mBuffer.writeRawFixed32(iArr[i]);
            }
        }
    }

    @Deprecated
    public void writeSFixed64(long j, long j2) {
        assertNotCompacted();
        writeSFixed64Impl(checkFieldId(j, 1168231104512L), j2);
    }

    private void writeSFixed64Impl(int i, long j) {
        if (j != 0) {
            writeTag(i, 1);
            this.mBuffer.writeRawFixed64(j);
        }
    }

    @Deprecated
    public void writeRepeatedSFixed64(long j, long j2) {
        assertNotCompacted();
        writeRepeatedSFixed64Impl(checkFieldId(j, 2267742732288L), j2);
    }

    private void writeRepeatedSFixed64Impl(int i, long j) {
        writeTag(i, 1);
        this.mBuffer.writeRawFixed64(j);
    }

    @Deprecated
    public void writePackedSFixed64(long j, long[] jArr) {
        assertNotCompacted();
        int checkFieldId = checkFieldId(j, 5566277615616L);
        int length = jArr != null ? jArr.length : 0;
        if (length > 0) {
            writeKnownLengthHeader(checkFieldId, length * 8);
            for (int i = 0; i < length; i++) {
                this.mBuffer.writeRawFixed64(jArr[i]);
            }
        }
    }

    @Deprecated
    public void writeBool(long j, boolean z) {
        assertNotCompacted();
        writeBoolImpl(checkFieldId(j, 1133871366144L), z);
    }

    private void writeBoolImpl(int i, boolean z) {
        if (z) {
            writeTag(i, 0);
            this.mBuffer.writeRawByte((byte) 1);
        }
    }

    @Deprecated
    public void writeRepeatedBool(long j, boolean z) {
        assertNotCompacted();
        writeRepeatedBoolImpl(checkFieldId(j, 2233382993920L), z);
    }

    private void writeRepeatedBoolImpl(int i, boolean z) {
        writeTag(i, 0);
        this.mBuffer.writeRawByte(z ? (byte) 1 : (byte) 0);
    }

    @Deprecated
    public void writePackedBool(long j, boolean[] zArr) {
        assertNotCompacted();
        int checkFieldId = checkFieldId(j, 5531917877248L);
        int length = zArr != null ? zArr.length : 0;
        if (length > 0) {
            writeKnownLengthHeader(checkFieldId, length);
            for (int i = 0; i < length; i++) {
                this.mBuffer.writeRawByte(zArr[i] ? (byte) 1 : (byte) 0);
            }
        }
    }

    @Deprecated
    public void writeString(long j, String str) {
        assertNotCompacted();
        writeStringImpl(checkFieldId(j, 1138166333440L), str);
    }

    private void writeStringImpl(int i, String str) {
        if (str == null || str.length() <= 0) {
            return;
        }
        writeUtf8String(i, str);
    }

    @Deprecated
    public void writeRepeatedString(long j, String str) {
        assertNotCompacted();
        writeRepeatedStringImpl(checkFieldId(j, 2237677961216L), str);
    }

    private void writeRepeatedStringImpl(int i, String str) {
        if (str == null || str.length() == 0) {
            writeKnownLengthHeader(i, 0);
        } else {
            writeUtf8String(i, str);
        }
    }

    private void writeUtf8String(int i, String str) {
        try {
            byte[] bytes = str.getBytes("UTF-8");
            writeKnownLengthHeader(i, bytes.length);
            this.mBuffer.writeRawBuffer(bytes);
        } catch (UnsupportedEncodingException unused) {
            throw new RuntimeException("not possible");
        }
    }

    @Deprecated
    public void writeBytes(long j, byte[] bArr) {
        assertNotCompacted();
        writeBytesImpl(checkFieldId(j, 1151051235328L), bArr);
    }

    private void writeBytesImpl(int i, byte[] bArr) {
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        writeKnownLengthHeader(i, bArr.length);
        this.mBuffer.writeRawBuffer(bArr);
    }

    @Deprecated
    public void writeRepeatedBytes(long j, byte[] bArr) {
        assertNotCompacted();
        writeRepeatedBytesImpl(checkFieldId(j, 2250562863104L), bArr);
    }

    private void writeRepeatedBytesImpl(int i, byte[] bArr) {
        writeKnownLengthHeader(i, bArr == null ? 0 : bArr.length);
        this.mBuffer.writeRawBuffer(bArr);
    }

    @Deprecated
    public void writeEnum(long j, int i) {
        assertNotCompacted();
        writeEnumImpl(checkFieldId(j, 1159641169920L), i);
    }

    private void writeEnumImpl(int i, int i2) {
        if (i2 != 0) {
            writeTag(i, 0);
            writeUnsignedVarintFromSignedInt(i2);
        }
    }

    @Deprecated
    public void writeRepeatedEnum(long j, int i) {
        assertNotCompacted();
        writeRepeatedEnumImpl(checkFieldId(j, 2259152797696L), i);
    }

    private void writeRepeatedEnumImpl(int i, int i2) {
        writeTag(i, 0);
        writeUnsignedVarintFromSignedInt(i2);
    }

    @Deprecated
    public void writePackedEnum(long j, int[] iArr) {
        assertNotCompacted();
        int checkFieldId = checkFieldId(j, 5557687681024L);
        int length = iArr != null ? iArr.length : 0;
        if (length > 0) {
            int i = 0;
            for (int i2 = 0; i2 < length; i2++) {
                int i3 = iArr[i2];
                i += i3 >= 0 ? EncodedBuffer.getRawVarint32Size(i3) : 10;
            }
            writeKnownLengthHeader(checkFieldId, i);
            for (int i4 = 0; i4 < length; i4++) {
                writeUnsignedVarintFromSignedInt(iArr[i4]);
            }
        }
    }

    public static String token2String(long j) {
        if (j == 0) {
            return "Token(0)";
        }
        return "Token(val=0x" + Long.toHexString(j) + " depth=" + getDepthFromToken(j) + " object=" + convertObjectIdToOrdinal(getObjectIdFromToken(j)) + " tagSize=" + getTagSizeFromToken(j) + " sizePos=" + getSizePosFromToken(j) + ')';
    }

    @Deprecated
    public long startObject(long j) {
        assertNotCompacted();
        return startObjectImpl(checkFieldId(j, 1146756268032L), false);
    }

    @Deprecated
    public void endObject(long j) {
        assertNotCompacted();
        endObjectImpl(j, false);
    }

    @Deprecated
    public long startRepeatedObject(long j) {
        assertNotCompacted();
        return startObjectImpl(checkFieldId(j, 2246267895808L), true);
    }

    @Deprecated
    public void endRepeatedObject(long j) {
        assertNotCompacted();
        endObjectImpl(j, true);
    }

    private long startObjectImpl(int i, boolean z) {
        writeTag(i, 2);
        int writePos = this.mBuffer.getWritePos();
        this.mDepth++;
        this.mNextObjectId--;
        this.mBuffer.writeRawFixed32((int) (this.mExpectedObjectToken >> 32));
        this.mBuffer.writeRawFixed32((int) this.mExpectedObjectToken);
        long j = this.mExpectedObjectToken;
        this.mExpectedObjectToken = makeToken(getTagSize(i), z, this.mDepth, this.mNextObjectId, writePos);
        return this.mExpectedObjectToken;
    }

    private void endObjectImpl(long j, boolean z) {
        int depthFromToken = getDepthFromToken(j);
        boolean repeatedFromToken = getRepeatedFromToken(j);
        int sizePosFromToken = getSizePosFromToken(j);
        int writePos = (this.mBuffer.getWritePos() - sizePosFromToken) - 8;
        if (z != repeatedFromToken) {
            if (z) {
                throw new IllegalArgumentException("endRepeatedObject called where endObject should have been");
            }
            throw new IllegalArgumentException("endObject called where endRepeatedObject should have been");
        }
        if ((this.mDepth & 511) != depthFromToken || this.mExpectedObjectToken != j) {
            throw new IllegalArgumentException("Mismatched startObject/endObject calls. Current depth " + this.mDepth + " token=" + token2String(j) + " expectedToken=" + token2String(this.mExpectedObjectToken));
        }
        int i = sizePosFromToken + 4;
        this.mExpectedObjectToken = (this.mBuffer.getRawFixed32At(sizePosFromToken) << 32) | (4294967295L & this.mBuffer.getRawFixed32At(i));
        this.mDepth--;
        if (writePos > 0) {
            this.mBuffer.editRawFixed32(sizePosFromToken, -writePos);
            this.mBuffer.editRawFixed32(i, -1);
        } else if (z) {
            this.mBuffer.editRawFixed32(sizePosFromToken, 0);
            this.mBuffer.editRawFixed32(i, 0);
        } else {
            this.mBuffer.rewindWriteTo(sizePosFromToken - getTagSizeFromToken(j));
        }
    }

    @Deprecated
    public void writeObject(long j, byte[] bArr) {
        assertNotCompacted();
        writeObjectImpl(checkFieldId(j, 1146756268032L), bArr);
    }

    void writeObjectImpl(int i, byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return;
        }
        writeKnownLengthHeader(i, bArr.length);
        this.mBuffer.writeRawBuffer(bArr);
    }

    @Deprecated
    public void writeRepeatedObject(long j, byte[] bArr) {
        assertNotCompacted();
        writeRepeatedObjectImpl(checkFieldId(j, 2246267895808L), bArr);
    }

    void writeRepeatedObjectImpl(int i, byte[] bArr) {
        writeKnownLengthHeader(i, bArr == null ? 0 : bArr.length);
        this.mBuffer.writeRawBuffer(bArr);
    }

    public static int checkFieldId(long j, long j2) {
        long j3 = j & FIELD_COUNT_MASK;
        long j4 = j & FIELD_TYPE_MASK;
        long j5 = j2 & FIELD_COUNT_MASK;
        long j6 = j2 & FIELD_TYPE_MASK;
        int i = (int) j;
        if (i == 0) {
            throw new IllegalArgumentException("Invalid proto field " + i + " fieldId=" + Long.toHexString(j));
        }
        if (j4 == j6 && (j3 == j5 || (j3 == FIELD_COUNT_PACKED && j5 == FIELD_COUNT_REPEATED))) {
            return i;
        }
        String fieldCountString = getFieldCountString(j3);
        String fieldTypeString = getFieldTypeString(j4);
        if (fieldTypeString != null && fieldCountString != null) {
            StringBuilder sb = new StringBuilder();
            if (j6 == FIELD_TYPE_MESSAGE) {
                sb.append(Telephony.BaseMmsColumns.START);
            } else {
                sb.append("write");
            }
            sb.append(getFieldCountString(j5));
            sb.append(getFieldTypeString(j6));
            sb.append(" called for field ");
            sb.append(i);
            sb.append(" which should be used with ");
            if (j4 == FIELD_TYPE_MESSAGE) {
                sb.append(Telephony.BaseMmsColumns.START);
            } else {
                sb.append("write");
            }
            sb.append(fieldCountString);
            sb.append(fieldTypeString);
            if (j3 == FIELD_COUNT_PACKED) {
                sb.append(" or writeRepeated");
                sb.append(fieldTypeString);
            }
            sb.append('.');
            throw new IllegalArgumentException(sb.toString());
        }
        StringBuilder sb2 = new StringBuilder();
        if (j6 == FIELD_TYPE_MESSAGE) {
            sb2.append(Telephony.BaseMmsColumns.START);
        } else {
            sb2.append("write");
        }
        sb2.append(getFieldCountString(j5));
        sb2.append(getFieldTypeString(j6));
        sb2.append(" called with an invalid fieldId: 0x");
        sb2.append(Long.toHexString(j));
        sb2.append(". The proto field ID might be ");
        sb2.append(i);
        sb2.append('.');
        throw new IllegalArgumentException(sb2.toString());
    }

    private static String getFieldTypeString(long j) {
        int i = ((int) ((j & FIELD_TYPE_MASK) >>> 32)) - 1;
        if (i < 0 || i >= FIELD_TYPE_NAMES.length) {
            return null;
        }
        return FIELD_TYPE_NAMES[i];
    }

    private String getFieldIdString(long j) {
        long j2 = FIELD_COUNT_MASK & j;
        String fieldCountString = getFieldCountString(j2);
        if (fieldCountString == null) {
            fieldCountString = "fieldCount=" + j2;
        }
        if (fieldCountString.length() > 0) {
            fieldCountString = fieldCountString + " ";
        }
        long j3 = FIELD_TYPE_MASK & j;
        String fieldTypeString = getFieldTypeString(j3);
        if (fieldTypeString == null) {
            fieldTypeString = "fieldType=" + j3;
        }
        return fieldCountString + fieldTypeString + " tag=" + ((int) j) + " fieldId=0x" + Long.toHexString(j);
    }

    private static int getTagSize(int i) {
        return EncodedBuffer.getRawVarint32Size(i << 3);
    }

    public void writeTag(int i, int i2) {
        this.mBuffer.writeRawVarint32((i << 3) | i2);
    }

    private void writeKnownLengthHeader(int i, int i2) {
        writeTag(i, 2);
        this.mBuffer.writeRawFixed32(i2);
        this.mBuffer.writeRawFixed32(i2);
    }

    private void assertNotCompacted() {
        if (this.mCompacted) {
            throw new IllegalArgumentException("write called after compact");
        }
    }

    public byte[] getBytes() {
        compactIfNecessary();
        return this.mBuffer.getBytes(this.mBuffer.getReadableSize());
    }

    private void compactIfNecessary() {
        if (this.mCompacted) {
            return;
        }
        if (this.mDepth != 0) {
            throw new IllegalArgumentException("Trying to compact with " + this.mDepth + " missing calls to endObject");
        }
        this.mBuffer.startEditing();
        int readableSize = this.mBuffer.getReadableSize();
        editEncodedSize(readableSize);
        this.mBuffer.rewindRead();
        compactSizes(readableSize);
        if (this.mCopyBegin < readableSize) {
            this.mBuffer.writeFromThisBuffer(this.mCopyBegin, readableSize - this.mCopyBegin);
        }
        this.mBuffer.startEditing();
        this.mCompacted = true;
    }

    private int editEncodedSize(int i) {
        int readPos = this.mBuffer.getReadPos() + i;
        int i2 = 0;
        while (true) {
            int readPos2 = this.mBuffer.getReadPos();
            if (readPos2 >= readPos) {
                return i2;
            }
            int readRawTag = readRawTag();
            i2 += EncodedBuffer.getRawVarint32Size(readRawTag);
            int i3 = readRawTag & 7;
            switch (i3) {
                case 0:
                    do {
                        i2++;
                    } while ((this.mBuffer.readRawByte() & 128) != 0);
                case 1:
                    i2 += 8;
                    this.mBuffer.skipRead(8);
                    break;
                case 2:
                    int readRawFixed32 = this.mBuffer.readRawFixed32();
                    int readPos3 = this.mBuffer.getReadPos();
                    int readRawFixed322 = this.mBuffer.readRawFixed32();
                    if (readRawFixed32 < 0) {
                        readRawFixed322 = editEncodedSize(-readRawFixed32);
                        this.mBuffer.editRawFixed32(readPos3, readRawFixed322);
                    } else {
                        if (readRawFixed322 != readRawFixed32) {
                            throw new RuntimeException("Pre-computed size where the precomputed size and the raw size in the buffer don't match! childRawSize=" + readRawFixed32 + " childEncodedSize=" + readRawFixed322 + " childEncodedSizePos=" + readPos3);
                        }
                        this.mBuffer.skipRead(readRawFixed32);
                    }
                    i2 += EncodedBuffer.getRawVarint32Size(readRawFixed322) + readRawFixed322;
                    break;
                case 3:
                case 4:
                    throw new RuntimeException("groups not supported at index " + readPos2);
                case 5:
                    i2 += 4;
                    this.mBuffer.skipRead(4);
                    break;
                default:
                    throw new ProtoParseException("editEncodedSize Bad tag tag=0x" + Integer.toHexString(readRawTag) + " wireType=" + i3 + " -- " + this.mBuffer.getDebugString());
            }
        }
    }

    private void compactSizes(int i) {
        int readPos = this.mBuffer.getReadPos() + i;
        while (true) {
            int readPos2 = this.mBuffer.getReadPos();
            if (readPos2 >= readPos) {
                return;
            }
            int readRawTag = readRawTag();
            int i2 = readRawTag & 7;
            switch (i2) {
                case 0:
                    do {
                    } while ((this.mBuffer.readRawByte() & 128) != 0);
                case 1:
                    this.mBuffer.skipRead(8);
                    break;
                case 2:
                    this.mBuffer.writeFromThisBuffer(this.mCopyBegin, this.mBuffer.getReadPos() - this.mCopyBegin);
                    int readRawFixed32 = this.mBuffer.readRawFixed32();
                    int readRawFixed322 = this.mBuffer.readRawFixed32();
                    this.mBuffer.writeRawVarint32(readRawFixed322);
                    this.mCopyBegin = this.mBuffer.getReadPos();
                    if (readRawFixed32 >= 0) {
                        this.mBuffer.skipRead(readRawFixed322);
                        break;
                    } else {
                        compactSizes(-readRawFixed32);
                        break;
                    }
                case 3:
                case 4:
                    throw new RuntimeException("groups not supported at index " + readPos2);
                case 5:
                    this.mBuffer.skipRead(4);
                    break;
                default:
                    throw new ProtoParseException("compactSizes Bad tag tag=0x" + Integer.toHexString(readRawTag) + " wireType=" + i2 + " -- " + this.mBuffer.getDebugString());
            }
        }
    }

    public void flush() {
        if (this.mStream == null || this.mDepth != 0 || this.mCompacted) {
            return;
        }
        compactIfNecessary();
        try {
            this.mStream.write(this.mBuffer.getBytes(this.mBuffer.getReadableSize()));
            this.mStream.flush();
        } catch (IOException e) {
            throw new RuntimeException("Error flushing proto to stream", e);
        }
    }

    private int readRawTag() {
        if (this.mBuffer.getReadPos() == this.mBuffer.getReadableSize()) {
            return 0;
        }
        return (int) this.mBuffer.readRawUnsigned();
    }

    public void dump(String str) {
        Log.d(str, this.mBuffer.getDebugString());
        this.mBuffer.dumpBuffers(str);
    }
}
