package com.yftech.vehicle.internal.adapter;

/* loaded from: /home/user/work/dex/classes4.dex */
public interface IBaseApi {
    public static final byte BUTTON_ACTION_PRESS = 1;
    public static final byte BUTTON_ACTION_RELEASE = 0;
    public static final byte STATE_DISABLED = 0;
    public static final byte STATE_ENABLED = 1;
    public static final byte SWITCH_TURN_OFF = 1;
    public static final byte SWITCH_TURN_ON = 2;

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum EnableState {
        DISABLED(0),
        ENABLED(1),
        __UNKNOWN__(-1);

        public final int value;

        EnableState(int i) {
            this.value = i;
        }

        public static EnableState valueOf(int i) {
            return i == DISABLED.value ? DISABLED : i == ENABLED.value ? ENABLED : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum EnableStateOp {
        DISABLED(1),
        ENABLED(0),
        __UNKNOWN__(-1);

        public final int value;

        EnableStateOp(int i) {
            this.value = i;
        }

        public static EnableStateOp valueOf(int i) {
            return i == DISABLED.value ? DISABLED : i == ENABLED.value ? ENABLED : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum SwitchState {
        TURN_ON(2),
        TURN_OFF(1),
        __UNKNOWN__(-1);

        public final int value;

        SwitchState(int i) {
            this.value = i;
        }

        public static SwitchState valueOf(int i) {
            return i == TURN_ON.value ? TURN_ON : i == TURN_OFF.value ? TURN_OFF : __UNKNOWN__;
        }
    }
}
