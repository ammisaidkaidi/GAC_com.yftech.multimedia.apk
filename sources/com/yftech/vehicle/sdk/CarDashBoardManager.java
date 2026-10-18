package com.yftech.vehicle.sdk;

import android.os.SystemProperties;
import android.util.Log;
import com.yftech.vehicle.internal.BaseApiManager;
import com.yftech.vehicle.internal.SignalReceiver;
import com.yftech.vehicle.internal.adapter.ICarDashBoard;
import com.yftech.vehicle.internal.adapter.ICarIcm;
import com.yftech.vehicle.internal.adapter.ICarParking;
import com.yftech.vehicle.internal.adapter.IMpuVersion;
import com.yftech.vehicle.internal.project.Ihu12DashBoard;
import com.yftech.vehicle.internal.utils.StringFormart;
import java.nio.charset.StandardCharsets;
import java.util.Calendar;

/* loaded from: /home/user/work/dex/classes4.dex */
public class CarDashBoardManager extends BaseApiManager implements ICarDashBoard {
    private static final String TAG = "CarDashBoardManager";
    private static CarDashBoardManager sMe;
    private ICarDashBoard.DashBoardType mDashBoardType;

    /* loaded from: /home/user/work/dex/classes4.dex */
    public static abstract class CarDashBoardListener {
        @SignalReceiver(signalId = 9947)
        public void onDashBoardPhoneActionMsgChanged(ICarDashBoard.PhoneAction phoneAction) {
        }

        @SignalReceiver(signalId = ICarDashBoard.DASH_BOARD_SETTING_ITEM_UNIT)
        public void onDashBoardSettingItemInfoChanged(ICarDashBoard.SetItemUnitInfo setItemUnitInfo) {
        }

        @SignalReceiver(signalId = ICarDashBoard.DASH_BOARD_SETTING_ITEM_LANGUAGE)
        public void onDashBoardSettingItemLanguageChanged(int i) {
        }

        @SignalReceiver(signalId = 9978)
        public void onDashBoardSourceChanged(int i) {
        }

        @SignalReceiver(signalId = 9945)
        public void onDashBoardTimeFormatChanged(ICarDashBoard.TimeFormatMode timeFormatMode) {
        }
    }

    private CarDashBoardManager(ICarDashBoard.DashBoardType dashBoardType) {
        this.mDashBoardType = ICarDashBoard.DashBoardType.MCU_CA1105;
        this.mDashBoardType = dashBoardType;
    }

    public static synchronized CarDashBoardManager get() {
        CarDashBoardManager carDashBoardManager;
        synchronized (CarDashBoardManager.class) {
            try {
                String str = SystemProperties.get(IMpuVersion.PROP_KEY_CAR_KIT_PRODUCT_NAME);
                if (sMe == null) {
                    if (str != null && (str.startsWith("CBIHU") || str.startsWith("CB_IHU"))) {
                        sMe = new CarDashBoardManager(ICarDashBoard.DashBoardType.MCU_IHU12);
                    } else {
                        sMe = new CarDashBoardManager(ICarDashBoard.DashBoardType.MCU_CA1105);
                    }
                }
            } catch (Exception unused) {
            }
            carDashBoardManager = sMe;
        }
        return carDashBoardManager;
    }

