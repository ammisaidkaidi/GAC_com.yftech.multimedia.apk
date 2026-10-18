package android.media.audiopolicy;

import android.app.backup.FullBackup;
import android.media.AudioFormat;
import android.media.TtmlUtils;
import android.media.audiopolicy.AudioMix;
import android.media.audiopolicy.AudioMixingRule;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.android.internal.annotations.GuardedBy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;

/* loaded from: /home/user/work/dex/classes.dex */
public class AudioPolicyConfig implements Parcelable {
    public static final Parcelable.Creator<AudioPolicyConfig> CREATOR = new Parcelable.Creator<AudioPolicyConfig>() { // from class: android.media.audiopolicy.AudioPolicyConfig.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AudioPolicyConfig createFromParcel(Parcel parcel) {
            return new AudioPolicyConfig(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AudioPolicyConfig[] newArray(int i) {
            return new AudioPolicyConfig[i];
        }
    };
    private static final String TAG = "AudioPolicyConfig";
    protected int mDuckingPolicy;
    private int mMixCounter;
    protected final ArrayList<AudioMix> mMixes;
    private String mRegistrationId;

    private static String mixTypeId(int i) {
        return i == 0 ? TtmlUtils.TAG_P : i == 1 ? FullBackup.ROOT_TREE_TOKEN : "i";
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    protected AudioPolicyConfig(AudioPolicyConfig audioPolicyConfig) {
        this.mDuckingPolicy = 0;
        this.mRegistrationId = null;
        this.mMixCounter = 0;
        this.mMixes = audioPolicyConfig.mMixes;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AudioPolicyConfig(ArrayList<AudioMix> arrayList) {
        this.mDuckingPolicy = 0;
        this.mRegistrationId = null;
        this.mMixCounter = 0;
        this.mMixes = arrayList;
    }

    public void addMix(AudioMix audioMix) throws IllegalArgumentException {
        if (audioMix == null) {
            throw new IllegalArgumentException("Illegal null AudioMix argument");
        }
        this.mMixes.add(audioMix);
    }

    public ArrayList<AudioMix> getMixes() {
        return this.mMixes;
    }

    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    public int hashCode() {
        return Objects.hash(this.mMixes);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.mMixes.size());
        Iterator<AudioMix> it = this.mMixes.iterator();
        while (it.hasNext()) {
            AudioMix next = it.next();
            parcel.writeInt(next.getRouteFlags());
            parcel.writeInt(next.mCallbackFlags);
            parcel.writeInt(next.mDeviceSystemType);
            parcel.writeString(next.mDeviceAddress);
            parcel.writeInt(next.getFormat().getSampleRate());
            parcel.writeInt(next.getFormat().getEncoding());
            parcel.writeInt(next.getFormat().getChannelMask());
            ArrayList<AudioMixingRule.AudioMixMatchCriterion> criteria = next.getRule().getCriteria();
            parcel.writeInt(criteria.size());
            Iterator<AudioMixingRule.AudioMixMatchCriterion> it2 = criteria.iterator();
            while (it2.hasNext()) {
                it2.next().writeToParcel(parcel);
            }
        }
    }

    private AudioPolicyConfig(Parcel parcel) {
        this.mDuckingPolicy = 0;
        this.mRegistrationId = null;
        this.mMixCounter = 0;
        this.mMixes = new ArrayList<>();
        int readInt = parcel.readInt();
        for (int i = 0; i < readInt; i++) {
            AudioMix.Builder builder = new AudioMix.Builder();
            builder.setRouteFlags(parcel.readInt());
            builder.setCallbackFlags(parcel.readInt());
            builder.setDevice(parcel.readInt(), parcel.readString());
            builder.setFormat(new AudioFormat.Builder().setSampleRate(parcel.readInt()).setChannelMask(parcel.readInt()).setEncoding(parcel.readInt()).build());
            int readInt2 = parcel.readInt();
            AudioMixingRule.Builder builder2 = new AudioMixingRule.Builder();
            for (int i2 = 0; i2 < readInt2; i2++) {
                builder2.addRuleFromParcel(parcel);
            }
            builder.setMixingRule(builder2.build());
            this.mMixes.add(builder.build());
        }
    }

    public String toLogFriendlyString() {
        String str;
        String str2 = new String("android.media.audiopolicy.AudioPolicyConfig:\n") + this.mMixes.size() + " AudioMix: " + this.mRegistrationId + "\n";
        Iterator<AudioMix> it = this.mMixes.iterator();
        while (it.hasNext()) {
            AudioMix next = it.next();
            str2 = ((((str2 + "* route flags=0x" + Integer.toHexString(next.getRouteFlags()) + "\n") + "  rate=" + next.getFormat().getSampleRate() + "Hz\n") + "  encoding=" + next.getFormat().getEncoding() + "\n") + "  channels=0x") + Integer.toHexString(next.getFormat().getChannelMask()).toUpperCase() + "\n";
            Iterator<AudioMixingRule.AudioMixMatchCriterion> it2 = next.getRule().getCriteria().iterator();
            while (it2.hasNext()) {
                AudioMixingRule.AudioMixMatchCriterion next2 = it2.next();
                switch (next2.mRule) {
                    case 1:
                        str = (str2 + "  match usage ") + next2.mAttr.usageToString();
                        break;
                    case 2:
                        str = (str2 + "  match capture preset ") + next2.mAttr.getCapturePreset();
                        break;
                    case 4:
                        str = (str2 + "  match UID ") + next2.mIntProp;
                        break;
                    case 32769:
                        str = (str2 + "  exclude usage ") + next2.mAttr.usageToString();
                        break;
                    case 32770:
                        str = (str2 + "  exclude capture preset ") + next2.mAttr.getCapturePreset();
                        break;
                    case AudioMixingRule.RULE_EXCLUDE_UID /* 32772 */:
                        str = (str2 + "  exclude UID ") + next2.mIntProp;
                        break;
                    default:
                        str = str2 + "invalid rule!";
                        break;
                }
                str2 = str + "\n";
            }
        }
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setRegistration(String str) {
        boolean z = this.mRegistrationId == null || this.mRegistrationId.isEmpty();
        boolean z2 = str == null || str.isEmpty();
        if (!z && !z2 && !this.mRegistrationId.equals(str)) {
            Log.e(TAG, "Invalid registration transition from " + this.mRegistrationId + " to " + str);
            return;
        }
        if (str == null) {
            str = "";
        }
        this.mRegistrationId = str;
        Iterator<AudioMix> it = this.mMixes.iterator();
        while (it.hasNext()) {
            setMixRegistration(it.next());
        }
    }

    private void setMixRegistration(AudioMix audioMix) {
        if (!this.mRegistrationId.isEmpty()) {
            if ((audioMix.getRouteFlags() & 2) == 2) {
                audioMix.setRegistration(this.mRegistrationId + "mix" + mixTypeId(audioMix.getMixType()) + ":" + this.mMixCounter);
            } else if ((audioMix.getRouteFlags() & 1) == 1) {
                audioMix.setRegistration(audioMix.mDeviceAddress);
            }
        } else {
            audioMix.setRegistration("");
        }
        this.mMixCounter++;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @GuardedBy("mMixes")
    public void add(ArrayList<AudioMix> arrayList) {
        Iterator<AudioMix> it = arrayList.iterator();
        while (it.hasNext()) {
            AudioMix next = it.next();
            setMixRegistration(next);
            this.mMixes.add(next);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @GuardedBy("mMixes")
    public void remove(ArrayList<AudioMix> arrayList) {
        Iterator<AudioMix> it = arrayList.iterator();
        while (it.hasNext()) {
            this.mMixes.remove(it.next());
        }
    }

    protected String getRegistration() {
        return this.mRegistrationId;
    }
}
