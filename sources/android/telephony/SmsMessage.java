package android.telephony;

import android.R;
import android.content.res.Resources;
import android.os.Binder;
import android.text.TextUtils;
import com.android.internal.telephony.GsmAlphabet;
import com.android.internal.telephony.Sms7BitEncodingTranslator;
import com.android.internal.telephony.SmsConstants;
import com.android.internal.telephony.SmsHeader;
import com.android.internal.telephony.SmsMessageBase;
import com.android.internal.telephony.cdma.SmsMessage;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;

/* loaded from: /home/user/work/dex/classes2.dex */
public class SmsMessage {
    public static final int ENCODING_16BIT = 3;
    public static final int ENCODING_7BIT = 1;
    public static final int ENCODING_8BIT = 2;
    public static final int ENCODING_KSC5601 = 4;
    public static final int ENCODING_UNKNOWN = 0;
    public static final String FORMAT_3GPP = "3gpp";
    public static final String FORMAT_3GPP2 = "3gpp2";
    private static final String LOG_TAG = "SmsMessage";
    public static final int MAX_USER_DATA_BYTES = 140;
    public static final int MAX_USER_DATA_BYTES_WITH_HEADER = 134;
    public static final int MAX_USER_DATA_SEPTETS = 160;
    public static final int MAX_USER_DATA_SEPTETS_WITH_HEADER = 153;
    private static boolean mIsNoEmsSupportConfigListLoaded = false;
    private static NoEmsSupportConfig[] mNoEmsSupportConfigList;
    private int mSubId = 0;
    public SmsMessageBase mWrappedSmsMessage;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes2.dex */
    public @interface Format {
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    public enum MessageClass {
        UNKNOWN,
        CLASS_0,
        CLASS_1,
        CLASS_2,
        CLASS_3
    }

    public void setSubId(int i) {
        this.mSubId = i;
    }