    public boolean setSendDashBoardSource(int i, ICarDashBoard.AbsDashBoardInfo absDashBoardInfo) {
        try {
            if (ICarDashBoard.DashBoardType.MCU_IHU12.equals(this.mDashBoardType)) {
                Ihu12DashBoard.setCurrentSource(i);
                byte[] dashBoardSourceDataByteArray = Ihu12DashBoard.getDashBoardSourceDataByteArray(i, absDashBoardInfo);
                if (dashBoardSourceDataByteArray == null) {
                    Log.d(TAG, "MCU_IHU12  setSendDashBoardSource->source= " + i + ",byteArr=null return!");
                } else {
                    StringBuilder sb = new StringBuilder();
                    sb.append("MCU_IHU12  setSendDashBoardSource->source= ");
                    sb.append(absDashBoardInfo != null ? absDashBoardInfo.getDashBoardSource() : -1);
                    sb.append(",[");
                    sb.append(StringFormart.byte2hex(dashBoardSourceDataByteArray));
                    sb.append(" ]");
                    Log.d(TAG, sb.toString());
                    setSignalValue(9939, dashBoardSourceDataByteArray);
                }
                switch (i) {
                    case 12:
                    case 13:
                    case 14:
                        ICarDashBoard.MediaInfo mediaInfo = new ICarDashBoard.MediaInfo(i);
                        mediaInfo.title = "";
                        mediaInfo.artist = "";
                        setSendDashBoardInfo(mediaInfo);
                        return true;
                    default:
                        return true;
                }
            }
            byte[] dashBoardSourceDataByteArray2 = ICarDashBoard.DashBoardDataFormater.get(this.mDashBoardType).getDashBoardSourceDataByteArray(i, absDashBoardInfo);
            if (dashBoardSourceDataByteArray2 != null && dashBoardSourceDataByteArray2.length > 1) {
                Log.d(TAG, "setSendDashBoardSource->source=" + i + ",[" + StringFormart.byte2hex(dashBoardSourceDataByteArray2) + " ]");
                if (ICarDashBoard.DashBoardDataFormater.get(this.mDashBoardType).isSendMediaInfoOnly()) {
                    return setSignalValue(9986, dashBoardSourceDataByteArray2);
                }
                return setSignalValue(9986, dashBoardSourceDataByteArray2);
            }
            Log.w(TAG, "setSendDashBoardSource() byteArr is null info=" + absDashBoardInfo);
            return false;
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            return false;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:14:0x0057. Please report as an issue. */
    public boolean setSendDashBoardInfo(final ICarDashBoard.AbsDashBoardInfo absDashBoardInfo) {
        try {
            if (!ICarDashBoard.DashBoardType.MCU_IHU12.equals(this.mDashBoardType)) {
                byte[] dashBoardInfoDataByteArray = ICarDashBoard.DashBoardDataFormater.get(this.mDashBoardType).getDashBoardInfoDataByteArray(absDashBoardInfo);
                if (dashBoardInfoDataByteArray == null) {
                    Log.w(TAG, "setSendDashBoardInfo() byteArr is null");
                    return false;
                }
                StringBuilder sb = new StringBuilder();
                sb.append("setSendDashBoardInfo->source= ");
                sb.append(absDashBoardInfo != null ? absDashBoardInfo.getDashBoardSource() : -1);
                sb.append(",[");
                sb.append(StringFormart.byte2hex(dashBoardInfoDataByteArray));
                sb.append(" ]");
                Log.d(TAG, sb.toString());
                return setSignalValue(9986, dashBoardInfoDataByteArray);
            }
            if (absDashBoardInfo == null) {
                Log.w(TAG, "MCU_IHU12 setSendDashBoardInfo() byteArr is null");
                return false;
            }
            byte[] dashBoardInfoDataByteArrayForIhu12 = Ihu12DashBoard.getDashBoardInfoDataByteArrayForIhu12(absDashBoardInfo);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("MCU_IHU12 setSendDashBoardInfo->DashBoardInfo= ");
            sb2.append(absDashBoardInfo != null ? absDashBoardInfo.getDashBoardSource() : -1);
            sb2.append(",[");
            sb2.append(StringFormart.byte2hex(dashBoardInfoDataByteArrayForIhu12));
            sb2.append(" ]");
            Log.d(TAG, sb2.toString());
            setSignalValue(9939, dashBoardInfoDataByteArrayForIhu12);
            int dashBoardSource = absDashBoardInfo.getDashBoardSource();
            if (dashBoardSource != 9) {
                switch (dashBoardSource) {
                    case 2:
                    case 3:
                    case 5:
                        break;
                    case 4:
                        if (!(absDashBoardInfo instanceof ICarDashBoard.BtInfo)) {
                            Log.w(TAG, "getMediaInfo() - PHONE_NUMBER info is not BtInfo");
                            return false;
                        }
                        final ICarDashBoard.BtInfo btInfo = (ICarDashBoard.BtInfo) absDashBoardInfo;
                        byte[] mediaInfo = Ihu12DashBoard.getMediaInfo((byte) 3, absDashBoardInfo);
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("MCU_IHU12 setSendDashBoardInfo->INFO_TYPE_PHONE_INFO= ");
                        sb3.append(absDashBoardInfo != null ? absDashBoardInfo.getDashBoardSource() : -1);
                        sb3.append(",[");
                        sb3.append(StringFormart.byte2hex(mediaInfo));
                        sb3.append(" ]");
                        Log.d(TAG, sb3.toString());
                        setSignalValue(9939, mediaInfo);
                        if (Ihu12DashBoard.isBtInfoChange(absDashBoardInfo)) {
                            byte[] mediaInfo2 = Ihu12DashBoard.getMediaInfo((byte) 5, absDashBoardInfo);
                            StringBuilder sb4 = new StringBuilder();
                            sb4.append("MCU_IHU12 setSendDashBoardInfo->INFO_TYPE_PHONE_NAME= ");
                            sb4.append(absDashBoardInfo != null ? absDashBoardInfo.getDashBoardSource() : -1);
                            sb4.append(",[");
                            sb4.append(StringFormart.byte2hex(mediaInfo2));
                            sb4.append(" ]");
                            Log.d(TAG, sb4.toString());
                            setSignalValue(9939, mediaInfo2);
                            if (btInfo != null && btInfo.mBtName != null && !btInfo.mBtName.equals("")) {
                                btInfo.mBtCallNumber = "";
                            }
                            byte[] mediaInfo3 = Ihu12DashBoard.getMediaInfo((byte) 4, btInfo);
                            StringBuilder sb5 = new StringBuilder();
                            sb5.append("MCU_IHU12 setSendDashBoardInfo->INFO_TYPE_PHONE_NUMBER= ");
                            sb5.append(btInfo != null ? btInfo.getDashBoardSource() : -1);
                            sb5.append(",[");
                            sb5.append(StringFormart.byte2hex(mediaInfo3));
                            sb5.append(" ]");
                            Log.d(TAG, sb5.toString());
                            setSignalValue(9939, mediaInfo3);
                        }
                        if (btInfo != null && btInfo.mBtStatus == 7) {
                            byte[] mediaInfo4 = Ihu12DashBoard.getMediaInfo((byte) 6, absDashBoardInfo);
                            StringBuilder sb6 = new StringBuilder();
                            sb6.append("MCU_IHU12 setSendDashBoardInfo->INFO_TYPE_PHONE_TIMES= ");
                            sb6.append(absDashBoardInfo != null ? absDashBoardInfo.getDashBoardSource() : -1);
                            sb6.append(",[");
                            sb6.append(StringFormart.byte2hex(mediaInfo4));
                            sb6.append(" ]");
                            Log.d(TAG, sb6.toString());
                            setSignalValue(9939, mediaInfo4);
                        }
                        if (btInfo != null && btInfo.mBtStatus == 5) {
                            btInfo.mBtStatus = (byte) -1;
                            new Thread(new Runnable() { // from class: com.yftech.vehicle.sdk.CarDashBoardManager.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    try {
                                        Thread.sleep(500L);
                                    } catch (InterruptedException unused) {
                                    }
                                    byte[] mediaInfo5 = Ihu12DashBoard.getMediaInfo((byte) 3, btInfo);
                                    StringBuilder sb7 = new StringBuilder();
                                    sb7.append("MCU_IHU12 setSendDashBoardInfo->STATUS_ENDING_CALL= ");
                                    sb7.append(absDashBoardInfo != null ? btInfo.getDashBoardSource() : -1);
                                    sb7.append(",[");
                                    sb7.append(StringFormart.byte2hex(mediaInfo5));
                                    sb7.append(" ]");
                                    Log.d(CarDashBoardManager.TAG, sb7.toString());
                                    CarDashBoardManager.this.setSignalValue(9939, mediaInfo5);
                                }
                            }).start();
                        }
                        Ihu12DashBoard.setCurrentSource(absDashBoardInfo.getDashBoardSource());
                        return true;
                    default:
                        switch (dashBoardSource) {
                            case 12:
                            case 13:
                            case 14:
                                break;
                            default:
                                return true;
                        }
                }
            }
            if (absDashBoardInfo.getDashBoardSource() == 12 || absDashBoardInfo.getDashBoardSource() == 13) {
                ICarDashBoard.MediaInfo mediaInfo5 = (ICarDashBoard.MediaInfo) absDashBoardInfo;
                mediaInfo5.title = "";
                mediaInfo5.artist = "";
            }
            boolean isMediaChange = Ihu12DashBoard.isMediaChange(absDashBoardInfo);
            Log.d(TAG, "MCU_IHU12 setSendDashBoardInfo->isMediaChange-0 = " + isMediaChange + ",getDashBoardSource=" + absDashBoardInfo.getDashBoardSource());
            if (isMediaChange) {
                byte[] mediaInfo6 = Ihu12DashBoard.getMediaInfo((byte) 1, absDashBoardInfo);
                StringBuilder sb7 = new StringBuilder();
                sb7.append("MCU_IHU12 setSendDashBoardInfo->INFO_TYPE_SONG_TITLE= ");
                sb7.append(absDashBoardInfo != null ? absDashBoardInfo.getDashBoardSource() : -1);
                sb7.append(",[");
                sb7.append(StringFormart.byte2hex(mediaInfo6));
                sb7.append(" ]");
                Log.d(TAG, sb7.toString());
                setSignalValue(9939, mediaInfo6);
                byte[] mediaInfo7 = Ihu12DashBoard.getMediaInfo((byte) 2, absDashBoardInfo);
                StringBuilder sb8 = new StringBuilder();
                sb8.append("MCU_IHU12 setSendDashBoardInfo->INFO_TYPE_SONG_ARTIST= ");
                sb8.append(absDashBoardInfo != null ? absDashBoardInfo.getDashBoardSource() : -1);
                sb8.append(",[");
                sb8.append(StringFormart.byte2hex(mediaInfo7));
                sb8.append(" ]");
                Log.d(TAG, sb8.toString());
                setSignalValue(9939, mediaInfo7);
            }
            return true;
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            return false;
        }
    }

