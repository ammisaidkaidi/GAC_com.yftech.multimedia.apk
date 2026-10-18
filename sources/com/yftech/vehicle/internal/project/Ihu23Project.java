package com.yftech.vehicle.internal.project;

/* loaded from: /home/user/work/dex/classes4.dex */
public class Ihu23Project {

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum ChargeMode {
        BOOKING(1),
        IMMEDIATELY(0),
        __UNKNOWN__(-1);

        public final int value;

        ChargeMode(int i) {
            this.value = i;
        }

        public static ChargeMode valueOf(int i) {
            return i == BOOKING.value ? BOOKING : i == IMMEDIATELY.value ? IMMEDIATELY : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public static class ChargeInfo {
        public ChargeMode bookChrgMode;
        public int bookChrgStartRemainingDay;
        public int bookChrgStartRemainingHour;
        public int bookChrgStartRemainingMin;
        public int bookStartDay;
        public int bookStartHour;
        public int bookStartMin;
        public int bookStartMon;
        public int bookStartYear;
        public int bookStopDay;
        public int bookStopHour;
        public int bookStopMin;
        public int bookStopMon;
        public int bookStopYear;
        public boolean repeatBookChrgDay1;
        public boolean repeatBookChrgDay2;
        public boolean repeatBookChrgDay3;
        public boolean repeatBookChrgDay4;
        public boolean repeatBookChrgDay5;
        public boolean repeatBookChrgDay6;
        public boolean repeatBookChrgDay7;

        public ChargeInfo() {
            this.bookChrgMode = ChargeMode.__UNKNOWN__;
        }

        public ChargeInfo(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, ChargeMode chargeMode, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7) {
            this.bookChrgMode = ChargeMode.__UNKNOWN__;
            this.bookStartYear = i;
            this.bookStopYear = i2;
            this.bookStartMon = i3;
            this.bookStartDay = i4;
            this.bookStartHour = i5;
            this.bookStartMin = i6;
            this.bookStopMon = i7;
            this.bookStopDay = i8;
            this.bookStopHour = i9;
            this.bookStopMin = i10;
            this.bookChrgMode = chargeMode;
            this.repeatBookChrgDay1 = z;
            this.repeatBookChrgDay2 = z2;
            this.repeatBookChrgDay3 = z3;
            this.repeatBookChrgDay4 = z4;
            this.repeatBookChrgDay5 = z5;
            this.repeatBookChrgDay6 = z6;
            this.repeatBookChrgDay7 = z7;
        }

        public String toString() {
            return "ChargeInfo{bookChrgStartRemainingDay=" + this.bookChrgStartRemainingDay + ", bookChrgStartRemainingHour=" + this.bookChrgStartRemainingHour + ", bookChrgStartRemainingMin=" + this.bookChrgStartRemainingMin + ", bookStartYear=" + this.bookStartYear + ", bookStopYear=" + this.bookStopYear + ", bookStartMon=" + this.bookStartMon + ", bookStartDay=" + this.bookStartDay + ", bookStartHour=" + this.bookStartHour + ", bookStartMin=" + this.bookStartMin + ", bookStopMon=" + this.bookStopMon + ", bookStopDay=" + this.bookStopDay + ", bookStopHour=" + this.bookStopHour + ", bookStopMin=" + this.bookStopMin + ", bookChrgMode=" + this.bookChrgMode + ", repeatBookChrgDay1=" + this.repeatBookChrgDay1 + ", repeatBookChrgDay2=" + this.repeatBookChrgDay2 + ", repeatBookChrgDay3=" + this.repeatBookChrgDay3 + ", repeatBookChrgDay4=" + this.repeatBookChrgDay4 + ", repeatBookChrgDay5=" + this.repeatBookChrgDay5 + ", repeatBookChrgDay6=" + this.repeatBookChrgDay6 + ", repeatBookChrgDay7=" + this.repeatBookChrgDay7 + '}';
        }
    }

    public static byte[] formartChargeInfoByteArray(ChargeInfo chargeInfo) {
        byte[] bArr = new byte[20];
        if (chargeInfo == null) {
            return bArr;
        }
        bArr[0] = -104;
        bArr[1] = 1;
        bArr[2] = (byte) chargeInfo.bookStartMon;
        bArr[3] = (byte) chargeInfo.bookStartDay;
        bArr[4] = (byte) chargeInfo.bookStartHour;
        bArr[5] = (byte) chargeInfo.bookStartMin;
        bArr[6] = (byte) chargeInfo.bookStopMon;
        bArr[7] = (byte) chargeInfo.bookStopDay;
        bArr[8] = (byte) chargeInfo.bookStopHour;
        bArr[9] = (byte) chargeInfo.bookStopMin;
        bArr[10] = (byte) chargeInfo.bookChrgMode.value;
        bArr[11] = chargeInfo.repeatBookChrgDay1 ? (byte) 1 : (byte) 0;
        bArr[12] = chargeInfo.repeatBookChrgDay2 ? (byte) 1 : (byte) 0;
        bArr[13] = chargeInfo.repeatBookChrgDay3 ? (byte) 1 : (byte) 0;
        bArr[14] = chargeInfo.repeatBookChrgDay4 ? (byte) 1 : (byte) 0;
        bArr[15] = chargeInfo.repeatBookChrgDay5 ? (byte) 1 : (byte) 0;
        bArr[16] = chargeInfo.repeatBookChrgDay6 ? (byte) 1 : (byte) 0;
        bArr[17] = chargeInfo.repeatBookChrgDay7 ? (byte) 1 : (byte) 0;
        if (chargeInfo.bookStartYear >= 2000) {
            chargeInfo.bookStartYear -= 2000;
        }
        if (chargeInfo.bookStopYear >= 2000) {
            chargeInfo.bookStopYear -= 2000;
        }
        bArr[18] = (byte) chargeInfo.bookStartYear;
        bArr[19] = (byte) chargeInfo.bookStopYear;
        return bArr;
    }
}
