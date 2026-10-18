package com.yftech.vehicle.internal.adapter;

/* loaded from: /home/user/work/dex/classes4.dex */
public interface ICarPower extends IBaseCmd {

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum PowerState {
        STANDBY(1),
        SYSTEMON(2),
        SLEEP(3),
        VOLFAULTSTBY(4),
        TEST(5),
        TEN_MIN(6),
        PRE_SLEEP(7),
        __UNKNOWN__(-1);

        public final int value;

        PowerState(int i) {
            this.value = i;
        }

        public static PowerState valueOf(int i) {
            return i == STANDBY.value ? STANDBY : i == SYSTEMON.value ? SYSTEMON : i == SLEEP.value ? SLEEP : i == VOLFAULTSTBY.value ? VOLFAULTSTBY : i == TEST.value ? TEST : i == TEN_MIN.value ? TEN_MIN : i == PRE_SLEEP.value ? PRE_SLEEP : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum PowerMode {
        OFF(0),
        ACC(1),
        ON(2),
        CRANK(3),
        __UNKNOWN__(-1);

        public final int value;

        PowerMode(int i) {
            this.value = i;
        }

        public static PowerMode valueOf(int i) {
            return i == OFF.value ? OFF : i == ACC.value ? ACC : i == ON.value ? ON : i == CRANK.value ? CRANK : __UNKNOWN__;
        }
    }
}
