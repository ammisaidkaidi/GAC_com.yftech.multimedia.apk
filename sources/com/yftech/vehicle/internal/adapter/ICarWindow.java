package com.yftech.vehicle.internal.adapter;

/* loaded from: /home/user/work/dex/classes4.dex */
public interface ICarWindow extends IBaseApi {
    public static final int SUNROOF_WINDOW_AUTO_CLOSE_SETTING = 63;
    public static final int SUNROOF_WINDOW_AUTO_CLOSE_STATE = 160;
    public static final int WINDOW_OPEN_PERCENT_FL = 162;
    public static final int WINDOW_OPEN_PERCENT_FL_SETTING = 64;
    public static final int WINDOW_OPEN_PERCENT_FL_VD_SETTING = 364;
    public static final int WINDOW_OPEN_PERCENT_FR = 166;
    public static final int WINDOW_OPEN_PERCENT_FR_SETTING = 65;
    public static final int WINDOW_OPEN_PERCENT_FR_VD_SETTING = 365;
    public static final int WINDOW_OPEN_PERCENT_RL = 170;
    public static final int WINDOW_OPEN_PERCENT_RL_SETTING = 66;
    public static final int WINDOW_OPEN_PERCENT_RL_VD_SETTING = 366;
    public static final int WINDOW_OPEN_PERCENT_RR = 174;
    public static final int WINDOW_OPEN_PERCENT_RR_SETTING = 67;
    public static final int WINDOW_OPEN_PERCENT_RR_VD_SETTING = 367;
    public static final int WINDOW_OPERATION_STATE_FL = 163;
    public static final int WINDOW_OPERATION_STATE_FR = 167;
    public static final int WINDOW_OPERATION_STATE_RL = 171;
    public static final int WINDOW_OPERATION_STATE_RR = 175;
    public static final int WINDOW_OVERHEAT_STATE_FL = 164;
    public static final int WINDOW_OVERHEAT_STATE_FR = 168;
    public static final int WINDOW_OVERHEAT_STATE_RL = 172;
    public static final int WINDOW_OVERHEAT_STATE_RR = 176;
    public static final int WINDOW_ROOF_OPEN_OPERTION = 247;
    public static final int WINDOW_ROOF_OPEN_PERCENT = 246;
    public static final int WINDOW_ROOF_OPEN_STATE_SETTING = 68;
    public static final int WINDOW_ROOF_SHADE_OPEN_OPERTION = 250;
    public static final int WINDOW_ROOF_SHADE_OPEN_PERCENT = 249;
    public static final int WINDOW_ROOF_SHADE_OPEN_PERCENT_SETTING = 248;
    public static final int WINDOW_ROOF_SHADE_OPEN_STATE_SETTING = 248;
    public static final int WINDOW_STATE_FL = 161;
    public static final int WINDOW_STATE_FL_SETTING = 202;
    public static final int WINDOW_STATE_FR = 165;
    public static final int WINDOW_STATE_FR_SETTING = 203;
    public static final int WINDOW_STATE_RL = 169;
    public static final int WINDOW_STATE_RL_SETTING = 204;
    public static final int WINDOW_STATE_RR = 173;
    public static final int WINDOW_STATE_RR_SETTING = 205;

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum WindowState {
        UNDEFINED_POSITION(0),
        FULLY_CLOSED(1),
        BETWEEN(2),
        FULLY_OPENED(3),
        __UNKNOWN__(-1);

        public final int value;

        WindowState(int i) {
            this.value = i;
        }

        public static WindowState valueOf(int i) {
            return i == UNDEFINED_POSITION.value ? UNDEFINED_POSITION : i == FULLY_CLOSED.value ? FULLY_CLOSED : i == BETWEEN.value ? BETWEEN : i == FULLY_OPENED.value ? FULLY_OPENED : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum WindowOperationState {
        STOPED(0),
        CLOSING(1),
        OPENING(2),
        ANTIPINCH_REVERSING(3),
        __UNKNOWN__(-1);

        public final int value;

        WindowOperationState(int i) {
            this.value = i;
        }

        public static WindowOperationState valueOf(int i) {
            return i == STOPED.value ? STOPED : i == CLOSING.value ? CLOSING : i == OPENING.value ? OPENING : i == ANTIPINCH_REVERSING.value ? ANTIPINCH_REVERSING : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum WindowOpenPercent {
        STOP(1),
        FULLY_OPEN(2),
        FULLY_CLOSE(3),
        TEN_PERCENT_OPEN(4),
        TWENTY_PERCENT_OPEN(5),
        THIRTY_PERCENT_OPEN(6),
        FORTY_PERCENT_OPEN(7),
        FIFTY_PERCENT_OPEN(8),
        SIXTY_PERCENT_OPEN(9),
        SEVENTY_PERCENT_OPEN(10),
        EIGHTY_PERCENT_OPEN(11),
        NINETY_PERCENT_OPEN(12),
        CHANGE_OPEN(13),
        CHANGE_CLOSE(14),
        WIND_BREATHE(105),
        __UNKNOWN__(-1);

        public final int value;

        WindowOpenPercent(int i) {
            this.value = i;
        }

        public static WindowOpenPercent valueOf(int i) {
            return i == STOP.value ? STOP : i == FULLY_OPEN.value ? FULLY_OPEN : i == FULLY_CLOSE.value ? FULLY_CLOSE : i == TEN_PERCENT_OPEN.value ? TEN_PERCENT_OPEN : i == TWENTY_PERCENT_OPEN.value ? TWENTY_PERCENT_OPEN : i == THIRTY_PERCENT_OPEN.value ? THIRTY_PERCENT_OPEN : i == FORTY_PERCENT_OPEN.value ? FORTY_PERCENT_OPEN : i == FIFTY_PERCENT_OPEN.value ? FIFTY_PERCENT_OPEN : i == SIXTY_PERCENT_OPEN.value ? SIXTY_PERCENT_OPEN : i == SEVENTY_PERCENT_OPEN.value ? SEVENTY_PERCENT_OPEN : i == EIGHTY_PERCENT_OPEN.value ? EIGHTY_PERCENT_OPEN : i == NINETY_PERCENT_OPEN.value ? NINETY_PERCENT_OPEN : i == CHANGE_OPEN.value ? CHANGE_OPEN : i == CHANGE_CLOSE.value ? CHANGE_CLOSE : i == WIND_BREATHE.value ? WIND_BREATHE : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum WindowRoofOpenState {
        STOP(1),
        FULLY_OPEN(2),
        FULLY_CLOSE(3),
        TILT_UP(4),
        SHADE_OPEN(5),
        SHADE_CLOS(6),
        TWENTY_PERCENT_OPEN(7),
        FORTY_PERCENT_OPEN(8),
        SIXTY_PERCENT_OPEN(9),
        EIGHTY_PERCENT_OPEN(10),
        ONE_HUNDRED_PERCENT_OPEN(11),
        CHANGE_OPEN(12),
        CHANGE_CLOSE(13),
        __UNKNOWN__(-1);

        public final int value;

        WindowRoofOpenState(int i) {
            this.value = i;
        }

        public static WindowRoofOpenState valueOf(int i) {
            return i == STOP.value ? STOP : i == FULLY_OPEN.value ? FULLY_OPEN : i == FULLY_CLOSE.value ? FULLY_CLOSE : i == TILT_UP.value ? TILT_UP : i == SHADE_OPEN.value ? SHADE_OPEN : i == SHADE_CLOS.value ? SHADE_CLOS : i == TWENTY_PERCENT_OPEN.value ? TWENTY_PERCENT_OPEN : i == FORTY_PERCENT_OPEN.value ? FORTY_PERCENT_OPEN : i == SIXTY_PERCENT_OPEN.value ? SIXTY_PERCENT_OPEN : i == EIGHTY_PERCENT_OPEN.value ? EIGHTY_PERCENT_OPEN : i == ONE_HUNDRED_PERCENT_OPEN.value ? ONE_HUNDRED_PERCENT_OPEN : i == CHANGE_OPEN.value ? CHANGE_OPEN : i == CHANGE_CLOSE.value ? CHANGE_CLOSE : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum WindowRoofOpenOpertion {
        FULLY_CLOSED(0),
        SLIDE_OPEN(1),
        TILT_UP(2),
        OPENING(3),
        CLOSING(4),
        REVERSING(5),
        POSITION_NOT_TRUSTED(6),
        FULLY_OPENED(7),
        COMFORT_POSITION(8),
        EXPANDED_SLIDE_OPEN(9),
        __UNKNOWN__(-1);

        public final int value;

        WindowRoofOpenOpertion(int i) {
            this.value = i;
        }

        public static WindowRoofOpenOpertion valueOf(int i) {
            return i == FULLY_CLOSED.value ? FULLY_CLOSED : i == SLIDE_OPEN.value ? SLIDE_OPEN : i == TILT_UP.value ? TILT_UP : i == OPENING.value ? OPENING : i == CLOSING.value ? CLOSING : i == REVERSING.value ? REVERSING : i == POSITION_NOT_TRUSTED.value ? POSITION_NOT_TRUSTED : i == FULLY_OPENED.value ? FULLY_OPENED : i == COMFORT_POSITION.value ? COMFORT_POSITION : i == EXPANDED_SLIDE_OPEN.value ? EXPANDED_SLIDE_OPEN : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum WindowRoofShadeOpenState {
        ROOF_FULLY_CLOSE(101),
        ROOF_TILT_UP(102),
        ROOF_COMFORT_POSITION(103),
        ROOF_FULLY_OPEN(104),
        SHADE_CLOSE(105),
        SHADE_OPEN(106),
        CHANGE_OPEN_TWENTY_PERCENT(107),
        CHANGE_CLOSE_TWENTY_PERCENT(108),
        STOP(109),
        __UNKNOWN__(-1);

        public final int value;

        WindowRoofShadeOpenState(int i) {
            this.value = i;
        }

        public static WindowRoofShadeOpenState valueOf(int i) {
            return i == ROOF_FULLY_CLOSE.value ? ROOF_FULLY_CLOSE : i == ROOF_TILT_UP.value ? ROOF_TILT_UP : i == ROOF_COMFORT_POSITION.value ? ROOF_COMFORT_POSITION : i == ROOF_FULLY_OPEN.value ? ROOF_FULLY_OPEN : i == SHADE_CLOSE.value ? SHADE_CLOSE : i == SHADE_OPEN.value ? SHADE_OPEN : i == CHANGE_OPEN_TWENTY_PERCENT.value ? CHANGE_OPEN_TWENTY_PERCENT : i == CHANGE_CLOSE_TWENTY_PERCENT.value ? CHANGE_CLOSE_TWENTY_PERCENT : i == STOP.value ? STOP : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum WindowRoofShadeOpenOpertion {
        FULLY_CLOSE(0),
        SLIDE_OPEN(1),
        NO_USED(2),
        OPENING(3),
        CLOSING(4),
        REVERSING(5),
        POSITION_NOT_TRUSTED(6),
        FULLY_OPEN(7),
        __UNKNOWN__(-1);

        public final int value;

        WindowRoofShadeOpenOpertion(int i) {
            this.value = i;
        }

        public static WindowRoofShadeOpenOpertion valueOf(int i) {
            return i == FULLY_CLOSE.value ? FULLY_CLOSE : i == SLIDE_OPEN.value ? SLIDE_OPEN : i == NO_USED.value ? NO_USED : i == OPENING.value ? OPENING : i == CLOSING.value ? CLOSING : i == REVERSING.value ? REVERSING : i == POSITION_NOT_TRUSTED.value ? POSITION_NOT_TRUSTED : i == FULLY_OPEN.value ? FULLY_OPEN : __UNKNOWN__;
        }
    }
}
