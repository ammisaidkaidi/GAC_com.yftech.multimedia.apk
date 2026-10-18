package com.yftech.vehicle.internal.adapter;

/* loaded from: /home/user/work/dex/classes4.dex */
public interface IMpuAvm extends IBaseCmd {

    /* loaded from: /home/user/work/dex/classes4.dex */
    public static class AvmCameraState {
        public boolean frontFault;
        public boolean leftFault;
        public boolean rearFault;
        public boolean rightFault;
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum AvmDisplayState {
        OFF(0),
        FULL_SCREEN(1),
        __UNKNOWN__(-1);

        public final int value;

        AvmDisplayState(int i) {
            this.value = i;
        }

        public static AvmDisplayState valueOf(int i) {
            return i == OFF.value ? OFF : i == FULL_SCREEN.value ? FULL_SCREEN : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum AvmWorkMode {
        INVALID(0),
        UPGRADING(1),
        DEBUG(1),
        NORMAL(1),
        __UNKNOWN__(-1);

        public final int value;

        AvmWorkMode(int i) {
            this.value = i;
        }

        public static AvmWorkMode valueOf(int i) {
            return i == INVALID.value ? INVALID : i == UPGRADING.value ? UPGRADING : i == DEBUG.value ? DEBUG : i == NORMAL.value ? NORMAL : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum AvmCalibrationState {
        NONE(0),
        CLAIBRATING(1),
        SUCCESS(1),
        FAILURE(1),
        PARTIALLY(1),
        __UNKNOWN__(-1);

        public final int value;

        AvmCalibrationState(int i) {
            this.value = i;
        }

        public static AvmCalibrationState valueOf(int i) {
            return i == NONE.value ? NONE : i == CLAIBRATING.value ? CLAIBRATING : i == SUCCESS.value ? SUCCESS : i == FAILURE.value ? FAILURE : i == PARTIALLY.value ? PARTIALLY : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum AvmHeartState {
        FAULT(0),
        NORMAL(1),
        __UNKNOWN__(-1);

        public final int value;

        AvmHeartState(int i) {
            this.value = i;
        }

        public static AvmHeartState valueOf(int i) {
            return i == FAULT.value ? FAULT : i == NORMAL.value ? NORMAL : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum AvmFullScreenSwtich {
        DISABLE(0),
        ENABLE(1),
        __UNKNOWN__(-1);

        public final int value;

        AvmFullScreenSwtich(int i) {
            this.value = i;
        }

        public static AvmFullScreenSwtich valueOf(int i) {
            return i == DISABLE.value ? DISABLE : i == ENABLE.value ? ENABLE : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum Language {
        CHINESE(0),
        ENGLISH(1),
        ARABIC_RESERVED(2),
        RUSSIAN_RESERVED(3),
        CHINESE_PLUSENGLISH(4),
        SPANISH(5),
        INDONESIAN(6),
        __UNKNOWN__(-1);

        public final int value;

        Language(int i) {
            this.value = i;
        }

        public static Language valueOf(int i) {
            return i == CHINESE.value ? CHINESE : i == ENGLISH.value ? ENGLISH : i == ARABIC_RESERVED.value ? ARABIC_RESERVED : i == RUSSIAN_RESERVED.value ? RUSSIAN_RESERVED : i == CHINESE_PLUSENGLISH.value ? CHINESE_PLUSENGLISH : i == SPANISH.value ? SPANISH : i == INDONESIAN.value ? INDONESIAN : __UNKNOWN__;
        }
    }
}
