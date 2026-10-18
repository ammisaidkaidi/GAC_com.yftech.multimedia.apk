package android.view;

import android.graphics.Matrix;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import dalvik.annotation.optimization.CriticalNative;
import dalvik.annotation.optimization.FastNative;

/* loaded from: /home/user/work/dex/classes2.dex */
public final class MotionEvent extends InputEvent implements Parcelable {
    public static final int ACTION_BUTTON_PRESS = 11;
    public static final int ACTION_BUTTON_RELEASE = 12;
    public static final int ACTION_CANCEL = 3;
    public static final int ACTION_DOWN = 0;
    public static final int ACTION_HOVER_ENTER = 9;
    public static final int ACTION_HOVER_EXIT = 10;
    public static final int ACTION_HOVER_MOVE = 7;
    public static final int ACTION_MASK = 255;
    public static final int ACTION_MOVE = 2;
    public static final int ACTION_OUTSIDE = 4;

    @Deprecated
    public static final int ACTION_POINTER_1_DOWN = 5;

    @Deprecated
    public static final int ACTION_POINTER_1_UP = 6;

    @Deprecated
    public static final int ACTION_POINTER_2_DOWN = 261;

    @Deprecated
    public static final int ACTION_POINTER_2_UP = 262;

    @Deprecated
    public static final int ACTION_POINTER_3_DOWN = 517;

    @Deprecated
    public static final int ACTION_POINTER_3_UP = 518;
    public static final int ACTION_POINTER_DOWN = 5;

    @Deprecated
    public static final int ACTION_POINTER_ID_MASK = 65280;

    @Deprecated
    public static final int ACTION_POINTER_ID_SHIFT = 8;
    public static final int ACTION_POINTER_INDEX_MASK = 65280;
    public static final int ACTION_POINTER_INDEX_SHIFT = 8;
    public static final int ACTION_POINTER_UP = 6;
    public static final int ACTION_SCROLL = 8;
    public static final int ACTION_UP = 1;
    public static final int AXIS_BRAKE = 23;
    public static final int AXIS_DISTANCE = 24;
    public static final int AXIS_GAS = 22;
    public static final int AXIS_GENERIC_1 = 32;
    public static final int AXIS_GENERIC_10 = 41;
    public static final int AXIS_GENERIC_11 = 42;
    public static final int AXIS_GENERIC_12 = 43;
    public static final int AXIS_GENERIC_13 = 44;
    public static final int AXIS_GENERIC_14 = 45;
    public static final int AXIS_GENERIC_15 = 46;
    public static final int AXIS_GENERIC_16 = 47;
    public static final int AXIS_GENERIC_2 = 33;
    public static final int AXIS_GENERIC_3 = 34;
    public static final int AXIS_GENERIC_4 = 35;
    public static final int AXIS_GENERIC_5 = 36;
    public static final int AXIS_GENERIC_6 = 37;
    public static final int AXIS_GENERIC_7 = 38;
    public static final int AXIS_GENERIC_8 = 39;
    public static final int AXIS_GENERIC_9 = 40;
    public static final int AXIS_HAT_X = 15;
    public static final int AXIS_HAT_Y = 16;
    public static final int AXIS_HSCROLL = 10;
    public static final int AXIS_LTRIGGER = 17;
    public static final int AXIS_ORIENTATION = 8;
    public static final int AXIS_PRESSURE = 2;
    public static final int AXIS_RELATIVE_X = 27;
    public static final int AXIS_RELATIVE_Y = 28;
    public static final int AXIS_RTRIGGER = 18;
    public static final int AXIS_RUDDER = 20;
    public static final int AXIS_RX = 12;
    public static final int AXIS_RY = 13;
    public static final int AXIS_RZ = 14;
    public static final int AXIS_SCROLL = 26;
    public static final int AXIS_SIZE = 3;
    private static final SparseArray<String> AXIS_SYMBOLIC_NAMES = new SparseArray<>();
    public static final int AXIS_THROTTLE = 19;
    public static final int AXIS_TILT = 25;
    public static final int AXIS_TOOL_MAJOR = 6;
    public static final int AXIS_TOOL_MINOR = 7;
    public static final int AXIS_TOUCH_MAJOR = 4;
    public static final int AXIS_TOUCH_MINOR = 5;
    public static final int AXIS_VSCROLL = 9;
    public static final int AXIS_WHEEL = 21;
    public static final int AXIS_X = 0;
    public static final int AXIS_Y = 1;
    public static final int AXIS_Z = 11;
    public static final int BUTTON_BACK = 8;
    public static final int BUTTON_FORWARD = 16;
    public static final int BUTTON_PRIMARY = 1;
    public static final int BUTTON_SECONDARY = 2;
    public static final int BUTTON_STYLUS_PRIMARY = 32;
    public static final int BUTTON_STYLUS_SECONDARY = 64;
    private static final String[] BUTTON_SYMBOLIC_NAMES;
    public static final int BUTTON_TERTIARY = 4;
    public static final Parcelable.Creator<MotionEvent> CREATOR;
    private static final boolean DEBUG_CONCISE_TOSTRING = false;
    public static final int EDGE_BOTTOM = 2;
    public static final int EDGE_LEFT = 4;
    public static final int EDGE_RIGHT = 8;
    public static final int EDGE_TOP = 1;
    public static final int FLAG_HOVER_EXIT_PENDING = 4;
    public static final int FLAG_IS_GENERATED_GESTURE = 8;
    public static final int FLAG_TAINTED = Integer.MIN_VALUE;
    public static final int FLAG_TARGET_ACCESSIBILITY_FOCUS = 1073741824;
    public static final int FLAG_WINDOW_IS_OBSCURED = 1;
    public static final int FLAG_WINDOW_IS_PARTIALLY_OBSCURED = 2;
    private static final int HISTORY_CURRENT = Integer.MIN_VALUE;
    public static final int INVALID_POINTER_ID = -1;
    private static final String LABEL_PREFIX = "AXIS_";
    private static final int MAX_RECYCLED = 10;
    private static final long NS_PER_MS = 1000000;
    public static final int TOOL_TYPE_ERASER = 4;
    public static final int TOOL_TYPE_FINGER = 1;
    public static final int TOOL_TYPE_MOUSE = 3;
    public static final int TOOL_TYPE_STYLUS = 2;
    private static final SparseArray<String> TOOL_TYPE_SYMBOLIC_NAMES;
    public static final int TOOL_TYPE_UNKNOWN = 0;
    private static final Object gRecyclerLock;
    private static MotionEvent gRecyclerTop;
    private static int gRecyclerUsed;
    private static final Object gSharedTempLock;
    private static PointerCoords[] gSharedTempPointerCoords;
    private static int[] gSharedTempPointerIndexMap;
    private static PointerProperties[] gSharedTempPointerProperties;
    private long mNativePtr;
    private MotionEvent mNext;

