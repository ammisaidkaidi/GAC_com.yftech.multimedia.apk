package com.yftech.vehicle.internal.adapter;

/* loaded from: /home/user/work/dex/classes4.dex */
public interface ICarBsp extends IBaseCmd {

    /* loaded from: /home/user/work/dex/classes4.dex */
    public interface BspInfoQueryCmd {
        public static final byte DISPLAY_CREATE_DATE = 3;
        public static final byte DISPLAY_DTC = 1;
        public static final byte DISPLAY_LIGHT_BAR_ENABLE = 10;
        public static final byte DISPLAY_LIGHT_BAR_LEVEL = 9;
        public static final byte DISPLAY_PN = 8;
        public static final byte DISPLAY_SN = 2;
        public static final byte DISPLAY_VER_HARDWARE = 5;
        public static final byte DISPLAY_VER_SOFTWARE = 4;
        public static final byte DISPLAY_VER_SUPPLIER_HARDWARE = 7;
        public static final byte DISPLAY_VER_SUPPLIER_SOFTWARE = 6;
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public static class DisplayDtc {
        public boolean IICCommunicationFailure;
        public boolean backLightFault;
        public boolean notReceievdBacklight;
        public boolean notSetBacklightOnOffModule;
        public boolean temperatureExcption;
        public boolean tftFailure;
        public boolean touchPanelFailure;
        public boolean videoSignalConnectFailure;
        public boolean voltageHigh;
        public boolean voltageLow;

        private DisplayDtc(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10) {
            this.voltageHigh = z;
            this.voltageLow = z2;
            this.notReceievdBacklight = z3;
            this.notSetBacklightOnOffModule = z4;
            this.tftFailure = z5;
            this.videoSignalConnectFailure = z6;
            this.touchPanelFailure = z7;
            this.IICCommunicationFailure = z8;
            this.temperatureExcption = z9;
            this.backLightFault = z10;
        }

        public static DisplayDtc valueOf(int i) {
            return new DisplayDtc((i & 1) == 1, ((i >> 1) & 1) == 1, ((i >> 2) & 1) == 1, ((i >> 3) & 1) == 1, ((i >> 4) & 1) == 1, ((i >> 5) & 1) == 1, ((i >> 6) & 1) == 1, ((i >> 7) & 1) == 1, ((i >> 8) & 1) == 1, ((i >> 9) & 1) == 1);
        }

        public String toString() {
            return "DisplayDtc{voltageHigh=" + this.voltageHigh + ", voltageLow=" + this.voltageLow + ", notReceievdBacklight=" + this.notReceievdBacklight + ", notSetBacklightOnOffModule=" + this.notSetBacklightOnOffModule + ", tftFailure=" + this.tftFailure + ", videoSignalConnectFailure=" + this.videoSignalConnectFailure + ", touchPanelFailure=" + this.touchPanelFailure + ", IICCommunicationFailure=" + this.IICCommunicationFailure + ", temperatureExcption=" + this.temperatureExcption + ", backLightFault=" + this.backLightFault + '}';
        }
    }
}
