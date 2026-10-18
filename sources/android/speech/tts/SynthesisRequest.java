package android.speech.tts;

import android.os.Bundle;

/* loaded from: /home/user/work/dex/classes2.dex */
public final class SynthesisRequest {
    private int mCallerUid;
    private String mCountry;
    private String mLanguage;
    private final Bundle mParams;
    private int mPitch;
    private int mSpeechRate;
    private final CharSequence mText;
    private String mVariant;
    private String mVoiceName;

    public SynthesisRequest(String str, Bundle bundle) {
        this.mText = str;
        this.mParams = new Bundle(bundle);
    }

    public SynthesisRequest(CharSequence charSequence, Bundle bundle) {
        this.mText = charSequence;
        this.mParams = new Bundle(bundle);
    }

    @Deprecated
    public String getText() {
        return this.mText.toString();
    }

    public CharSequence getCharSequenceText() {
        return this.mText;
    }

    public String getVoiceName() {
        return this.mVoiceName;
    }

    public String getLanguage() {
        return this.mLanguage;
    }

    public String getCountry() {
        return this.mCountry;
    }

    public String getVariant() {
        return this.mVariant;
    }

    public int getSpeechRate() {
        return this.mSpeechRate;
    }

    public int getPitch() {
        return this.mPitch;
    }

    public Bundle getParams() {
        return this.mParams;
    }

    public int getCallerUid() {
        return this.mCallerUid;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setLanguage(String str, String str2, String str3) {
        this.mLanguage = str;
        this.mCountry = str2;
        this.mVariant = str3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setVoiceName(String str) {
        this.mVoiceName = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setSpeechRate(int i) {
        this.mSpeechRate = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setPitch(int i) {
        this.mPitch = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setCallerUid(int i) {
        this.mCallerUid = i;
    }
}
