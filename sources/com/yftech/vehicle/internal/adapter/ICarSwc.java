package com.yftech.vehicle.internal.adapter;

/* loaded from: /home/user/work/dex/classes4.dex */
public interface ICarSwc extends IBaseApi {
    public static final int SWC_ANGLE_STATE = 306;
    public static final int SWC_ANGLE_VD_STATE = 338;
    public static final int SWC_HEAT_STATE = 304;
    public static final int SWC_HEAT_STATE_SETTING = 305;
    public static final int SWC_STAR_KEY_SETTING = 284;
    public static final int SWC_STAR_KEY_VD_SETTING = 285;

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum SwcHeatState {
        OFF(0),
        HEATING(1),
        PRESERVATION(2),
        __UNKNOWN__(-1);

        public final int value;

        SwcHeatState(int i) {
            this.value = i;
        }

        public static SwcHeatState valueOf(int i) {
            return i == OFF.value ? OFF : i == HEATING.value ? HEATING : i == PRESERVATION.value ? PRESERVATION : __UNKNOWN__;
        }
    }
}