    private static final float clamp(float f, float f2, float f3) {
        return f < f2 ? f2 : f > f3 ? f3 : f;
    }

    private static native void nativeAddBatch(long j, long j2, PointerCoords[] pointerCoordsArr, int i);

    private static native int nativeAxisFromString(String str);

    private static native String nativeAxisToString(int i);

    @CriticalNative
    private static native long nativeCopy(long j, long j2, boolean z);

    private static native void nativeDispose(long j);

    @CriticalNative
    private static native int nativeFindPointerIndex(long j, int i);

    @CriticalNative
    private static native int nativeGetAction(long j);

    @CriticalNative
    private static native int nativeGetActionButton(long j);

    @FastNative
    private static native float nativeGetAxisValue(long j, int i, int i2, int i3);

    @CriticalNative
    private static native int nativeGetButtonState(long j);

    @CriticalNative
    private static native int nativeGetDeviceId(long j);

    @CriticalNative
    private static native long nativeGetDownTimeNanos(long j);

    @CriticalNative
    private static native int nativeGetEdgeFlags(long j);

    @FastNative
    private static native long nativeGetEventTimeNanos(long j, int i);

    @CriticalNative
    private static native int nativeGetFlags(long j);

    @CriticalNative
    private static native int nativeGetHistorySize(long j);

    @CriticalNative
    private static native int nativeGetMetaState(long j);

    private static native void nativeGetPointerCoords(long j, int i, int i2, PointerCoords pointerCoords);

    @CriticalNative
    private static native int nativeGetPointerCount(long j);

    @FastNative
    private static native int nativeGetPointerId(long j, int i);

    private static native void nativeGetPointerProperties(long j, int i, PointerProperties pointerProperties);

    @FastNative
    private static native float nativeGetRawAxisValue(long j, int i, int i2, int i3);

    @CriticalNative
    private static native int nativeGetSource(long j);

    @FastNative
    private static native int nativeGetToolType(long j, int i);

    @CriticalNative
    private static native float nativeGetXOffset(long j);

    @CriticalNative
    private static native float nativeGetXPrecision(long j);

    @CriticalNative
    private static native float nativeGetYOffset(long j);

    @CriticalNative
    private static native float nativeGetYPrecision(long j);

    private static native long nativeInitialize(long j, int i, int i2, int i3, int i4, int i5, int i6, int i7, float f, float f2, float f3, float f4, long j2, long j3, int i8, PointerProperties[] pointerPropertiesArr, PointerCoords[] pointerCoordsArr);

    @CriticalNative
    private static native boolean nativeIsTouchEvent(long j);

    @CriticalNative
    private static native void nativeOffsetLocation(long j, float f, float f2);

    private static native long nativeReadFromParcel(long j, Parcel parcel);

    @CriticalNative
    private static native void nativeScale(long j, float f);

    @CriticalNative
    private static native void nativeSetAction(long j, int i);

    @CriticalNative
    private static native void nativeSetActionButton(long j, int i);

    @CriticalNative
    private static native void nativeSetButtonState(long j, int i);

    @CriticalNative
    private static native void nativeSetDownTimeNanos(long j, long j2);

    @CriticalNative
    private static native void nativeSetEdgeFlags(long j, int i);

    @CriticalNative
    private static native void nativeSetFlags(long j, int i);

    @CriticalNative
    private static native int nativeSetSource(long j, int i);

    @CriticalNative
    private static native void nativeTransform(long j, long j2);

    private static native void nativeWriteToParcel(long j, Parcel parcel);

