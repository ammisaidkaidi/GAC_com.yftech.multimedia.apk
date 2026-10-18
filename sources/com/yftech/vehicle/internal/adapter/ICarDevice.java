package com.yftech.vehicle.internal.adapter;

/* loaded from: /home/user/work/dex/classes4.dex */
public interface ICarDevice extends IBaseApi {
    public static final int APA_BUTTON_SETTING = 518;
    public static final int BSV_BUTTON_SETTING = 535;
    public static final int BSV_DISPLAY_STATE = 532;
    public static final int BSV_DISPLAY_SWITCH = 530;
    public static final int BSV_FUNCTION_CMD_SETTING = 531;
    public static final int PAA_MODE_SETTING = 517;
    public static final int PAS_BACKPARK_DISPLAY_STATE = 521;
    public static final int RECORDER_DISPLAY_STATE = 408;
    public static final int RECORDER_ENTER_CMD_SETTING = 410;
    public static final int RECORDER_RECORD_STATE = 409;
    public static final int SVM_BUTTON_SETTING = 308;
    public static final int SVM_FUNCTION_CMD_SETTING = 411;

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum RecorderEnterCmd {
        COMMAND(1),
        NO_COMMAND(0),
        __UNKNOWN__(-1);

        public final int value;

        RecorderEnterCmd(int i) {
            this.value = i;
        }

        public static RecorderEnterCmd valueOf(int i) {
            return i == COMMAND.value ? COMMAND : i == NO_COMMAND.value ? NO_COMMAND : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum SvmFunctionCmd {
        REQ_CANCEL(15),
        REQ_ENTER(14),
        RVM_VERTICAL_PARKING_VIEW(13),
        RVM_PARALLEL_PARKING_VIEW(12),
        RVM_REAR_VIEW(11),
        SVM_VERTICAL_PARKING_VIEW(10),
        SVM_PARALLEL_PARKING_VIEW(9),
        SVM_PARKING_GUIDANCE_VIEW(8),
        SVM_RIGHT_BLIND_SPOT_VIEW(7),
        SVM_LEFT_BLIND_SPOT_VIEW(6),
        SVM_ENLARGE_REAR_VIEW(5),
        SVM_SURROUND_VIEW_AND_REAR_VIEW(4),
        SVM_ENLARGE_FRONT_VIEW(3),
        SVM_SURROUND_VIEW_AND_FRONT_VIEW(2),
        SVM_HMI_IN_TRANSITION(1),
        __UNKNOWN__(-1);

        public final int value;

        SvmFunctionCmd(int i) {
            this.value = i;
        }

        public static SvmFunctionCmd valueOf(int i) {
            return i == REQ_CANCEL.value ? REQ_CANCEL : i == REQ_ENTER.value ? REQ_ENTER : i == RVM_VERTICAL_PARKING_VIEW.value ? RVM_VERTICAL_PARKING_VIEW : i == RVM_PARALLEL_PARKING_VIEW.value ? RVM_PARALLEL_PARKING_VIEW : i == RVM_REAR_VIEW.value ? RVM_REAR_VIEW : i == SVM_VERTICAL_PARKING_VIEW.value ? SVM_VERTICAL_PARKING_VIEW : i == SVM_PARALLEL_PARKING_VIEW.value ? SVM_PARALLEL_PARKING_VIEW : i == SVM_PARKING_GUIDANCE_VIEW.value ? SVM_PARKING_GUIDANCE_VIEW : i == SVM_RIGHT_BLIND_SPOT_VIEW.value ? SVM_RIGHT_BLIND_SPOT_VIEW : i == SVM_LEFT_BLIND_SPOT_VIEW.value ? SVM_LEFT_BLIND_SPOT_VIEW : i == SVM_ENLARGE_REAR_VIEW.value ? SVM_ENLARGE_REAR_VIEW : i == SVM_SURROUND_VIEW_AND_REAR_VIEW.value ? SVM_SURROUND_VIEW_AND_REAR_VIEW : i == SVM_ENLARGE_FRONT_VIEW.value ? SVM_ENLARGE_FRONT_VIEW : i == SVM_SURROUND_VIEW_AND_FRONT_VIEW.value ? SVM_SURROUND_VIEW_AND_FRONT_VIEW : i == SVM_HMI_IN_TRANSITION.value ? SVM_HMI_IN_TRANSITION : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum PAAMode {
        APA(1),
        RPA(2),
        HAVP(3),
        PAVP(4),
        RA(5),
        CUSTOM_SLOT(6),
        PAA(7),
        APA_OFF(8),
        PAA_OFF(9),
        RA_OFF(10),
        __UNKNOWN__(-1);

        public final int value;

        PAAMode(int i) {
            this.value = i;
        }

        public static PAAMode valueOf(int i) {
            return i == APA.value ? APA : i == RPA.value ? RPA : i == HAVP.value ? HAVP : i == PAVP.value ? PAVP : i == RA.value ? RA : i == CUSTOM_SLOT.value ? CUSTOM_SLOT : i == PAA.value ? PAA : i == APA_OFF.value ? APA_OFF : i == PAA_OFF.value ? PAA_OFF : i == RA_OFF.value ? RA_OFF : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum PASBackParkDisplayState {
        NONE(0),
        IMAGE_PARKING(1),
        SPACE_PARKING(2),
        __UNKNOWN__(-1);

        public final int value;

        PASBackParkDisplayState(int i) {
            this.value = i;
        }

        public static PASBackParkDisplayState valueOf(int i) {
            return i == NONE.value ? NONE : i == IMAGE_PARKING.value ? IMAGE_PARKING : i == SPACE_PARKING.value ? SPACE_PARKING : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum BsvFunctionCmd {
        REQ_CANCEL(15),
        REQ_ENTER(14),
        RVM_VERTICAL_PARKING_VIEW(13),
        RVM_PARALLEL_PARKING_VIEW(12),
        RVM_REAR_VIEW(11),
        BSV_VERTICAL_PARKING_VIEW(10),
        BSV_PARALLEL_PARKING_VIEW(9),
        BSV_PARKING_GUIDANCE_VIEW(8),
        BSV_RIGHT_BLIND_SPOT_VIEW(7),
        BSV_LEFT_BLIND_SPOT_VIEW(6),
        BSV_ENLARGE_REAR_VIEW(5),
        BSV_SURROUND_VIEW_AND_REAR_VIEW(4),
        BSV_ENLARGE_FRONT_VIEW(3),
        BSV_SURROUND_VIEW_AND_FRONT_VIEW(2),
        BSV_HMI_IN_TRANSITION(1),
        __UNKNOWN__(-1);

        public final int value;

        BsvFunctionCmd(int i) {
            this.value = i;
        }

        public static BsvFunctionCmd valueOf(int i) {
            return i == REQ_CANCEL.value ? REQ_CANCEL : i == REQ_ENTER.value ? REQ_ENTER : i == RVM_VERTICAL_PARKING_VIEW.value ? RVM_VERTICAL_PARKING_VIEW : i == RVM_PARALLEL_PARKING_VIEW.value ? RVM_PARALLEL_PARKING_VIEW : i == RVM_REAR_VIEW.value ? RVM_REAR_VIEW : i == BSV_VERTICAL_PARKING_VIEW.value ? BSV_VERTICAL_PARKING_VIEW : i == BSV_PARALLEL_PARKING_VIEW.value ? BSV_PARALLEL_PARKING_VIEW : i == BSV_PARKING_GUIDANCE_VIEW.value ? BSV_PARKING_GUIDANCE_VIEW : i == BSV_RIGHT_BLIND_SPOT_VIEW.value ? BSV_RIGHT_BLIND_SPOT_VIEW : i == BSV_LEFT_BLIND_SPOT_VIEW.value ? BSV_LEFT_BLIND_SPOT_VIEW : i == BSV_ENLARGE_REAR_VIEW.value ? BSV_ENLARGE_REAR_VIEW : i == BSV_SURROUND_VIEW_AND_REAR_VIEW.value ? BSV_SURROUND_VIEW_AND_REAR_VIEW : i == BSV_ENLARGE_FRONT_VIEW.value ? BSV_ENLARGE_FRONT_VIEW : i == BSV_SURROUND_VIEW_AND_FRONT_VIEW.value ? BSV_SURROUND_VIEW_AND_FRONT_VIEW : i == BSV_HMI_IN_TRANSITION.value ? BSV_HMI_IN_TRANSITION : __UNKNOWN__;
        }
    }
}