    public boolean setSendBtInfoToDashBoardForTboxCall(final ICarDashBoard.BtInfo btInfo) {
        if (btInfo == null) {
            Log.w(TAG, "MCU_IHU12 setSendBtInfoToDashBoardForTboxCall -ECall() byteArr is null");
            return false;
        }
        byte[] mediaInfo = Ihu12DashBoard.getMediaInfo((byte) 3, btInfo);
        StringBuilder sb = new StringBuilder();
        sb.append("MCU_IHU12 setSendBtInfoToDashBoardForTboxCall->INFO_TYPE_PHONE_INFO= ");
        sb.append(btInfo != null ? btInfo.getDashBoardSource() : -1);
        sb.append(",[");
        sb.append(StringFormart.byte2hex(mediaInfo));
        sb.append(" ]");
        Log.d(TAG, sb.toString());
        setSignalValue(9939, mediaInfo);
        if (btInfo == null || btInfo.mBtStatus != 5) {
            return true;
        }
        btInfo.mBtStatus = (byte) -1;
        new Thread(new Runnable() { // from class: com.yftech.vehicle.sdk.CarDashBoardManager.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Thread.sleep(500L);
                } catch (InterruptedException unused) {
                }
                byte[] mediaInfo2 = Ihu12DashBoard.getMediaInfo((byte) 3, btInfo);
                StringBuilder sb2 = new StringBuilder();
                sb2.append("MCU_IHU12 setSendDashBoardInfo->STATUS_ENDING_CALL= ");
                sb2.append(btInfo != null ? btInfo.getDashBoardSource() : -1);
                sb2.append(",[");
                sb2.append(StringFormart.byte2hex(mediaInfo2));
                sb2.append(" ]");
                Log.d(CarDashBoardManager.TAG, sb2.toString());
                CarDashBoardManager.this.setSignalValue(9939, mediaInfo2);
            }
        }).start();
        return true;
    }

    public boolean setSendDashBoardNaviGuideBaseInfoForIhu12(Ihu12DashBoard.NaviGuideBaseInfo naviGuideBaseInfo) {
        if (naviGuideBaseInfo == null) {
            Log.w(TAG, "setSendDashBoardNaviGuideInfoForIhu12() info is null");
            return false;
        }
        try {
            setSignalValue(9939, Ihu12DashBoard.getNaviGuideBaseInfoDataProtocol((byte) 7, naviGuideBaseInfo));
            setSignalValue(9939, Ihu12DashBoard.getNaviGuideBaseInfoDataProtocol((byte) 8, naviGuideBaseInfo));
            Ihu12DashBoard.getNaviGuideBaseInfoDataProtocol((byte) 9, naviGuideBaseInfo);
            setSignalValue(9939, Ihu12DashBoard.getNaviGuideBaseInfoDataProtocol((byte) 10, naviGuideBaseInfo));
            return true;
        } catch (Exception e) {
            Log.e(TAG, "setSendDashBoardNaviGuideInfo()  Exception ", e);
            return false;
        }
    }

    public boolean setSendDashBoardNaviGuideUpdateInfoForIhu12(Ihu12DashBoard.NaviUpdateData naviUpdateData) {
        if (naviUpdateData == null) {
            Log.w(TAG, "setSendDashBoardNaviGuideUpdateInfoForIhu12() info is null");
            return false;
        }
        try {
            setSignalValue(9939, Ihu12DashBoard.getNaviGuideUpdateDataProtocol(naviUpdateData));
            return true;
        } catch (Exception e) {
            Log.e(TAG, "setSendDashBoardNaviGuideUpdateInfoForIhu12()  Exception ", e);
            return false;
        }
    }

    public boolean setSendDashBoardMusicArtImage(byte[] bArr) {
        if (bArr == null) {
            Log.w(TAG, "setSendDashBoardMusicArtImage() imageBytes is null");
            return false;
        }
        return setSignalValue(9985, bArr);
    }

    public boolean setSendDashBoardNaviGuideInfo(int i, int i2, String str) {
        if (str == null) {
            Log.w(TAG, "setSendDashBoardNaviGuideInfo() nextRoadName is null");
            return false;
        }
        try {
            int length = str.getBytes(StandardCharsets.UTF_8).length;
            byte[] bArr = new byte[length + 2];
            bArr[0] = (byte) (i & ICarParking.PARKING_RADAR_ALARM_SETTING);
            bArr[1] = (byte) (i2 & ICarParking.PARKING_RADAR_ALARM_SETTING);
            System.arraycopy(str.getBytes(StandardCharsets.UTF_8), 0, bArr, 2, length);
            return setSignalValue(9984, bArr);
        } catch (Exception e) {
            Log.e(TAG, "setSendDashBoardNaviGuideInfo()  Exception ", e);
            return false;
        }
    }

    public boolean setDashBoardItemUnit(ICarDashBoard.SetItemUnitInfo setItemUnitInfo) {
        if (setItemUnitInfo == null) {
            return false;
        }
        try {
            byte[] dashBoardItemUnitByteArray = ICarDashBoard.DashBoardDataFormater.get(this.mDashBoardType).getDashBoardItemUnitByteArray(setItemUnitInfo);
            Log.d(TAG, StringFormart.byte2hex(dashBoardItemUnitByteArray));
            if (dashBoardItemUnitByteArray == null) {
                Log.w(TAG, "setDashBoardItem() format data error ! ");
                return false;
            }
            return setSignalValue(ICarDashBoard.DASH_BOARD_SETTING_ITEM_UNIT, dashBoardItemUnitByteArray);
        } catch (Exception e) {
            Log.e(TAG, "setDashBoardItemUnit()  Exception ", e);
            return false;
        }
    }

    public ICarDashBoard.SetItemUnitInfo getSetItemUnitInfo() {
        return ICarDashBoard.SetItemUnitInfo.valueOf(getSignalDataValue(ICarDashBoard.DASH_BOARD_SETTING_ITEM_UNIT));
    }

    public boolean setDashBoardLanguage(int i) {
        try {
            if (i == 0) {
                Log.w(TAG, "setDashBoardLanguage() language ==0 unknown ! ");
                return false;
            }
            byte[] dashBoardLanguageByteArray = ICarDashBoard.DashBoardDataFormater.get(this.mDashBoardType).getDashBoardLanguageByteArray(i);
            Log.d(TAG, StringFormart.byte2hex(dashBoardLanguageByteArray));
            return setSignalValue(ICarDashBoard.DASH_BOARD_SETTING_ITEM_LANGUAGE, dashBoardLanguageByteArray);
        } catch (Exception e) {
            Log.e(TAG, "setDashBoardLanguage()  Exception ", e);
            return false;
        }
    }

    public int getDashBoardLanguage() {
        return getSignalValue(ICarDashBoard.DASH_BOARD_SETTING_ITEM_LANGUAGE).intValue();
    }

    public int getDashBoardSource() {
        return getSignalValue(9978).intValue();
    }

    public boolean setDashBoardMsgNotify(ICarDashBoard.AbsDashBoardMsg absDashBoardMsg) {
        byte[] dashBoardMsgDataByteArray = ICarDashBoard.DashBoardDataFormater.get(this.mDashBoardType).getDashBoardMsgDataByteArray(absDashBoardMsg);
        if (dashBoardMsgDataByteArray == null) {
            Log.w(TAG, "setDashBoardMsgNotify() byteArr is null");
            return false;
        }
        Log.d(TAG, "setDashBoardMsgNotify-> [" + StringFormart.byte2hex(dashBoardMsgDataByteArray) + " ]");
        return setSignalValue(9961, dashBoardMsgDataByteArray);
    }

    public boolean setDashBoardAudioSourceEnableInfo(ICarDashBoard.AudioSourceEnableInfo audioSourceEnableInfo) {
        try {
            if (audioSourceEnableInfo == null) {
                Log.e(TAG, "setDashBoardAudioSourceEnableInfo()  info is null ");
                return false;
            }
            return setSignalValue(9948, audioSourceEnableInfo.getDataArray());
        } catch (Exception e) {
            Log.e(TAG, "setDashBoardAudioSourceEnableInfo() Exception ", e);
            return false;
        }
    }

    public boolean setDashBoardSyncSystemTime(Calendar calendar, boolean z) {
        byte b = z ? (byte) 1 : (byte) 0;
        int i = (byte) calendar.get(z ? 11 : 10);
        Log.i(TAG, "setDashBoardSyncSystemTime() isHour24Val=" + ((int) b) + ", hourVal =" + i);
        if (!z) {
            boolean z2 = calendar.get(9) == 0;
            Log.i(TAG, "setDashBoardSyncSystemTime() isAm=" + z2 + ", am_pm=" + calendar.get(9));
            if (i == 0) {
                i = z2 ? 0 : 12;
            } else if (!z2) {
                i += 12;
            }
        }
        return setSignalValue(9946, new byte[]{(byte) (calendar.get(1) - 2000), (byte) (calendar.get(2) + 1), (byte) calendar.get(5), (byte) i, (byte) calendar.get(12), (byte) calendar.get(13), b});
    }

    public boolean setDashBoardFMFreqInfo(int i) {
        if (i == 50) {
            return setSignalValue(ICarIcm.FM_FREQ_SYMBOL_SETTING, 1);
        }
        if (i == 100) {
            return setSignalValue(ICarIcm.FM_FREQ_SYMBOL_SETTING, 0);
        }
        Log.i(TAG, "setDashBoardFMFreqInfo: illegality freq");
        return false;
    }

    public void registerListener(CarDashBoardListener carDashBoardListener) {
        registerReceiver(carDashBoardListener);
    }

    public void unregisterListener(CarDashBoardListener carDashBoardListener) {
        unregisterReceiver(carDashBoardListener);
    }
}
