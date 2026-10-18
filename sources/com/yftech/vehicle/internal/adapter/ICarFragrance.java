package com.yftech.vehicle.internal.adapter;

/* loaded from: /home/user/work/dex/classes4.dex */
public interface ICarFragrance extends IBaseApi {
    public static final int FRAGRANCE1_WORKSTATE = 547;
    public static final int FRAGRANCE2_WORKSTATE = 548;
    public static final int FRAGRANCE3_WORKSTATE = 549;
    public static final int FRAGRANCE_TASTE1_FRAG = 550;
    public static final int FRAGRANCE_TASTE1_PERCENT = 544;
    public static final int FRAGRANCE_TASTE2_FRAG = 551;
    public static final int FRAGRANCE_TASTE2_PERCENT = 545;
    public static final int FRAGRANCE_TASTE3_FRAG = 552;
    public static final int FRAGRANCE_TASTE3_PERCENT = 546;
    public static final int FRAGRANCE_TASTE_STATE = 542;
    public static final int FragranceConcentration_STATE = -1;

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum FragranceTaste {
        NO_COMMAND(0),
        TASTE_A(1),
        TASTE_B(2),
        TASTE_C(3),
        __UNKNOWN__(-1);

        public final int value;

        FragranceTaste(int i) {
            this.value = i;
        }

        public static FragranceTaste valueOf(int i) {
            return i == NO_COMMAND.value ? NO_COMMAND : i == TASTE_A.value ? TASTE_A : i == TASTE_B.value ? TASTE_B : i == TASTE_C.value ? TASTE_C : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum FragranceConcentration {
        OFF(0),
        LOW(1),
        MID(2),
        HIGH(3),
        __UNKNOWN__(-1);

        public final int value;

        FragranceConcentration(int i) {
            this.value = i;
        }

        public static FragranceConcentration valueOf(int i) {
            return i == OFF.value ? OFF : i == LOW.value ? LOW : i == MID.value ? MID : i == HIGH.value ? HIGH : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum FragranceWorkState {
        RUN(0),
        NOT_RUN(1),
        __UNKNOWN__(-1);

        public final int value;

        FragranceWorkState(int i) {
            this.value = i;
        }

        public static FragranceWorkState valueOf(int i) {
            return i == RUN.value ? RUN : i == NOT_RUN.value ? NOT_RUN : __UNKNOWN__;
        }
    }
}