    public int getSubId() {
        return this.mSubId;
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    public static class SubmitPdu {
        public byte[] encodedMessage;
        public byte[] encodedScAddress;

        public String toString() {
            return "SubmitPdu: encodedScAddress = " + Arrays.toString(this.encodedScAddress) + ", encodedMessage = " + Arrays.toString(this.encodedMessage);
        }

        protected SubmitPdu(SmsMessageBase.SubmitPduBase submitPduBase) {
            this.encodedMessage = submitPduBase.encodedMessage;
            this.encodedScAddress = submitPduBase.encodedScAddress;
        }
    }

    public SmsMessage(SmsMessageBase smsMessageBase) {
        this.mWrappedSmsMessage = smsMessageBase;
    }

    @Deprecated
    public static SmsMessage createFromPdu(byte[] bArr) {
        int currentPhoneType = TelephonyManager.getDefault().getCurrentPhoneType();
        SmsMessage createFromPdu = createFromPdu(bArr, 2 == currentPhoneType ? FORMAT_3GPP2 : FORMAT_3GPP);
        if (createFromPdu == null || createFromPdu.mWrappedSmsMessage == null) {
            return createFromPdu(bArr, 2 == currentPhoneType ? FORMAT_3GPP : FORMAT_3GPP2);
        }
        return createFromPdu;
    }

    public static SmsMessage createFromPdu(byte[] bArr, String str) {
        com.android.internal.telephony.cdma.SmsMessage createFromPdu;
        if (bArr == null) {
            Rlog.i(LOG_TAG, "createFromPdu(): pdu is null");
            return null;
        }
        if (FORMAT_3GPP2.equals(str)) {
            createFromPdu = com.android.internal.telephony.cdma.SmsMessage.createFromPdu(bArr);
        } else if (FORMAT_3GPP.equals(str)) {
            createFromPdu = com.android.internal.telephony.gsm.SmsMessage.createFromPdu(bArr);
        } else {
            Rlog.e(LOG_TAG, "createFromPdu(): unsupported message format " + str);
            return null;
        }
        if (createFromPdu != null) {
            return new SmsMessage(createFromPdu);
        }
        Rlog.e(LOG_TAG, "createFromPdu(): wrappedMessage is null");
        return null;
    }

    public static SmsMessage newFromCMT(byte[] bArr) {
        com.android.internal.telephony.gsm.SmsMessage newFromCMT = com.android.internal.telephony.gsm.SmsMessage.newFromCMT(bArr);
        if (newFromCMT != null) {
            return new SmsMessage(newFromCMT);
        }
        Rlog.e(LOG_TAG, "newFromCMT(): wrappedMessage is null");
        return null;
    }

    public static SmsMessage createFromEfRecord(int i, byte[] bArr) {
        com.android.internal.telephony.cdma.SmsMessage createFromEfRecord;
        if (isCdmaVoice()) {
            createFromEfRecord = com.android.internal.telephony.cdma.SmsMessage.createFromEfRecord(i, bArr);
        } else {
            createFromEfRecord = com.android.internal.telephony.gsm.SmsMessage.createFromEfRecord(i, bArr);
        }
        if (createFromEfRecord != null) {
            return new SmsMessage(createFromEfRecord);
        }
        Rlog.e(LOG_TAG, "createFromEfRecord(): wrappedMessage is null");
        return null;
    }

    public static SmsMessage createFromEfRecord(int i, byte[] bArr, int i2) {
        com.android.internal.telephony.cdma.SmsMessage createFromEfRecord;
        if (isCdmaVoice(i2)) {
            createFromEfRecord = com.android.internal.telephony.cdma.SmsMessage.createFromEfRecord(i, bArr);
        } else {
            createFromEfRecord = com.android.internal.telephony.gsm.SmsMessage.createFromEfRecord(i, bArr);
        }
        if (createFromEfRecord != null) {
            return new SmsMessage(createFromEfRecord);
        }
        return null;
    }

    public static int getTPLayerLengthForPDU(String str) {
        if (isCdmaVoice()) {
            return com.android.internal.telephony.cdma.SmsMessage.getTPLayerLengthForPDU(str);
        }
        return com.android.internal.telephony.gsm.SmsMessage.getTPLayerLengthForPDU(str);
    }

    public static int[] calculateLength(CharSequence charSequence, boolean z) {
        GsmAlphabet.TextEncodingDetails calculateLength;
        if (useCdmaFormatForMoSms()) {
            calculateLength = com.android.internal.telephony.cdma.SmsMessage.calculateLength(charSequence, z, true);
        } else {
            calculateLength = com.android.internal.telephony.gsm.SmsMessage.calculateLength(charSequence, z);
        }
        return new int[]{calculateLength.msgCount, calculateLength.codeUnitCount, calculateLength.codeUnitsRemaining, calculateLength.codeUnitSize};
    }

    public static ArrayList<String> fragmentText(String str) {
        GsmAlphabet.TextEncodingDetails calculateLength;
        int i;
        int findNextUnicodePosition;
        int i2;
        int i3 = 0;
        if (useCdmaFormatForMoSms()) {
            calculateLength = com.android.internal.telephony.cdma.SmsMessage.calculateLength(str, false, true);
        } else {
            calculateLength = com.android.internal.telephony.gsm.SmsMessage.calculateLength(str, false);
        }
        if (calculateLength.codeUnitSize == 1) {
            if (calculateLength.languageTable == 0 || calculateLength.languageShiftTable == 0) {
                i2 = (calculateLength.languageTable == 0 && calculateLength.languageShiftTable == 0) ? 0 : 4;
            } else {
                i2 = 7;
            }
            if (calculateLength.msgCount > 1) {
                i2 += 6;
            }
            if (i2 != 0) {
                i2++;
            }
            i = 160 - i2;
        } else if (calculateLength.msgCount > 1) {
            i = 134;
            if (!hasEmsSupport() && calculateLength.msgCount < 10) {
                i = 132;
            }
        } else {
            i = 140;
        }
        String translate = Resources.getSystem().getBoolean(R.^attr-private.pointerIconHorizontalDoubleArrow) ? Sms7BitEncodingTranslator.translate(str) : null;
        if (!TextUtils.isEmpty(translate)) {
            str = translate;
        }
        int length = str.length();
        ArrayList<String> arrayList = new ArrayList<>(calculateLength.msgCount);
        while (i3 < length) {
            if (calculateLength.codeUnitSize == 1) {
                if (useCdmaFormatForMoSms() && calculateLength.msgCount == 1) {
                    findNextUnicodePosition = Math.min(i, length - i3) + i3;
                } else {
                    findNextUnicodePosition = GsmAlphabet.findGsmSeptetLimitIndex(str, i3, i, calculateLength.languageTable, calculateLength.languageShiftTable);
                }
            } else {
                findNextUnicodePosition = SmsMessageBase.findNextUnicodePosition(i3, i, str);
            }
            if (findNextUnicodePosition <= i3 || findNextUnicodePosition > length) {
                Rlog.e(LOG_TAG, "fragmentText failed (" + i3 + " >= " + findNextUnicodePosition + " or " + findNextUnicodePosition + " >= " + length + ")");
                break;
            }
            arrayList.add(str.substring(i3, findNextUnicodePosition));
            i3 = findNextUnicodePosition;
        }
        return arrayList;
    }

    public static int[] calculateLength(String str, boolean z) {
        return calculateLength((CharSequence) str, z);
    }

    public static SubmitPdu getSubmitPdu(String str, String str2, String str3, boolean z) {
        return getSubmitPdu(str, str2, str3, z, SubscriptionManager.getDefaultSmsSubscriptionId());
    }

    public static SubmitPdu getSubmitPdu(String str, String str2, String str3, boolean z, int i) {
        SmsMessage.SubmitPdu submitPdu;
        if (useCdmaFormatForMoSms(i)) {
            submitPdu = com.android.internal.telephony.cdma.SmsMessage.getSubmitPdu(str, str2, str3, z, (SmsHeader) null);
        } else {
            submitPdu = com.android.internal.telephony.gsm.SmsMessage.getSubmitPdu(str, str2, str3, z);
        }
        return new SubmitPdu(submitPdu);
    }

    public static SubmitPdu getSubmitPdu(String str, String str2, short s, byte[] bArr, boolean z) {
        SmsMessage.SubmitPdu submitPdu;
        if (useCdmaFormatForMoSms()) {
            submitPdu = com.android.internal.telephony.cdma.SmsMessage.getSubmitPdu(str, str2, s, bArr, z);
        } else {
            submitPdu = com.android.internal.telephony.gsm.SmsMessage.getSubmitPdu(str, str2, s, bArr, z);
        }
        return new SubmitPdu(submitPdu);
    }

    public String getServiceCenterAddress() {
        return this.mWrappedSmsMessage.getServiceCenterAddress();
    }

    public String getOriginatingAddress() {
        return this.mWrappedSmsMessage.getOriginatingAddress();
    }

    public String getDisplayOriginatingAddress() {
        return this.mWrappedSmsMessage.getDisplayOriginatingAddress();
    }

    public String getMessageBody() {
        return this.mWrappedSmsMessage.getMessageBody();
    }

    /* renamed from: android.telephony.SmsMessage$1, reason: invalid class name */
    /* loaded from: /home/user/work/dex/classes2.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$android$internal$telephony$SmsConstants$MessageClass = new int[SmsConstants.MessageClass.values().length];

        static {
            try {
                $SwitchMap$com$android$internal$telephony$SmsConstants$MessageClass[SmsConstants.MessageClass.CLASS_0.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$internal$telephony$SmsConstants$MessageClass[SmsConstants.MessageClass.CLASS_1.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$android$internal$telephony$SmsConstants$MessageClass[SmsConstants.MessageClass.CLASS_2.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$android$internal$telephony$SmsConstants$MessageClass[SmsConstants.MessageClass.CLASS_3.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public MessageClass getMessageClass() {
        switch (AnonymousClass1.$SwitchMap$com$android$internal$telephony$SmsConstants$MessageClass[this.mWrappedSmsMessage.getMessageClass().ordinal()]) {
            case 1:
                return MessageClass.CLASS_0;
            case 2:
                return MessageClass.CLASS_1;
            case 3:
                return MessageClass.CLASS_2;
            case 4:
                return MessageClass.CLASS_3;
            default:
                return MessageClass.UNKNOWN;
        }
    }

    public String getDisplayMessageBody() {
        return this.mWrappedSmsMessage.getDisplayMessageBody();
    }

    public String getPseudoSubject() {
        return this.mWrappedSmsMessage.getPseudoSubject();
    }

    public long getTimestampMillis() {
        return this.mWrappedSmsMessage.getTimestampMillis();
    }

    public boolean isEmail() {
        return this.mWrappedSmsMessage.isEmail();
    }

    public String getEmailBody() {
        return this.mWrappedSmsMessage.getEmailBody();
    }

    public String getEmailFrom() {
        return this.mWrappedSmsMessage.getEmailFrom();
    }

    public int getProtocolIdentifier() {
        return this.mWrappedSmsMessage.getProtocolIdentifier();
    }

    public boolean isReplace() {
        return this.mWrappedSmsMessage.isReplace();
    }

    public boolean isCphsMwiMessage() {
        return this.mWrappedSmsMessage.isCphsMwiMessage();
    }

    public boolean isMWIClearMessage() {
        return this.mWrappedSmsMessage.isMWIClearMessage();
    }

    public boolean isMWISetMessage() {
        return this.mWrappedSmsMessage.isMWISetMessage();
    }

    public boolean isMwiDontStore() {
        return this.mWrappedSmsMessage.isMwiDontStore();
    }

    public byte[] getUserData() {
        return this.mWrappedSmsMessage.getUserData();
    }

    public byte[] getPdu() {
        return this.mWrappedSmsMessage.getPdu();
    }

    @Deprecated
    public int getStatusOnSim() {
        return this.mWrappedSmsMessage.getStatusOnIcc();
    }

    public int getStatusOnIcc() {
        return this.mWrappedSmsMessage.getStatusOnIcc();
    }

    @Deprecated
    public int getIndexOnSim() {
        return this.mWrappedSmsMessage.getIndexOnIcc();
    }

    public int getIndexOnIcc() {
        return this.mWrappedSmsMessage.getIndexOnIcc();
    }

    public int getStatus() {
        return this.mWrappedSmsMessage.getStatus();
    }

    public boolean isStatusReportMessage() {
        return this.mWrappedSmsMessage.isStatusReportMessage();
    }

    public boolean isReplyPathPresent() {
        return this.mWrappedSmsMessage.isReplyPathPresent();
    }

    private static boolean useCdmaFormatForMoSms() {
        return useCdmaFormatForMoSms(SubscriptionManager.getDefaultSmsSubscriptionId());
    }

    private static boolean useCdmaFormatForMoSms(int i) {
        SmsManager smsManagerForSubscriptionId = SmsManager.getSmsManagerForSubscriptionId(i);
        if (!smsManagerForSubscriptionId.isImsSmsSupported()) {
            return isCdmaVoice(i);
        }
        return FORMAT_3GPP2.equals(smsManagerForSubscriptionId.getImsSmsFormat());
    }

    private static boolean isCdmaVoice() {
        return isCdmaVoice(SubscriptionManager.getDefaultSmsSubscriptionId());
    }

    private static boolean isCdmaVoice(int i) {
        return 2 == TelephonyManager.getDefault().getCurrentPhoneType(i);
    }

    public static boolean hasEmsSupport() {
        if (!isNoEmsSupportConfigListExisted()) {
            return true;
        }
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            String simOperatorNumeric = TelephonyManager.getDefault().getSimOperatorNumeric();
            String groupIdLevel1 = TelephonyManager.getDefault().getGroupIdLevel1();
            Binder.restoreCallingIdentity(clearCallingIdentity);
            if (!TextUtils.isEmpty(simOperatorNumeric)) {
                for (NoEmsSupportConfig noEmsSupportConfig : mNoEmsSupportConfigList) {
                    if (simOperatorNumeric.startsWith(noEmsSupportConfig.mOperatorNumber) && (TextUtils.isEmpty(noEmsSupportConfig.mGid1) || (!TextUtils.isEmpty(noEmsSupportConfig.mGid1) && noEmsSupportConfig.mGid1.equalsIgnoreCase(groupIdLevel1)))) {
                        return false;
                    }
                }
            }
            return true;
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(clearCallingIdentity);
            throw th;
        }
    }

    public static boolean shouldAppendPageNumberAsPrefix() {
        if (!isNoEmsSupportConfigListExisted()) {
            return false;
        }
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            String simOperatorNumeric = TelephonyManager.getDefault().getSimOperatorNumeric();
            String groupIdLevel1 = TelephonyManager.getDefault().getGroupIdLevel1();
            Binder.restoreCallingIdentity(clearCallingIdentity);
            for (NoEmsSupportConfig noEmsSupportConfig : mNoEmsSupportConfigList) {
                if (simOperatorNumeric.startsWith(noEmsSupportConfig.mOperatorNumber) && (TextUtils.isEmpty(noEmsSupportConfig.mGid1) || (!TextUtils.isEmpty(noEmsSupportConfig.mGid1) && noEmsSupportConfig.mGid1.equalsIgnoreCase(groupIdLevel1)))) {
                    return noEmsSupportConfig.mIsPrefix;
                }
            }
            return false;
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(clearCallingIdentity);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public static class NoEmsSupportConfig {
        String mGid1;
        boolean mIsPrefix;
        String mOperatorNumber;

        public NoEmsSupportConfig(String[] strArr) {
            this.mOperatorNumber = strArr[0];
            this.mIsPrefix = "prefix".equals(strArr[1]);
            this.mGid1 = strArr.length > 2 ? strArr[2] : null;
        }

        public String toString() {
            return "NoEmsSupportConfig { mOperatorNumber = " + this.mOperatorNumber + ", mIsPrefix = " + this.mIsPrefix + ", mGid1 = " + this.mGid1 + " }";
        }
    }

    private static boolean isNoEmsSupportConfigListExisted() {
        Resources system;
        if (!mIsNoEmsSupportConfigListLoaded && (system = Resources.getSystem()) != null) {
            String[] stringArray = system.getStringArray(R.array.config_protectedNetworks);
            if (stringArray != null && stringArray.length > 0) {
                mNoEmsSupportConfigList = new NoEmsSupportConfig[stringArray.length];
                for (int i = 0; i < stringArray.length; i++) {
                    mNoEmsSupportConfigList[i] = new NoEmsSupportConfig(stringArray[i].split(";"));
                }
            }
            mIsNoEmsSupportConfigListLoaded = true;
        }
        return (mNoEmsSupportConfigList == null || mNoEmsSupportConfigList.length == 0) ? false : true;
    }
}
