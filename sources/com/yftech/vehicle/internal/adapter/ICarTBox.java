package com.yftech.vehicle.internal.adapter;

/* loaded from: /home/user/work/dex/classes4.dex */
public interface ICarTBox extends IBaseApi {
    public static final int PHONE_CALL_STATE = 329;
    public static final int PHONE_KEY_ACCEPT_SETTING = 326;
    public static final int PHONE_KEY_CANCEL_SETTING = 327;
    public static final int PHONE_MODE = 328;
    public static final int PHONE_TYPE_SETTING = 514;
    public static final int TCU_MUTE_RADIO_ORDER = 190;

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum MuteRadioOrder {
        NO_MUTE_RADIO_ORDER(0),
        MUTE_RADIO_ORDER(1),
        __UNKNOWN__(-1);

        public final int value;

        MuteRadioOrder(int i) {
            this.value = i;
        }

        public static MuteRadioOrder valueOf(int i) {
            return i == NO_MUTE_RADIO_ORDER.value ? NO_MUTE_RADIO_ORDER : i == MUTE_RADIO_ORDER.value ? MUTE_RADIO_ORDER : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum PhoneKeyAction {
        NOT_ACTIVE(0),
        SHORT_RELEASE(1),
        LONG_RELEASE(2),
        FAILURE(3),
        __UNKNOWN__(-1);

        public final int value;

        PhoneKeyAction(int i) {
            this.value = i;
        }

        public static PhoneKeyAction valueOf(int i) {
            return i == NOT_ACTIVE.value ? NOT_ACTIVE : i == SHORT_RELEASE.value ? SHORT_RELEASE : i == LONG_RELEASE.value ? LONG_RELEASE : i == FAILURE.value ? FAILURE : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum PhoneMode {
        NOT_ACTIVE(0),
        TBOX_MODE(1),
        BLUETOOTH_MODE(2),
        BCALL_MODE(3),
        ECALL_MODE(4),
        CALLBACK_MODE1(5),
        CALLBACK_MODE2(6),
        __UNKNOWN__(-1);

        public final int value;

        PhoneMode(int i) {
            this.value = i;
        }

        public static PhoneMode valueOf(int i) {
            return i == NOT_ACTIVE.value ? NOT_ACTIVE : i == TBOX_MODE.value ? TBOX_MODE : i == BLUETOOTH_MODE.value ? BLUETOOTH_MODE : i == BCALL_MODE.value ? BCALL_MODE : i == ECALL_MODE.value ? ECALL_MODE : i == CALLBACK_MODE1.value ? CALLBACK_MODE1 : i == CALLBACK_MODE2.value ? CALLBACK_MODE2 : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum PhoneCallState {
        NOT_ACTIVE(0),
        INCOMING_CALL(1),
        CONNECTING(2),
        ANSWER(3),
        ON_THE_PHONE(4),
        HANG_UP(5),
        CALL_OVER(6),
        __UNKNOWN__(-1);

        public final int value;

        PhoneCallState(int i) {
            this.value = i;
        }

        public static PhoneCallState valueOf(int i) {
            return i == NOT_ACTIVE.value ? NOT_ACTIVE : i == INCOMING_CALL.value ? INCOMING_CALL : i == CONNECTING.value ? CONNECTING : i == ANSWER.value ? ANSWER : i == ON_THE_PHONE.value ? ON_THE_PHONE : i == HANG_UP.value ? HANG_UP : i == CALL_OVER.value ? CALL_OVER : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum PhoneType {
        NOT_ACTIVE(0),
        BT_PHONE(1),
        E_CALL(2),
        B_CALL(3),
        __UNKNOWN__(-1);

        public final int value;

        PhoneType(int i) {
            this.value = i;
        }

        public static PhoneType valueOf(int i) {
            return i == NOT_ACTIVE.value ? NOT_ACTIVE : i == BT_PHONE.value ? BT_PHONE : i == E_CALL.value ? E_CALL : i == B_CALL.value ? B_CALL : __UNKNOWN__;
        }
    }
}
