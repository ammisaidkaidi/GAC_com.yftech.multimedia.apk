package com.yftech.vehicle.internal.adapter;

import android.util.Log;
import com.yftech.vehicle.internal.project.Ihu12DashBoard;
import com.yftech.vehicle.internal.utils.StringFormart;
import java.nio.charset.StandardCharsets;

/* loaded from: /home/user/work/dex/classes4.dex */
public interface ICarDashBoard {
    public static final int COMMON_PROTOCOL_SET = 9939;
    public static final int DASHBOARD_TYPE_SELECTED = 1;
    public static final int DASH_BOARD_AUDIO_SOURCE_ENABLE_SET = 9948;
    public static final int DASH_BOARD_MEDIAINFO = 9986;
    public static final int DASH_BOARD_MEDIA_MUSIC_ART_IMAGE = 9985;
    public static final int DASH_BOARD_MESSAGE_NOTIFY_SET = 9961;
    public static final int DASH_BOARD_NAVIGUIDEINFO = 9984;
    public static final int DASH_BOARD_PHONE_ACTION_MSG_GET = 9947;
    public static final int DASH_BOARD_SETTING_ITEM_LANGUAGE = 9976;
    public static final int DASH_BOARD_SETTING_ITEM_UNIT = 9977;
    public static final int DASH_BOARD_SOURCE_STATE = 9978;
    public static final int DASH_BOARD_SYNC_SYSTEM_TIME_SET = 9946;
    public static final int DASH_BOARD_TIME_FORMAT_GET = 9945;

