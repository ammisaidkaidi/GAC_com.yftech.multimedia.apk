package android.media.audiopolicy;

import android.annotation.SystemApi;
import android.media.AudioAttributes;
import android.os.Parcel;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;

@SystemApi
/* loaded from: /home/user/work/dex/classes.dex */
public class AudioMixingRule {
    public static final int RULE_EXCLUDE_ATTRIBUTE_CAPTURE_PRESET = 32770;
    public static final int RULE_EXCLUDE_ATTRIBUTE_USAGE = 32769;
    public static final int RULE_EXCLUDE_UID = 32772;
    private static final int RULE_EXCLUSION_MASK = 32768;

    @SystemApi
    public static final int RULE_MATCH_ATTRIBUTE_CAPTURE_PRESET = 2;

    @SystemApi
    public static final int RULE_MATCH_ATTRIBUTE_USAGE = 1;

    @SystemApi
    public static final int RULE_MATCH_UID = 4;
    private final ArrayList<AudioMixMatchCriterion> mCriteria;
    private final int mTargetMixType;

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isAudioAttributeRule(int i) {
        switch (i) {
            case 1:
            case 2:
                return true;
            default:
                return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isPlayerRule(int i) {
        int i2 = i & (-32769);
        return i2 == 1 || i2 == 4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isValidAttributesSystemApiRule(int i) {
        switch (i) {
            case 1:
            case 2:
                return true;
            default:
                return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isValidRule(int i) {
        int i2 = i & (-32769);
        if (i2 == 4) {
            return true;
        }
        switch (i2) {
            case 1:
            case 2:
                return true;
            default:
                return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isValidSystemApiRule(int i) {
        if (i == 4) {
            return true;
        }
        switch (i) {
            case 1:
            case 2:
                return true;
            default:
                return false;
        }
    }

    private AudioMixingRule(int i, ArrayList<AudioMixMatchCriterion> arrayList) {
        this.mCriteria = arrayList;
        this.mTargetMixType = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class AudioMixMatchCriterion {
        final AudioAttributes mAttr;
        final int mIntProp;
        final int mRule;

        AudioMixMatchCriterion(AudioAttributes audioAttributes, int i) {
            this.mAttr = audioAttributes;
            this.mIntProp = Integer.MIN_VALUE;
            this.mRule = i;
        }

        AudioMixMatchCriterion(Integer num, int i) {
            this.mAttr = null;
            this.mIntProp = num.intValue();
            this.mRule = i;
        }

        public boolean equals(Object obj) {
            return super.equals(obj);
        }

        public int hashCode() {
            return Objects.hash(this.mAttr, Integer.valueOf(this.mIntProp), Integer.valueOf(this.mRule));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void writeToParcel(Parcel parcel) {
            parcel.writeInt(this.mRule);
            int i = this.mRule & (-32769);
            if (i != 4) {
                switch (i) {
                    case 1:
                        parcel.writeInt(this.mAttr.getUsage());
                        return;
                    case 2:
                        parcel.writeInt(this.mAttr.getCapturePreset());
                        return;
                    default:
                        Log.e("AudioMixMatchCriterion", "Unknown match rule" + i + " when writing to Parcel");
                        parcel.writeInt(-1);
                        return;
                }
            }
            parcel.writeInt(this.mIntProp);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isAffectingUsage(int i) {
        Iterator<AudioMixMatchCriterion> it = this.mCriteria.iterator();
        while (it.hasNext()) {
            AudioMixMatchCriterion next = it.next();
            if ((next.mRule & 1) != 0 && next.mAttr != null && next.mAttr.getUsage() == i) {
                return true;
            }
        }
        return false;
    }

    private static boolean areCriteriaEquivalent(ArrayList<AudioMixMatchCriterion> arrayList, ArrayList<AudioMixMatchCriterion> arrayList2) {
        if (arrayList == null || arrayList2 == null) {
            return false;
        }
        if (arrayList == arrayList2) {
            return true;
        }
        return arrayList.size() == arrayList2.size() && arrayList.hashCode() == arrayList2.hashCode();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getTargetMixType() {
        return this.mTargetMixType;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArrayList<AudioMixMatchCriterion> getCriteria() {
        return this.mCriteria;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        AudioMixingRule audioMixingRule = (AudioMixingRule) obj;
        return this.mTargetMixType == audioMixingRule.mTargetMixType && areCriteriaEquivalent(this.mCriteria, audioMixingRule.mCriteria);
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.mTargetMixType), this.mCriteria);
    }

    @SystemApi
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class Builder {
        private int mTargetMixType = -1;
        private ArrayList<AudioMixMatchCriterion> mCriteria = new ArrayList<>();

        @SystemApi
        public Builder() {
        }

        @SystemApi
        public Builder addRule(AudioAttributes audioAttributes, int i) throws IllegalArgumentException {
            if (!AudioMixingRule.isValidAttributesSystemApiRule(i)) {
                throw new IllegalArgumentException("Illegal rule value " + i);
            }
            return checkAddRuleObjInternal(i, audioAttributes);
        }

        @SystemApi
        public Builder excludeRule(AudioAttributes audioAttributes, int i) throws IllegalArgumentException {
            if (!AudioMixingRule.isValidAttributesSystemApiRule(i)) {
                throw new IllegalArgumentException("Illegal rule value " + i);
            }
            return checkAddRuleObjInternal(i | 32768, audioAttributes);
        }

        @SystemApi
        public Builder addMixRule(int i, Object obj) throws IllegalArgumentException {
            if (!AudioMixingRule.isValidSystemApiRule(i)) {
                throw new IllegalArgumentException("Illegal rule value " + i);
            }
            return checkAddRuleObjInternal(i, obj);
        }

        @SystemApi
        public Builder excludeMixRule(int i, Object obj) throws IllegalArgumentException {
            if (!AudioMixingRule.isValidSystemApiRule(i)) {
                throw new IllegalArgumentException("Illegal rule value " + i);
            }
            return checkAddRuleObjInternal(i | 32768, obj);
        }

        private Builder checkAddRuleObjInternal(int i, Object obj) throws IllegalArgumentException {
            if (obj != null) {
                if (AudioMixingRule.isValidRule(i)) {
                    if (AudioMixingRule.isAudioAttributeRule((-32769) & i)) {
                        if (!(obj instanceof AudioAttributes)) {
                            throw new IllegalArgumentException("Invalid AudioAttributes argument");
                        }
                        return addRuleInternal((AudioAttributes) obj, null, i);
                    }
                    if (!(obj instanceof Integer)) {
                        throw new IllegalArgumentException("Invalid Integer argument");
                    }
                    return addRuleInternal(null, (Integer) obj, i);
                }
                throw new IllegalArgumentException("Illegal rule value " + i);
            }
            throw new IllegalArgumentException("Illegal null argument for mixing rule");
        }

        private Builder addRuleInternal(AudioAttributes audioAttributes, Integer num, int i) throws IllegalArgumentException {
            if (this.mTargetMixType == -1) {
                if (AudioMixingRule.isPlayerRule(i)) {
                    this.mTargetMixType = 0;
                } else {
                    this.mTargetMixType = 1;
                }
            } else if ((this.mTargetMixType == 0 && !AudioMixingRule.isPlayerRule(i)) || (this.mTargetMixType == 1 && AudioMixingRule.isPlayerRule(i))) {
                throw new IllegalArgumentException("Incompatible rule for mix");
            }
            synchronized (this.mCriteria) {
                Iterator<AudioMixMatchCriterion> it = this.mCriteria.iterator();
                int i2 = (-32769) & i;
                while (it.hasNext()) {
                    AudioMixMatchCriterion next = it.next();
                    if (i2 != 4) {
                        switch (i2) {
                            case 1:
                                if (next.mAttr.getUsage() != audioAttributes.getUsage()) {
                                    break;
                                } else {
                                    if (next.mRule == i) {
                                        return this;
                                    }
                                    throw new IllegalArgumentException("Contradictory rule exists for " + audioAttributes);
                                }
                            case 2:
                                if (next.mAttr.getCapturePreset() != audioAttributes.getCapturePreset()) {
                                    break;
                                } else {
                                    if (next.mRule == i) {
                                        return this;
                                    }
                                    throw new IllegalArgumentException("Contradictory rule exists for " + audioAttributes);
                                }
                        }
                    } else if (next.mIntProp == num.intValue()) {
                        if (next.mRule == i) {
                            return this;
                        }
                        throw new IllegalArgumentException("Contradictory rule exists for UID " + num);
                    }
                }
                if (i2 != 4) {
                    switch (i2) {
                        case 1:
                        case 2:
                            this.mCriteria.add(new AudioMixMatchCriterion(audioAttributes, i));
                            break;
                        default:
                            throw new IllegalStateException("Unreachable code in addRuleInternal()");
                    }
                } else {
                    this.mCriteria.add(new AudioMixMatchCriterion(num, i));
                }
                return this;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Builder addRuleFromParcel(Parcel parcel) throws IllegalArgumentException {
            AudioAttributes audioAttributes;
            int readInt = parcel.readInt();
            int i = (-32769) & readInt;
            Integer num = null;
            if (i != 4) {
                switch (i) {
                    case 1:
                        audioAttributes = new AudioAttributes.Builder().setUsage(parcel.readInt()).build();
                        break;
                    case 2:
                        audioAttributes = new AudioAttributes.Builder().setInternalCapturePreset(parcel.readInt()).build();
                        break;
                    default:
                        parcel.readInt();
                        throw new IllegalArgumentException("Illegal rule value " + readInt + " in parcel");
                }
            } else {
                Integer num2 = new Integer(parcel.readInt());
                audioAttributes = null;
                num = num2;
            }
            return addRuleInternal(audioAttributes, num, readInt);
        }

        public AudioMixingRule build() {
            return new AudioMixingRule(this.mTargetMixType, this.mCriteria);
        }
    }
}