    static {
        SparseArray<String> sparseArray = AXIS_SYMBOLIC_NAMES;
        sparseArray.append(0, "AXIS_X");
        sparseArray.append(1, "AXIS_Y");
        sparseArray.append(2, "AXIS_PRESSURE");
        sparseArray.append(3, "AXIS_SIZE");
        sparseArray.append(4, "AXIS_TOUCH_MAJOR");
        sparseArray.append(5, "AXIS_TOUCH_MINOR");
        sparseArray.append(6, "AXIS_TOOL_MAJOR");
        sparseArray.append(7, "AXIS_TOOL_MINOR");
        sparseArray.append(8, "AXIS_ORIENTATION");
        sparseArray.append(9, "AXIS_VSCROLL");
        sparseArray.append(10, "AXIS_HSCROLL");
        sparseArray.append(11, "AXIS_Z");
        sparseArray.append(12, "AXIS_RX");
        sparseArray.append(13, "AXIS_RY");
        sparseArray.append(14, "AXIS_RZ");
        sparseArray.append(15, "AXIS_HAT_X");
        sparseArray.append(16, "AXIS_HAT_Y");
        sparseArray.append(17, "AXIS_LTRIGGER");
        sparseArray.append(18, "AXIS_RTRIGGER");
        sparseArray.append(19, "AXIS_THROTTLE");
        sparseArray.append(20, "AXIS_RUDDER");
        sparseArray.append(21, "AXIS_WHEEL");
        sparseArray.append(22, "AXIS_GAS");
        sparseArray.append(23, "AXIS_BRAKE");
        sparseArray.append(24, "AXIS_DISTANCE");
        sparseArray.append(25, "AXIS_TILT");
        sparseArray.append(26, "AXIS_SCROLL");
        sparseArray.append(27, "AXIS_REALTIVE_X");
        sparseArray.append(28, "AXIS_REALTIVE_Y");
        sparseArray.append(32, "AXIS_GENERIC_1");
        sparseArray.append(33, "AXIS_GENERIC_2");
        sparseArray.append(34, "AXIS_GENERIC_3");
        sparseArray.append(35, "AXIS_GENERIC_4");
        sparseArray.append(36, "AXIS_GENERIC_5");
        sparseArray.append(37, "AXIS_GENERIC_6");
        sparseArray.append(38, "AXIS_GENERIC_7");
        sparseArray.append(39, "AXIS_GENERIC_8");
        sparseArray.append(40, "AXIS_GENERIC_9");
        sparseArray.append(41, "AXIS_GENERIC_10");
        sparseArray.append(42, "AXIS_GENERIC_11");
        sparseArray.append(43, "AXIS_GENERIC_12");
        sparseArray.append(44, "AXIS_GENERIC_13");
        sparseArray.append(45, "AXIS_GENERIC_14");
        sparseArray.append(46, "AXIS_GENERIC_15");
        sparseArray.append(47, "AXIS_GENERIC_16");
        BUTTON_SYMBOLIC_NAMES = new String[]{"BUTTON_PRIMARY", "BUTTON_SECONDARY", "BUTTON_TERTIARY", "BUTTON_BACK", "BUTTON_FORWARD", "BUTTON_STYLUS_PRIMARY", "BUTTON_STYLUS_SECONDARY", "0x00000080", "0x00000100", "0x00000200", "0x00000400", "0x00000800", "0x00001000", "0x00002000", "0x00004000", "0x00008000", "0x00010000", "0x00020000", "0x00040000", "0x00080000", "0x00100000", "0x00200000", "0x00400000", "0x00800000", "0x01000000", "0x02000000", "0x04000000", "0x08000000", "0x10000000", "0x20000000", "0x40000000", "0x80000000"};
        TOOL_TYPE_SYMBOLIC_NAMES = new SparseArray<>();
        SparseArray<String> sparseArray2 = TOOL_TYPE_SYMBOLIC_NAMES;
        sparseArray2.append(0, "TOOL_TYPE_UNKNOWN");
        sparseArray2.append(1, "TOOL_TYPE_FINGER");
        sparseArray2.append(2, "TOOL_TYPE_STYLUS");
        sparseArray2.append(3, "TOOL_TYPE_MOUSE");
        sparseArray2.append(4, "TOOL_TYPE_ERASER");
        gRecyclerLock = new Object();
        gSharedTempLock = new Object();
        CREATOR = new Parcelable.Creator<MotionEvent>() { // from class: android.view.MotionEvent.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public MotionEvent createFromParcel(Parcel parcel) {
                parcel.readInt();
                return MotionEvent.createFromParcelBody(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public MotionEvent[] newArray(int i) {
                return new MotionEvent[i];
            }
        };
    }

    private static final void ensureSharedTempPointerCapacity(int i) {
        if (gSharedTempPointerCoords == null || gSharedTempPointerCoords.length < i) {
            int length = gSharedTempPointerCoords != null ? gSharedTempPointerCoords.length : 8;
            while (length < i) {
                length *= 2;
            }
            gSharedTempPointerCoords = PointerCoords.createArray(length);
            gSharedTempPointerProperties = PointerProperties.createArray(length);
            gSharedTempPointerIndexMap = new int[length];
        }
    }

    private MotionEvent() {
    }

    protected void finalize() throws Throwable {
        try {
            if (this.mNativePtr != 0) {
                nativeDispose(this.mNativePtr);
                this.mNativePtr = 0L;
            }
        } finally {
            super.finalize();
        }
    }

    private static MotionEvent obtain() {
        synchronized (gRecyclerLock) {
            MotionEvent motionEvent = gRecyclerTop;
            if (motionEvent == null) {
                return new MotionEvent();
            }
            gRecyclerTop = motionEvent.mNext;
            gRecyclerUsed--;
            motionEvent.mNext = null;
            motionEvent.prepareForReuse();
            return motionEvent;
        }
    }

    public static MotionEvent obtain(long j, long j2, int i, int i2, PointerProperties[] pointerPropertiesArr, PointerCoords[] pointerCoordsArr, int i3, int i4, float f, float f2, int i5, int i6, int i7, int i8) {
        MotionEvent obtain = obtain();
        obtain.mNativePtr = nativeInitialize(obtain.mNativePtr, i5, i7, i, i8, i6, i3, i4, 0.0f, 0.0f, f, f2, j * 1000000, 1000000 * j2, i2, pointerPropertiesArr, pointerCoordsArr);
        return obtain;
    }

    @Deprecated
    public static MotionEvent obtain(long j, long j2, int i, int i2, int[] iArr, PointerCoords[] pointerCoordsArr, int i3, float f, float f2, int i4, int i5, int i6, int i7) {
        MotionEvent obtain;
        synchronized (gSharedTempLock) {
            ensureSharedTempPointerCapacity(i2);
            PointerProperties[] pointerPropertiesArr = gSharedTempPointerProperties;
            for (int i8 = 0; i8 < i2; i8++) {
                pointerPropertiesArr[i8].clear();
                pointerPropertiesArr[i8].id = iArr[i8];
            }
            obtain = obtain(j, j2, i, i2, pointerPropertiesArr, pointerCoordsArr, i3, 0, f, f2, i4, i5, i6, i7);
        }
        return obtain;
    }

    public static MotionEvent obtain(long j, long j2, int i, float f, float f2, float f3, float f4, int i2, float f5, float f6, int i3, int i4) {
        MotionEvent obtain = obtain();
        synchronized (gSharedTempLock) {
            ensureSharedTempPointerCapacity(1);
            PointerProperties[] pointerPropertiesArr = gSharedTempPointerProperties;
            pointerPropertiesArr[0].clear();
            pointerPropertiesArr[0].id = 0;
            PointerCoords[] pointerCoordsArr = gSharedTempPointerCoords;
            pointerCoordsArr[0].clear();
            pointerCoordsArr[0].x = f;
            pointerCoordsArr[0].y = f2;
            pointerCoordsArr[0].pressure = f3;
            pointerCoordsArr[0].size = f4;
            obtain.mNativePtr = nativeInitialize(obtain.mNativePtr, i3, 0, i, 0, i4, i2, 0, 0.0f, 0.0f, f5, f6, j * 1000000, j2 * 1000000, 1, pointerPropertiesArr, pointerCoordsArr);
        }
        return obtain;
    }

    @Deprecated
    public static MotionEvent obtain(long j, long j2, int i, int i2, float f, float f2, float f3, float f4, int i3, float f5, float f6, int i4, int i5) {
        return obtain(j, j2, i, f, f2, f3, f4, i3, f5, f6, i4, i5);
    }

    public static MotionEvent obtain(long j, long j2, int i, float f, float f2, int i2) {
        return obtain(j, j2, i, f, f2, 1.0f, 1.0f, i2, 1.0f, 1.0f, 0, 0);
    }

    public static MotionEvent obtain(MotionEvent motionEvent) {
        if (motionEvent == null) {
            throw new IllegalArgumentException("other motion event must not be null");
        }
        MotionEvent obtain = obtain();
        obtain.mNativePtr = nativeCopy(obtain.mNativePtr, motionEvent.mNativePtr, true);
        return obtain;
    }

    public static MotionEvent obtainNoHistory(MotionEvent motionEvent) {
        if (motionEvent == null) {
            throw new IllegalArgumentException("other motion event must not be null");
        }
        MotionEvent obtain = obtain();
        obtain.mNativePtr = nativeCopy(obtain.mNativePtr, motionEvent.mNativePtr, false);
        return obtain;
    }

    @Override // android.view.InputEvent
    public MotionEvent copy() {
        return obtain(this);
    }

    @Override // android.view.InputEvent
    public final void recycle() {
        super.recycle();
        synchronized (gRecyclerLock) {
            if (gRecyclerUsed < 10) {
                gRecyclerUsed++;
                this.mNext = gRecyclerTop;
                gRecyclerTop = this;
            }
        }
    }

    public final void scale(float f) {
        if (f != 1.0f) {
            nativeScale(this.mNativePtr, f);
        }
    }

    @Override // android.view.InputEvent
    public final int getDeviceId() {
        return nativeGetDeviceId(this.mNativePtr);
    }

    @Override // android.view.InputEvent
    public final int getSource() {
        return nativeGetSource(this.mNativePtr);
    }

    @Override // android.view.InputEvent
    public final void setSource(int i) {
        nativeSetSource(this.mNativePtr, i);
    }

    public final int getAction() {
        return nativeGetAction(this.mNativePtr);
    }

    public final int getActionMasked() {
        return nativeGetAction(this.mNativePtr) & 255;
    }

    public final int getActionIndex() {
        return (nativeGetAction(this.mNativePtr) & 65280) >> 8;
    }

    public final boolean isTouchEvent() {
        return nativeIsTouchEvent(this.mNativePtr);
    }

    public final int getFlags() {
        return nativeGetFlags(this.mNativePtr);
    }

    @Override // android.view.InputEvent
    public final boolean isTainted() {
        return (getFlags() & Integer.MIN_VALUE) != 0;
    }

    @Override // android.view.InputEvent
    public final void setTainted(boolean z) {
        int flags = getFlags();
        nativeSetFlags(this.mNativePtr, z ? Integer.MIN_VALUE | flags : Integer.MAX_VALUE & flags);
    }

    public final boolean isTargetAccessibilityFocus() {
        return (getFlags() & 1073741824) != 0;
    }

    public final void setTargetAccessibilityFocus(boolean z) {
        int flags = getFlags();
        nativeSetFlags(this.mNativePtr, z ? 1073741824 | flags : (-1073741825) & flags);
    }

    public final boolean isHoverExitPending() {
        return (getFlags() & 4) != 0;
    }

    public void setHoverExitPending(boolean z) {
        int flags = getFlags();
        nativeSetFlags(this.mNativePtr, z ? flags | 4 : flags & (-5));
    }

    public final long getDownTime() {
        return nativeGetDownTimeNanos(this.mNativePtr) / 1000000;
    }

    public final void setDownTime(long j) {
        nativeSetDownTimeNanos(this.mNativePtr, j * 1000000);
    }

    @Override // android.view.InputEvent
    public final long getEventTime() {
        return nativeGetEventTimeNanos(this.mNativePtr, Integer.MIN_VALUE) / 1000000;
    }

    @Override // android.view.InputEvent
    public final long getEventTimeNano() {
        return nativeGetEventTimeNanos(this.mNativePtr, Integer.MIN_VALUE);
    }

    public final float getX() {
        return nativeGetAxisValue(this.mNativePtr, 0, 0, Integer.MIN_VALUE);
    }

    public final float getY() {
        return nativeGetAxisValue(this.mNativePtr, 1, 0, Integer.MIN_VALUE);
    }

    public final float getPressure() {
        return nativeGetAxisValue(this.mNativePtr, 2, 0, Integer.MIN_VALUE);
    }

    public final float getSize() {
        return nativeGetAxisValue(this.mNativePtr, 3, 0, Integer.MIN_VALUE);
    }

    public final float getTouchMajor() {
        return nativeGetAxisValue(this.mNativePtr, 4, 0, Integer.MIN_VALUE);
    }

    public final float getTouchMinor() {
        return nativeGetAxisValue(this.mNativePtr, 5, 0, Integer.MIN_VALUE);
    }

    public final float getToolMajor() {
        return nativeGetAxisValue(this.mNativePtr, 6, 0, Integer.MIN_VALUE);
    }

    public final float getToolMinor() {
        return nativeGetAxisValue(this.mNativePtr, 7, 0, Integer.MIN_VALUE);
    }

    public final float getOrientation() {
        return nativeGetAxisValue(this.mNativePtr, 8, 0, Integer.MIN_VALUE);
    }

    public final float getAxisValue(int i) {
        return nativeGetAxisValue(this.mNativePtr, i, 0, Integer.MIN_VALUE);
    }

    public final int getPointerCount() {
        return nativeGetPointerCount(this.mNativePtr);
    }

    public final int getPointerId(int i) {
        return nativeGetPointerId(this.mNativePtr, i);
    }

    public final int getToolType(int i) {
        return nativeGetToolType(this.mNativePtr, i);
    }

    public final int findPointerIndex(int i) {
        return nativeFindPointerIndex(this.mNativePtr, i);
    }

    public final float getX(int i) {
        return nativeGetAxisValue(this.mNativePtr, 0, i, Integer.MIN_VALUE);
    }

    public final float getY(int i) {
        return nativeGetAxisValue(this.mNativePtr, 1, i, Integer.MIN_VALUE);
    }

    public final float getPressure(int i) {
        return nativeGetAxisValue(this.mNativePtr, 2, i, Integer.MIN_VALUE);
    }

    public final float getSize(int i) {
        return nativeGetAxisValue(this.mNativePtr, 3, i, Integer.MIN_VALUE);
    }

    public final float getTouchMajor(int i) {
        return nativeGetAxisValue(this.mNativePtr, 4, i, Integer.MIN_VALUE);
    }

    public final float getTouchMinor(int i) {
        return nativeGetAxisValue(this.mNativePtr, 5, i, Integer.MIN_VALUE);
    }

    public final float getToolMajor(int i) {
        return nativeGetAxisValue(this.mNativePtr, 6, i, Integer.MIN_VALUE);
    }

    public final float getToolMinor(int i) {
        return nativeGetAxisValue(this.mNativePtr, 7, i, Integer.MIN_VALUE);
    }

    public final float getOrientation(int i) {
        return nativeGetAxisValue(this.mNativePtr, 8, i, Integer.MIN_VALUE);
    }

    public final float getAxisValue(int i, int i2) {
        return nativeGetAxisValue(this.mNativePtr, i, i2, Integer.MIN_VALUE);
    }

    public final void getPointerCoords(int i, PointerCoords pointerCoords) {
        nativeGetPointerCoords(this.mNativePtr, i, Integer.MIN_VALUE, pointerCoords);
    }

    public final void getPointerProperties(int i, PointerProperties pointerProperties) {
        nativeGetPointerProperties(this.mNativePtr, i, pointerProperties);
    }

    public final int getMetaState() {
        return nativeGetMetaState(this.mNativePtr);
    }

    public final int getButtonState() {
        return nativeGetButtonState(this.mNativePtr);
    }

    public final void setButtonState(int i) {
        nativeSetButtonState(this.mNativePtr, i);
    }

    public final int getActionButton() {
        return nativeGetActionButton(this.mNativePtr);
    }

    public final void setActionButton(int i) {
        nativeSetActionButton(this.mNativePtr, i);
    }

    public final float getRawX() {
        return nativeGetRawAxisValue(this.mNativePtr, 0, 0, Integer.MIN_VALUE);
    }

    public final float getRawY() {
        return nativeGetRawAxisValue(this.mNativePtr, 1, 0, Integer.MIN_VALUE);
    }

    public final float getXPrecision() {
        return nativeGetXPrecision(this.mNativePtr);
    }

    public final float getYPrecision() {
        return nativeGetYPrecision(this.mNativePtr);
    }

    public final int getHistorySize() {
        return nativeGetHistorySize(this.mNativePtr);
    }

    public final long getHistoricalEventTime(int i) {
        return nativeGetEventTimeNanos(this.mNativePtr, i) / 1000000;
    }

    public final long getHistoricalEventTimeNano(int i) {
        return nativeGetEventTimeNanos(this.mNativePtr, i);
    }

    public final float getHistoricalX(int i) {
        return nativeGetAxisValue(this.mNativePtr, 0, 0, i);
    }

    public final float getHistoricalY(int i) {
        return nativeGetAxisValue(this.mNativePtr, 1, 0, i);
    }

    public final float getHistoricalPressure(int i) {
        return nativeGetAxisValue(this.mNativePtr, 2, 0, i);
    }

    public final float getHistoricalSize(int i) {
        return nativeGetAxisValue(this.mNativePtr, 3, 0, i);
    }

    public final float getHistoricalTouchMajor(int i) {
        return nativeGetAxisValue(this.mNativePtr, 4, 0, i);
    }

    public final float getHistoricalTouchMinor(int i) {
        return nativeGetAxisValue(this.mNativePtr, 5, 0, i);
    }

    public final float getHistoricalToolMajor(int i) {
        return nativeGetAxisValue(this.mNativePtr, 6, 0, i);
    }

    public final float getHistoricalToolMinor(int i) {
        return nativeGetAxisValue(this.mNativePtr, 7, 0, i);
    }

    public final float getHistoricalOrientation(int i) {
        return nativeGetAxisValue(this.mNativePtr, 8, 0, i);
    }

    public final float getHistoricalAxisValue(int i, int i2) {
        return nativeGetAxisValue(this.mNativePtr, i, 0, i2);
    }

    public final float getHistoricalX(int i, int i2) {
        return nativeGetAxisValue(this.mNativePtr, 0, i, i2);
    }

    public final float getHistoricalY(int i, int i2) {
        return nativeGetAxisValue(this.mNativePtr, 1, i, i2);
    }

    public final float getHistoricalPressure(int i, int i2) {
        return nativeGetAxisValue(this.mNativePtr, 2, i, i2);
    }

    public final float getHistoricalSize(int i, int i2) {
        return nativeGetAxisValue(this.mNativePtr, 3, i, i2);
    }

    public final float getHistoricalTouchMajor(int i, int i2) {
        return nativeGetAxisValue(this.mNativePtr, 4, i, i2);
    }

    public final float getHistoricalTouchMinor(int i, int i2) {
        return nativeGetAxisValue(this.mNativePtr, 5, i, i2);
    }

    public final float getHistoricalToolMajor(int i, int i2) {
        return nativeGetAxisValue(this.mNativePtr, 6, i, i2);
    }

    public final float getHistoricalToolMinor(int i, int i2) {
        return nativeGetAxisValue(this.mNativePtr, 7, i, i2);
    }

    public final float getHistoricalOrientation(int i, int i2) {
        return nativeGetAxisValue(this.mNativePtr, 8, i, i2);
    }

    public final float getHistoricalAxisValue(int i, int i2, int i3) {
        return nativeGetAxisValue(this.mNativePtr, i, i2, i3);
    }

    public final void getHistoricalPointerCoords(int i, int i2, PointerCoords pointerCoords) {
        nativeGetPointerCoords(this.mNativePtr, i, i2, pointerCoords);
    }

    public final int getEdgeFlags() {
        return nativeGetEdgeFlags(this.mNativePtr);
    }

    public final void setEdgeFlags(int i) {
        nativeSetEdgeFlags(this.mNativePtr, i);
    }

    public final void setAction(int i) {
        nativeSetAction(this.mNativePtr, i);
    }

    public final void offsetLocation(float f, float f2) {
        if (f == 0.0f && f2 == 0.0f) {
            return;
        }
        nativeOffsetLocation(this.mNativePtr, f, f2);
    }

    public final void setLocation(float f, float f2) {
        offsetLocation(f - getX(), f2 - getY());
    }

    public final void transform(Matrix matrix) {
        if (matrix == null) {
            throw new IllegalArgumentException("matrix must not be null");
        }
        nativeTransform(this.mNativePtr, matrix.native_instance);
    }

    public final void addBatch(long j, float f, float f2, float f3, float f4, int i) {
        synchronized (gSharedTempLock) {
            ensureSharedTempPointerCapacity(1);
            PointerCoords[] pointerCoordsArr = gSharedTempPointerCoords;
            pointerCoordsArr[0].clear();
            pointerCoordsArr[0].x = f;
            pointerCoordsArr[0].y = f2;
            pointerCoordsArr[0].pressure = f3;
            pointerCoordsArr[0].size = f4;
            nativeAddBatch(this.mNativePtr, 1000000 * j, pointerCoordsArr, i);
        }
    }

    public final void addBatch(long j, PointerCoords[] pointerCoordsArr, int i) {
        nativeAddBatch(this.mNativePtr, 1000000 * j, pointerCoordsArr, i);
    }

    public final boolean addBatch(MotionEvent motionEvent) {
        int nativeGetPointerCount;
        int nativeGetAction = nativeGetAction(this.mNativePtr);
        if ((nativeGetAction != 2 && nativeGetAction != 7) || nativeGetAction != nativeGetAction(motionEvent.mNativePtr) || nativeGetDeviceId(this.mNativePtr) != nativeGetDeviceId(motionEvent.mNativePtr) || nativeGetSource(this.mNativePtr) != nativeGetSource(motionEvent.mNativePtr) || nativeGetFlags(this.mNativePtr) != nativeGetFlags(motionEvent.mNativePtr) || (nativeGetPointerCount = nativeGetPointerCount(this.mNativePtr)) != nativeGetPointerCount(motionEvent.mNativePtr)) {
            return false;
        }
        synchronized (gSharedTempLock) {
            ensureSharedTempPointerCapacity(Math.max(nativeGetPointerCount, 2));
            PointerProperties[] pointerPropertiesArr = gSharedTempPointerProperties;
            PointerCoords[] pointerCoordsArr = gSharedTempPointerCoords;
            for (int i = 0; i < nativeGetPointerCount; i++) {
                nativeGetPointerProperties(this.mNativePtr, i, pointerPropertiesArr[0]);
                nativeGetPointerProperties(motionEvent.mNativePtr, i, pointerPropertiesArr[1]);
                if (!pointerPropertiesArr[0].equals(pointerPropertiesArr[1])) {
                    return false;
                }
            }
            int nativeGetMetaState = nativeGetMetaState(motionEvent.mNativePtr);
            int nativeGetHistorySize = nativeGetHistorySize(motionEvent.mNativePtr);
            int i2 = 0;
            while (i2 <= nativeGetHistorySize) {
                int i3 = i2 == nativeGetHistorySize ? Integer.MIN_VALUE : i2;
                for (int i4 = 0; i4 < nativeGetPointerCount; i4++) {
                    nativeGetPointerCoords(motionEvent.mNativePtr, i4, i3, pointerCoordsArr[i4]);
                }
                nativeAddBatch(this.mNativePtr, nativeGetEventTimeNanos(motionEvent.mNativePtr, i3), pointerCoordsArr, nativeGetMetaState);
                i2++;
            }
            return true;
        }
    }

    public final boolean isWithinBoundsNoHistory(float f, float f2, float f3, float f4) {
        int nativeGetPointerCount = nativeGetPointerCount(this.mNativePtr);
        for (int i = 0; i < nativeGetPointerCount; i++) {
            float nativeGetAxisValue = nativeGetAxisValue(this.mNativePtr, 0, i, Integer.MIN_VALUE);
            float nativeGetAxisValue2 = nativeGetAxisValue(this.mNativePtr, 1, i, Integer.MIN_VALUE);
            if (nativeGetAxisValue < f || nativeGetAxisValue > f3 || nativeGetAxisValue2 < f2 || nativeGetAxisValue2 > f4) {
                return false;
            }
        }
        return true;
    }

    public final MotionEvent clampNoHistory(float f, float f2, float f3, float f4) {
        MotionEvent obtain = obtain();
        synchronized (gSharedTempLock) {
            int nativeGetPointerCount = nativeGetPointerCount(this.mNativePtr);
            ensureSharedTempPointerCapacity(nativeGetPointerCount);
            PointerProperties[] pointerPropertiesArr = gSharedTempPointerProperties;
            PointerCoords[] pointerCoordsArr = gSharedTempPointerCoords;
            for (int i = 0; i < nativeGetPointerCount; i++) {
                nativeGetPointerProperties(this.mNativePtr, i, pointerPropertiesArr[i]);
                nativeGetPointerCoords(this.mNativePtr, i, Integer.MIN_VALUE, pointerCoordsArr[i]);
                pointerCoordsArr[i].x = clamp(pointerCoordsArr[i].x, f, f3);
                pointerCoordsArr[i].y = clamp(pointerCoordsArr[i].y, f2, f4);
            }
            obtain.mNativePtr = nativeInitialize(obtain.mNativePtr, nativeGetDeviceId(this.mNativePtr), nativeGetSource(this.mNativePtr), nativeGetAction(this.mNativePtr), nativeGetFlags(this.mNativePtr), nativeGetEdgeFlags(this.mNativePtr), nativeGetMetaState(this.mNativePtr), nativeGetButtonState(this.mNativePtr), nativeGetXOffset(this.mNativePtr), nativeGetYOffset(this.mNativePtr), nativeGetXPrecision(this.mNativePtr), nativeGetYPrecision(this.mNativePtr), nativeGetDownTimeNanos(this.mNativePtr), nativeGetEventTimeNanos(this.mNativePtr, Integer.MIN_VALUE), nativeGetPointerCount, pointerPropertiesArr, pointerCoordsArr);
        }
        return obtain;
    }

    public final int getPointerIdBits() {
        int nativeGetPointerCount = nativeGetPointerCount(this.mNativePtr);
        int i = 0;
        for (int i2 = 0; i2 < nativeGetPointerCount; i2++) {
            i |= 1 << nativeGetPointerId(this.mNativePtr, i2);
        }
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x0057, code lost:
    
        r3 = 2;
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x006e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final MotionEvent split(int i) {
        int i2;
        int nativeGetHistorySize;
        int i3;
        MotionEvent motionEvent;
        Object obj;
        int i4;
        int i5;
        int i6;
        MotionEvent obtain = obtain();
        Object obj2 = gSharedTempLock;
        synchronized (obj2) {
            try {
                try {
                    int nativeGetPointerCount = nativeGetPointerCount(this.mNativePtr);
                    ensureSharedTempPointerCapacity(nativeGetPointerCount);
                    PointerProperties[] pointerPropertiesArr = gSharedTempPointerProperties;
                    PointerCoords[] pointerCoordsArr = gSharedTempPointerCoords;
                    int[] iArr = gSharedTempPointerIndexMap;
                    int nativeGetAction = nativeGetAction(this.mNativePtr);
                    int i7 = nativeGetAction & 255;
                    int i8 = (65280 & nativeGetAction) >> 8;
                    int i9 = -1;
                    int i10 = 0;
                    int i11 = 0;
                    while (true) {
                        if (i10 >= nativeGetPointerCount) {
                            break;
                        }
                        nativeGetPointerProperties(this.mNativePtr, i10, pointerPropertiesArr[i11]);
                        if (((1 << pointerPropertiesArr[i11].id) & i) != 0) {
                            if (i10 == i8) {
                                i9 = i11;
                            }
                            iArr[i11] = i10;
                            i11++;
                        }
                        i10++;
                    }
                    if (i11 == 0) {
                        throw new IllegalArgumentException("idBits did not match any ids in the event");
                    }
                    if (i7 != 5 && i7 != 6) {
                        i2 = nativeGetAction;
                        nativeGetHistorySize = nativeGetHistorySize(this.mNativePtr);
                        i3 = 0;
                        while (i3 <= nativeGetHistorySize) {
                            int i12 = i3 == nativeGetHistorySize ? Integer.MIN_VALUE : i3;
                            for (int i13 = 0; i13 < i11; i13++) {
                                nativeGetPointerCoords(this.mNativePtr, iArr[i13], i12, pointerCoordsArr[i13]);
                            }
                            long nativeGetEventTimeNanos = nativeGetEventTimeNanos(this.mNativePtr, i12);
                            if (i3 == 0) {
                                long j = obtain.mNativePtr;
                                MotionEvent motionEvent2 = obtain;
                                obj = obj2;
                                i4 = i3;
                                i5 = nativeGetHistorySize;
                                i6 = i11;
                                motionEvent = motionEvent2;
                                motionEvent.mNativePtr = nativeInitialize(j, nativeGetDeviceId(this.mNativePtr), nativeGetSource(this.mNativePtr), i2, nativeGetFlags(this.mNativePtr), nativeGetEdgeFlags(this.mNativePtr), nativeGetMetaState(this.mNativePtr), nativeGetButtonState(this.mNativePtr), nativeGetXOffset(this.mNativePtr), nativeGetYOffset(this.mNativePtr), nativeGetXPrecision(this.mNativePtr), nativeGetYPrecision(this.mNativePtr), nativeGetDownTimeNanos(this.mNativePtr), nativeGetEventTimeNanos, i6, pointerPropertiesArr, pointerCoordsArr);
                            } else {
                                motionEvent = obtain;
                                obj = obj2;
                                i4 = i3;
                                i5 = nativeGetHistorySize;
                                i6 = i11;
                                nativeAddBatch(motionEvent.mNativePtr, nativeGetEventTimeNanos, pointerCoordsArr, 0);
                            }
                            i3 = i4 + 1;
                            nativeGetHistorySize = i5;
                            obtain = motionEvent;
                            i11 = i6;
                            obj2 = obj;
                        }
                        MotionEvent motionEvent3 = obtain;
                        return motionEvent3;
                    }
                    i2 = i11 == 1 ? i7 == 5 ? 0 : 1 : (i9 << 8) | i7;
                    nativeGetHistorySize = nativeGetHistorySize(this.mNativePtr);
                    i3 = 0;
                    while (i3 <= nativeGetHistorySize) {
                    }
                    MotionEvent motionEvent32 = obtain;
                    return motionEvent32;
                } catch (Throwable th) {
                    th = th;
                    Object obj3 = obj2;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("MotionEvent { action=");
        sb.append(actionToString(getAction()));
        appendUnless("0", sb, ", actionButton=", buttonStateToString(getActionButton()));
        int pointerCount = getPointerCount();
        for (int i = 0; i < pointerCount; i++) {
            appendUnless(Integer.valueOf(i), sb, ", id[" + i + "]=", Integer.valueOf(getPointerId(i)));
            float x = getX(i);
            float y = getY(i);
            sb.append(", x[");
            sb.append(i);
            sb.append("]=");
            sb.append(x);
            sb.append(", y[");
            sb.append(i);
            sb.append("]=");
            sb.append(y);
            appendUnless(TOOL_TYPE_SYMBOLIC_NAMES.get(1), sb, ", toolType[" + i + "]=", toolTypeToString(getToolType(i)));
        }
        appendUnless("0", sb, ", buttonState=", buttonStateToString(getButtonState()));
        appendUnless("0", sb, ", metaState=", KeyEvent.metaStateToString(getMetaState()));
        appendUnless("0", sb, ", flags=0x", Integer.toHexString(getFlags()));
        appendUnless("0", sb, ", edgeFlags=0x", Integer.toHexString(getEdgeFlags()));
        appendUnless(1, sb, ", pointerCount=", Integer.valueOf(pointerCount));
        appendUnless(0, sb, ", historySize=", Integer.valueOf(getHistorySize()));
        sb.append(", eventTime=");
        sb.append(getEventTime());
        sb.append(", downTime=");
        sb.append(getDownTime());
        sb.append(", deviceId=");
        sb.append(getDeviceId());
        sb.append(", source=0x");
        sb.append(Integer.toHexString(getSource()));
        sb.append(" }");
        return sb.toString();
    }

    private static <T> void appendUnless(T t, StringBuilder sb, String str, T t2) {
        sb.append(str);
        sb.append(t2);
    }

    public static String actionToString(int i) {
        switch (i) {
            case 0:
                return "ACTION_DOWN";
            case 1:
                return "ACTION_UP";
            case 2:
                return "ACTION_MOVE";
            case 3:
                return "ACTION_CANCEL";
            case 4:
                return "ACTION_OUTSIDE";
            case 5:
            case 6:
            default:
                int i2 = (65280 & i) >> 8;
                switch (i & 255) {
                    case 5:
                        return "ACTION_POINTER_DOWN(" + i2 + ")";
                    case 6:
                        return "ACTION_POINTER_UP(" + i2 + ")";
                    default:
                        return Integer.toString(i);
                }
            case 7:
                return "ACTION_HOVER_MOVE";
            case 8:
                return "ACTION_SCROLL";
            case 9:
                return "ACTION_HOVER_ENTER";
            case 10:
                return "ACTION_HOVER_EXIT";
            case 11:
                return "ACTION_BUTTON_PRESS";
            case 12:
                return "ACTION_BUTTON_RELEASE";
        }
    }

    public static String axisToString(int i) {
        String nativeAxisToString = nativeAxisToString(i);
        if (nativeAxisToString == null) {
            return Integer.toString(i);
        }
        return LABEL_PREFIX + nativeAxisToString;
    }

    public static int axisFromString(String str) {
        int nativeAxisFromString;
        if (str.startsWith(LABEL_PREFIX) && (nativeAxisFromString = nativeAxisFromString((str = str.substring(LABEL_PREFIX.length())))) >= 0) {
            return nativeAxisFromString;
        }
        try {
            return Integer.parseInt(str, 10);
        } catch (NumberFormatException unused) {
            return -1;
        }
    }

    public static String buttonStateToString(int i) {
        if (i == 0) {
            return "0";
        }
        StringBuilder sb = null;
        int i2 = 0;
        while (i != 0) {
            boolean z = (i & 1) != 0;
            i >>>= 1;
            if (z) {
                String str = BUTTON_SYMBOLIC_NAMES[i2];
                if (sb != null) {
                    sb.append('|');
                    sb.append(str);
                } else {
                    if (i == 0) {
                        return str;
                    }
                    sb = new StringBuilder(str);
                }
            }
            i2++;
        }
        return sb.toString();
    }

    public static String toolTypeToString(int i) {
        String str = TOOL_TYPE_SYMBOLIC_NAMES.get(i);
        return str != null ? str : Integer.toString(i);
    }

    public final boolean isButtonPressed(int i) {
        return i != 0 && (getButtonState() & i) == i;
    }

    public static MotionEvent createFromParcelBody(Parcel parcel) {
        MotionEvent obtain = obtain();
        obtain.mNativePtr = nativeReadFromParcel(obtain.mNativePtr, parcel);
        return obtain;
    }

    @Override // android.view.InputEvent
    public final void cancel() {
        setAction(3);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(1);
        nativeWriteToParcel(this.mNativePtr, parcel);
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    public static final class PointerCoords {
        private static final int INITIAL_PACKED_AXIS_VALUES = 8;
        private long mPackedAxisBits;
        private float[] mPackedAxisValues;
        public float orientation;
        public float pressure;
        public float size;
        public float toolMajor;
        public float toolMinor;
        public float touchMajor;
        public float touchMinor;
        public float x;
        public float y;

        public PointerCoords() {
        }

        public PointerCoords(PointerCoords pointerCoords) {
            copyFrom(pointerCoords);
        }

        public static PointerCoords[] createArray(int i) {
            PointerCoords[] pointerCoordsArr = new PointerCoords[i];
            for (int i2 = 0; i2 < i; i2++) {
                pointerCoordsArr[i2] = new PointerCoords();
            }
            return pointerCoordsArr;
        }

        public void clear() {
            this.mPackedAxisBits = 0L;
            this.x = 0.0f;
            this.y = 0.0f;
            this.pressure = 0.0f;
            this.size = 0.0f;
            this.touchMajor = 0.0f;
            this.touchMinor = 0.0f;
            this.toolMajor = 0.0f;
            this.toolMinor = 0.0f;
            this.orientation = 0.0f;
        }

        public void copyFrom(PointerCoords pointerCoords) {
            long j = pointerCoords.mPackedAxisBits;
            this.mPackedAxisBits = j;
            if (j != 0) {
                float[] fArr = pointerCoords.mPackedAxisValues;
                int bitCount = Long.bitCount(j);
                float[] fArr2 = this.mPackedAxisValues;
                if (fArr2 == null || bitCount > fArr2.length) {
                    fArr2 = new float[fArr.length];
                    this.mPackedAxisValues = fArr2;
                }
                System.arraycopy(fArr, 0, fArr2, 0, bitCount);
            }
            this.x = pointerCoords.x;
            this.y = pointerCoords.y;
            this.pressure = pointerCoords.pressure;
            this.size = pointerCoords.size;
            this.touchMajor = pointerCoords.touchMajor;
            this.touchMinor = pointerCoords.touchMinor;
            this.toolMajor = pointerCoords.toolMajor;
            this.toolMinor = pointerCoords.toolMinor;
            this.orientation = pointerCoords.orientation;
        }

        public float getAxisValue(int i) {
            switch (i) {
                case 0:
                    return this.x;
                case 1:
                    return this.y;
                case 2:
                    return this.pressure;
                case 3:
                    return this.size;
                case 4:
                    return this.touchMajor;
                case 5:
                    return this.touchMinor;
                case 6:
                    return this.toolMajor;
                case 7:
                    return this.toolMinor;
                case 8:
                    return this.orientation;
                default:
                    if (i < 0 || i > 63) {
                        throw new IllegalArgumentException("Axis out of range.");
                    }
                    long j = this.mPackedAxisBits;
                    if ((((-9223372036854775808) >>> i) & j) == 0) {
                        return 0.0f;
                    }
                    return this.mPackedAxisValues[Long.bitCount(j & (~((-1) >>> i)))];
            }
        }

        public void setAxisValue(int i, float f) {
            switch (i) {
                case 0:
                    this.x = f;
                    return;
                case 1:
                    this.y = f;
                    return;
                case 2:
                    this.pressure = f;
                    return;
                case 3:
                    this.size = f;
                    return;
                case 4:
                    this.touchMajor = f;
                    return;
                case 5:
                    this.touchMinor = f;
                    return;
                case 6:
                    this.toolMajor = f;
                    return;
                case 7:
                    this.toolMinor = f;
                    return;
                case 8:
                    this.orientation = f;
                    return;
                default:
                    if (i < 0 || i > 63) {
                        throw new IllegalArgumentException("Axis out of range.");
                    }
                    long j = this.mPackedAxisBits;
                    long j2 = (-9223372036854775808) >>> i;
                    int bitCount = Long.bitCount((~((-1) >>> i)) & j);
                    float[] fArr = this.mPackedAxisValues;
                    if ((j & j2) == 0) {
                        if (fArr == null) {
                            fArr = new float[8];
                            this.mPackedAxisValues = fArr;
                        } else {
                            int bitCount2 = Long.bitCount(j);
                            if (bitCount2 >= fArr.length) {
                                float[] fArr2 = new float[bitCount2 * 2];
                                System.arraycopy(fArr, 0, fArr2, 0, bitCount);
                                System.arraycopy(fArr, bitCount, fArr2, bitCount + 1, bitCount2 - bitCount);
                                this.mPackedAxisValues = fArr2;
                                fArr = fArr2;
                            } else if (bitCount != bitCount2) {
                                System.arraycopy(fArr, bitCount, fArr, bitCount + 1, bitCount2 - bitCount);
                            }
                        }
                        this.mPackedAxisBits = j | j2;
                    }
                    fArr[bitCount] = f;
                    return;
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    public static final class PointerProperties {
        public int id;
        public int toolType;

        public PointerProperties() {
            clear();
        }

        public PointerProperties(PointerProperties pointerProperties) {
            copyFrom(pointerProperties);
        }

        public static PointerProperties[] createArray(int i) {
            PointerProperties[] pointerPropertiesArr = new PointerProperties[i];
            for (int i2 = 0; i2 < i; i2++) {
                pointerPropertiesArr[i2] = new PointerProperties();
            }
            return pointerPropertiesArr;
        }

        public void clear() {
            this.id = -1;
            this.toolType = 0;
        }

        public void copyFrom(PointerProperties pointerProperties) {
            this.id = pointerProperties.id;
            this.toolType = pointerProperties.toolType;
        }

        public boolean equals(Object obj) {
            if (obj instanceof PointerProperties) {
                return equals((PointerProperties) obj);
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean equals(PointerProperties pointerProperties) {
            return pointerProperties != null && this.id == pointerProperties.id && this.toolType == pointerProperties.toolType;
        }

        public int hashCode() {
            return (this.toolType << 8) | this.id;
        }
    }
}