    /* loaded from: /home/user/work/dex/classes4.dex */
    public static abstract class AbsDashBoardMsg {
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public static class DashBoardMsgAudio extends AbsDashBoardMsg {
        public static final byte AUDIO_STATE_LOADING_AUDIO_FILE_LIST = 55;
        public static final byte AUDIO_STATE_NO_AUDIO_FILE = 41;
        public static final byte AUDIO_STATE_NO_DEVICES_CONNECTED = 58;
        public static final byte AUDIO_STATE_NO_DISPLAY = 0;
        public static final byte AUDIO_STATE_UNPLAYABLE_FILE = 38;
        public int audioState;
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public static class DashBoardMsgVoice extends AbsDashBoardMsg {
        public static final byte VOICE_ACTION_END = 2;
        public static final byte VOICE_ACTION_START = 0;
        public byte voiceAction;
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public interface DashBoardSource {
        public static final int SOURCE_BT = 4;
        public static final int SOURCE_BT_MUSIC = 5;
        public static final int SOURCE_MUSIC = 2;
        public static final int SOURCE_NONE = 0;
        public static final int SOURCE_RADIO = 1;
        public static final int SOURCE_TV = 6;
        public static final int SOURCE_UNKNOWN = -1;
        public static final int SOURCE_VIDEO = 3;
        public static final int SOUREC_AUX = 11;
        public static final int SOUREC_CARLIFE = 12;
        public static final int SOUREC_CARPLAY = 13;
        public static final int SOUREC_CD = 7;
        public static final int SOUREC_DVD = 8;
        public static final int SOUREC_HICAR = 14;
        public static final int SOUREC_IPOD = 10;
        public static final int SOUREC_USB = 9;
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public interface McuDashBoardProtocal {
        public static final byte MSGID_DASHBOARD_INFO_BT = 4;
        public static final byte MSGID_DASHBOARD_INFO_MEDIA = 2;
        public static final byte MSGID_DASHBOARD_INFO_RADIO = 3;
        public static final byte MSGID_DASHBOARD_SOURCE = 1;
        public static final byte MSGID_SET_AUDIO_SOUCE_ENABLE = 7;
        public static final byte MSGID_SET_LANGUAGE = 6;
        public static final byte MSGID_SET_MSG_AUDIO = 8;
        public static final byte MSGID_SET_MSG_VOICE = 9;
        public static final byte MSGID_SET_UNIT = 5;
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public interface NaviDirectionIcon {
        public static final int TURN_BACK = 1;
        public static final int TURN_BACK_8DIRECT = 39;
        public static final int TURN_BRANCH_CENTER = 15;
        public static final int TURN_BRANCH_CENTER_FRONT = 27;
        public static final int TURN_BRANCH_LEFT = 18;
        public static final int TURN_BRANCH_LEFT_IC = 29;
        public static final int TURN_BRANCH_LEFT_STRAIGHT = 12;
        public static final int TURN_BRANCH_LEFT_STRAIGHT_FRONT = 26;
        public static final int TURN_BRANCH_RIGHT = 19;
        public static final int TURN_BRANCH_RIGHT_IC = 30;
        public static final int TURN_BRANCH_RIGHT_STRAIGHT = 14;
        public static final int TURN_BRANCH_RIGHT_STRAIGHT_FRONT = 28;
        public static final int TURN_DEST = 20;
        public static final int TURN_FRONT = 2;
        public static final int TURN_INFERRY = 22;
        public static final int TURN_LEFT = 6;
        public static final int TURN_LEFT_BACK = 5;
        public static final int TURN_LEFT_FRONT = 7;
        public static final int TURN_LEFT_SIDE = 9;
        public static final int TURN_LEFT_SIDE_IC = 16;
        public static final int TURN_LEFT_SIDE_MAIN = 11;
        public static final int TURN_LEFT_SIDE_MAIN_FRONT = 31;
        public static final int TURN_LEFT_SIDE_MAIN_FRONT_IC = 24;
        public static final int TURN_LEFT_THEN_LEFT = 33;
        public static final int TURN_LF_2BRANCH_LEFT = 35;
        public static final int TURN_LF_2BRANCH_RIGHT = 36;
        public static final int TURN_RF_2BRANCH_LEFT = 37;
        public static final int TURN_RF_2BRANCH_RIGHT = 38;
        public static final int TURN_RIGHT = 4;
        public static final int TURN_RIGHT_BACK = 4;
        public static final int TURN_RIGHT_FRONT = 3;
        public static final int TURN_RIGHT_SIDE = 10;
        public static final int TURN_RIGHT_SIDE_IC = 17;
        public static final int TURN_RIGHT_SIDE_MAIN = 13;
        public static final int TURN_RIGHT_SIDE_MAIN_FRONT = 32;
        public static final int TURN_RIGHT_SIDE_MAIN_FRONT_IC = 25;
        public static final int TURN_RIGHT_THAN_LEFT = 34;
        public static final int TURN_RING = 8;
        public static final int TURN_RING_FRONT = 40;
        public static final int TURN_RING_LEFT = 41;
        public static final int TURN_RING_LEFTBACK = 42;
        public static final int TURN_RING_LEFTFRONT = 43;
        public static final int TURN_RING_RIGHT = 44;
        public static final int TURN_RING_RIGHTBACK = 45;
        public static final int TURN_RING_RIGHTFRONT = 46;
        public static final int TURN_RING_TURNBACK = 47;
        public static final int TURN_TOLLGATE = 23;
        public static final int TURN_VIA_1 = 21;
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public interface SetItemLanguageVal {
        public static final byte EN_RUS = 1;
        public static final int UNKNOWN = 0;
        public static final byte ZH_RCN = 5;
        public static final byte ZH_RTW = 6;
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum DashBoardType {
        UNKNOWN,
        MCU_CA1105,
        QNX_SOCKET,
        MCU_IHU12;

        public static DashBoardType valueOf(int i) {
            return i == MCU_CA1105.ordinal() ? MCU_CA1105 : i == QNX_SOCKET.ordinal() ? QNX_SOCKET : i == MCU_IHU12.ordinal() ? MCU_IHU12 : UNKNOWN;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public static abstract class AbsDashBoardInfo {
        private int dashBoardSource;

        public abstract byte[] toBytes();

        public abstract String toString();

        public AbsDashBoardInfo(int i) {
            this.dashBoardSource = i;
        }

        public int getDashBoardSource() {
            return this.dashBoardSource;
        }

        public void setDashBoardSource(int i) {
            this.dashBoardSource = i;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public static class RadioInfo extends AbsDashBoardInfo {
        public static final byte AM1 = 3;
        public static final byte AM2 = 4;
        public static final byte AM3 = 5;
        public static final byte FM1 = 0;
        public static final byte FM2 = 1;
        public static final byte FM3 = 2;
        public static final byte SCAN_MODE_AST = 2;
        public static final byte SCAN_MODE_NORMAL = 1;
        public static final byte SCAN_MODE_SCAN = 3;
        public boolean isPrefebIndex;
        public byte mBandType;
        public int mFrequency;
        public byte mPrefebIndex;
        public byte scanMode;

        public boolean isInfoDiff(RadioInfo radioInfo) {
            return (radioInfo != null && this.mBandType == radioInfo.mBandType && this.mFrequency == radioInfo.mFrequency) ? false : true;
        }

        public void setInfoDiff(RadioInfo radioInfo) {
            this.mBandType = radioInfo.mBandType;
            this.mFrequency = radioInfo.mFrequency;
        }

        public RadioInfo() {
            super(1);
        }

        public RadioInfo(int i, byte b, boolean z, byte b2, int i2) {
            super(i);
            this.mBandType = b;
            this.isPrefebIndex = z;
            this.mPrefebIndex = b2;
            this.mFrequency = i2;
        }

        public RadioInfo(int i, byte b, boolean z, byte b2, int i2, byte b3) {
            super(i);
            this.mBandType = b;
            this.isPrefebIndex = z;
            this.mPrefebIndex = b2;
            this.mFrequency = i2;
            this.scanMode = b3;
        }

        @Override // com.yftech.vehicle.internal.adapter.ICarDashBoard.AbsDashBoardInfo
        public byte[] toBytes() {
            return new byte[0];
        }

        @Override // com.yftech.vehicle.internal.adapter.ICarDashBoard.AbsDashBoardInfo
        public String toString() {
            return "RadioInfo{mBandType=" + ((int) this.mBandType) + ", isPrefebIndex=" + this.isPrefebIndex + ", mPrefebIndex=" + ((int) this.mPrefebIndex) + ", mFrequency=" + this.mFrequency + '}';
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public static class BtInfo extends AbsDashBoardInfo {
        public static final byte PHONE_SOURCE_TYPE_BCALL = 5;
        public static final byte PHONE_SOURCE_TYPE_BT = 0;
        public static final byte PHONE_SOURCE_TYPE_CARLIFE = 1;
        public static final byte PHONE_SOURCE_TYPE_CARPLAY = 2;
        public static final byte PHONE_SOURCE_TYPE_ECALL = 4;
        public static final byte PHONE_SOURCE_TYPE_HICAR = 3;
        public static final byte STATUS_CALL_ONLINE = 4;
        public static final byte STATUS_CALL_ONLINE_TIME = 7;
        public static final byte STATUS_CONNECTED = 1;
        public static final byte STATUS_ENDING_CALL = 5;
        public static final byte STATUS_INCOMING_CALL = 2;
        public static final byte STATUS_MISS_CALL = 6;
        public static final byte STATUS_NOT_CONNECT = 0;
        public static final byte STATUS_OUTGOING_CALL = 3;
        public static final byte STATUS_UNKNOW = -1;
        public String mBtCallNumber;
        public String mBtName;
        public byte mBtStatus;
        public boolean mIsMute;
        public byte mPhoneSourceType;
        public int talkTimes;

        public boolean isInfoDiff(BtInfo btInfo) {
            return btInfo == null || this.mBtCallNumber != btInfo.mBtCallNumber;
        }

        public void setInfoDiff(BtInfo btInfo) {
            this.mBtCallNumber = btInfo.mBtCallNumber;
        }

        public BtInfo() {
            super(4);
            this.mBtName = "";
            this.mBtCallNumber = "";
            this.mPhoneSourceType = (byte) 0;
            this.talkTimes = 0;
        }

        @Override // com.yftech.vehicle.internal.adapter.ICarDashBoard.AbsDashBoardInfo
        public byte[] toBytes() {
            return new byte[0];
        }

        @Override // com.yftech.vehicle.internal.adapter.ICarDashBoard.AbsDashBoardInfo
        public String toString() {
            return "BtInfo{mBtStatus=" + ((int) this.mBtStatus) + ", mIsMute=" + this.mIsMute + ", mBtName='" + this.mBtName + "', mBtCallNumber='" + this.mBtCallNumber + "', mPhoneSourceType=" + ((int) this.mPhoneSourceType) + ", talkTimes=" + this.talkTimes + '}';
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public static class MediaInfo extends AbsDashBoardInfo {
        public static final byte PLAY_TYPE_ORDER_LIST = 6;
        public static final byte PLAY_TYPE_RANDOM_ALL = 3;
        public static final byte PLAY_TYPE_RANDOM_LIST = 2;
        public static final byte PLAY_TYPE_RANDOM_ONE = 0;
        public static final byte PLAY_TYPE_REPEAT_ALL = 4;
        public static final byte PLAY_TYPE_REPEAT_LIST = 5;
        public static final byte PLAY_TYPE_REPEAT_ONE = 1;
        public static final byte STATUS_PAUSE = 1;
        public static final byte STATUS_PLAY = 2;
        public static final byte STATUS_STOP = 0;
        public String artist;
        public int current;
        public boolean isMute;
        public int playType;
        public int status;
        public String title;
        public int total;

        public MediaInfo(int i) {
            super(i);
        }

        public MediaInfo(int i, String str, String str2, int i2, int i3, int i4) {
            super(i);
            this.title = str;
            this.artist = str2;
            this.current = i2;
            this.total = i3;
            this.status = i4;
        }

        public MediaInfo(int i, String str, String str2, int i2, int i3, int i4, int i5, boolean z) {
            super(i);
            this.title = str;
            this.artist = str2;
            this.current = i2;
            this.total = i3;
            this.status = i4;
            this.playType = i5;
            this.isMute = z;
        }

        public boolean isInfoDiff(MediaInfo mediaInfo) {
            if (mediaInfo == null || getDashBoardSource() != mediaInfo.getDashBoardSource()) {
                return true;
            }
            if (this.title != null && mediaInfo.title == null) {
                return true;
            }
            if (this.title == null && mediaInfo.title != null) {
                return true;
            }
            if (this.title != null && mediaInfo.title != null && !this.title.equals(mediaInfo.title)) {
                return true;
            }
            if (this.artist != null && mediaInfo.artist == null) {
                return true;
            }
            if (this.artist != null || mediaInfo.artist == null) {
                return (this.artist == null || mediaInfo.artist == null || this.artist.equals(mediaInfo.artist)) ? false : true;
            }
            return true;
        }

        public void setInfoDiff(MediaInfo mediaInfo) {
            this.title = mediaInfo.title;
            this.artist = mediaInfo.artist;
            setDashBoardSource(mediaInfo.getDashBoardSource());
        }

        @Override // com.yftech.vehicle.internal.adapter.ICarDashBoard.AbsDashBoardInfo
        public byte[] toBytes() {
            byte[] bArr = new byte[IAirCondition.AIR_UNLOCK_VENTILATION];
            bArr[257] = (byte) ((this.current >> 8) & ICarParking.PARKING_RADAR_ALARM_SETTING);
            bArr[258] = (byte) (this.current & ICarParking.PARKING_RADAR_ALARM_SETTING);
            bArr[261] = (byte) ((this.total >> 8) & ICarParking.PARKING_RADAR_ALARM_SETTING);
            bArr[262] = (byte) (this.total & ICarParking.PARKING_RADAR_ALARM_SETTING);
            bArr[265] = (byte) this.status;
            if (this.title != null) {
                System.arraycopy(this.title.getBytes(StandardCharsets.UTF_8), 0, bArr, 0, this.title.getBytes(StandardCharsets.UTF_8).length);
            }
            if (this.artist != null) {
                System.arraycopy(this.artist.getBytes(StandardCharsets.UTF_8), 0, bArr, 128, this.artist.getBytes(StandardCharsets.UTF_8).length);
            }
            return bArr;
        }

        @Override // com.yftech.vehicle.internal.adapter.ICarDashBoard.AbsDashBoardInfo
        public String toString() {
            return "MediaInfo{title='" + this.title + "', artist='" + this.artist + "', current=" + this.current + ", total=" + this.total + ", status=" + this.status + '}';
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public static class SetItemUnitInfo {
        public static int DISTANCE_M = 1;
        public static int DISTANCE_MILE = 2;
        public static int FUEL_CONSUMPTION_KM_KWH = 81;
        public static int FUEL_CONSUMPTION_KM_L = 1;
        public static int FUEL_CONSUMPTION_KWH_100KM = 82;
        public static int FUEL_CONSUMPTION_KWH_MILE = 84;
        public static int FUEL_CONSUMPTION_L_100KM = 2;
        public static int FUEL_CONSUMPTION_MILES_KWH = 83;
        public static int FUEL_CONSUMPTION_MPG_UK = 4;
        public static int FUEL_CONSUMPTION_MPG_US = 3;
        public static byte PRESSURE_BAR = 3;
        public static byte PRESSURE_KGF_CM2 = 4;
        public static byte PRESSURE_KPA = 1;
        public static byte PRESSURE_PSI = 2;
        public static byte TEMPERATURE_DEG_C = 1;
        public static byte TEMPERATURE_DEG_F = 2;
        public int mUnitDistance;
        public int mUnitFuelConsumption;
        public int mUnitPressure;
        public int mUnitTemperature;

        public SetItemUnitInfo() {
        }

        private SetItemUnitInfo(int i, int i2, int i3, int i4) {
            this.mUnitPressure = i;
            this.mUnitTemperature = i2;
            this.mUnitDistance = i3;
            this.mUnitFuelConsumption = i4;
        }

        public static SetItemUnitInfo valueOf(byte[] bArr) {
            return new SetItemUnitInfo(bArr[0], bArr[1], bArr[2], bArr[3]);
        }

        public String toString() {
            return "SetItemUnitInfo{mUnitPressure=" + this.mUnitPressure + ", mUnitTemperature=" + this.mUnitTemperature + ", mUnitDistance=" + this.mUnitDistance + ", mUnitFuelConsumption=" + this.mUnitFuelConsumption + '}';
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public static class DashBoardDataFormater {
        static DashBoardDataFormater instance;
        static AbsDashBoardInfo mAbsInfo;
        String TAG = "DashBoardDataFormater";
        DashBoardType mDashBoardType;

        private DashBoardDataFormater(DashBoardType dashBoardType) {
            this.mDashBoardType = dashBoardType;
        }

        public static DashBoardDataFormater get(DashBoardType dashBoardType) {
            if (instance == null) {
                instance = new DashBoardDataFormater(dashBoardType);
            }
            return instance;
        }

        public boolean isSendMediaInfoOnly() {
            return DashBoardType.MCU_CA1105.equals(this.mDashBoardType);
        }

        public byte[] getDashBoardSourceDataByteArray(int i, AbsDashBoardInfo absDashBoardInfo) {
            if (absDashBoardInfo == null) {
                Log.w(this.TAG, "getDashBoardSourceDataByteArray() info is null");
            }
            try {
                AbsDashBoardInfo dashBoardSourceFormatInfo = getDashBoardSourceFormatInfo(i, absDashBoardInfo);
                if (DashBoardType.MCU_CA1105.equals(this.mDashBoardType)) {
                    switch (i) {
                        case 1:
                        case 4:
                        case 5:
                        case 9:
                            return getDashBoardInfoDataByteArray(dashBoardSourceFormatInfo);
                        case 12:
                        case 13:
                            if (dashBoardSourceFormatInfo instanceof MediaInfo) {
                                MediaInfo mediaInfo = (MediaInfo) dashBoardSourceFormatInfo;
                                mediaInfo.title = "--";
                                mediaInfo.artist = "--";
                                return getDashBoardInfoDataByteArray(mediaInfo);
                            }
                            break;
                        default:
                            byte[] bArr = new byte[23];
                            bArr[0] = (byte) this.mDashBoardType.ordinal();
                            bArr[1] = 2;
                            bArr[2] = (byte) 20;
                            mAbsInfo = null;
                            return bArr;
                    }
                }
                return null;
            } catch (Exception e) {
                Log.e(this.TAG, "getDashBoardSourceDataByteArray() Exception ", e);
                return null;
            }
        }

        private AbsDashBoardInfo getDashBoardSourceFormatInfo(int i, AbsDashBoardInfo absDashBoardInfo) {
            if (absDashBoardInfo != null) {
                return absDashBoardInfo;
            }
            switch (i) {
                case 4:
                    return new BtInfo();
                case 5:
                case 9:
                case 12:
                case 13:
                    MediaInfo mediaInfo = new MediaInfo(i);
                    mediaInfo.title = "--";
                    mediaInfo.artist = "--";
                    return mediaInfo;
                default:
                    return absDashBoardInfo;
            }
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:150:0x0322 A[Catch: Exception -> 0x0460, TryCatch #0 {Exception -> 0x0460, blocks: (B:7:0x000f, B:9:0x0033, B:10:0x003d, B:12:0x0042, B:14:0x0046, B:16:0x004e, B:18:0x0055, B:21:0x005b, B:23:0x005f, B:26:0x0066, B:28:0x0070, B:30:0x0082, B:33:0x00a0, B:35:0x00a6, B:37:0x00b2, B:50:0x0127, B:52:0x016d, B:53:0x016f, B:55:0x0177, B:56:0x017b, B:58:0x0183, B:59:0x0187, B:61:0x01a4, B:62:0x01af, B:65:0x01de, B:72:0x0120, B:92:0x0076, B:93:0x01ee, B:95:0x01f7, B:97:0x01fb, B:99:0x0204, B:101:0x020d, B:103:0x0215, B:105:0x0228, B:107:0x0233, B:110:0x023a, B:112:0x0253, B:115:0x025f, B:117:0x025a, B:119:0x0265, B:121:0x026d, B:123:0x0280, B:126:0x028c, B:129:0x0294, B:131:0x02ad, B:134:0x02b9, B:136:0x02b4, B:138:0x0287, B:139:0x02bd, B:141:0x02ed, B:144:0x02f2, B:145:0x02f4, B:148:0x0313, B:150:0x0322, B:155:0x0300, B:156:0x0302, B:162:0x022f, B:163:0x0328, B:165:0x032c, B:167:0x0335, B:169:0x033c, B:172:0x0343, B:174:0x034d, B:176:0x035b, B:177:0x038e, B:181:0x0398, B:182:0x03a1, B:184:0x03a7, B:187:0x03bd, B:192:0x03d4, B:193:0x0427, B:195:0x043c, B:196:0x0446, B:199:0x0441, B:200:0x03d3, B:201:0x03f4, B:204:0x03ff, B:205:0x03b1, B:206:0x039d, B:209:0x0353), top: B:6:0x000f }] */
        /* JADX WARN: Removed duplicated region for block: B:152:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:154:0x0305  */
        /* JADX WARN: Removed duplicated region for block: B:178:0x0391  */
        /* JADX WARN: Removed duplicated region for block: B:181:0x0398 A[Catch: Exception -> 0x0460, TryCatch #0 {Exception -> 0x0460, blocks: (B:7:0x000f, B:9:0x0033, B:10:0x003d, B:12:0x0042, B:14:0x0046, B:16:0x004e, B:18:0x0055, B:21:0x005b, B:23:0x005f, B:26:0x0066, B:28:0x0070, B:30:0x0082, B:33:0x00a0, B:35:0x00a6, B:37:0x00b2, B:50:0x0127, B:52:0x016d, B:53:0x016f, B:55:0x0177, B:56:0x017b, B:58:0x0183, B:59:0x0187, B:61:0x01a4, B:62:0x01af, B:65:0x01de, B:72:0x0120, B:92:0x0076, B:93:0x01ee, B:95:0x01f7, B:97:0x01fb, B:99:0x0204, B:101:0x020d, B:103:0x0215, B:105:0x0228, B:107:0x0233, B:110:0x023a, B:112:0x0253, B:115:0x025f, B:117:0x025a, B:119:0x0265, B:121:0x026d, B:123:0x0280, B:126:0x028c, B:129:0x0294, B:131:0x02ad, B:134:0x02b9, B:136:0x02b4, B:138:0x0287, B:139:0x02bd, B:141:0x02ed, B:144:0x02f2, B:145:0x02f4, B:148:0x0313, B:150:0x0322, B:155:0x0300, B:156:0x0302, B:162:0x022f, B:163:0x0328, B:165:0x032c, B:167:0x0335, B:169:0x033c, B:172:0x0343, B:174:0x034d, B:176:0x035b, B:177:0x038e, B:181:0x0398, B:182:0x03a1, B:184:0x03a7, B:187:0x03bd, B:192:0x03d4, B:193:0x0427, B:195:0x043c, B:196:0x0446, B:199:0x0441, B:200:0x03d3, B:201:0x03f4, B:204:0x03ff, B:205:0x03b1, B:206:0x039d, B:209:0x0353), top: B:6:0x000f }] */
        /* JADX WARN: Removed duplicated region for block: B:184:0x03a7 A[Catch: Exception -> 0x0460, TryCatch #0 {Exception -> 0x0460, blocks: (B:7:0x000f, B:9:0x0033, B:10:0x003d, B:12:0x0042, B:14:0x0046, B:16:0x004e, B:18:0x0055, B:21:0x005b, B:23:0x005f, B:26:0x0066, B:28:0x0070, B:30:0x0082, B:33:0x00a0, B:35:0x00a6, B:37:0x00b2, B:50:0x0127, B:52:0x016d, B:53:0x016f, B:55:0x0177, B:56:0x017b, B:58:0x0183, B:59:0x0187, B:61:0x01a4, B:62:0x01af, B:65:0x01de, B:72:0x0120, B:92:0x0076, B:93:0x01ee, B:95:0x01f7, B:97:0x01fb, B:99:0x0204, B:101:0x020d, B:103:0x0215, B:105:0x0228, B:107:0x0233, B:110:0x023a, B:112:0x0253, B:115:0x025f, B:117:0x025a, B:119:0x0265, B:121:0x026d, B:123:0x0280, B:126:0x028c, B:129:0x0294, B:131:0x02ad, B:134:0x02b9, B:136:0x02b4, B:138:0x0287, B:139:0x02bd, B:141:0x02ed, B:144:0x02f2, B:145:0x02f4, B:148:0x0313, B:150:0x0322, B:155:0x0300, B:156:0x0302, B:162:0x022f, B:163:0x0328, B:165:0x032c, B:167:0x0335, B:169:0x033c, B:172:0x0343, B:174:0x034d, B:176:0x035b, B:177:0x038e, B:181:0x0398, B:182:0x03a1, B:184:0x03a7, B:187:0x03bd, B:192:0x03d4, B:193:0x0427, B:195:0x043c, B:196:0x0446, B:199:0x0441, B:200:0x03d3, B:201:0x03f4, B:204:0x03ff, B:205:0x03b1, B:206:0x039d, B:209:0x0353), top: B:6:0x000f }] */
        /* JADX WARN: Removed duplicated region for block: B:187:0x03bd A[Catch: Exception -> 0x0460, TryCatch #0 {Exception -> 0x0460, blocks: (B:7:0x000f, B:9:0x0033, B:10:0x003d, B:12:0x0042, B:14:0x0046, B:16:0x004e, B:18:0x0055, B:21:0x005b, B:23:0x005f, B:26:0x0066, B:28:0x0070, B:30:0x0082, B:33:0x00a0, B:35:0x00a6, B:37:0x00b2, B:50:0x0127, B:52:0x016d, B:53:0x016f, B:55:0x0177, B:56:0x017b, B:58:0x0183, B:59:0x0187, B:61:0x01a4, B:62:0x01af, B:65:0x01de, B:72:0x0120, B:92:0x0076, B:93:0x01ee, B:95:0x01f7, B:97:0x01fb, B:99:0x0204, B:101:0x020d, B:103:0x0215, B:105:0x0228, B:107:0x0233, B:110:0x023a, B:112:0x0253, B:115:0x025f, B:117:0x025a, B:119:0x0265, B:121:0x026d, B:123:0x0280, B:126:0x028c, B:129:0x0294, B:131:0x02ad, B:134:0x02b9, B:136:0x02b4, B:138:0x0287, B:139:0x02bd, B:141:0x02ed, B:144:0x02f2, B:145:0x02f4, B:148:0x0313, B:150:0x0322, B:155:0x0300, B:156:0x0302, B:162:0x022f, B:163:0x0328, B:165:0x032c, B:167:0x0335, B:169:0x033c, B:172:0x0343, B:174:0x034d, B:176:0x035b, B:177:0x038e, B:181:0x0398, B:182:0x03a1, B:184:0x03a7, B:187:0x03bd, B:192:0x03d4, B:193:0x0427, B:195:0x043c, B:196:0x0446, B:199:0x0441, B:200:0x03d3, B:201:0x03f4, B:204:0x03ff, B:205:0x03b1, B:206:0x039d, B:209:0x0353), top: B:6:0x000f }] */
        /* JADX WARN: Removed duplicated region for block: B:195:0x043c A[Catch: Exception -> 0x0460, TryCatch #0 {Exception -> 0x0460, blocks: (B:7:0x000f, B:9:0x0033, B:10:0x003d, B:12:0x0042, B:14:0x0046, B:16:0x004e, B:18:0x0055, B:21:0x005b, B:23:0x005f, B:26:0x0066, B:28:0x0070, B:30:0x0082, B:33:0x00a0, B:35:0x00a6, B:37:0x00b2, B:50:0x0127, B:52:0x016d, B:53:0x016f, B:55:0x0177, B:56:0x017b, B:58:0x0183, B:59:0x0187, B:61:0x01a4, B:62:0x01af, B:65:0x01de, B:72:0x0120, B:92:0x0076, B:93:0x01ee, B:95:0x01f7, B:97:0x01fb, B:99:0x0204, B:101:0x020d, B:103:0x0215, B:105:0x0228, B:107:0x0233, B:110:0x023a, B:112:0x0253, B:115:0x025f, B:117:0x025a, B:119:0x0265, B:121:0x026d, B:123:0x0280, B:126:0x028c, B:129:0x0294, B:131:0x02ad, B:134:0x02b9, B:136:0x02b4, B:138:0x0287, B:139:0x02bd, B:141:0x02ed, B:144:0x02f2, B:145:0x02f4, B:148:0x0313, B:150:0x0322, B:155:0x0300, B:156:0x0302, B:162:0x022f, B:163:0x0328, B:165:0x032c, B:167:0x0335, B:169:0x033c, B:172:0x0343, B:174:0x034d, B:176:0x035b, B:177:0x038e, B:181:0x0398, B:182:0x03a1, B:184:0x03a7, B:187:0x03bd, B:192:0x03d4, B:193:0x0427, B:195:0x043c, B:196:0x0446, B:199:0x0441, B:200:0x03d3, B:201:0x03f4, B:204:0x03ff, B:205:0x03b1, B:206:0x039d, B:209:0x0353), top: B:6:0x000f }] */
        /* JADX WARN: Removed duplicated region for block: B:199:0x0441 A[Catch: Exception -> 0x0460, TryCatch #0 {Exception -> 0x0460, blocks: (B:7:0x000f, B:9:0x0033, B:10:0x003d, B:12:0x0042, B:14:0x0046, B:16:0x004e, B:18:0x0055, B:21:0x005b, B:23:0x005f, B:26:0x0066, B:28:0x0070, B:30:0x0082, B:33:0x00a0, B:35:0x00a6, B:37:0x00b2, B:50:0x0127, B:52:0x016d, B:53:0x016f, B:55:0x0177, B:56:0x017b, B:58:0x0183, B:59:0x0187, B:61:0x01a4, B:62:0x01af, B:65:0x01de, B:72:0x0120, B:92:0x0076, B:93:0x01ee, B:95:0x01f7, B:97:0x01fb, B:99:0x0204, B:101:0x020d, B:103:0x0215, B:105:0x0228, B:107:0x0233, B:110:0x023a, B:112:0x0253, B:115:0x025f, B:117:0x025a, B:119:0x0265, B:121:0x026d, B:123:0x0280, B:126:0x028c, B:129:0x0294, B:131:0x02ad, B:134:0x02b9, B:136:0x02b4, B:138:0x0287, B:139:0x02bd, B:141:0x02ed, B:144:0x02f2, B:145:0x02f4, B:148:0x0313, B:150:0x0322, B:155:0x0300, B:156:0x0302, B:162:0x022f, B:163:0x0328, B:165:0x032c, B:167:0x0335, B:169:0x033c, B:172:0x0343, B:174:0x034d, B:176:0x035b, B:177:0x038e, B:181:0x0398, B:182:0x03a1, B:184:0x03a7, B:187:0x03bd, B:192:0x03d4, B:193:0x0427, B:195:0x043c, B:196:0x0446, B:199:0x0441, B:200:0x03d3, B:201:0x03f4, B:204:0x03ff, B:205:0x03b1, B:206:0x039d, B:209:0x0353), top: B:6:0x000f }] */
        /* JADX WARN: Removed duplicated region for block: B:201:0x03f4 A[Catch: Exception -> 0x0460, TryCatch #0 {Exception -> 0x0460, blocks: (B:7:0x000f, B:9:0x0033, B:10:0x003d, B:12:0x0042, B:14:0x0046, B:16:0x004e, B:18:0x0055, B:21:0x005b, B:23:0x005f, B:26:0x0066, B:28:0x0070, B:30:0x0082, B:33:0x00a0, B:35:0x00a6, B:37:0x00b2, B:50:0x0127, B:52:0x016d, B:53:0x016f, B:55:0x0177, B:56:0x017b, B:58:0x0183, B:59:0x0187, B:61:0x01a4, B:62:0x01af, B:65:0x01de, B:72:0x0120, B:92:0x0076, B:93:0x01ee, B:95:0x01f7, B:97:0x01fb, B:99:0x0204, B:101:0x020d, B:103:0x0215, B:105:0x0228, B:107:0x0233, B:110:0x023a, B:112:0x0253, B:115:0x025f, B:117:0x025a, B:119:0x0265, B:121:0x026d, B:123:0x0280, B:126:0x028c, B:129:0x0294, B:131:0x02ad, B:134:0x02b9, B:136:0x02b4, B:138:0x0287, B:139:0x02bd, B:141:0x02ed, B:144:0x02f2, B:145:0x02f4, B:148:0x0313, B:150:0x0322, B:155:0x0300, B:156:0x0302, B:162:0x022f, B:163:0x0328, B:165:0x032c, B:167:0x0335, B:169:0x033c, B:172:0x0343, B:174:0x034d, B:176:0x035b, B:177:0x038e, B:181:0x0398, B:182:0x03a1, B:184:0x03a7, B:187:0x03bd, B:192:0x03d4, B:193:0x0427, B:195:0x043c, B:196:0x0446, B:199:0x0441, B:200:0x03d3, B:201:0x03f4, B:204:0x03ff, B:205:0x03b1, B:206:0x039d, B:209:0x0353), top: B:6:0x000f }] */
        /* JADX WARN: Removed duplicated region for block: B:205:0x03b1 A[Catch: Exception -> 0x0460, TryCatch #0 {Exception -> 0x0460, blocks: (B:7:0x000f, B:9:0x0033, B:10:0x003d, B:12:0x0042, B:14:0x0046, B:16:0x004e, B:18:0x0055, B:21:0x005b, B:23:0x005f, B:26:0x0066, B:28:0x0070, B:30:0x0082, B:33:0x00a0, B:35:0x00a6, B:37:0x00b2, B:50:0x0127, B:52:0x016d, B:53:0x016f, B:55:0x0177, B:56:0x017b, B:58:0x0183, B:59:0x0187, B:61:0x01a4, B:62:0x01af, B:65:0x01de, B:72:0x0120, B:92:0x0076, B:93:0x01ee, B:95:0x01f7, B:97:0x01fb, B:99:0x0204, B:101:0x020d, B:103:0x0215, B:105:0x0228, B:107:0x0233, B:110:0x023a, B:112:0x0253, B:115:0x025f, B:117:0x025a, B:119:0x0265, B:121:0x026d, B:123:0x0280, B:126:0x028c, B:129:0x0294, B:131:0x02ad, B:134:0x02b9, B:136:0x02b4, B:138:0x0287, B:139:0x02bd, B:141:0x02ed, B:144:0x02f2, B:145:0x02f4, B:148:0x0313, B:150:0x0322, B:155:0x0300, B:156:0x0302, B:162:0x022f, B:163:0x0328, B:165:0x032c, B:167:0x0335, B:169:0x033c, B:172:0x0343, B:174:0x034d, B:176:0x035b, B:177:0x038e, B:181:0x0398, B:182:0x03a1, B:184:0x03a7, B:187:0x03bd, B:192:0x03d4, B:193:0x0427, B:195:0x043c, B:196:0x0446, B:199:0x0441, B:200:0x03d3, B:201:0x03f4, B:204:0x03ff, B:205:0x03b1, B:206:0x039d, B:209:0x0353), top: B:6:0x000f }] */
        /* JADX WARN: Removed duplicated region for block: B:206:0x039d A[Catch: Exception -> 0x0460, TryCatch #0 {Exception -> 0x0460, blocks: (B:7:0x000f, B:9:0x0033, B:10:0x003d, B:12:0x0042, B:14:0x0046, B:16:0x004e, B:18:0x0055, B:21:0x005b, B:23:0x005f, B:26:0x0066, B:28:0x0070, B:30:0x0082, B:33:0x00a0, B:35:0x00a6, B:37:0x00b2, B:50:0x0127, B:52:0x016d, B:53:0x016f, B:55:0x0177, B:56:0x017b, B:58:0x0183, B:59:0x0187, B:61:0x01a4, B:62:0x01af, B:65:0x01de, B:72:0x0120, B:92:0x0076, B:93:0x01ee, B:95:0x01f7, B:97:0x01fb, B:99:0x0204, B:101:0x020d, B:103:0x0215, B:105:0x0228, B:107:0x0233, B:110:0x023a, B:112:0x0253, B:115:0x025f, B:117:0x025a, B:119:0x0265, B:121:0x026d, B:123:0x0280, B:126:0x028c, B:129:0x0294, B:131:0x02ad, B:134:0x02b9, B:136:0x02b4, B:138:0x0287, B:139:0x02bd, B:141:0x02ed, B:144:0x02f2, B:145:0x02f4, B:148:0x0313, B:150:0x0322, B:155:0x0300, B:156:0x0302, B:162:0x022f, B:163:0x0328, B:165:0x032c, B:167:0x0335, B:169:0x033c, B:172:0x0343, B:174:0x034d, B:176:0x035b, B:177:0x038e, B:181:0x0398, B:182:0x03a1, B:184:0x03a7, B:187:0x03bd, B:192:0x03d4, B:193:0x0427, B:195:0x043c, B:196:0x0446, B:199:0x0441, B:200:0x03d3, B:201:0x03f4, B:204:0x03ff, B:205:0x03b1, B:206:0x039d, B:209:0x0353), top: B:6:0x000f }] */
        /* JADX WARN: Removed duplicated region for block: B:207:0x0393  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x009f A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:33:0x00a0 A[Catch: Exception -> 0x0460, TryCatch #0 {Exception -> 0x0460, blocks: (B:7:0x000f, B:9:0x0033, B:10:0x003d, B:12:0x0042, B:14:0x0046, B:16:0x004e, B:18:0x0055, B:21:0x005b, B:23:0x005f, B:26:0x0066, B:28:0x0070, B:30:0x0082, B:33:0x00a0, B:35:0x00a6, B:37:0x00b2, B:50:0x0127, B:52:0x016d, B:53:0x016f, B:55:0x0177, B:56:0x017b, B:58:0x0183, B:59:0x0187, B:61:0x01a4, B:62:0x01af, B:65:0x01de, B:72:0x0120, B:92:0x0076, B:93:0x01ee, B:95:0x01f7, B:97:0x01fb, B:99:0x0204, B:101:0x020d, B:103:0x0215, B:105:0x0228, B:107:0x0233, B:110:0x023a, B:112:0x0253, B:115:0x025f, B:117:0x025a, B:119:0x0265, B:121:0x026d, B:123:0x0280, B:126:0x028c, B:129:0x0294, B:131:0x02ad, B:134:0x02b9, B:136:0x02b4, B:138:0x0287, B:139:0x02bd, B:141:0x02ed, B:144:0x02f2, B:145:0x02f4, B:148:0x0313, B:150:0x0322, B:155:0x0300, B:156:0x0302, B:162:0x022f, B:163:0x0328, B:165:0x032c, B:167:0x0335, B:169:0x033c, B:172:0x0343, B:174:0x034d, B:176:0x035b, B:177:0x038e, B:181:0x0398, B:182:0x03a1, B:184:0x03a7, B:187:0x03bd, B:192:0x03d4, B:193:0x0427, B:195:0x043c, B:196:0x0446, B:199:0x0441, B:200:0x03d3, B:201:0x03f4, B:204:0x03ff, B:205:0x03b1, B:206:0x039d, B:209:0x0353), top: B:6:0x000f }] */
        /* JADX WARN: Removed duplicated region for block: B:52:0x016d A[Catch: Exception -> 0x0460, TryCatch #0 {Exception -> 0x0460, blocks: (B:7:0x000f, B:9:0x0033, B:10:0x003d, B:12:0x0042, B:14:0x0046, B:16:0x004e, B:18:0x0055, B:21:0x005b, B:23:0x005f, B:26:0x0066, B:28:0x0070, B:30:0x0082, B:33:0x00a0, B:35:0x00a6, B:37:0x00b2, B:50:0x0127, B:52:0x016d, B:53:0x016f, B:55:0x0177, B:56:0x017b, B:58:0x0183, B:59:0x0187, B:61:0x01a4, B:62:0x01af, B:65:0x01de, B:72:0x0120, B:92:0x0076, B:93:0x01ee, B:95:0x01f7, B:97:0x01fb, B:99:0x0204, B:101:0x020d, B:103:0x0215, B:105:0x0228, B:107:0x0233, B:110:0x023a, B:112:0x0253, B:115:0x025f, B:117:0x025a, B:119:0x0265, B:121:0x026d, B:123:0x0280, B:126:0x028c, B:129:0x0294, B:131:0x02ad, B:134:0x02b9, B:136:0x02b4, B:138:0x0287, B:139:0x02bd, B:141:0x02ed, B:144:0x02f2, B:145:0x02f4, B:148:0x0313, B:150:0x0322, B:155:0x0300, B:156:0x0302, B:162:0x022f, B:163:0x0328, B:165:0x032c, B:167:0x0335, B:169:0x033c, B:172:0x0343, B:174:0x034d, B:176:0x035b, B:177:0x038e, B:181:0x0398, B:182:0x03a1, B:184:0x03a7, B:187:0x03bd, B:192:0x03d4, B:193:0x0427, B:195:0x043c, B:196:0x0446, B:199:0x0441, B:200:0x03d3, B:201:0x03f4, B:204:0x03ff, B:205:0x03b1, B:206:0x039d, B:209:0x0353), top: B:6:0x000f }] */
        /* JADX WARN: Removed duplicated region for block: B:55:0x0177 A[Catch: Exception -> 0x0460, TryCatch #0 {Exception -> 0x0460, blocks: (B:7:0x000f, B:9:0x0033, B:10:0x003d, B:12:0x0042, B:14:0x0046, B:16:0x004e, B:18:0x0055, B:21:0x005b, B:23:0x005f, B:26:0x0066, B:28:0x0070, B:30:0x0082, B:33:0x00a0, B:35:0x00a6, B:37:0x00b2, B:50:0x0127, B:52:0x016d, B:53:0x016f, B:55:0x0177, B:56:0x017b, B:58:0x0183, B:59:0x0187, B:61:0x01a4, B:62:0x01af, B:65:0x01de, B:72:0x0120, B:92:0x0076, B:93:0x01ee, B:95:0x01f7, B:97:0x01fb, B:99:0x0204, B:101:0x020d, B:103:0x0215, B:105:0x0228, B:107:0x0233, B:110:0x023a, B:112:0x0253, B:115:0x025f, B:117:0x025a, B:119:0x0265, B:121:0x026d, B:123:0x0280, B:126:0x028c, B:129:0x0294, B:131:0x02ad, B:134:0x02b9, B:136:0x02b4, B:138:0x0287, B:139:0x02bd, B:141:0x02ed, B:144:0x02f2, B:145:0x02f4, B:148:0x0313, B:150:0x0322, B:155:0x0300, B:156:0x0302, B:162:0x022f, B:163:0x0328, B:165:0x032c, B:167:0x0335, B:169:0x033c, B:172:0x0343, B:174:0x034d, B:176:0x035b, B:177:0x038e, B:181:0x0398, B:182:0x03a1, B:184:0x03a7, B:187:0x03bd, B:192:0x03d4, B:193:0x0427, B:195:0x043c, B:196:0x0446, B:199:0x0441, B:200:0x03d3, B:201:0x03f4, B:204:0x03ff, B:205:0x03b1, B:206:0x039d, B:209:0x0353), top: B:6:0x000f }] */
        /* JADX WARN: Removed duplicated region for block: B:58:0x0183 A[Catch: Exception -> 0x0460, TryCatch #0 {Exception -> 0x0460, blocks: (B:7:0x000f, B:9:0x0033, B:10:0x003d, B:12:0x0042, B:14:0x0046, B:16:0x004e, B:18:0x0055, B:21:0x005b, B:23:0x005f, B:26:0x0066, B:28:0x0070, B:30:0x0082, B:33:0x00a0, B:35:0x00a6, B:37:0x00b2, B:50:0x0127, B:52:0x016d, B:53:0x016f, B:55:0x0177, B:56:0x017b, B:58:0x0183, B:59:0x0187, B:61:0x01a4, B:62:0x01af, B:65:0x01de, B:72:0x0120, B:92:0x0076, B:93:0x01ee, B:95:0x01f7, B:97:0x01fb, B:99:0x0204, B:101:0x020d, B:103:0x0215, B:105:0x0228, B:107:0x0233, B:110:0x023a, B:112:0x0253, B:115:0x025f, B:117:0x025a, B:119:0x0265, B:121:0x026d, B:123:0x0280, B:126:0x028c, B:129:0x0294, B:131:0x02ad, B:134:0x02b9, B:136:0x02b4, B:138:0x0287, B:139:0x02bd, B:141:0x02ed, B:144:0x02f2, B:145:0x02f4, B:148:0x0313, B:150:0x0322, B:155:0x0300, B:156:0x0302, B:162:0x022f, B:163:0x0328, B:165:0x032c, B:167:0x0335, B:169:0x033c, B:172:0x0343, B:174:0x034d, B:176:0x035b, B:177:0x038e, B:181:0x0398, B:182:0x03a1, B:184:0x03a7, B:187:0x03bd, B:192:0x03d4, B:193:0x0427, B:195:0x043c, B:196:0x0446, B:199:0x0441, B:200:0x03d3, B:201:0x03f4, B:204:0x03ff, B:205:0x03b1, B:206:0x039d, B:209:0x0353), top: B:6:0x000f }] */
        /* JADX WARN: Removed duplicated region for block: B:61:0x01a4 A[Catch: Exception -> 0x0460, TryCatch #0 {Exception -> 0x0460, blocks: (B:7:0x000f, B:9:0x0033, B:10:0x003d, B:12:0x0042, B:14:0x0046, B:16:0x004e, B:18:0x0055, B:21:0x005b, B:23:0x005f, B:26:0x0066, B:28:0x0070, B:30:0x0082, B:33:0x00a0, B:35:0x00a6, B:37:0x00b2, B:50:0x0127, B:52:0x016d, B:53:0x016f, B:55:0x0177, B:56:0x017b, B:58:0x0183, B:59:0x0187, B:61:0x01a4, B:62:0x01af, B:65:0x01de, B:72:0x0120, B:92:0x0076, B:93:0x01ee, B:95:0x01f7, B:97:0x01fb, B:99:0x0204, B:101:0x020d, B:103:0x0215, B:105:0x0228, B:107:0x0233, B:110:0x023a, B:112:0x0253, B:115:0x025f, B:117:0x025a, B:119:0x0265, B:121:0x026d, B:123:0x0280, B:126:0x028c, B:129:0x0294, B:131:0x02ad, B:134:0x02b9, B:136:0x02b4, B:138:0x0287, B:139:0x02bd, B:141:0x02ed, B:144:0x02f2, B:145:0x02f4, B:148:0x0313, B:150:0x0322, B:155:0x0300, B:156:0x0302, B:162:0x022f, B:163:0x0328, B:165:0x032c, B:167:0x0335, B:169:0x033c, B:172:0x0343, B:174:0x034d, B:176:0x035b, B:177:0x038e, B:181:0x0398, B:182:0x03a1, B:184:0x03a7, B:187:0x03bd, B:192:0x03d4, B:193:0x0427, B:195:0x043c, B:196:0x0446, B:199:0x0441, B:200:0x03d3, B:201:0x03f4, B:204:0x03ff, B:205:0x03b1, B:206:0x039d, B:209:0x0353), top: B:6:0x000f }] */
        /* JADX WARN: Removed duplicated region for block: B:64:0x01dc A[ADDED_TO_REGION] */
        /* JADX WARN: Type inference failed for: r2v11 */
        /* JADX WARN: Type inference failed for: r2v16 */
        /* JADX WARN: Type inference failed for: r2v4, types: [boolean, int] */
        /* JADX WARN: Type inference failed for: r5v43, types: [boolean, int] */
        /* JADX WARN: Type inference failed for: r5v46 */
        /* JADX WARN: Type inference failed for: r5v51 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public byte[] getDashBoardInfoDataByteArray(AbsDashBoardInfo absDashBoardInfo) {
            ?? r2;
            boolean z;
            byte b;
            int i;
            int parseInt;
            char c;
            int parseInt2;
            int i2;
            char c2;
            byte b2;
            ?? r5;
            String str;
            byte[] bArr;
            int i3;
            int length;
            if (absDashBoardInfo == null) {
                Log.w(this.TAG, "formartMediaInfoDataBytes() info is null");
                return null;
            }
            try {
                Log.w(this.TAG, " info:" + absDashBoardInfo.toString());
                if (DashBoardType.MCU_CA1105.equals(this.mDashBoardType)) {
                    switch (absDashBoardInfo.getDashBoardSource()) {
                        case 1:
                            if (!(absDashBoardInfo instanceof RadioInfo)) {
                                Log.w(this.TAG, "formartDashBoardInfoDataBytes() AbsDashBoardInfo is not RadioInfo");
                                return null;
                            }
                            RadioInfo radioInfo = (RadioInfo) absDashBoardInfo;
                            if (mAbsInfo != null && (mAbsInfo instanceof RadioInfo)) {
                                RadioInfo radioInfo2 = (RadioInfo) mAbsInfo;
                                if (radioInfo2.isInfoDiff(radioInfo)) {
                                    radioInfo2.setInfoDiff(radioInfo);
                                    r2 = 1;
                                    Log.d(this.TAG, "formartDashBoardInfoDataBytes() isRadioUpdate =" + ((boolean) r2));
                                    byte[] bArr2 = new byte[20];
                                    bArr2[0] = (byte) this.mDashBoardType.ordinal();
                                    bArr2[1] = 3;
                                    bArr2[2] = (byte) 17;
                                    bArr2[3] = (byte) r2;
                                    bArr2[4] = 0;
                                    switch (radioInfo.mBandType) {
                                        case 0:
                                        case 1:
                                        case 2:
                                        default:
                                            z = false;
                                            break;
                                        case 3:
                                        case 4:
                                        case 5:
                                            z = true;
                                            break;
                                    }
                                    if (z) {
                                        bArr2[5] = 16;
                                        b = 1;
                                    } else {
                                        b = 1;
                                        bArr2[5] = 1;
                                    }
                                    bArr2[6] = b;
                                    if (radioInfo.isPrefebIndex) {
                                        bArr2[7] = b;
                                        bArr2[8] = radioInfo.mPrefebIndex;
                                    } else {
                                        bArr2[7] = 0;
                                        bArr2[8] = 0;
                                    }
                                    if (z) {
                                        int i4 = (radioInfo.mFrequency % 100000) / 1000;
                                        int i5 = ((radioInfo.mFrequency % 100000) / 100) % 10;
                                        if (i4 == 0) {
                                            i2 = ICarDoor.SLIDING_DOOR_CMD_R_SETTING;
                                            if (i5 == 0) {
                                                i5 = 15;
                                            }
                                        } else {
                                            i2 = i4 << 4;
                                        }
                                        i = i2 | i5;
                                        parseInt = Integer.parseInt(String.valueOf((radioInfo.mFrequency % 100000) % 100), 16);
                                        parseInt2 = Integer.parseInt(String.valueOf((radioInfo.mFrequency % 10000) % 10), 16);
                                        c = '\n';
                                    } else {
                                        int i6 = (radioInfo.mFrequency % 1000000) / 100000;
                                        if (i6 == 0) {
                                            i6 = 15;
                                        }
                                        i = i6 | ICarDoor.SLIDING_DOOR_CMD_R_SETTING;
                                        parseInt = Integer.parseInt(String.valueOf(((radioInfo.mFrequency % 1000000) / 1000) % 100), 16);
                                        c = '\n';
                                        parseInt2 = Integer.parseInt(String.valueOf((((radioInfo.mFrequency % 1000000) / 100) % 10) + 10), 16);
                                    }
                                    bArr2[9] = (byte) i;
                                    bArr2[c] = (byte) parseInt;
                                    bArr2[11] = (byte) parseInt2;
                                    bArr2[12] = -16;
                                    if (z) {
                                        bArr2[13] = 2;
                                    } else {
                                        bArr2[13] = 1;
                                    }
                                    bArr2[14] = 4;
                                    bArr2[15] = 0;
                                    bArr2[16] = 0;
                                    bArr2[17] = 0;
                                    bArr2[18] = 4;
                                    bArr2[19] = 0;
                                    return bArr2;
                                }
                                r2 = 0;
                                Log.d(this.TAG, "formartDashBoardInfoDataBytes() isRadioUpdate =" + ((boolean) r2));
                                byte[] bArr22 = new byte[20];
                                bArr22[0] = (byte) this.mDashBoardType.ordinal();
                                bArr22[1] = 3;
                                bArr22[2] = (byte) 17;
                                bArr22[3] = (byte) r2;
                                bArr22[4] = 0;
                                switch (radioInfo.mBandType) {
                                }
                                if (z) {
                                }
                                bArr22[6] = b;
                                if (radioInfo.isPrefebIndex) {
                                }
                                if (z) {
                                }
                                bArr22[9] = (byte) i;
                                bArr22[c] = (byte) parseInt;
                                bArr22[11] = (byte) parseInt2;
                                bArr22[12] = -16;
                                if (z) {
                                }
                                bArr22[14] = 4;
                                bArr22[15] = 0;
                                bArr22[16] = 0;
                                bArr22[17] = 0;
                                bArr22[18] = 4;
                                bArr22[19] = 0;
                                return bArr22;
                            }
                            mAbsInfo = new RadioInfo();
                            r2 = 1;
                            Log.d(this.TAG, "formartDashBoardInfoDataBytes() isRadioUpdate =" + ((boolean) r2));
                            byte[] bArr222 = new byte[20];
                            bArr222[0] = (byte) this.mDashBoardType.ordinal();
                            bArr222[1] = 3;
                            bArr222[2] = (byte) 17;
                            bArr222[3] = (byte) r2;
                            bArr222[4] = 0;
                            switch (radioInfo.mBandType) {
                            }
                            if (z) {
                            }
                            bArr222[6] = b;
                            if (radioInfo.isPrefebIndex) {
                            }
                            if (z) {
                            }
                            bArr222[9] = (byte) i;
                            bArr222[c] = (byte) parseInt;
                            bArr222[11] = (byte) parseInt2;
                            bArr222[12] = -16;
                            if (z) {
                            }
                            bArr222[14] = 4;
                            bArr222[15] = 0;
                            bArr222[16] = 0;
                            bArr222[17] = 0;
                            bArr222[18] = 4;
                            bArr222[19] = 0;
                            return bArr222;
                        case 4:
                            if (!(absDashBoardInfo instanceof BtInfo)) {
                                Log.w(this.TAG, "formartDashBoardInfoDataBytes() BT BtInfo is null or AbsDashBoardInfo is not BtInfo");
                                return null;
                            }
                            BtInfo btInfo = (BtInfo) absDashBoardInfo;
                            String str2 = btInfo.mBtCallNumber;
                            String str3 = btInfo.mBtName;
                            if (str2 != null && !"".equals(str2)) {
                                str2 = str2 + " ";
                            }
                            byte[] bytes = str2 != null ? str2.getBytes(StandardCharsets.UTF_16BE) : new byte[0];
                            int length2 = bytes != null ? bytes.length : 0;
                            if (length2 >= 50) {
                                String str4 = str2.substring(0, 21) + "... ";
                                bytes = str4 != null ? str4.getBytes(StandardCharsets.UTF_16BE) : new byte[0];
                                length2 = bytes != null ? bytes.length : 0;
                            }
                            if (str3 != null && !"".equals(str3)) {
                                String str5 = str3 + " ";
                                bytes = str5 != null ? str5.getBytes(StandardCharsets.UTF_16BE) : new byte[0];
                                length2 = bytes != null ? bytes.length : 0;
                                if (length2 >= 50) {
                                    String str6 = str5.substring(0, 21) + "... ";
                                    bytes = str6 != null ? str6.getBytes(StandardCharsets.UTF_16BE) : new byte[0];
                                    length2 = bytes != null ? bytes.length : 0;
                                }
                            }
                            int i7 = length2 + 4;
                            Log.d(this.TAG, "callStrLen= " + length2);
                            byte[] bArr3 = new byte[3 + i7];
                            bArr3[0] = (byte) this.mDashBoardType.ordinal();
                            bArr3[1] = 4;
                            bArr3[2] = (byte) i7;
                            if (btInfo.mPhoneSourceType != 0 && btInfo.mPhoneSourceType != 1) {
                                switch (btInfo.mBtStatus) {
                                    case 2:
                                        c2 = 3;
                                        b2 = 1;
                                        break;
                                    case 3:
                                    case 5:
                                        c2 = 3;
                                        b2 = 3;
                                        break;
                                    case 4:
                                        c2 = 3;
                                        b2 = 8;
                                        break;
                                    default:
                                        c2 = 3;
                                        b2 = 3;
                                        break;
                                }
                                bArr3[c2] = b2;
                                bArr3[4] = btInfo.mIsMute ? (byte) 1 : (byte) 0;
                                bArr3[5] = 4;
                                bArr3[6] = (byte) length2;
                                if (length2 > 0) {
                                    return bArr3;
                                }
                                System.arraycopy(bytes, 0, bArr3, 7, length2);
                                return bArr3;
                            }
                            switch (btInfo.mBtStatus) {
                                case 2:
                                    c2 = 3;
                                    b2 = Ihu12DashBoard.INFO_TYPE_NAVI_GUIDE_NEXT_PATH_CALCULATION;
                                    break;
                                case 3:
                                    b2 = 4;
                                    c2 = 3;
                                    break;
                                case 4:
                                    b2 = 2;
                                    c2 = 3;
                                    break;
                            }
                            bArr3[c2] = b2;
                            bArr3[4] = btInfo.mIsMute ? (byte) 1 : (byte) 0;
                            bArr3[5] = 4;
                            bArr3[6] = (byte) length2;
                            if (length2 > 0) {
                            }
                            break;
                        case 5:
                        case 9:
                        case 12:
                        case 13:
                            if (!(absDashBoardInfo instanceof MediaInfo)) {
                                Log.w(this.TAG, "formartDashBoardInfoDataBytes() USB  AbsDashBoardInfo is not MediaInfo");
                                return null;
                            }
                            MediaInfo mediaInfo = (MediaInfo) absDashBoardInfo;
                            if (mediaInfo.title != null && mediaInfo.artist != null) {
                                if (mAbsInfo != null && (mAbsInfo instanceof MediaInfo)) {
                                    MediaInfo mediaInfo2 = (MediaInfo) mAbsInfo;
                                    if (mediaInfo2.isInfoDiff(mediaInfo)) {
                                        mediaInfo2.setInfoDiff(mediaInfo);
                                        r5 = 1;
                                        Log.d(this.TAG, "formartDashBoardInfoDataBytes() isMediaUpdate =" + ((boolean) r5) + ",so return byte [] null！");
                                        if (r5 == 0) {
                                            return null;
                                        }
                                        String str7 = mediaInfo.title;
                                        String str8 = mediaInfo.artist;
                                        int length3 = str7 != null ? str7.getBytes(StandardCharsets.UTF_16BE).length : 0;
                                        int length4 = (str8 != null ? str8.getBytes(StandardCharsets.UTF_16BE).length : 0) + 2;
                                        try {
                                            if (length4 > 20) {
                                                str8 = str8.substring(0, 9);
                                            } else {
                                                String str9 = str8;
                                                int i8 = 0;
                                                while (i8 < (20 - length4) / 2) {
                                                    try {
                                                        i8++;
                                                        str9 = str9 + " ";
                                                    } catch (Exception e) {
                                                        e = e;
                                                        str8 = str9;
                                                        str = str7;
                                                        Log.e(this.TAG, "getDashBoardInfoDataByteArray()  Exception ", e);
                                                        Log.w(this.TAG, "formartDashBoardInfoDataBytes() USB MediaInfo.mTitle=" + str + ",mArtist=" + str8);
                                                        int i9 = length3 + 10 + 6 + length4 + 4;
                                                        bArr = new byte[3 + i9];
                                                        bArr[0] = (byte) this.mDashBoardType.ordinal();
                                                        bArr[1] = 2;
                                                        bArr[2] = (byte) i9;
                                                        bArr[3] = (byte) r5;
                                                        bArr[4] = 0;
                                                        bArr[5] = 4;
                                                        if (absDashBoardInfo.getDashBoardSource() == 5) {
                                                        }
                                                        if (absDashBoardInfo.getDashBoardSource() == 12) {
                                                        }
                                                        if (absDashBoardInfo.getDashBoardSource() == 13) {
                                                        }
                                                        bArr[6] = 1;
                                                        bArr[7] = 0;
                                                        bArr[8] = 0;
                                                        bArr[9] = 0;
                                                        bArr[10] = 0;
                                                        bArr[11] = 4;
                                                        bArr[12] = (byte) length3;
                                                        if (length3 != 0) {
                                                        }
                                                        i3 = 12 + length3;
                                                        bArr[i3 + 1] = 1;
                                                        bArr[i3 + 2] = 1;
                                                        bArr[i3 + 3] = 1;
                                                        bArr[i3 + 4] = 2;
                                                        bArr[i3 + 5] = 4;
                                                        bArr[i3 + 6] = 0;
                                                        bArr[i3 + 7] = 0;
                                                        bArr[i3 + 8] = 0;
                                                        bArr[i3 + 9] = 4;
                                                        bArr[i3 + 10] = (byte) length4;
                                                        if (length4 != 0) {
                                                        }
                                                        return bArr;
                                                    }
                                                }
                                                str8 = str9;
                                            }
                                            length4 = (str8 != null ? str8.getBytes(StandardCharsets.UTF_16BE).length : 0) + 2;
                                            if (length3 > 18) {
                                                str = str7.substring(0, 6) + "...";
                                                if (str != null) {
                                                    try {
                                                        length = str.getBytes(StandardCharsets.UTF_16BE).length;
                                                    } catch (Exception e2) {
                                                        e = e2;
                                                        Log.e(this.TAG, "getDashBoardInfoDataByteArray()  Exception ", e);
                                                        Log.w(this.TAG, "formartDashBoardInfoDataBytes() USB MediaInfo.mTitle=" + str + ",mArtist=" + str8);
                                                        int i92 = length3 + 10 + 6 + length4 + 4;
                                                        bArr = new byte[3 + i92];
                                                        bArr[0] = (byte) this.mDashBoardType.ordinal();
                                                        bArr[1] = 2;
                                                        bArr[2] = (byte) i92;
                                                        bArr[3] = (byte) r5;
                                                        bArr[4] = 0;
                                                        bArr[5] = 4;
                                                        if (absDashBoardInfo.getDashBoardSource() == 5) {
                                                        }
                                                        if (absDashBoardInfo.getDashBoardSource() == 12) {
                                                        }
                                                        if (absDashBoardInfo.getDashBoardSource() == 13) {
                                                        }
                                                        bArr[6] = 1;
                                                        bArr[7] = 0;
                                                        bArr[8] = 0;
                                                        bArr[9] = 0;
                                                        bArr[10] = 0;
                                                        bArr[11] = 4;
                                                        bArr[12] = (byte) length3;
                                                        if (length3 != 0) {
                                                        }
                                                        i3 = 12 + length3;
                                                        bArr[i3 + 1] = 1;
                                                        bArr[i3 + 2] = 1;
                                                        bArr[i3 + 3] = 1;
                                                        bArr[i3 + 4] = 2;
                                                        bArr[i3 + 5] = 4;
                                                        bArr[i3 + 6] = 0;
                                                        bArr[i3 + 7] = 0;
                                                        bArr[i3 + 8] = 0;
                                                        bArr[i3 + 9] = 4;
                                                        bArr[i3 + 10] = (byte) length4;
                                                        if (length4 != 0) {
                                                            System.arraycopy(str8.getBytes(StandardCharsets.UTF_16BE), 0, bArr, i3 + 11, length4 - 2);
                                                        }
                                                        return bArr;
                                                    }
                                                } else {
                                                    length = 0;
                                                }
                                                length3 = length;
                                            } else {
                                                str = str7;
                                            }
                                        } catch (Exception e3) {
                                            e = e3;
                                        }
                                        Log.w(this.TAG, "formartDashBoardInfoDataBytes() USB MediaInfo.mTitle=" + str + ",mArtist=" + str8);
                                        int i922 = length3 + 10 + 6 + length4 + 4;
                                        bArr = new byte[3 + i922];
                                        bArr[0] = (byte) this.mDashBoardType.ordinal();
                                        bArr[1] = 2;
                                        bArr[2] = (byte) i922;
                                        bArr[3] = (byte) r5;
                                        bArr[4] = 0;
                                        bArr[5] = 4;
                                        if (absDashBoardInfo.getDashBoardSource() == 5) {
                                            bArr[5] = 5;
                                        }
                                        if (absDashBoardInfo.getDashBoardSource() == 12) {
                                            bArr[5] = 18;
                                        }
                                        if (absDashBoardInfo.getDashBoardSource() == 13) {
                                            bArr[5] = 15;
                                        }
                                        bArr[6] = 1;
                                        bArr[7] = 0;
                                        bArr[8] = 0;
                                        bArr[9] = 0;
                                        bArr[10] = 0;
                                        bArr[11] = 4;
                                        bArr[12] = (byte) length3;
                                        if (length3 != 0) {
                                            System.arraycopy(str.getBytes(StandardCharsets.UTF_16BE), 0, bArr, 13, length3);
                                        }
                                        i3 = 12 + length3;
                                        bArr[i3 + 1] = 1;
                                        bArr[i3 + 2] = 1;
                                        bArr[i3 + 3] = 1;
                                        bArr[i3 + 4] = 2;
                                        bArr[i3 + 5] = 4;
                                        bArr[i3 + 6] = 0;
                                        bArr[i3 + 7] = 0;
                                        bArr[i3 + 8] = 0;
                                        bArr[i3 + 9] = 4;
                                        bArr[i3 + 10] = (byte) length4;
                                        if (length4 != 0 && length4 != 2) {
                                            System.arraycopy(str8.getBytes(StandardCharsets.UTF_16BE), 0, bArr, i3 + 11, length4 - 2);
                                        }
                                        return bArr;
                                    }
                                    r5 = 0;
                                    Log.d(this.TAG, "formartDashBoardInfoDataBytes() isMediaUpdate =" + ((boolean) r5) + ",so return byte [] null！");
                                    if (r5 == 0) {
                                    }
                                }
                                mAbsInfo = new MediaInfo(mediaInfo.getDashBoardSource());
                                r5 = 1;
                                Log.d(this.TAG, "formartDashBoardInfoDataBytes() isMediaUpdate =" + ((boolean) r5) + ",so return byte [] null！");
                                if (r5 == 0) {
                                }
                            }
                            Log.w(this.TAG, "formartDashBoardInfoDataBytes() USB MediaInfo.title is null or AbsDashBoardInfo is not MediaInfo");
                            return null;
                    }
                }
                return null;
            } catch (Exception e4) {
                Log.e(this.TAG, "formartDashBoardInfoDataBytes() Exception " + e4.getMessage());
                return null;
            }
        }

        public byte[] getDashBoardItemUnitByteArray(SetItemUnitInfo setItemUnitInfo) {
            try {
                byte[] bArr = new byte[12];
                if (setItemUnitInfo == null) {
                    return null;
                }
                bArr[0] = 5;
                bArr[1] = 4;
                bArr[2] = (byte) setItemUnitInfo.mUnitFuelConsumption;
                bArr[3] = (byte) setItemUnitInfo.mUnitTemperature;
                bArr[4] = (byte) setItemUnitInfo.mUnitPressure;
                bArr[5] = (byte) setItemUnitInfo.mUnitDistance;
                Log.d(this.TAG, StringFormart.byte2hex(bArr));
                return bArr;
            } catch (Exception e) {
                Log.e(this.TAG, "setDashBoardItemUnit()  Exception ", e);
                return null;
            }
        }

        public byte[] getDashBoardLanguageByteArray(int i) {
            try {
                if (i == 0) {
                    Log.w(this.TAG, "setDashBoardLanguage() language ==0 unknown ! ");
                    return null;
                }
                byte[] bArr = new byte[12];
                bArr[0] = 6;
                bArr[1] = 1;
                if (i != 1) {
                    switch (i) {
                        case 5:
                            bArr[2] = 5;
                            break;
                        case 6:
                            bArr[2] = 6;
                            break;
                    }
                } else {
                    bArr[2] = 1;
                }
                return bArr;
            } catch (Exception e) {
                Log.e(this.TAG, "setDashBoardLanguage()  Exception ", e);
                return null;
            }
        }

        public byte[] getDashBoardMsgDataByteArray(AbsDashBoardMsg absDashBoardMsg) {
            if (absDashBoardMsg == null) {
                Log.w(this.TAG, "getDashBoardMsgDataByteArray() msg is null");
            }
            try {
                if (!DashBoardType.MCU_CA1105.equals(this.mDashBoardType)) {
                    return null;
                }
                byte[] bArr = new byte[10];
                bArr[0] = (byte) this.mDashBoardType.ordinal();
                bArr[1] = -32;
                bArr[2] = 1;
                if (absDashBoardMsg instanceof DashBoardMsgAudio) {
                    bArr[3] = 8;
                    bArr[4] = 5;
                    bArr[5] = 0;
                    bArr[6] = 19;
                    int i = ((DashBoardMsgAudio) absDashBoardMsg).audioState;
                    if (i == 0) {
                        bArr[6] = 0;
                        bArr[7] = 0;
                    } else if (i == 38) {
                        bArr[7] = DashBoardMsgAudio.AUDIO_STATE_UNPLAYABLE_FILE;
                    } else if (i == 41) {
                        bArr[7] = DashBoardMsgAudio.AUDIO_STATE_NO_AUDIO_FILE;
                    } else if (i == 55) {
                        bArr[7] = DashBoardMsgAudio.AUDIO_STATE_LOADING_AUDIO_FILE_LIST;
                    } else if (i != 58) {
                        bArr[7] = -1;
                    } else {
                        bArr[7] = DashBoardMsgAudio.AUDIO_STATE_NO_DEVICES_CONNECTED;
                    }
                    bArr[8] = 4;
                    bArr[9] = 0;
                } else if (absDashBoardMsg instanceof DashBoardMsgVoice) {
                    bArr[3] = 9;
                    bArr[4] = 4;
                    bArr[5] = ((DashBoardMsgVoice) absDashBoardMsg).voiceAction;
                    bArr[6] = 8;
                }
                return bArr;
            } catch (Exception e) {
                Log.e(this.TAG, "getDashBoardMsgDataByteArray()  Exception ", e);
                return null;
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public static class AudioSourceEnableInfo {
        public static final byte STATE_DISABLE = 0;
        public static final byte STATE_ENABLE = 1;
        public byte mUsb1State = 0;
        public byte mUsb2State = 0;
        public byte mCarLifeState = 0;
        public byte mCarPlayState = 0;
        public byte mBtState = 0;

        public byte[] getDataArray() {
            return new byte[]{this.mUsb1State, this.mCarLifeState, this.mCarPlayState, this.mBtState, this.mUsb2State};
        }

        public String toString() {
            return "AudioSourceEnableInfo{mUsb1State=" + ((int) this.mUsb1State) + "mUsb2State=" + ((int) this.mUsb2State) + ", mCarLifeState=" + ((int) this.mCarLifeState) + ", mCarPlayState=" + ((int) this.mCarPlayState) + ", mBtState=" + ((int) this.mBtState) + '}';
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum PhoneAction {
        MUTE_MIC(6),
        USE_HANDSET(4),
        ENDING_CALL(3),
        REFUSE_CALL(2),
        ANSWER_CALL(1),
        __UNKNOWN__(-1);

        public final int value;

        PhoneAction(int i) {
            this.value = i;
        }

        public static PhoneAction valueOf(int i) {
            return i == MUTE_MIC.value ? MUTE_MIC : i == USE_HANDSET.value ? USE_HANDSET : i == ENDING_CALL.value ? ENDING_CALL : i == REFUSE_CALL.value ? REFUSE_CALL : i == ANSWER_CALL.value ? ANSWER_CALL : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum TimeFormatMode {
        MODE_12H(1),
        MODE_24H(2),
        __UNKNOWN__(-1);

        public final int value;

        TimeFormatMode(int i) {
            this.value = i;
        }

        public static TimeFormatMode valueOf(int i) {
            return i == MODE_12H.value ? MODE_12H : i == MODE_24H.value ? MODE_24H : __UNKNOWN__;
        }
    }
}
