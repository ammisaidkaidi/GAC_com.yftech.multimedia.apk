package com.yftech.vehicle.internal.adapter;

/* loaded from: /home/user/work/dex/classes4.dex */
public interface ICarKey extends IBaseCmd {

    /* loaded from: /home/user/work/dex/classes4.dex */
    public static class CarKeyEvent {
        public static final int ACTION_KNOB_BACKWARD = 4;
        public static final int ACTION_KNOB_FORWARD = 3;
        public static final int ACTION_LONG_PRESS = 2;
        public static final int ACTION_PRESS = 0;
        public static final int ACTION_RELEASED = 1;
        public static final int KEYCODE_BACK = 17;
        public static final int KEYCODE_CAN_AC_WIND_SPEED_DOWN = 65;
        public static final int KEYCODE_CAN_AC_WIND_SPEED_UP = 64;
        public static final int KEYCODE_CUSTOM_MULTIPLEX = 128;
        public static final int KEYCODE_CUSTOM_RADAR = 129;
        public static final int KEYCODE_DOWN = 33;
        public static final int KEYCODE_ENTER = 10;
        public static final int KEYCODE_HOME = 18;
        public static final int KEYCODE_LEFT = 34;
        public static final int KEYCODE_LEFT_DOWN = 37;
        public static final int KEYCODE_LEFT_UP = 36;
        public static final int KEYCODE_MEDIA = 21;
        public static final int KEYCODE_MENU = 16;
        public static final int KEYCODE_MODE = 5;
        public static final int KEYCODE_MUTE = 11;
        public static final int KEYCODE_NAVI = 20;
        public static final int KEYCODE_NONE = 0;
        public static final int KEYCODE_PHONE = 9;
        public static final int KEYCODE_PHONE_ACCEPT = 7;
        public static final int KEYCODE_PHONE_CANCEL = 8;
        public static final int KEYCODE_POWER = 22;
        public static final int KEYCODE_RADIO = 19;
        public static final int KEYCODE_RIGHT = 35;
        public static final int KEYCODE_RIGHT_DOWN = 39;
        public static final int KEYCODE_RIGHT_UP = 38;
        public static final int KEYCODE_SEEK_DOWN = 1;
        public static final int KEYCODE_SEEK_UP = 2;
        public static final int KEYCODE_UP = 32;
        public static final int KEYCODE_VOICE = 6;
        public static final int KEYCODE_VOLUME_DOWN = 4;
        public static final int KEYCODE_VOLUME_UP = 3;
        public static final int KEYCODE_WECHAT = 23;
        public final int action;
        public final int keyCode;
        public final int stepNum;

        public CarKeyEvent(int i, int i2, int i3) {
            this.action = i2;
            this.keyCode = i;
            this.stepNum = i3;
        }

        public static CarKeyEvent valueOf(int i) {
            return new CarKeyEvent((i >> 8) & ICarParking.PARKING_RADAR_ALARM_SETTING, i & ICarParking.PARKING_RADAR_ALARM_SETTING, (i >> 16) & ICarParking.PARKING_RADAR_ALARM_SETTING);
        }

        public String toString() {
            return "CarKeyEvent{action=" + this.action + ", keyCode=" + this.keyCode + ", stepNum=" + this.stepNum + '}';
        }
    }
}
