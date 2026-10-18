package android.media;

import android.bluetooth.BluetoothClass;
import android.bluetooth.BluetoothHealth;
import android.database.sqlite.SQLiteDatabase;
import android.mtp.MtpConstants;
import android.util.Log;
import android.util.Pair;
import android.util.Range;
import android.util.Rational;
import android.util.Size;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* loaded from: /home/user/work/dex/classes.dex */
public final class MediaCodecInfo {
    private static final int DEFAULT_MAX_SUPPORTED_INSTANCES = 32;
    private static final int ERROR_NONE_SUPPORTED = 4;
    private static final int ERROR_UNRECOGNIZED = 1;
    private static final int ERROR_UNSUPPORTED = 2;
    private static final int MAX_SUPPORTED_INSTANCES_LIMIT = 256;
    private Map<String, CodecCapabilities> mCaps = new HashMap();
    private boolean mIsEncoder;
    private String mName;
    private static final Range<Integer> POSITIVE_INTEGERS = Range.create(1, Integer.MAX_VALUE);
    private static final Range<Long> POSITIVE_LONGS = Range.create(1L, Long.MAX_VALUE);
    private static final Range<Rational> POSITIVE_RATIONALS = Range.create(new Rational(1, Integer.MAX_VALUE), new Rational(Integer.MAX_VALUE, 1));
    private static final Range<Integer> SIZE_RANGE = Range.create(1, 32768);
    private static final Range<Integer> FRAME_RATE_RANGE = Range.create(0, 960);
    private static final Range<Integer> BITRATE_RANGE = Range.create(0, 500000000);

    /* JADX INFO: Access modifiers changed from: package-private */
    public MediaCodecInfo(String str, boolean z, CodecCapabilities[] codecCapabilitiesArr) {
        this.mName = str;
        this.mIsEncoder = z;
        for (CodecCapabilities codecCapabilities : codecCapabilitiesArr) {
            this.mCaps.put(codecCapabilities.getMimeType(), codecCapabilities);
        }
    }

    public final String getName() {
        return this.mName;
    }

    public final boolean isEncoder() {
        return this.mIsEncoder;
    }

    public final String[] getSupportedTypes() {
        Set<String> keySet = this.mCaps.keySet();
        String[] strArr = (String[]) keySet.toArray(new String[keySet.size()]);
        Arrays.sort(strArr);
        return strArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int checkPowerOfTwo(int i, String str) {
        if (((i - 1) & i) == 0) {
            return i;
        }
        throw new IllegalArgumentException(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class Feature {
        public boolean mDefault;
        public String mName;
        public int mValue;

        public Feature(String str, int i, boolean z) {
            this.mName = str;
            this.mValue = i;
            this.mDefault = z;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class CodecCapabilities {
        public static final int COLOR_Format12bitRGB444 = 3;
        public static final int COLOR_Format16bitARGB1555 = 5;
        public static final int COLOR_Format16bitARGB4444 = 4;
        public static final int COLOR_Format16bitBGR565 = 7;
        public static final int COLOR_Format16bitRGB565 = 6;
        public static final int COLOR_Format18BitBGR666 = 41;
        public static final int COLOR_Format18bitARGB1665 = 9;
        public static final int COLOR_Format18bitRGB666 = 8;
        public static final int COLOR_Format19bitARGB1666 = 10;
        public static final int COLOR_Format24BitABGR6666 = 43;
        public static final int COLOR_Format24BitARGB6666 = 42;
        public static final int COLOR_Format24bitARGB1887 = 13;
        public static final int COLOR_Format24bitBGR888 = 12;
        public static final int COLOR_Format24bitRGB888 = 11;
        public static final int COLOR_Format25bitARGB1888 = 14;
        public static final int COLOR_Format32bitABGR8888 = 2130747392;
        public static final int COLOR_Format32bitARGB8888 = 16;
        public static final int COLOR_Format32bitBGRA8888 = 15;
        public static final int COLOR_Format8bitRGB332 = 2;
        public static final int COLOR_FormatCbYCrY = 27;
        public static final int COLOR_FormatCrYCbY = 28;
        public static final int COLOR_FormatL16 = 36;
        public static final int COLOR_FormatL2 = 33;
        public static final int COLOR_FormatL24 = 37;
        public static final int COLOR_FormatL32 = 38;
        public static final int COLOR_FormatL4 = 34;
        public static final int COLOR_FormatL8 = 35;
        public static final int COLOR_FormatMonochrome = 1;
        public static final int COLOR_FormatRGBAFlexible = 2134288520;
        public static final int COLOR_FormatRGBFlexible = 2134292616;
        public static final int COLOR_FormatRawBayer10bit = 31;
        public static final int COLOR_FormatRawBayer8bit = 30;
        public static final int COLOR_FormatRawBayer8bitcompressed = 32;
        public static final int COLOR_FormatSurface = 2130708361;
        public static final int COLOR_FormatYCbYCr = 25;
        public static final int COLOR_FormatYCrYCb = 26;
        public static final int COLOR_FormatYUV411PackedPlanar = 18;
        public static final int COLOR_FormatYUV411Planar = 17;
        public static final int COLOR_FormatYUV420Flexible = 2135033992;
        public static final int COLOR_FormatYUV420PackedPlanar = 20;
        public static final int COLOR_FormatYUV420PackedSemiPlanar = 39;
        public static final int COLOR_FormatYUV420Planar = 19;
        public static final int COLOR_FormatYUV420SemiPlanar = 21;
        public static final int COLOR_FormatYUV422Flexible = 2135042184;
        public static final int COLOR_FormatYUV422PackedPlanar = 23;
        public static final int COLOR_FormatYUV422PackedSemiPlanar = 40;
        public static final int COLOR_FormatYUV422Planar = 22;
        public static final int COLOR_FormatYUV422SemiPlanar = 24;
        public static final int COLOR_FormatYUV444Flexible = 2135181448;
        public static final int COLOR_FormatYUV444Interleaved = 29;
        public static final int COLOR_QCOM_FormatYUV420SemiPlanar = 2141391872;
        public static final int COLOR_TI_FormatYUV420PackedSemiPlanar = 2130706688;
        private static final String TAG = "CodecCapabilities";
        public int[] colorFormats;
        private AudioCapabilities mAudioCaps;
        private MediaFormat mCapabilitiesInfo;
        private MediaFormat mDefaultFormat;
        private EncoderCapabilities mEncoderCaps;
        int mError;
        private int mFlagsRequired;
        private int mFlagsSupported;
        private int mFlagsVerified;
        private int mMaxSupportedInstances;
        private String mMime;
        private VideoCapabilities mVideoCaps;
        public CodecProfileLevel[] profileLevels;
        public static final String FEATURE_AdaptivePlayback = "adaptive-playback";
        public static final String FEATURE_SecurePlayback = "secure-playback";
        public static final String FEATURE_TunneledPlayback = "tunneled-playback";
        public static final String FEATURE_PartialFrame = "partial-frame";
        private static final Feature[] decoderFeatures = {new Feature(FEATURE_AdaptivePlayback, 1, true), new Feature(FEATURE_SecurePlayback, 2, false), new Feature(FEATURE_TunneledPlayback, 4, false), new Feature(FEATURE_PartialFrame, 8, false)};
        public static final String FEATURE_IntraRefresh = "intra-refresh";
        private static final Feature[] encoderFeatures = {new Feature(FEATURE_IntraRefresh, 1, false)};

        public CodecCapabilities() {
        }

        public final boolean isFeatureSupported(String str) {
            return checkFeature(str, this.mFlagsSupported);
        }

        public final boolean isFeatureRequired(String str) {
            return checkFeature(str, this.mFlagsRequired);
        }

        public String[] validFeatures() {
            Feature[] validFeatures = getValidFeatures();
            String[] strArr = new String[validFeatures.length];
            for (int i = 0; i < strArr.length; i++) {
                strArr[i] = validFeatures[i].mName;
            }
            return strArr;
        }

        private Feature[] getValidFeatures() {
            if (!isEncoder()) {
                return decoderFeatures;
            }
            return encoderFeatures;
        }

        private boolean checkFeature(String str, int i) {
            for (Feature feature : getValidFeatures()) {
                if (feature.mName.equals(str)) {
                    return (feature.mValue & i) != 0;
                }
            }
            return false;
        }

        public boolean isRegular() {
            for (Feature feature : getValidFeatures()) {
                if (!feature.mDefault && isFeatureRequired(feature.mName)) {
                    return false;
                }
            }
            return true;
        }

        public final boolean isFormatSupported(MediaFormat mediaFormat) {
            Map<String, Object> map = mediaFormat.getMap();
            String str = (String) map.get(MediaFormat.KEY_MIME);
            if (str != null && !this.mMime.equalsIgnoreCase(str)) {
                return false;
            }
            for (Feature feature : getValidFeatures()) {
                Integer num = (Integer) map.get(MediaFormat.KEY_FEATURE_ + feature.mName);
                if (num != null && ((num.intValue() == 1 && !isFeatureSupported(feature.mName)) || (num.intValue() == 0 && isFeatureRequired(feature.mName)))) {
                    return false;
                }
            }
            Integer num2 = (Integer) map.get(MediaFormat.KEY_PROFILE);
            Integer num3 = (Integer) map.get(MediaFormat.KEY_LEVEL);
            if (num2 != null) {
                if (!supportsProfileLevel(num2.intValue(), num3)) {
                    return false;
                }
                int i = 0;
                for (CodecProfileLevel codecProfileLevel : this.profileLevels) {
                    if (codecProfileLevel.profile == num2.intValue() && codecProfileLevel.level > i) {
                        i = codecProfileLevel.level;
                    }
                }
                CodecCapabilities createFromProfileLevel = createFromProfileLevel(this.mMime, num2.intValue(), i);
                HashMap hashMap = new HashMap(map);
                hashMap.remove(MediaFormat.KEY_PROFILE);
                MediaFormat mediaFormat2 = new MediaFormat(hashMap);
                if (createFromProfileLevel != null && !createFromProfileLevel.isFormatSupported(mediaFormat2)) {
                    return false;
                }
            }
            if (this.mAudioCaps != null && !this.mAudioCaps.supportsFormat(mediaFormat)) {
                return false;
            }
            if (this.mVideoCaps == null || this.mVideoCaps.supportsFormat(mediaFormat)) {
                return this.mEncoderCaps == null || this.mEncoderCaps.supportsFormat(mediaFormat);
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean supportsBitrate(Range<Integer> range, MediaFormat mediaFormat) {
            Map<String, Object> map = mediaFormat.getMap();
            Integer num = (Integer) map.get(MediaFormat.KEY_MAX_BIT_RATE);
            Integer num2 = (Integer) map.get(MediaFormat.KEY_BIT_RATE);
            if (num2 != null) {
                num = num != null ? Integer.valueOf(Math.max(num2.intValue(), num.intValue())) : num2;
            }
            if (num == null || num.intValue() <= 0) {
                return true;
            }
            return range.contains((Range<Integer>) num);
        }

        private boolean supportsProfileLevel(int i, Integer num) {
            for (CodecProfileLevel codecProfileLevel : this.profileLevels) {
                if (codecProfileLevel.profile == i) {
                    if (num == null || this.mMime.equalsIgnoreCase(MediaFormat.MIMETYPE_AUDIO_AAC)) {
                        return true;
                    }
                    if ((!this.mMime.equalsIgnoreCase(MediaFormat.MIMETYPE_VIDEO_H263) || codecProfileLevel.level == num.intValue() || codecProfileLevel.level != 16 || num.intValue() <= 1) && (!this.mMime.equalsIgnoreCase(MediaFormat.MIMETYPE_VIDEO_MPEG4) || codecProfileLevel.level == num.intValue() || codecProfileLevel.level != 4 || num.intValue() <= 1)) {
                        if (this.mMime.equalsIgnoreCase(MediaFormat.MIMETYPE_VIDEO_HEVC)) {
                            boolean z = (codecProfileLevel.level & 44739242) != 0;
                            if (((44739242 & num.intValue()) != 0) && !z) {
                            }
                        }
                        if (codecProfileLevel.level >= num.intValue()) {
                            return createFromProfileLevel(this.mMime, i, codecProfileLevel.level) == null || createFromProfileLevel(this.mMime, i, num.intValue()) != null;
                        }
                    }
                }
            }
            return false;
        }

        public MediaFormat getDefaultFormat() {
            return this.mDefaultFormat;
        }

        public String getMimeType() {
            return this.mMime;
        }

        public int getMaxSupportedInstances() {
            return this.mMaxSupportedInstances;
        }

        private boolean isAudio() {
            return this.mAudioCaps != null;
        }

        public AudioCapabilities getAudioCapabilities() {
            return this.mAudioCaps;
        }

        private boolean isEncoder() {
            return this.mEncoderCaps != null;
        }

        public EncoderCapabilities getEncoderCapabilities() {
            return this.mEncoderCaps;
        }

        private boolean isVideo() {
            return this.mVideoCaps != null;
        }

        public VideoCapabilities getVideoCapabilities() {
            return this.mVideoCaps;
        }

        public CodecCapabilities dup() {
            CodecCapabilities codecCapabilities = new CodecCapabilities();
            codecCapabilities.profileLevels = (CodecProfileLevel[]) Arrays.copyOf(this.profileLevels, this.profileLevels.length);
            codecCapabilities.colorFormats = Arrays.copyOf(this.colorFormats, this.colorFormats.length);
            codecCapabilities.mMime = this.mMime;
            codecCapabilities.mMaxSupportedInstances = this.mMaxSupportedInstances;
            codecCapabilities.mFlagsRequired = this.mFlagsRequired;
            codecCapabilities.mFlagsSupported = this.mFlagsSupported;
            codecCapabilities.mFlagsVerified = this.mFlagsVerified;
            codecCapabilities.mAudioCaps = this.mAudioCaps;
            codecCapabilities.mVideoCaps = this.mVideoCaps;
            codecCapabilities.mEncoderCaps = this.mEncoderCaps;
            codecCapabilities.mDefaultFormat = this.mDefaultFormat;
            codecCapabilities.mCapabilitiesInfo = this.mCapabilitiesInfo;
            return codecCapabilities;
        }

        public static CodecCapabilities createFromProfileLevel(String str, int i, int i2) {
            CodecProfileLevel codecProfileLevel = new CodecProfileLevel();
            codecProfileLevel.profile = i;
            codecProfileLevel.level = i2;
            MediaFormat mediaFormat = new MediaFormat();
            mediaFormat.setString(MediaFormat.KEY_MIME, str);
            CodecCapabilities codecCapabilities = new CodecCapabilities(new CodecProfileLevel[]{codecProfileLevel}, new int[0], true, 0, mediaFormat, new MediaFormat());
            if (codecCapabilities.mError != 0) {
                return null;
            }
            return codecCapabilities;
        }

        CodecCapabilities(CodecProfileLevel[] codecProfileLevelArr, int[] iArr, boolean z, int i, Map<String, Object> map, Map<String, Object> map2) {
            this(codecProfileLevelArr, iArr, z, i, new MediaFormat(map), new MediaFormat(map2));
        }

        CodecCapabilities(CodecProfileLevel[] codecProfileLevelArr, int[] iArr, boolean z, int i, MediaFormat mediaFormat, MediaFormat mediaFormat2) {
            Map<String, Object> map = mediaFormat2.getMap();
            this.colorFormats = iArr;
            this.mFlagsVerified = i;
            this.mDefaultFormat = mediaFormat;
            this.mCapabilitiesInfo = mediaFormat2;
            this.mMime = this.mDefaultFormat.getString(MediaFormat.KEY_MIME);
            if (codecProfileLevelArr.length == 0 && this.mMime.equalsIgnoreCase(MediaFormat.MIMETYPE_VIDEO_VP9)) {
                CodecProfileLevel codecProfileLevel = new CodecProfileLevel();
                codecProfileLevel.profile = 1;
                codecProfileLevel.level = VideoCapabilities.equivalentVP9Level(mediaFormat2);
                codecProfileLevelArr = new CodecProfileLevel[]{codecProfileLevel};
            }
            this.profileLevels = codecProfileLevelArr;
            if (this.mMime.toLowerCase().startsWith("audio/")) {
                this.mAudioCaps = AudioCapabilities.create(mediaFormat2, this);
                this.mAudioCaps.getDefaultFormat(this.mDefaultFormat);
            } else if (this.mMime.toLowerCase().startsWith("video/") || this.mMime.equalsIgnoreCase(MediaFormat.MIMETYPE_IMAGE_ANDROID_HEIC)) {
                this.mVideoCaps = VideoCapabilities.create(mediaFormat2, this);
            }
            if (z) {
                this.mEncoderCaps = EncoderCapabilities.create(mediaFormat2, this);
                this.mEncoderCaps.getDefaultFormat(this.mDefaultFormat);
            }
            this.mMaxSupportedInstances = Utils.parseIntSafely(MediaCodecList.getGlobalSettings().get("max-concurrent-instances"), 32);
            this.mMaxSupportedInstances = ((Integer) Range.create(1, 256).clamp(Integer.valueOf(Utils.parseIntSafely(map.get("max-concurrent-instances"), this.mMaxSupportedInstances)))).intValue();
            for (Feature feature : getValidFeatures()) {
                String str = MediaFormat.KEY_FEATURE_ + feature.mName;
                Integer num = (Integer) map.get(str);
                if (num != null) {
                    if (num.intValue() > 0) {
                        this.mFlagsRequired |= feature.mValue;
                    }
                    this.mFlagsSupported = feature.mValue | this.mFlagsSupported;
                    this.mDefaultFormat.setInteger(str, 1);
                }
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class AudioCapabilities {
        private static final int MAX_INPUT_CHANNEL_COUNT = 30;
        private static final String TAG = "AudioCapabilities";
        private Range<Integer> mBitrateRange;
        private int mMaxInputChannelCount;
        private CodecCapabilities mParent;
        private Range<Integer>[] mSampleRateRanges;
        private int[] mSampleRates;

        public Range<Integer> getBitrateRange() {
            return this.mBitrateRange;
        }

        public int[] getSupportedSampleRates() {
            return Arrays.copyOf(this.mSampleRates, this.mSampleRates.length);
        }

        public Range<Integer>[] getSupportedSampleRateRanges() {
            return (Range[]) Arrays.copyOf(this.mSampleRateRanges, this.mSampleRateRanges.length);
        }

        public int getMaxInputChannelCount() {
            return this.mMaxInputChannelCount;
        }

        private AudioCapabilities() {
        }

        public static AudioCapabilities create(MediaFormat mediaFormat, CodecCapabilities codecCapabilities) {
            AudioCapabilities audioCapabilities = new AudioCapabilities();
            audioCapabilities.init(mediaFormat, codecCapabilities);
            return audioCapabilities;
        }

        private void init(MediaFormat mediaFormat, CodecCapabilities codecCapabilities) {
            this.mParent = codecCapabilities;
            initWithPlatformLimits();
            applyLevelLimits();
            parseFromInfo(mediaFormat);
        }

        private void initWithPlatformLimits() {
            this.mBitrateRange = Range.create(0, Integer.MAX_VALUE);
            this.mMaxInputChannelCount = 30;
            this.mSampleRateRanges = new Range[]{Range.create(8000, 96000)};
            this.mSampleRates = null;
        }

        private boolean supports(Integer num, Integer num2) {
            if (num2 == null || (num2.intValue() >= 1 && num2.intValue() <= this.mMaxInputChannelCount)) {
                return num == null || Utils.binarySearchDistinctRanges(this.mSampleRateRanges, num) >= 0;
            }
            return false;
        }

        public boolean isSampleRateSupported(int i) {
            return supports(Integer.valueOf(i), null);
        }

        private void limitSampleRates(int[] iArr) {
            Arrays.sort(iArr);
            ArrayList arrayList = new ArrayList();
            for (int i : iArr) {
                if (supports(Integer.valueOf(i), null)) {
                    arrayList.add(Range.create(Integer.valueOf(i), Integer.valueOf(i)));
                }
            }
            this.mSampleRateRanges = (Range[]) arrayList.toArray(new Range[arrayList.size()]);
            createDiscreteSampleRates();
        }

        private void createDiscreteSampleRates() {
            this.mSampleRates = new int[this.mSampleRateRanges.length];
            for (int i = 0; i < this.mSampleRateRanges.length; i++) {
                this.mSampleRates[i] = this.mSampleRateRanges[i].getLower().intValue();
            }
        }

        private void limitSampleRates(Range<Integer>[] rangeArr) {
            Utils.sortDistinctRanges(rangeArr);
            this.mSampleRateRanges = Utils.intersectSortedDistinctRanges(this.mSampleRateRanges, rangeArr);
            for (Range<Integer> range : this.mSampleRateRanges) {
                if (!range.getLower().equals(range.getUpper())) {
                    this.mSampleRates = null;
                    return;
                }
            }
            createDiscreteSampleRates();
        }

        private void applyLevelLimits() {
            int[] iArr;
            Range<Integer> create;
            int[] iArr2;
            String mimeType = this.mParent.getMimeType();
            int i = 2;
            Range<Integer> range = null;
            if (mimeType.equalsIgnoreCase(MediaFormat.MIMETYPE_AUDIO_MPEG)) {
                iArr = new int[]{8000, 11025, 12000, 16000, 22050, 24000, 32000, 44100, 48000};
                create = Range.create(8000, 320000);
            } else {
                if (mimeType.equalsIgnoreCase(MediaFormat.MIMETYPE_AUDIO_AMR_NB)) {
                    iArr = new int[]{8000};
                    create = Range.create(4750, 12200);
                } else if (mimeType.equalsIgnoreCase(MediaFormat.MIMETYPE_AUDIO_AMR_WB)) {
                    iArr = new int[]{16000};
                    create = Range.create(6600, 23850);
                } else if (mimeType.equalsIgnoreCase(MediaFormat.MIMETYPE_AUDIO_AAC)) {
                    iArr = new int[]{7350, 8000, 11025, 12000, 16000, 22050, 24000, 32000, 44100, 48000, 64000, 88200, 96000};
                    create = Range.create(8000, 510000);
                    i = 48;
                } else if (mimeType.equalsIgnoreCase(MediaFormat.MIMETYPE_AUDIO_VORBIS)) {
                    i = 255;
                    create = Range.create(32000, 500000);
                    iArr = null;
                    range = Range.create(8000, Integer.valueOf(AudioFormat.SAMPLE_RATE_HZ_MAX));
                } else {
                    if (mimeType.equalsIgnoreCase(MediaFormat.MIMETYPE_AUDIO_OPUS)) {
                        i = 255;
                        iArr2 = new int[]{8000, 12000, 16000, 24000, 48000};
                        create = Range.create(Integer.valueOf(BluetoothHealth.HEALTH_OPERATION_SUCCESS), 510000);
                    } else if (mimeType.equalsIgnoreCase(MediaFormat.MIMETYPE_AUDIO_RAW)) {
                        Range<Integer> create2 = Range.create(1, 96000);
                        create = Range.create(1, 10000000);
                        i = AudioTrack.CHANNEL_COUNT_MAX;
                        iArr2 = null;
                        range = create2;
                    } else if (mimeType.equalsIgnoreCase(MediaFormat.MIMETYPE_AUDIO_FLAC)) {
                        i = 255;
                        create = null;
                        range = Range.create(1, 655350);
                        iArr = null;
                    } else {
                        if (mimeType.equalsIgnoreCase(MediaFormat.MIMETYPE_AUDIO_G711_ALAW) || mimeType.equalsIgnoreCase(MediaFormat.MIMETYPE_AUDIO_G711_MLAW)) {
                            iArr = new int[]{8000};
                            create = Range.create(64000, 64000);
                        } else if (mimeType.equalsIgnoreCase(MediaFormat.MIMETYPE_AUDIO_MSGSM)) {
                            iArr = new int[]{8000};
                            create = Range.create(13000, 13000);
                        } else {
                            if (mimeType.equalsIgnoreCase(MediaFormat.MIMETYPE_AUDIO_AC3)) {
                                i = 6;
                            } else if (mimeType.equalsIgnoreCase(MediaFormat.MIMETYPE_AUDIO_EAC3)) {
                                i = 16;
                            } else {
                                Log.w(TAG, "Unsupported mime " + mimeType);
                                CodecCapabilities codecCapabilities = this.mParent;
                                codecCapabilities.mError = codecCapabilities.mError | 2;
                                iArr = null;
                                create = null;
                            }
                            iArr = null;
                            create = null;
                        }
                        i = 30;
                    }
                    iArr = iArr2;
                }
                i = 1;
            }
            if (iArr != null) {
                limitSampleRates(iArr);
            } else if (range != null) {
                limitSampleRates(new Range[]{range});
            }
            applyLimits(i, create);
        }

        private void applyLimits(int i, Range<Integer> range) {
            this.mMaxInputChannelCount = ((Integer) Range.create(1, Integer.valueOf(this.mMaxInputChannelCount)).clamp(Integer.valueOf(i))).intValue();
            if (range != null) {
                this.mBitrateRange = this.mBitrateRange.intersect(range);
            }
        }

        private void parseFromInfo(MediaFormat mediaFormat) {
            Range<Integer> range = MediaCodecInfo.POSITIVE_INTEGERS;
            int i = 0;
            if (mediaFormat.containsKey("sample-rate-ranges")) {
                String[] split = mediaFormat.getString("sample-rate-ranges").split(",");
                Range<Integer>[] rangeArr = new Range[split.length];
                for (int i2 = 0; i2 < split.length; i2++) {
                    rangeArr[i2] = Utils.parseIntRange(split[i2], null);
                }
                limitSampleRates(rangeArr);
            }
            if (mediaFormat.containsKey("max-channel-count")) {
                i = Utils.parseIntSafely(mediaFormat.getString("max-channel-count"), 30);
            } else if ((this.mParent.mError & 2) == 0) {
                i = 30;
            }
            if (mediaFormat.containsKey("bitrate-range")) {
                range = range.intersect(Utils.parseIntRange(mediaFormat.getString("bitrate-range"), range));
            }
            applyLimits(i, range);
        }

        public void getDefaultFormat(MediaFormat mediaFormat) {
            if (this.mBitrateRange.getLower().equals(this.mBitrateRange.getUpper())) {
                mediaFormat.setInteger(MediaFormat.KEY_BIT_RATE, this.mBitrateRange.getLower().intValue());
            }
            if (this.mMaxInputChannelCount == 1) {
                mediaFormat.setInteger(MediaFormat.KEY_CHANNEL_COUNT, 1);
            }
            if (this.mSampleRates == null || this.mSampleRates.length != 1) {
                return;
            }
            mediaFormat.setInteger(MediaFormat.KEY_SAMPLE_RATE, this.mSampleRates[0]);
        }

        public boolean supportsFormat(MediaFormat mediaFormat) {
            Map<String, Object> map = mediaFormat.getMap();
            return supports((Integer) map.get(MediaFormat.KEY_SAMPLE_RATE), (Integer) map.get(MediaFormat.KEY_CHANNEL_COUNT)) && CodecCapabilities.supportsBitrate(this.mBitrateRange, mediaFormat);
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class VideoCapabilities {
        private static final String TAG = "VideoCapabilities";
        private boolean mAllowMbOverride;
        private Range<Rational> mAspectRatioRange;
        private Range<Integer> mBitrateRange;
        private Range<Rational> mBlockAspectRatioRange;
        private Range<Integer> mBlockCountRange;
        private int mBlockHeight;
        private int mBlockWidth;
        private Range<Long> mBlocksPerSecondRange;
        private Range<Integer> mFrameRateRange;
        private int mHeightAlignment;
        private Range<Integer> mHeightRange;
        private Range<Integer> mHorizontalBlockRange;
        private Map<Size, Range<Long>> mMeasuredFrameRates;
        private CodecCapabilities mParent;
        private int mSmallerDimensionUpperLimit;
        private Range<Integer> mVerticalBlockRange;
        private int mWidthAlignment;
        private Range<Integer> mWidthRange;

        public Range<Integer> getBitrateRange() {
            return this.mBitrateRange;
        }

        public Range<Integer> getSupportedWidths() {
            return this.mWidthRange;
        }

        public Range<Integer> getSupportedHeights() {
            return this.mHeightRange;
        }

        public int getWidthAlignment() {
            return this.mWidthAlignment;
        }

        public int getHeightAlignment() {
            return this.mHeightAlignment;
        }

        public int getSmallerDimensionUpperLimit() {
            return this.mSmallerDimensionUpperLimit;
        }

        public Range<Integer> getSupportedFrameRates() {
            return this.mFrameRateRange;
        }

        public Range<Integer> getSupportedWidthsFor(int i) {
            try {
                Range<Integer> range = this.mWidthRange;
                if (!this.mHeightRange.contains((Range<Integer>) Integer.valueOf(i)) || i % this.mHeightAlignment != 0) {
                    throw new IllegalArgumentException("unsupported height");
                }
                int divUp = Utils.divUp(i, this.mBlockHeight);
                double d = divUp;
                Range<Integer> intersect = range.intersect(Integer.valueOf(((Math.max(Utils.divUp(this.mBlockCountRange.getLower().intValue(), divUp), (int) Math.ceil(this.mBlockAspectRatioRange.getLower().doubleValue() * d)) - 1) * this.mBlockWidth) + this.mWidthAlignment), Integer.valueOf(Math.min(this.mBlockCountRange.getUpper().intValue() / divUp, (int) (this.mBlockAspectRatioRange.getUpper().doubleValue() * d)) * this.mBlockWidth));
                if (i > this.mSmallerDimensionUpperLimit) {
                    intersect = intersect.intersect(1, Integer.valueOf(this.mSmallerDimensionUpperLimit));
                }
                double d2 = i;
                return intersect.intersect(Integer.valueOf((int) Math.ceil(this.mAspectRatioRange.getLower().doubleValue() * d2)), Integer.valueOf((int) (this.mAspectRatioRange.getUpper().doubleValue() * d2)));
            } catch (IllegalArgumentException unused) {
                Log.v(TAG, "could not get supported widths for " + i);
                throw new IllegalArgumentException("unsupported height");
            }
        }

        public Range<Integer> getSupportedHeightsFor(int i) {
            try {
                Range<Integer> range = this.mHeightRange;
                if (!this.mWidthRange.contains((Range<Integer>) Integer.valueOf(i)) || i % this.mWidthAlignment != 0) {
                    throw new IllegalArgumentException("unsupported width");
                }
                int divUp = Utils.divUp(i, this.mBlockWidth);
                double d = divUp;
                Range<Integer> intersect = range.intersect(Integer.valueOf(((Math.max(Utils.divUp(this.mBlockCountRange.getLower().intValue(), divUp), (int) Math.ceil(d / this.mBlockAspectRatioRange.getUpper().doubleValue())) - 1) * this.mBlockHeight) + this.mHeightAlignment), Integer.valueOf(Math.min(this.mBlockCountRange.getUpper().intValue() / divUp, (int) (d / this.mBlockAspectRatioRange.getLower().doubleValue())) * this.mBlockHeight));
                if (i > this.mSmallerDimensionUpperLimit) {
                    intersect = intersect.intersect(1, Integer.valueOf(this.mSmallerDimensionUpperLimit));
                }
                double d2 = i;
                return intersect.intersect(Integer.valueOf((int) Math.ceil(d2 / this.mAspectRatioRange.getUpper().doubleValue())), Integer.valueOf((int) (d2 / this.mAspectRatioRange.getLower().doubleValue())));
            } catch (IllegalArgumentException unused) {
                Log.v(TAG, "could not get supported heights for " + i);
                throw new IllegalArgumentException("unsupported width");
            }
        }

        public Range<Double> getSupportedFrameRatesFor(int i, int i2) {
            Range<Integer> range = this.mHeightRange;
            if (!supports(Integer.valueOf(i), Integer.valueOf(i2), null)) {
                throw new IllegalArgumentException("unsupported size");
            }
            double divUp = Utils.divUp(i, this.mBlockWidth) * Utils.divUp(i2, this.mBlockHeight);
            return Range.create(Double.valueOf(Math.max(this.mBlocksPerSecondRange.getLower().longValue() / divUp, this.mFrameRateRange.getLower().intValue())), Double.valueOf(Math.min(this.mBlocksPerSecondRange.getUpper().longValue() / divUp, this.mFrameRateRange.getUpper().intValue())));
        }

        private int getBlockCount(int i, int i2) {
            return Utils.divUp(i, this.mBlockWidth) * Utils.divUp(i2, this.mBlockHeight);
        }

        private Size findClosestSize(int i, int i2) {
            int blockCount = getBlockCount(i, i2);
            Size size = null;
            int i3 = Integer.MAX_VALUE;
            for (Size size2 : this.mMeasuredFrameRates.keySet()) {
                int abs = Math.abs(blockCount - getBlockCount(size2.getWidth(), size2.getHeight()));
                if (abs < i3) {
                    size = size2;
                    i3 = abs;
                }
            }
            return size;
        }

        private Range<Double> estimateFrameRatesFor(int i, int i2) {
            Range<Long> range = this.mMeasuredFrameRates.get(findClosestSize(i, i2));
            Double valueOf = Double.valueOf(getBlockCount(r0.getWidth(), r0.getHeight()) / Math.max(getBlockCount(i, i2), 1));
            return Range.create(Double.valueOf(range.getLower().longValue() * valueOf.doubleValue()), Double.valueOf(range.getUpper().longValue() * valueOf.doubleValue()));
        }

        public Range<Double> getAchievableFrameRatesFor(int i, int i2) {
            if (!supports(Integer.valueOf(i), Integer.valueOf(i2), null)) {
                throw new IllegalArgumentException("unsupported size");
            }
            if (this.mMeasuredFrameRates == null || this.mMeasuredFrameRates.size() <= 0) {
                Log.w(TAG, "Codec did not publish any measurement data.");
                return null;
            }
            return estimateFrameRatesFor(i, i2);
        }

        public boolean areSizeAndRateSupported(int i, int i2, double d) {
            return supports(Integer.valueOf(i), Integer.valueOf(i2), Double.valueOf(d));
        }

        public boolean isSizeSupported(int i, int i2) {
            return supports(Integer.valueOf(i), Integer.valueOf(i2), null);
        }

        private boolean supports(Integer num, Integer num2, Number number) {
            boolean z = num == null || (this.mWidthRange.contains((Range<Integer>) num) && num.intValue() % this.mWidthAlignment == 0);
            if (z && num2 != null) {
                z = this.mHeightRange.contains((Range<Integer>) num2) && num2.intValue() % this.mHeightAlignment == 0;
            }
            if (z && number != null) {
                z = this.mFrameRateRange.contains(Utils.intRangeFor(number.doubleValue()));
            }
            if (!z || num2 == null || num == null) {
                return z;
            }
            boolean z2 = Math.min(num2.intValue(), num.intValue()) <= this.mSmallerDimensionUpperLimit;
            int divUp = Utils.divUp(num.intValue(), this.mBlockWidth);
            int divUp2 = Utils.divUp(num2.intValue(), this.mBlockHeight);
            int i = divUp * divUp2;
            boolean z3 = z2 && this.mBlockCountRange.contains((Range<Integer>) Integer.valueOf(i)) && this.mBlockAspectRatioRange.contains((Range<Rational>) new Rational(divUp, divUp2)) && this.mAspectRatioRange.contains((Range<Rational>) new Rational(num.intValue(), num2.intValue()));
            if (!z3 || number == null) {
                return z3;
            }
            return this.mBlocksPerSecondRange.contains(Utils.longRangeFor(i * number.doubleValue()));
        }

        public boolean supportsFormat(MediaFormat mediaFormat) {
            Map<String, Object> map = mediaFormat.getMap();
            return supports((Integer) map.get(MediaFormat.KEY_WIDTH), (Integer) map.get(MediaFormat.KEY_HEIGHT), (Number) map.get(MediaFormat.KEY_FRAME_RATE)) && CodecCapabilities.supportsBitrate(this.mBitrateRange, mediaFormat);
        }

        private VideoCapabilities() {
        }

        public static VideoCapabilities create(MediaFormat mediaFormat, CodecCapabilities codecCapabilities) {
            VideoCapabilities videoCapabilities = new VideoCapabilities();
            videoCapabilities.init(mediaFormat, codecCapabilities);
            return videoCapabilities;
        }

        private void init(MediaFormat mediaFormat, CodecCapabilities codecCapabilities) {
            this.mParent = codecCapabilities;
            initWithPlatformLimits();
            applyLevelLimits();
            parseFromInfo(mediaFormat);
            updateLimits();
        }

        public Size getBlockSize() {
            return new Size(this.mBlockWidth, this.mBlockHeight);
        }

        public Range<Integer> getBlockCountRange() {
            return this.mBlockCountRange;
        }

        public Range<Long> getBlocksPerSecondRange() {
            return this.mBlocksPerSecondRange;
        }

        public Range<Rational> getAspectRatioRange(boolean z) {
            return z ? this.mBlockAspectRatioRange : this.mAspectRatioRange;
        }

        private void initWithPlatformLimits() {
            this.mBitrateRange = MediaCodecInfo.BITRATE_RANGE;
            this.mWidthRange = MediaCodecInfo.SIZE_RANGE;
            this.mHeightRange = MediaCodecInfo.SIZE_RANGE;
            this.mFrameRateRange = MediaCodecInfo.FRAME_RATE_RANGE;
            this.mHorizontalBlockRange = MediaCodecInfo.SIZE_RANGE;
            this.mVerticalBlockRange = MediaCodecInfo.SIZE_RANGE;
            this.mBlockCountRange = MediaCodecInfo.POSITIVE_INTEGERS;
            this.mBlocksPerSecondRange = MediaCodecInfo.POSITIVE_LONGS;
            this.mBlockAspectRatioRange = MediaCodecInfo.POSITIVE_RATIONALS;
            this.mAspectRatioRange = MediaCodecInfo.POSITIVE_RATIONALS;
            this.mWidthAlignment = 2;
            this.mHeightAlignment = 2;
            this.mBlockWidth = 2;
            this.mBlockHeight = 2;
            this.mSmallerDimensionUpperLimit = ((Integer) MediaCodecInfo.SIZE_RANGE.getUpper()).intValue();
        }

        private Map<Size, Range<Long>> getMeasuredFrameRates(Map<String, Object> map) {
            Size parseSize;
            Range<Long> parseLongRange;
            HashMap hashMap = new HashMap();
            for (String str : map.keySet()) {
                if (str.startsWith("measured-frame-rate-")) {
                    str.substring("measured-frame-rate-".length());
                    String[] split = str.split("-");
                    if (split.length == 5 && (parseSize = Utils.parseSize(split[3], null)) != null && parseSize.getWidth() * parseSize.getHeight() > 0 && (parseLongRange = Utils.parseLongRange(map.get(str), null)) != null && parseLongRange.getLower().longValue() >= 0 && parseLongRange.getUpper().longValue() >= 0) {
                        hashMap.put(parseSize, parseLongRange);
                    }
                }
            }
            return hashMap;
        }

        private static Pair<Range<Integer>, Range<Integer>> parseWidthHeightRanges(Object obj) {
            Pair<Size, Size> parseSizeRange = Utils.parseSizeRange(obj);
            if (parseSizeRange == null) {
                return null;
            }
            try {
                return Pair.create(Range.create(Integer.valueOf(((Size) parseSizeRange.first).getWidth()), Integer.valueOf(((Size) parseSizeRange.second).getWidth())), Range.create(Integer.valueOf(((Size) parseSizeRange.first).getHeight()), Integer.valueOf(((Size) parseSizeRange.second).getHeight())));
            } catch (IllegalArgumentException unused) {
                Log.w(TAG, "could not parse size range '" + obj + "'");
                return null;
            }
        }

        public static int equivalentVP9Level(MediaFormat mediaFormat) {
            Map<String, Object> map = mediaFormat.getMap();
            Size parseSize = Utils.parseSize(map.get("block-size"), new Size(8, 8));
            int width = parseSize.getWidth() * parseSize.getHeight();
            Range<Integer> parseIntRange = Utils.parseIntRange(map.get("block-count-range"), null);
            int intValue = parseIntRange == null ? 0 : parseIntRange.getUpper().intValue() * width;
            Range<Long> parseLongRange = Utils.parseLongRange(map.get("blocks-per-second-range"), null);
            long longValue = parseLongRange == null ? 0L : width * parseLongRange.getUpper().longValue();
            Pair<Range<Integer>, Range<Integer>> parseWidthHeightRanges = parseWidthHeightRanges(map.get("size-range"));
            int max = parseWidthHeightRanges == null ? 0 : Math.max(((Integer) ((Range) parseWidthHeightRanges.first).getUpper()).intValue(), ((Integer) ((Range) parseWidthHeightRanges.second).getUpper()).intValue());
            Range<Integer> parseIntRange2 = Utils.parseIntRange(map.get("bitrate-range"), null);
            int divUp = parseIntRange2 != null ? Utils.divUp(parseIntRange2.getUpper().intValue(), 1000) : 0;
            if (longValue <= 829440 && intValue <= 36864 && divUp <= 200 && max <= 512) {
                return 1;
            }
            if (longValue <= 2764800 && intValue <= 73728 && divUp <= 800 && max <= 768) {
                return 2;
            }
            if (longValue <= 4608000 && intValue <= 122880 && divUp <= 1800 && max <= 960) {
                return 4;
            }
            if (longValue <= 9216000 && intValue <= 245760 && divUp <= 3600 && max <= 1344) {
                return 8;
            }
            if (longValue <= 20736000 && intValue <= 552960 && divUp <= 7200 && max <= 2048) {
                return 16;
            }
            if (longValue <= 36864000 && intValue <= 983040 && divUp <= 12000 && max <= 2752) {
                return 32;
            }
            if (longValue <= 83558400 && intValue <= 2228224 && divUp <= 18000 && max <= 4160) {
                return 64;
            }
            if (longValue <= 160432128 && intValue <= 2228224 && divUp <= 30000 && max <= 4160) {
                return 128;
            }
            if (longValue <= 311951360 && intValue <= 8912896 && divUp <= 60000 && max <= 8384) {
                return 256;
            }
            if (longValue <= 588251136 && intValue <= 8912896 && divUp <= 120000 && max <= 8384) {
                return 512;
            }
            if (longValue <= 1176502272 && intValue <= 8912896 && divUp <= 180000 && max <= 8384) {
                return 1024;
            }
            if (longValue <= 1176502272 && intValue <= 35651584 && divUp <= 180000 && max <= 16832) {
                return 2048;
            }
            if (longValue > 2353004544L || intValue > 35651584 || divUp > 240000 || max > 16832) {
                return (longValue > 4706009088L || intValue > 35651584 || divUp > 480000 || max <= 16832) ? 8192 : 8192;
            }
            return 4096;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x010c  */
        /* JADX WARN: Removed duplicated region for block: B:13:0x0147  */
        /* JADX WARN: Removed duplicated region for block: B:43:0x024f  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x025b  */
        /* JADX WARN: Removed duplicated region for block: B:47:0x0267  */
        /* JADX WARN: Removed duplicated region for block: B:49:0x0286  */
        /* JADX WARN: Removed duplicated region for block: B:51:0x02a6  */
        /* JADX WARN: Removed duplicated region for block: B:53:0x02c4  */
        /* JADX WARN: Removed duplicated region for block: B:55:0x02d0  */
        /* JADX WARN: Removed duplicated region for block: B:57:0x02dc  */
        /* JADX WARN: Removed duplicated region for block: B:61:0x0119 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:66:0x00de A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private void parseFromInfo(MediaFormat mediaFormat) {
            Range<Integer> range;
            Range<Integer> range2;
            Range<Integer> range3;
            Range<Integer> range4;
            Range<Rational> parseRationalRange;
            Range<Rational> parseRationalRange2;
            Range<Integer> parseIntRange;
            Range<Integer> range5;
            Range<Integer> parseIntRange2;
            Range<Integer> range6;
            Range<Integer> range7;
            Range<Integer> range8;
            Map<String, Object> map = mediaFormat.getMap();
            Size size = new Size(this.mBlockWidth, this.mBlockHeight);
            Size size2 = new Size(this.mWidthAlignment, this.mHeightAlignment);
            Size parseSize = Utils.parseSize(map.get("block-size"), size);
            Size parseSize2 = Utils.parseSize(map.get("alignment"), size2);
            Range<Integer> parseIntRange3 = Utils.parseIntRange(map.get("block-count-range"), null);
            Range<Long> parseLongRange = Utils.parseLongRange(map.get("blocks-per-second-range"), null);
            this.mMeasuredFrameRates = getMeasuredFrameRates(map);
            Pair<Range<Integer>, Range<Integer>> parseWidthHeightRanges = parseWidthHeightRanges(map.get("size-range"));
            if (parseWidthHeightRanges != null) {
                range2 = (Range) parseWidthHeightRanges.first;
                range = (Range) parseWidthHeightRanges.second;
            } else {
                range = null;
                range2 = null;
            }
            if (map.containsKey("feature-can-swap-width-height")) {
                if (range2 != null) {
                    this.mSmallerDimensionUpperLimit = Math.min(range2.getUpper().intValue(), range.getUpper().intValue());
                    range4 = range2.extend(range);
                    range3 = range4;
                    parseRationalRange = Utils.parseRationalRange(map.get("block-aspect-ratio-range"), null);
                    parseRationalRange2 = Utils.parseRationalRange(map.get("pixel-aspect-ratio-range"), null);
                    parseIntRange = Utils.parseIntRange(map.get("frame-rate-range"), null);
                    if (parseIntRange == null) {
                        try {
                            range5 = parseIntRange.intersect(MediaCodecInfo.FRAME_RATE_RANGE);
                        } catch (IllegalArgumentException unused) {
                            Log.w(TAG, "frame rate range (" + parseIntRange + ") is out of limits: " + MediaCodecInfo.FRAME_RATE_RANGE);
                            range5 = null;
                        }
                    } else {
                        range5 = parseIntRange;
                    }
                    parseIntRange2 = Utils.parseIntRange(map.get("bitrate-range"), null);
                    if (parseIntRange2 == null) {
                        try {
                            range6 = parseIntRange2.intersect(MediaCodecInfo.BITRATE_RANGE);
                        } catch (IllegalArgumentException unused2) {
                            Log.w(TAG, "bitrate range (" + parseIntRange2 + ") is out of limits: " + MediaCodecInfo.BITRATE_RANGE);
                            range6 = null;
                        }
                    } else {
                        range6 = parseIntRange2;
                    }
                    MediaCodecInfo.checkPowerOfTwo(parseSize.getWidth(), "block-size width must be power of two");
                    MediaCodecInfo.checkPowerOfTwo(parseSize.getHeight(), "block-size height must be power of two");
                    MediaCodecInfo.checkPowerOfTwo(parseSize2.getWidth(), "alignment width must be power of two");
                    MediaCodecInfo.checkPowerOfTwo(parseSize2.getHeight(), "alignment height must be power of two");
                    range7 = range6;
                    range8 = range5;
                    applyMacroBlockLimits(Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE, Long.MAX_VALUE, parseSize.getWidth(), parseSize.getHeight(), parseSize2.getWidth(), parseSize2.getHeight());
                    if ((this.mParent.mError & 2) == 0 || this.mAllowMbOverride) {
                        if (range4 != null) {
                            this.mWidthRange = MediaCodecInfo.SIZE_RANGE.intersect(range4);
                        }
                        if (range3 != null) {
                            this.mHeightRange = MediaCodecInfo.SIZE_RANGE.intersect(range3);
                        }
                        if (parseIntRange3 != null) {
                            this.mBlockCountRange = MediaCodecInfo.POSITIVE_INTEGERS.intersect(Utils.factorRange(parseIntRange3, ((this.mBlockWidth * this.mBlockHeight) / parseSize.getWidth()) / parseSize.getHeight()));
                        }
                        if (parseLongRange != null) {
                            this.mBlocksPerSecondRange = MediaCodecInfo.POSITIVE_LONGS.intersect(Utils.factorRange(parseLongRange, ((this.mBlockWidth * this.mBlockHeight) / parseSize.getWidth()) / parseSize.getHeight()));
                        }
                        if (parseRationalRange2 != null) {
                            this.mBlockAspectRatioRange = MediaCodecInfo.POSITIVE_RATIONALS.intersect(Utils.scaleRange(parseRationalRange2, this.mBlockHeight / parseSize.getHeight(), this.mBlockWidth / parseSize.getWidth()));
                        }
                        if (parseRationalRange != null) {
                            this.mAspectRatioRange = MediaCodecInfo.POSITIVE_RATIONALS.intersect(parseRationalRange);
                        }
                        if (range8 != null) {
                            this.mFrameRateRange = MediaCodecInfo.FRAME_RATE_RANGE.intersect(range8);
                        }
                        if (range7 != null) {
                            if ((this.mParent.mError & 2) != 0) {
                                this.mBitrateRange = MediaCodecInfo.BITRATE_RANGE.intersect(range7);
                            } else {
                                this.mBitrateRange = this.mBitrateRange.intersect(range7);
                            }
                        }
                    } else {
                        if (range4 != null) {
                            this.mWidthRange = this.mWidthRange.intersect(range4);
                        }
                        if (range3 != null) {
                            this.mHeightRange = this.mHeightRange.intersect(range3);
                        }
                        if (parseIntRange3 != null) {
                            this.mBlockCountRange = this.mBlockCountRange.intersect(Utils.factorRange(parseIntRange3, ((this.mBlockWidth * this.mBlockHeight) / parseSize.getWidth()) / parseSize.getHeight()));
                        }
                        if (parseLongRange != null) {
                            this.mBlocksPerSecondRange = this.mBlocksPerSecondRange.intersect(Utils.factorRange(parseLongRange, ((this.mBlockWidth * this.mBlockHeight) / parseSize.getWidth()) / parseSize.getHeight()));
                        }
                        if (parseRationalRange2 != null) {
                            this.mBlockAspectRatioRange = this.mBlockAspectRatioRange.intersect(Utils.scaleRange(parseRationalRange2, this.mBlockHeight / parseSize.getHeight(), this.mBlockWidth / parseSize.getWidth()));
                        }
                        if (parseRationalRange != null) {
                            this.mAspectRatioRange = this.mAspectRatioRange.intersect(parseRationalRange);
                        }
                        if (range8 != null) {
                            this.mFrameRateRange = this.mFrameRateRange.intersect(range8);
                        }
                        if (range7 != null) {
                            this.mBitrateRange = this.mBitrateRange.intersect(range7);
                        }
                    }
                    updateLimits();
                }
                Log.w(TAG, "feature can-swap-width-height is best used with size-range");
                this.mSmallerDimensionUpperLimit = Math.min(this.mWidthRange.getUpper().intValue(), this.mHeightRange.getUpper().intValue());
                Range<Integer> extend = this.mWidthRange.extend(this.mHeightRange);
                this.mHeightRange = extend;
                this.mWidthRange = extend;
            }
            range3 = range;
            range4 = range2;
            parseRationalRange = Utils.parseRationalRange(map.get("block-aspect-ratio-range"), null);
            parseRationalRange2 = Utils.parseRationalRange(map.get("pixel-aspect-ratio-range"), null);
            parseIntRange = Utils.parseIntRange(map.get("frame-rate-range"), null);
            if (parseIntRange == null) {
            }
            parseIntRange2 = Utils.parseIntRange(map.get("bitrate-range"), null);
            if (parseIntRange2 == null) {
            }
            MediaCodecInfo.checkPowerOfTwo(parseSize.getWidth(), "block-size width must be power of two");
            MediaCodecInfo.checkPowerOfTwo(parseSize.getHeight(), "block-size height must be power of two");
            MediaCodecInfo.checkPowerOfTwo(parseSize2.getWidth(), "alignment width must be power of two");
            MediaCodecInfo.checkPowerOfTwo(parseSize2.getHeight(), "alignment height must be power of two");
            range7 = range6;
            range8 = range5;
            applyMacroBlockLimits(Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE, Long.MAX_VALUE, parseSize.getWidth(), parseSize.getHeight(), parseSize2.getWidth(), parseSize2.getHeight());
            if ((this.mParent.mError & 2) == 0) {
            }
            if (range4 != null) {
            }
            if (range3 != null) {
            }
            if (parseIntRange3 != null) {
            }
            if (parseLongRange != null) {
            }
            if (parseRationalRange2 != null) {
            }
            if (parseRationalRange != null) {
            }
            if (range8 != null) {
            }
            if (range7 != null) {
            }
            updateLimits();
        }

        private void applyBlockLimits(int i, int i2, Range<Integer> range, Range<Long> range2, Range<Rational> range3) {
            MediaCodecInfo.checkPowerOfTwo(i, "blockWidth must be a power of two");
            MediaCodecInfo.checkPowerOfTwo(i2, "blockHeight must be a power of two");
            int max = Math.max(i, this.mBlockWidth);
            int max2 = Math.max(i2, this.mBlockHeight);
            int i3 = max * max2;
            int i4 = (i3 / this.mBlockWidth) / this.mBlockHeight;
            if (i4 != 1) {
                this.mBlockCountRange = Utils.factorRange(this.mBlockCountRange, i4);
                this.mBlocksPerSecondRange = Utils.factorRange(this.mBlocksPerSecondRange, i4);
                this.mBlockAspectRatioRange = Utils.scaleRange(this.mBlockAspectRatioRange, max2 / this.mBlockHeight, max / this.mBlockWidth);
                this.mHorizontalBlockRange = Utils.factorRange(this.mHorizontalBlockRange, max / this.mBlockWidth);
                this.mVerticalBlockRange = Utils.factorRange(this.mVerticalBlockRange, max2 / this.mBlockHeight);
            }
            int i5 = (i3 / i) / i2;
            if (i5 != 1) {
                range = Utils.factorRange(range, i5);
                range2 = Utils.factorRange(range2, i5);
                range3 = Utils.scaleRange(range3, max2 / i2, max / i);
            }
            this.mBlockCountRange = this.mBlockCountRange.intersect(range);
            this.mBlocksPerSecondRange = this.mBlocksPerSecondRange.intersect(range2);
            this.mBlockAspectRatioRange = this.mBlockAspectRatioRange.intersect(range3);
            this.mBlockWidth = max;
            this.mBlockHeight = max2;
        }

        private void applyAlignment(int i, int i2) {
            MediaCodecInfo.checkPowerOfTwo(i, "widthAlignment must be a power of two");
            MediaCodecInfo.checkPowerOfTwo(i2, "heightAlignment must be a power of two");
            if (i > this.mBlockWidth || i2 > this.mBlockHeight) {
                applyBlockLimits(Math.max(i, this.mBlockWidth), Math.max(i2, this.mBlockHeight), MediaCodecInfo.POSITIVE_INTEGERS, MediaCodecInfo.POSITIVE_LONGS, MediaCodecInfo.POSITIVE_RATIONALS);
            }
            this.mWidthAlignment = Math.max(i, this.mWidthAlignment);
            this.mHeightAlignment = Math.max(i2, this.mHeightAlignment);
            this.mWidthRange = Utils.alignRange(this.mWidthRange, this.mWidthAlignment);
            this.mHeightRange = Utils.alignRange(this.mHeightRange, this.mHeightAlignment);
        }

        private void updateLimits() {
            this.mHorizontalBlockRange = this.mHorizontalBlockRange.intersect(Utils.factorRange(this.mWidthRange, this.mBlockWidth));
            this.mHorizontalBlockRange = this.mHorizontalBlockRange.intersect(Range.create(Integer.valueOf(this.mBlockCountRange.getLower().intValue() / this.mVerticalBlockRange.getUpper().intValue()), Integer.valueOf(this.mBlockCountRange.getUpper().intValue() / this.mVerticalBlockRange.getLower().intValue())));
            this.mVerticalBlockRange = this.mVerticalBlockRange.intersect(Utils.factorRange(this.mHeightRange, this.mBlockHeight));
            this.mVerticalBlockRange = this.mVerticalBlockRange.intersect(Range.create(Integer.valueOf(this.mBlockCountRange.getLower().intValue() / this.mHorizontalBlockRange.getUpper().intValue()), Integer.valueOf(this.mBlockCountRange.getUpper().intValue() / this.mHorizontalBlockRange.getLower().intValue())));
            this.mBlockCountRange = this.mBlockCountRange.intersect(Range.create(Integer.valueOf(this.mHorizontalBlockRange.getLower().intValue() * this.mVerticalBlockRange.getLower().intValue()), Integer.valueOf(this.mHorizontalBlockRange.getUpper().intValue() * this.mVerticalBlockRange.getUpper().intValue())));
            this.mBlockAspectRatioRange = this.mBlockAspectRatioRange.intersect(new Rational(this.mHorizontalBlockRange.getLower().intValue(), this.mVerticalBlockRange.getUpper().intValue()), new Rational(this.mHorizontalBlockRange.getUpper().intValue(), this.mVerticalBlockRange.getLower().intValue()));
            this.mWidthRange = this.mWidthRange.intersect(Integer.valueOf(((this.mHorizontalBlockRange.getLower().intValue() - 1) * this.mBlockWidth) + this.mWidthAlignment), Integer.valueOf(this.mHorizontalBlockRange.getUpper().intValue() * this.mBlockWidth));
            this.mHeightRange = this.mHeightRange.intersect(Integer.valueOf(((this.mVerticalBlockRange.getLower().intValue() - 1) * this.mBlockHeight) + this.mHeightAlignment), Integer.valueOf(this.mVerticalBlockRange.getUpper().intValue() * this.mBlockHeight));
            this.mAspectRatioRange = this.mAspectRatioRange.intersect(new Rational(this.mWidthRange.getLower().intValue(), this.mHeightRange.getUpper().intValue()), new Rational(this.mWidthRange.getUpper().intValue(), this.mHeightRange.getLower().intValue()));
            this.mSmallerDimensionUpperLimit = Math.min(this.mSmallerDimensionUpperLimit, Math.min(this.mWidthRange.getUpper().intValue(), this.mHeightRange.getUpper().intValue()));
            this.mBlocksPerSecondRange = this.mBlocksPerSecondRange.intersect(Long.valueOf(this.mBlockCountRange.getLower().intValue() * this.mFrameRateRange.getLower().intValue()), Long.valueOf(this.mBlockCountRange.getUpper().intValue() * this.mFrameRateRange.getUpper().intValue()));
            this.mFrameRateRange = this.mFrameRateRange.intersect(Integer.valueOf((int) (this.mBlocksPerSecondRange.getLower().longValue() / this.mBlockCountRange.getUpper().intValue())), Integer.valueOf((int) (this.mBlocksPerSecondRange.getUpper().longValue() / this.mBlockCountRange.getLower().intValue())));
        }

        private void applyMacroBlockLimits(int i, int i2, int i3, long j, int i4, int i5, int i6, int i7) {
            applyMacroBlockLimits(1, 1, i, i2, i3, j, i4, i5, i6, i7);
        }

        private void applyMacroBlockLimits(int i, int i2, int i3, int i4, int i5, long j, int i6, int i7, int i8, int i9) {
            applyAlignment(i8, i9);
            applyBlockLimits(i6, i7, Range.create(1, Integer.valueOf(i5)), Range.create(1L, Long.valueOf(j)), Range.create(new Rational(1, i4), new Rational(i3, 1)));
            this.mHorizontalBlockRange = this.mHorizontalBlockRange.intersect(Integer.valueOf(Utils.divUp(i, this.mBlockWidth / i6)), Integer.valueOf(i3 / (this.mBlockWidth / i6)));
            this.mVerticalBlockRange = this.mVerticalBlockRange.intersect(Integer.valueOf(Utils.divUp(i2, this.mBlockHeight / i7)), Integer.valueOf(i4 / (this.mBlockHeight / i7)));
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:149:0x04a6. Please report as an issue. */
        /* JADX WARN: Failed to find 'out' block for switch in B:22:0x0128. Please report as an issue. */
        /* JADX WARN: Failed to find 'out' block for switch in B:235:0x0854. Please report as an issue. */
        /* JADX WARN: Failed to find 'out' block for switch in B:250:0x08d8. Please report as an issue. */
        /* JADX WARN: Failed to find 'out' block for switch in B:290:0x0a47. Please report as an issue. */
        /* JADX WARN: Failed to find 'out' block for switch in B:66:0x01df. Please report as an issue. */
        /* JADX WARN: Failed to find 'out' block for switch in B:6:0x002a. Please report as an issue. */
        /* JADX WARN: Failed to find 'out' block for switch in B:78:0x023c. Please report as an issue. */
        /* JADX WARN: Failed to find 'out' block for switch in B:98:0x0399. Please report as an issue. */
        /* JADX WARN: Removed duplicated region for block: B:196:0x0773  */
        /* JADX WARN: Removed duplicated region for block: B:198:0x079c  */
        /* JADX WARN: Removed duplicated region for block: B:201:0x07a1  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0180  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x0183 A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private void applyLevelLimits() {
            int i;
            int i2;
            int i3;
            int i4;
            int i5;
            int i6;
            CodecProfileLevel[] codecProfileLevelArr;
            long j;
            int i7;
            int i8;
            int i9;
            int i10;
            int i11;
            int i12;
            int i13;
            int i14;
            int i15;
            int i16;
            int i17;
            int i18;
            int i19;
            int i20;
            int i21;
            int i22;
            int i23;
            int i24;
            int i25;
            int i26;
            boolean z;
            int i27;
            int i28;
            int i29;
            int i30;
            int i31;
            int i32;
            int i33;
            int i34;
            int i35;
            int i36;
            String str;
            int i37;
            CodecProfileLevel[] codecProfileLevelArr2;
            int i38;
            boolean z2;
            int i39;
            int i40;
            int i41;
            boolean z3;
            int i42;
            int i43;
            int i44;
            int i45;
            int i46;
            int max;
            int max2;
            int i47;
            int i48;
            int i49;
            int i50;
            int i51;
            CodecProfileLevel[] codecProfileLevelArr3;
            int i52;
            int i53;
            int i54;
            boolean z4;
            int i55;
            int i56;
            int i57;
            int i58;
            int i59;
            int i60;
            int i61;
            int i62;
            int i63;
            String str2;
            int i64;
            int i65;
            int i66;
            int i67;
            int i68;
            int i69;
            int i70;
            int i71;
            int i72;
            int i73;
            int i74;
            boolean z5;
            int i75;
            CodecProfileLevel[] codecProfileLevelArr4 = this.mParent.profileLevels;
            String mimeType = this.mParent.getMimeType();
            int i76 = 4;
            if (mimeType.equalsIgnoreCase(MediaFormat.MIMETYPE_VIDEO_AVC)) {
                int length = codecProfileLevelArr4.length;
                i = 64000;
                long j2 = 1485;
                int i77 = 0;
                int i78 = 396;
                int i79 = 99;
                i2 = 4;
                while (i77 < length) {
                    CodecProfileLevel codecProfileLevel = codecProfileLevelArr4[i77];
                    switch (codecProfileLevel.level) {
                        case 1:
                            i65 = 1485;
                            i66 = length;
                            i67 = 64;
                            i68 = 99;
                            i69 = 396;
                            break;
                        case 2:
                            i65 = 1485;
                            i66 = length;
                            i67 = 128;
                            i68 = 99;
                            i69 = 396;
                            break;
                        case 4:
                            i65 = 3000;
                            i70 = 192;
                            i71 = 900;
                            i66 = length;
                            i67 = i70;
                            i69 = i71;
                            i68 = 396;
                            break;
                        case 8:
                            i65 = BluetoothHealth.HEALTH_OPERATION_SUCCESS;
                            i70 = 384;
                            i71 = 2376;
                            i66 = length;
                            i67 = i70;
                            i69 = i71;
                            i68 = 396;
                            break;
                        case 16:
                            i65 = 11880;
                            i70 = 768;
                            i71 = 2376;
                            i66 = length;
                            i67 = i70;
                            i69 = i71;
                            i68 = 396;
                            break;
                        case 32:
                            i65 = 11880;
                            i70 = 2000;
                            i71 = 2376;
                            i66 = length;
                            i67 = i70;
                            i69 = i71;
                            i68 = 396;
                            break;
                        case 64:
                            i65 = 19800;
                            i72 = 792;
                            i73 = 4000;
                            i74 = 4752;
                            i66 = length;
                            i68 = i72;
                            i67 = i73;
                            i69 = i74;
                            break;
                        case 128:
                            i65 = 20250;
                            i72 = 1620;
                            i73 = 4000;
                            i74 = 8100;
                            i66 = length;
                            i68 = i72;
                            i67 = i73;
                            i69 = i74;
                            break;
                        case 256:
                            i65 = 40500;
                            i72 = 1620;
                            i73 = MiniThumbFile.BYTES_PER_MINTHUMB;
                            i74 = 8100;
                            i66 = length;
                            i68 = i72;
                            i67 = i73;
                            i69 = i74;
                            break;
                        case 512:
                            i65 = 108000;
                            i72 = 3600;
                            i73 = 14000;
                            i74 = 18000;
                            i66 = length;
                            i68 = i72;
                            i67 = i73;
                            i69 = i74;
                            break;
                        case 1024:
                            i65 = 216000;
                            i72 = 5120;
                            i73 = 20000;
                            i74 = MtpConstants.DEVICE_PROPERTY_UNDEFINED;
                            i66 = length;
                            i68 = i72;
                            i67 = i73;
                            i69 = i74;
                            break;
                        case 2048:
                            i65 = 245760;
                            i72 = 8192;
                            i73 = 20000;
                            i74 = 32768;
                            i66 = length;
                            i68 = i72;
                            i67 = i73;
                            i69 = i74;
                            break;
                        case 4096:
                            i65 = 245760;
                            i72 = 8192;
                            i73 = SQLiteDatabase.SQLITE_MAX_LIKE_PATTERN_LENGTH;
                            i74 = 32768;
                            i66 = length;
                            i68 = i72;
                            i67 = i73;
                            i69 = i74;
                            break;
                        case 8192:
                            i65 = 522240;
                            i72 = 8704;
                            i73 = SQLiteDatabase.SQLITE_MAX_LIKE_PATTERN_LENGTH;
                            i74 = 34816;
                            i66 = length;
                            i68 = i72;
                            i67 = i73;
                            i69 = i74;
                            break;
                        case 16384:
                            i65 = 589824;
                            i72 = 22080;
                            i73 = 135000;
                            i74 = 110400;
                            i66 = length;
                            i68 = i72;
                            i67 = i73;
                            i69 = i74;
                            break;
                        case 32768:
                            i65 = 983040;
                            i72 = 36864;
                            i73 = 240000;
                            i74 = 184320;
                            i66 = length;
                            i68 = i72;
                            i67 = i73;
                            i69 = i74;
                            break;
                        case 65536:
                            i65 = 2073600;
                            i72 = 36864;
                            i73 = 240000;
                            i74 = 184320;
                            i66 = length;
                            i68 = i72;
                            i67 = i73;
                            i69 = i74;
                            break;
                        default:
                            Log.w(TAG, "Unrecognized level " + codecProfileLevel.level + " for " + mimeType);
                            i2 |= 1;
                            i66 = length;
                            i67 = 0;
                            i68 = 0;
                            i65 = 0;
                            i69 = 0;
                            break;
                    }
                    int i80 = codecProfileLevel.profile;
                    if (i80 != i76) {
                        if (i80 != 8) {
                            if (i80 == 16) {
                                i75 = i67 * 3000;
                            } else if (i80 != 32 && i80 != 64) {
                                if (i80 != 65536) {
                                    if (i80 != 524288) {
                                        switch (i80) {
                                            case 1:
                                            case 2:
                                                break;
                                            default:
                                                Log.w(TAG, "Unrecognized profile " + codecProfileLevel.profile + " for " + mimeType);
                                                i2 |= 1;
                                                i75 = i67 * 1000;
                                                break;
                                        }
                                        if (z5) {
                                            i2 &= -5;
                                        }
                                        j2 = Math.max(i65, j2);
                                        i79 = Math.max(i68, i79);
                                        i = Math.max(i75, i);
                                        i78 = Math.max(i78, i69);
                                        i77++;
                                        length = i66;
                                        i76 = 4;
                                    }
                                }
                                z5 = true;
                                i75 = i67 * 1000;
                                if (z5) {
                                }
                                j2 = Math.max(i65, j2);
                                i79 = Math.max(i68, i79);
                                i = Math.max(i75, i);
                                i78 = Math.max(i78, i69);
                                i77++;
                                length = i66;
                                i76 = 4;
                            }
                            z5 = true;
                            if (z5) {
                            }
                            j2 = Math.max(i65, j2);
                            i79 = Math.max(i68, i79);
                            i = Math.max(i75, i);
                            i78 = Math.max(i78, i69);
                            i77++;
                            length = i66;
                            i76 = 4;
                        }
                        i75 = i67 * 1250;
                        z5 = true;
                        if (z5) {
                        }
                        j2 = Math.max(i65, j2);
                        i79 = Math.max(i68, i79);
                        i = Math.max(i75, i);
                        i78 = Math.max(i78, i69);
                        i77++;
                        length = i66;
                        i76 = 4;
                    }
                    Log.w(TAG, "Unsupported profile " + codecProfileLevel.profile + " for " + mimeType);
                    i2 |= 2;
                    z5 = false;
                    i75 = i67 * 1000;
                    if (z5) {
                    }
                    j2 = Math.max(i65, j2);
                    i79 = Math.max(i68, i79);
                    i = Math.max(i75, i);
                    i78 = Math.max(i78, i69);
                    i77++;
                    length = i66;
                    i76 = 4;
                }
                int sqrt = (int) Math.sqrt(i79 * 8);
                applyMacroBlockLimits(sqrt, sqrt, i79, j2, 16, 16, 1, 1);
            } else if (mimeType.equalsIgnoreCase(MediaFormat.MIMETYPE_VIDEO_MPEG2)) {
                int length2 = codecProfileLevelArr4.length;
                long j3 = 1485;
                i = 64000;
                int i81 = 9;
                int i82 = 11;
                int i83 = 99;
                int i84 = 4;
                int i85 = 15;
                int i86 = 0;
                while (i86 < length2) {
                    CodecProfileLevel codecProfileLevel2 = codecProfileLevelArr4[i86];
                    switch (codecProfileLevel2.profile) {
                        case 0:
                            if (codecProfileLevel2.level != 1) {
                                Log.w(TAG, "Unrecognized profile/level " + codecProfileLevel2.profile + "/" + codecProfileLevel2.level + " for " + mimeType);
                                i84 |= 1;
                                codecProfileLevelArr3 = codecProfileLevelArr4;
                                i53 = length2;
                                i54 = 0;
                                z4 = true;
                                i56 = 0;
                                i58 = 0;
                                i52 = 0;
                                i55 = 0;
                                i57 = 0;
                                break;
                            } else {
                                i47 = 45;
                                i48 = 36;
                                i49 = 40500;
                                i50 = 1620;
                                i51 = 15000;
                                codecProfileLevelArr3 = codecProfileLevelArr4;
                                i52 = i47;
                                i53 = length2;
                                i54 = 30;
                                z4 = true;
                                i55 = i48;
                                i56 = i50;
                                i57 = i49;
                                i58 = i51;
                                break;
                            }
                        case 1:
                            switch (codecProfileLevel2.level) {
                                case 0:
                                    codecProfileLevelArr3 = codecProfileLevelArr4;
                                    i57 = 11880;
                                    i58 = 4000;
                                    i53 = length2;
                                    i54 = 30;
                                    z4 = true;
                                    i56 = 396;
                                    i52 = 22;
                                    i55 = 18;
                                    break;
                                case 1:
                                    i47 = 45;
                                    i48 = 36;
                                    i49 = 40500;
                                    i50 = 1620;
                                    i51 = 15000;
                                    codecProfileLevelArr3 = codecProfileLevelArr4;
                                    i52 = i47;
                                    i53 = length2;
                                    i54 = 30;
                                    z4 = true;
                                    i55 = i48;
                                    i56 = i50;
                                    i57 = i49;
                                    i58 = i51;
                                    break;
                                case 2:
                                    i59 = 60;
                                    i60 = 90;
                                    i61 = 68;
                                    i57 = 183600;
                                    i62 = 6120;
                                    i63 = 60000;
                                    codecProfileLevelArr3 = codecProfileLevelArr4;
                                    i54 = i59;
                                    i52 = i60;
                                    i53 = length2;
                                    i56 = i62;
                                    z4 = true;
                                    i55 = i61;
                                    i58 = i63;
                                    break;
                                case 3:
                                    i59 = 60;
                                    i60 = 120;
                                    i61 = 68;
                                    i57 = 244800;
                                    i62 = 8160;
                                    i63 = 80000;
                                    codecProfileLevelArr3 = codecProfileLevelArr4;
                                    i54 = i59;
                                    i52 = i60;
                                    i53 = length2;
                                    i56 = i62;
                                    z4 = true;
                                    i55 = i61;
                                    i58 = i63;
                                    break;
                                case 4:
                                    i59 = 60;
                                    i60 = 120;
                                    i61 = 68;
                                    i57 = 489600;
                                    i62 = 8160;
                                    i63 = 80000;
                                    codecProfileLevelArr3 = codecProfileLevelArr4;
                                    i54 = i59;
                                    i52 = i60;
                                    i53 = length2;
                                    i56 = i62;
                                    z4 = true;
                                    i55 = i61;
                                    i58 = i63;
                                    break;
                                default:
                                    Log.w(TAG, "Unrecognized profile/level " + codecProfileLevel2.profile + "/" + codecProfileLevel2.level + " for " + mimeType);
                                    i84 |= 1;
                                    codecProfileLevelArr3 = codecProfileLevelArr4;
                                    i53 = length2;
                                    i54 = 0;
                                    z4 = true;
                                    i56 = 0;
                                    i58 = 0;
                                    i52 = 0;
                                    i55 = 0;
                                    i57 = 0;
                                    break;
                            }
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                            Log.i(TAG, "Unsupported profile " + codecProfileLevel2.profile + " for " + mimeType);
                            i84 |= 2;
                            codecProfileLevelArr3 = codecProfileLevelArr4;
                            i53 = length2;
                            i54 = 0;
                            z4 = false;
                            i56 = 0;
                            i58 = 0;
                            i52 = 0;
                            i55 = 0;
                            i57 = 0;
                            break;
                        default:
                            Log.w(TAG, "Unrecognized profile " + codecProfileLevel2.profile + " for " + mimeType);
                            i84 |= 1;
                            codecProfileLevelArr3 = codecProfileLevelArr4;
                            i53 = length2;
                            i54 = 0;
                            z4 = true;
                            i56 = 0;
                            i58 = 0;
                            i52 = 0;
                            i55 = 0;
                            i57 = 0;
                            break;
                    }
                    if (z4) {
                        str2 = mimeType;
                        i64 = i86;
                        i84 &= -5;
                    } else {
                        str2 = mimeType;
                        i64 = i86;
                    }
                    j3 = Math.max(i57, j3);
                    i83 = Math.max(i56, i83);
                    i = Math.max(i58 * 1000, i);
                    i82 = Math.max(i52, i82);
                    i81 = Math.max(i55, i81);
                    i85 = Math.max(i54, i85);
                    i86 = i64 + 1;
                    length2 = i53;
                    codecProfileLevelArr4 = codecProfileLevelArr3;
                    mimeType = str2;
                }
                applyMacroBlockLimits(i82, i81, i83, j3, 16, 16, 1, 1);
                this.mFrameRateRange = this.mFrameRateRange.intersect(12, Integer.valueOf(i85));
                i2 = i84;
            } else {
                if (mimeType.equalsIgnoreCase(MediaFormat.MIMETYPE_VIDEO_MPEG4)) {
                    CodecProfileLevel[] codecProfileLevelArr5 = codecProfileLevelArr4;
                    int length3 = codecProfileLevelArr5.length;
                    int i87 = 15;
                    long j4 = 1485;
                    i = 64000;
                    int i88 = 0;
                    int i89 = 11;
                    int i90 = 9;
                    int i91 = 99;
                    i18 = 4;
                    while (i88 < length3) {
                        CodecProfileLevel codecProfileLevel3 = codecProfileLevelArr5[i88];
                        switch (codecProfileLevel3.profile) {
                            case 1:
                                i36 = length3;
                                int i92 = codecProfileLevel3.level;
                                if (i92 != 4) {
                                    if (i92 != 8) {
                                        if (i92 != 16) {
                                            if (i92 != 64) {
                                                if (i92 == 128) {
                                                    i44 = 45;
                                                    i45 = 36;
                                                    i37 = 40500;
                                                    i43 = 1620;
                                                    i46 = 8000;
                                                } else if (i92 != 256) {
                                                    switch (i92) {
                                                        case 1:
                                                            str = mimeType;
                                                            i41 = 15;
                                                            i37 = 1485;
                                                            codecProfileLevelArr2 = codecProfileLevelArr5;
                                                            i38 = 9;
                                                            z2 = true;
                                                            i39 = 64;
                                                            i42 = 11;
                                                            i43 = 99;
                                                            z3 = true;
                                                            break;
                                                        case 2:
                                                            str = mimeType;
                                                            i41 = 15;
                                                            i37 = 1485;
                                                            codecProfileLevelArr2 = codecProfileLevelArr5;
                                                            i38 = 9;
                                                            z2 = true;
                                                            i39 = 128;
                                                            i42 = 11;
                                                            i43 = 99;
                                                            z3 = true;
                                                            break;
                                                        default:
                                                            Log.w(TAG, "Unrecognized profile/level " + codecProfileLevel3.profile + "/" + codecProfileLevel3.level + " for " + mimeType);
                                                            i18 |= 1;
                                                            str = mimeType;
                                                            codecProfileLevelArr2 = codecProfileLevelArr5;
                                                            i38 = 0;
                                                            z2 = true;
                                                            i39 = 0;
                                                            i42 = 0;
                                                            i37 = 0;
                                                            i41 = 0;
                                                            i43 = 0;
                                                            z3 = false;
                                                            break;
                                                    }
                                                } else {
                                                    i44 = 80;
                                                    i45 = 45;
                                                    i37 = 108000;
                                                    i43 = 3600;
                                                    i46 = 12000;
                                                }
                                                str = mimeType;
                                                i38 = i45;
                                                codecProfileLevelArr2 = codecProfileLevelArr5;
                                                i39 = i46;
                                                i41 = 30;
                                                z3 = false;
                                                i42 = i44;
                                                z2 = true;
                                                break;
                                            } else {
                                                str = mimeType;
                                                codecProfileLevelArr2 = codecProfileLevelArr5;
                                                i38 = 30;
                                                i41 = 30;
                                                z3 = false;
                                                i42 = 40;
                                                z2 = true;
                                                i37 = 36000;
                                                i39 = 4000;
                                                i43 = 1200;
                                                break;
                                            }
                                        } else {
                                            i40 = 11880;
                                            i39 = 384;
                                            str = mimeType;
                                            i37 = i40;
                                            codecProfileLevelArr2 = codecProfileLevelArr5;
                                            i38 = 18;
                                            z2 = true;
                                            i42 = 22;
                                            i41 = 30;
                                            i43 = 396;
                                            z3 = false;
                                        }
                                    } else {
                                        str = mimeType;
                                        i37 = 5940;
                                        codecProfileLevelArr2 = codecProfileLevelArr5;
                                        i38 = 18;
                                        z2 = true;
                                        i39 = 128;
                                        i42 = 22;
                                        i41 = 30;
                                        i43 = 396;
                                        z3 = false;
                                    }
                                } else {
                                    str = mimeType;
                                    i37 = 1485;
                                    codecProfileLevelArr2 = codecProfileLevelArr5;
                                    i38 = 9;
                                    z2 = true;
                                    i39 = 64;
                                    i42 = 11;
                                    i41 = 30;
                                    i43 = 99;
                                    z3 = false;
                                }
                            case 2:
                            case 4:
                            case 8:
                            case 16:
                            case 32:
                            case 64:
                            case 128:
                            case 256:
                            case 512:
                            case 1024:
                            case 2048:
                            case 4096:
                            case 8192:
                            case 16384:
                                i36 = length3;
                                Log.i(TAG, "Unsupported profile " + codecProfileLevel3.profile + " for " + mimeType);
                                i18 |= 2;
                                str = mimeType;
                                codecProfileLevelArr2 = codecProfileLevelArr5;
                                i38 = 0;
                                z2 = false;
                                i39 = 0;
                                i42 = 0;
                                i37 = 0;
                                i41 = 0;
                                i43 = 0;
                                z3 = false;
                                break;
                            case 32768:
                                int i93 = codecProfileLevel3.level;
                                if (i93 == 1 || i93 == 4) {
                                    i36 = length3;
                                    str = mimeType;
                                    i37 = 2970;
                                    codecProfileLevelArr2 = codecProfileLevelArr5;
                                    i38 = 9;
                                    z2 = true;
                                    i39 = 128;
                                    i42 = 11;
                                    i41 = 30;
                                    i43 = 99;
                                    z3 = false;
                                    break;
                                } else {
                                    if (i93 == 8) {
                                        i36 = length3;
                                        i40 = 5940;
                                        i39 = 384;
                                    } else if (i93 == 16) {
                                        i36 = length3;
                                        i40 = 11880;
                                        i39 = 768;
                                    } else if (i93 != 24) {
                                        if (i93 == 32) {
                                            i36 = length3;
                                            i44 = 44;
                                            i45 = 36;
                                            i37 = 23760;
                                            i43 = 792;
                                            i46 = 3000;
                                        } else if (i93 != 128) {
                                            StringBuilder sb = new StringBuilder();
                                            i36 = length3;
                                            sb.append("Unrecognized profile/level ");
                                            sb.append(codecProfileLevel3.profile);
                                            sb.append("/");
                                            sb.append(codecProfileLevel3.level);
                                            sb.append(" for ");
                                            sb.append(mimeType);
                                            Log.w(TAG, sb.toString());
                                            i18 |= 1;
                                            str = mimeType;
                                            codecProfileLevelArr2 = codecProfileLevelArr5;
                                            i38 = 0;
                                            z2 = true;
                                            i39 = 0;
                                            i42 = 0;
                                            i37 = 0;
                                            i41 = 0;
                                            i43 = 0;
                                            z3 = false;
                                        } else {
                                            i36 = length3;
                                            i44 = 45;
                                            i45 = 36;
                                            i37 = 48600;
                                            i43 = 1620;
                                            i46 = 8000;
                                        }
                                        str = mimeType;
                                        i38 = i45;
                                        codecProfileLevelArr2 = codecProfileLevelArr5;
                                        i39 = i46;
                                        i41 = 30;
                                        z3 = false;
                                        i42 = i44;
                                        z2 = true;
                                        break;
                                    } else {
                                        i36 = length3;
                                        i40 = 11880;
                                        i39 = 1500;
                                    }
                                    str = mimeType;
                                    i37 = i40;
                                    codecProfileLevelArr2 = codecProfileLevelArr5;
                                    i38 = 18;
                                    z2 = true;
                                    i42 = 22;
                                    i41 = 30;
                                    i43 = 396;
                                    z3 = false;
                                }
                                break;
                            default:
                                i36 = length3;
                                Log.w(TAG, "Unrecognized profile " + codecProfileLevel3.profile + " for " + mimeType);
                                i18 |= 1;
                                str = mimeType;
                                codecProfileLevelArr2 = codecProfileLevelArr5;
                                i38 = 0;
                                z2 = true;
                                i39 = 0;
                                i42 = 0;
                                i37 = 0;
                                i41 = 0;
                                i43 = 0;
                                z3 = false;
                                break;
                        }
                        if (z2) {
                            i18 &= -5;
                        }
                        int i94 = i87;
                        int i95 = i41;
                        j4 = Math.max(i37, j4);
                        i91 = Math.max(i43, i91);
                        i = Math.max(i39 * 1000, i);
                        if (z3) {
                            i89 = Math.max(i42, i89);
                            max = Math.max(i38, i90);
                            max2 = Math.max(i95, i94);
                        } else {
                            int sqrt2 = (int) Math.sqrt(i43 * 2);
                            i89 = Math.max(sqrt2, i89);
                            max = Math.max(sqrt2, i90);
                            max2 = Math.max(Math.max(i95, 60), i94);
                        }
                        i87 = max2;
                        i90 = max;
                        i88++;
                        length3 = i36;
                        codecProfileLevelArr5 = codecProfileLevelArr2;
                        mimeType = str;
                    }
                    applyMacroBlockLimits(i89, i90, i91, j4, 16, 16, 1, 1);
                    this.mFrameRateRange = this.mFrameRateRange.intersect(12, Integer.valueOf(i87));
                } else if (mimeType.equalsIgnoreCase(MediaFormat.MIMETYPE_VIDEO_H263)) {
                    CodecProfileLevel[] codecProfileLevelArr6 = codecProfileLevelArr4;
                    int length4 = codecProfileLevelArr6.length;
                    int i96 = 15;
                    int i97 = 16;
                    long j5 = 1485;
                    i = 64000;
                    int i98 = 0;
                    int i99 = 11;
                    int i100 = 9;
                    int i101 = 11;
                    int i102 = 9;
                    int i103 = 99;
                    i18 = 4;
                    while (i98 < length4) {
                        int i104 = length4;
                        CodecProfileLevel codecProfileLevel4 = codecProfileLevelArr6[i98];
                        CodecProfileLevel[] codecProfileLevelArr7 = codecProfileLevelArr6;
                        int i105 = codecProfileLevel4.level;
                        int i106 = i97;
                        if (i105 == 4) {
                            i19 = i98;
                            i20 = 6;
                            i21 = 11880;
                        } else if (i105 != 8) {
                            if (i105 == 16) {
                                i19 = i98;
                                z = codecProfileLevel4.profile == 1 || codecProfileLevel4.profile == 4;
                                if (z) {
                                    i34 = i99;
                                    i35 = i100;
                                } else {
                                    i34 = 1;
                                    i35 = 1;
                                    i106 = 4;
                                }
                                i24 = i99;
                                i26 = i100;
                                i29 = 15;
                                i22 = 2;
                                i27 = 9;
                                i23 = i34;
                                i21 = 1485;
                                i25 = i35;
                                i28 = 11;
                            } else if (i105 == 32) {
                                i19 = i98;
                                i21 = 19800;
                                i29 = 60;
                                i24 = i99;
                                i26 = i100;
                                z = false;
                                i27 = 18;
                                i28 = 22;
                                i22 = 64;
                                i23 = 1;
                                i25 = 1;
                                i106 = 4;
                            } else if (i105 == 64) {
                                i19 = i98;
                                i29 = 60;
                                i24 = i99;
                                i26 = i100;
                                z = false;
                                i27 = 18;
                                i22 = 128;
                                i23 = 1;
                                i25 = 1;
                                i106 = 4;
                                i28 = 45;
                                i21 = 40500;
                            } else if (i105 != 128) {
                                switch (i105) {
                                    case 1:
                                        i19 = i98;
                                        i21 = 1485;
                                        i29 = 15;
                                        i23 = i99;
                                        i24 = i23;
                                        i25 = i100;
                                        i26 = i25;
                                        z = true;
                                        i27 = 9;
                                        i28 = 11;
                                        i22 = 1;
                                        break;
                                    case 2:
                                        i19 = i98;
                                        i20 = 2;
                                        i21 = 5940;
                                        break;
                                    default:
                                        StringBuilder sb2 = new StringBuilder();
                                        i19 = i98;
                                        sb2.append("Unrecognized profile/level ");
                                        sb2.append(codecProfileLevel4.profile);
                                        sb2.append("/");
                                        sb2.append(codecProfileLevel4.level);
                                        sb2.append(" for ");
                                        sb2.append(mimeType);
                                        Log.w(TAG, sb2.toString());
                                        i18 |= 1;
                                        i23 = i99;
                                        i24 = i23;
                                        i25 = i100;
                                        i26 = i25;
                                        z = false;
                                        i27 = 0;
                                        i21 = 0;
                                        i28 = 0;
                                        i22 = 0;
                                        i29 = 0;
                                        break;
                                }
                            } else {
                                i19 = i98;
                                i22 = 256;
                                i29 = 60;
                                i24 = i99;
                                i26 = i100;
                                i27 = 36;
                                z = false;
                                i25 = 1;
                                i106 = 4;
                                i28 = 45;
                                i21 = 81000;
                                i23 = 1;
                            }
                            i30 = codecProfileLevel4.profile;
                            int i107 = i96;
                            if (i30 != 4 && i30 != 8 && i30 != 16 && i30 != 32 && i30 != 64 && i30 != 128 && i30 != 256) {
                                switch (i30) {
                                    case 1:
                                    case 2:
                                        break;
                                    default:
                                        StringBuilder sb3 = new StringBuilder();
                                        i31 = i102;
                                        sb3.append("Unrecognized profile ");
                                        sb3.append(codecProfileLevel4.profile);
                                        sb3.append(" for ");
                                        sb3.append(mimeType);
                                        Log.w(TAG, sb3.toString());
                                        i18 |= 1;
                                        break;
                                }
                                if (z) {
                                    this.mAllowMbOverride = true;
                                    i32 = i23;
                                    i33 = i25;
                                } else {
                                    i32 = 11;
                                    i33 = 9;
                                }
                                i18 &= -5;
                                j5 = Math.max(i21, j5);
                                i103 = Math.max(i28 * i27, i103);
                                i = Math.max(64000 * i22, i);
                                i101 = Math.max(i28, i101);
                                i102 = Math.max(i27, i31);
                                i96 = Math.max(i29, i107);
                                int min = Math.min(i32, i24);
                                i100 = Math.min(i33, i26);
                                length4 = i104;
                                codecProfileLevelArr6 = codecProfileLevelArr7;
                                i97 = i106;
                                i99 = min;
                                i98 = i19 + 1;
                            }
                            i31 = i102;
                            if (z) {
                            }
                            i18 &= -5;
                            j5 = Math.max(i21, j5);
                            i103 = Math.max(i28 * i27, i103);
                            i = Math.max(64000 * i22, i);
                            i101 = Math.max(i28, i101);
                            i102 = Math.max(i27, i31);
                            i96 = Math.max(i29, i107);
                            int min2 = Math.min(i32, i24);
                            i100 = Math.min(i33, i26);
                            length4 = i104;
                            codecProfileLevelArr6 = codecProfileLevelArr7;
                            i97 = i106;
                            i99 = min2;
                            i98 = i19 + 1;
                        } else {
                            i19 = i98;
                            i20 = 32;
                            i21 = 11880;
                        }
                        i22 = i20;
                        i23 = i99;
                        i24 = i23;
                        i25 = i100;
                        i26 = i25;
                        z = true;
                        i27 = 18;
                        i28 = 22;
                        i29 = 30;
                        i30 = codecProfileLevel4.profile;
                        int i1072 = i96;
                        if (i30 != 4) {
                            switch (i30) {
                            }
                            if (z) {
                            }
                            i18 &= -5;
                            j5 = Math.max(i21, j5);
                            i103 = Math.max(i28 * i27, i103);
                            i = Math.max(64000 * i22, i);
                            i101 = Math.max(i28, i101);
                            i102 = Math.max(i27, i31);
                            i96 = Math.max(i29, i1072);
                            int min22 = Math.min(i32, i24);
                            i100 = Math.min(i33, i26);
                            length4 = i104;
                            codecProfileLevelArr6 = codecProfileLevelArr7;
                            i97 = i106;
                            i99 = min22;
                            i98 = i19 + 1;
                        }
                        i31 = i102;
                        if (z) {
                        }
                        i18 &= -5;
                        j5 = Math.max(i21, j5);
                        i103 = Math.max(i28 * i27, i103);
                        i = Math.max(64000 * i22, i);
                        i101 = Math.max(i28, i101);
                        i102 = Math.max(i27, i31);
                        i96 = Math.max(i29, i1072);
                        int min222 = Math.min(i32, i24);
                        i100 = Math.min(i33, i26);
                        length4 = i104;
                        codecProfileLevelArr6 = codecProfileLevelArr7;
                        i97 = i106;
                        i99 = min222;
                        i98 = i19 + 1;
                    }
                    int i108 = i100;
                    int i109 = i97;
                    int i110 = i99;
                    if (!this.mAllowMbOverride) {
                        this.mBlockAspectRatioRange = Range.create(new Rational(11, 9), new Rational(11, 9));
                    }
                    applyMacroBlockLimits(i110, i108, i101, i102, i103, j5, 16, 16, i109, i109);
                    this.mFrameRateRange = Range.create(1, Integer.valueOf(i96));
                } else if (mimeType.equalsIgnoreCase(MediaFormat.MIMETYPE_VIDEO_VP8)) {
                    i = 100000000;
                    i2 = 4;
                    for (CodecProfileLevel codecProfileLevel5 : codecProfileLevelArr4) {
                        int i111 = codecProfileLevel5.level;
                        if (i111 != 4 && i111 != 8) {
                            switch (i111) {
                                case 1:
                                case 2:
                                    break;
                                default:
                                    Log.w(TAG, "Unrecognized level " + codecProfileLevel5.level + " for " + mimeType);
                                    i2 |= 1;
                                    break;
                            }
                        }
                        if (codecProfileLevel5.profile != 1) {
                            Log.w(TAG, "Unrecognized profile " + codecProfileLevel5.profile + " for " + mimeType);
                            i2 |= 1;
                        }
                        i2 &= -5;
                    }
                    applyMacroBlockLimits(32767, 32767, Integer.MAX_VALUE, 2147483647L, 16, 16, 1, 1);
                } else {
                    CodecProfileLevel[] codecProfileLevelArr8 = codecProfileLevelArr4;
                    if (mimeType.equalsIgnoreCase(MediaFormat.MIMETYPE_VIDEO_VP9)) {
                        int i112 = 512;
                        int length5 = codecProfileLevelArr8.length;
                        i = 200000;
                        i2 = 4;
                        long j6 = 829440;
                        int i113 = 36864;
                        int i114 = 0;
                        while (i114 < length5) {
                            CodecProfileLevel codecProfileLevel6 = codecProfileLevelArr8[i114];
                            switch (codecProfileLevel6.level) {
                                case 1:
                                    j = 829440;
                                    i7 = 36864;
                                    i8 = 200;
                                    i9 = 512;
                                    i10 = length5;
                                    i11 = i8;
                                    i12 = i9;
                                    break;
                                case 2:
                                    j = 2764800;
                                    i7 = 73728;
                                    i8 = 800;
                                    i9 = 768;
                                    i10 = length5;
                                    i11 = i8;
                                    i12 = i9;
                                    break;
                                case 4:
                                    j = 4608000;
                                    i7 = 122880;
                                    i8 = BluetoothClass.Device.WEARABLE_PAGER;
                                    i9 = 960;
                                    i10 = length5;
                                    i11 = i8;
                                    i12 = i9;
                                    break;
                                case 8:
                                    j = 9216000;
                                    i7 = 245760;
                                    i8 = 3600;
                                    i9 = BluetoothClass.Device.PERIPHERAL_KEYBOARD;
                                    i10 = length5;
                                    i11 = i8;
                                    i12 = i9;
                                    break;
                                case 16:
                                    j = 20736000;
                                    i7 = 552960;
                                    i8 = 7200;
                                    i9 = 2048;
                                    i10 = length5;
                                    i11 = i8;
                                    i12 = i9;
                                    break;
                                case 32:
                                    j = 36864000;
                                    i7 = 983040;
                                    i8 = 12000;
                                    i9 = 2752;
                                    i10 = length5;
                                    i11 = i8;
                                    i12 = i9;
                                    break;
                                case 64:
                                    j = 83558400;
                                    i7 = 2228224;
                                    i8 = 18000;
                                    i9 = 4160;
                                    i10 = length5;
                                    i11 = i8;
                                    i12 = i9;
                                    break;
                                case 128:
                                    j = 160432128;
                                    i7 = 2228224;
                                    i8 = 30000;
                                    i9 = 4160;
                                    i10 = length5;
                                    i11 = i8;
                                    i12 = i9;
                                    break;
                                case 256:
                                    j = 311951360;
                                    i13 = 60000;
                                    i14 = 8384;
                                    i11 = i13;
                                    i10 = length5;
                                    i12 = i14;
                                    i7 = 8912896;
                                    break;
                                case 512:
                                    j = 588251136;
                                    i13 = 120000;
                                    i14 = 8384;
                                    i11 = i13;
                                    i10 = length5;
                                    i12 = i14;
                                    i7 = 8912896;
                                    break;
                                case 1024:
                                    j = 1176502272;
                                    i13 = 180000;
                                    i14 = 8384;
                                    i11 = i13;
                                    i10 = length5;
                                    i12 = i14;
                                    i7 = 8912896;
                                    break;
                                case 2048:
                                    j = 1176502272;
                                    i15 = 180000;
                                    i16 = 16832;
                                    i11 = i15;
                                    i10 = length5;
                                    i12 = i16;
                                    i7 = 35651584;
                                    break;
                                case 4096:
                                    j = 2353004544L;
                                    i15 = 240000;
                                    i16 = 16832;
                                    i11 = i15;
                                    i10 = length5;
                                    i12 = i16;
                                    i7 = 35651584;
                                    break;
                                case 8192:
                                    j = 4706009088L;
                                    i15 = 480000;
                                    i16 = 16832;
                                    i11 = i15;
                                    i10 = length5;
                                    i12 = i16;
                                    i7 = 35651584;
                                    break;
                                default:
                                    Log.w(TAG, "Unrecognized level " + codecProfileLevel6.level + " for " + mimeType);
                                    i2 |= 1;
                                    i10 = length5;
                                    i7 = 0;
                                    i12 = 0;
                                    i11 = 0;
                                    j = 0;
                                    break;
                            }
                            int i115 = codecProfileLevel6.profile;
                            CodecProfileLevel[] codecProfileLevelArr9 = codecProfileLevelArr8;
                            if (i115 != 4 && i115 != 8 && i115 != 4096 && i115 != 8192) {
                                switch (i115) {
                                    case 1:
                                    case 2:
                                        break;
                                    default:
                                        StringBuilder sb4 = new StringBuilder();
                                        i17 = i114;
                                        sb4.append("Unrecognized profile ");
                                        sb4.append(codecProfileLevel6.profile);
                                        sb4.append(" for ");
                                        sb4.append(mimeType);
                                        Log.w(TAG, sb4.toString());
                                        i2 |= 1;
                                        break;
                                }
                                i2 &= -5;
                                j6 = Math.max(j, j6);
                                i113 = Math.max(i7, i113);
                                i = Math.max(i11 * 1000, i);
                                i112 = Math.max(i12, i112);
                                i114 = i17 + 1;
                                length5 = i10;
                                codecProfileLevelArr8 = codecProfileLevelArr9;
                            }
                            i17 = i114;
                            i2 &= -5;
                            j6 = Math.max(j, j6);
                            i113 = Math.max(i7, i113);
                            i = Math.max(i11 * 1000, i);
                            i112 = Math.max(i12, i112);
                            i114 = i17 + 1;
                            length5 = i10;
                            codecProfileLevelArr8 = codecProfileLevelArr9;
                        }
                        int divUp = Utils.divUp(i112, 8);
                        applyMacroBlockLimits(divUp, divUp, Utils.divUp(i113, 64), Utils.divUp(j6, 64L), 8, 8, 1, 1);
                    } else if (mimeType.equalsIgnoreCase(MediaFormat.MIMETYPE_VIDEO_HEVC)) {
                        CodecProfileLevel[] codecProfileLevelArr10 = codecProfileLevelArr8;
                        int length6 = codecProfileLevelArr10.length;
                        long j7 = 8640;
                        i = 128000;
                        i2 = 4;
                        int i116 = 576;
                        int i117 = 0;
                        while (i117 < length6) {
                            CodecProfileLevel codecProfileLevel7 = codecProfileLevelArr10[i117];
                            double d = 0.0d;
                            switch (codecProfileLevel7.level) {
                                case 1:
                                case 2:
                                    d = 15.0d;
                                    i3 = 36864;
                                    i4 = 128;
                                    break;
                                case 4:
                                case 8:
                                    d = 30.0d;
                                    i3 = 122880;
                                    i4 = 1500;
                                    break;
                                case 16:
                                case 32:
                                    d = 30.0d;
                                    i3 = 245760;
                                    i4 = 3000;
                                    break;
                                case 64:
                                case 128:
                                    d = 30.0d;
                                    i3 = 552960;
                                    i4 = BluetoothHealth.HEALTH_OPERATION_SUCCESS;
                                    break;
                                case 256:
                                case 512:
                                    d = 33.75d;
                                    i3 = 983040;
                                    i4 = MiniThumbFile.BYTES_PER_MINTHUMB;
                                    break;
                                case 1024:
                                    d = 30.0d;
                                    i3 = 2228224;
                                    i4 = 12000;
                                    break;
                                case 2048:
                                    d = 30.0d;
                                    i3 = 2228224;
                                    i4 = 30000;
                                    break;
                                case 4096:
                                    d = 60.0d;
                                    i3 = 2228224;
                                    i4 = 20000;
                                    break;
                                case 8192:
                                    d = 60.0d;
                                    i3 = 2228224;
                                    i4 = SQLiteDatabase.SQLITE_MAX_LIKE_PATTERN_LENGTH;
                                    break;
                                case 16384:
                                    d = 30.0d;
                                    i5 = 25000;
                                    i4 = i5;
                                    i3 = 8912896;
                                    break;
                                case 32768:
                                    d = 30.0d;
                                    i5 = 100000;
                                    i4 = i5;
                                    i3 = 8912896;
                                    break;
                                case 65536:
                                    d = 60.0d;
                                    i5 = 40000;
                                    i4 = i5;
                                    i3 = 8912896;
                                    break;
                                case 131072:
                                    d = 60.0d;
                                    i5 = 160000;
                                    i4 = i5;
                                    i3 = 8912896;
                                    break;
                                case 262144:
                                    d = 120.0d;
                                    i5 = 60000;
                                    i4 = i5;
                                    i3 = 8912896;
                                    break;
                                case 524288:
                                    d = 120.0d;
                                    i5 = 240000;
                                    i4 = i5;
                                    i3 = 8912896;
                                    break;
                                case 1048576:
                                    d = 30.0d;
                                    i6 = 60000;
                                    i4 = i6;
                                    i3 = 35651584;
                                    break;
                                case 2097152:
                                    d = 30.0d;
                                    i6 = 240000;
                                    i4 = i6;
                                    i3 = 35651584;
                                    break;
                                case 4194304:
                                    d = 60.0d;
                                    i6 = 120000;
                                    i4 = i6;
                                    i3 = 35651584;
                                    break;
                                case 8388608:
                                    d = 60.0d;
                                    i6 = 480000;
                                    i4 = i6;
                                    i3 = 35651584;
                                    break;
                                case 16777216:
                                    d = 120.0d;
                                    i6 = 240000;
                                    i4 = i6;
                                    i3 = 35651584;
                                    break;
                                case 33554432:
                                    d = 120.0d;
                                    i6 = 800000;
                                    i4 = i6;
                                    i3 = 35651584;
                                    break;
                                default:
                                    Log.w(TAG, "Unrecognized level " + codecProfileLevel7.level + " for " + mimeType);
                                    i2 |= 1;
                                    i3 = 0;
                                    i4 = 0;
                                    break;
                            }
                            int i118 = codecProfileLevel7.profile;
                            if (i118 != 4096) {
                                switch (i118) {
                                    case 1:
                                    case 2:
                                        break;
                                    default:
                                        StringBuilder sb5 = new StringBuilder();
                                        codecProfileLevelArr = codecProfileLevelArr10;
                                        sb5.append("Unrecognized profile ");
                                        sb5.append(codecProfileLevel7.profile);
                                        sb5.append(" for ");
                                        sb5.append(mimeType);
                                        Log.w(TAG, sb5.toString());
                                        i2 |= 1;
                                        break;
                                }
                                i2 &= -5;
                                j7 = Math.max((int) (d * r2), j7);
                                i116 = Math.max(i3 >> 6, i116);
                                i = Math.max(i4 * 1000, i);
                                i117++;
                                codecProfileLevelArr10 = codecProfileLevelArr;
                            }
                            codecProfileLevelArr = codecProfileLevelArr10;
                            i2 &= -5;
                            j7 = Math.max((int) (d * r2), j7);
                            i116 = Math.max(i3 >> 6, i116);
                            i = Math.max(i4 * 1000, i);
                            i117++;
                            codecProfileLevelArr10 = codecProfileLevelArr;
                        }
                        int sqrt3 = (int) Math.sqrt(i116 * 8);
                        applyMacroBlockLimits(sqrt3, sqrt3, i116, j7, 8, 8, 1, 1);
                    } else {
                        Log.w(TAG, "Unsupported mime " + mimeType);
                        i = 64000;
                        i2 = 6;
                    }
                }
                i2 = i18;
            }
            this.mBitrateRange = Range.create(1, Integer.valueOf(i));
            this.mParent.mError |= i2;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class EncoderCapabilities {
        public static final int BITRATE_MODE_CBR = 2;
        public static final int BITRATE_MODE_CQ = 0;
        public static final int BITRATE_MODE_VBR = 1;
        private static final Feature[] bitrates = {new Feature("VBR", 1, true), new Feature("CBR", 2, false), new Feature("CQ", 0, false)};
        private int mBitControl;
        private Range<Integer> mComplexityRange;
        private Integer mDefaultComplexity;
        private Integer mDefaultQuality;
        private CodecCapabilities mParent;
        private Range<Integer> mQualityRange;
        private String mQualityScale;

        public Range<Integer> getQualityRange() {
            return this.mQualityRange;
        }

        public Range<Integer> getComplexityRange() {
            return this.mComplexityRange;
        }

        private static int parseBitrateMode(String str) {
            for (Feature feature : bitrates) {
                if (feature.mName.equalsIgnoreCase(str)) {
                    return feature.mValue;
                }
            }
            return 0;
        }

        public boolean isBitrateModeSupported(int i) {
            for (Feature feature : bitrates) {
                if (i == feature.mValue) {
                    return (this.mBitControl & (1 << i)) != 0;
                }
            }
            return false;
        }

        private EncoderCapabilities() {
        }

        public static EncoderCapabilities create(MediaFormat mediaFormat, CodecCapabilities codecCapabilities) {
            EncoderCapabilities encoderCapabilities = new EncoderCapabilities();
            encoderCapabilities.init(mediaFormat, codecCapabilities);
            return encoderCapabilities;
        }

        private void init(MediaFormat mediaFormat, CodecCapabilities codecCapabilities) {
            this.mParent = codecCapabilities;
            this.mComplexityRange = Range.create(0, 0);
            this.mQualityRange = Range.create(0, 0);
            this.mBitControl = 2;
            applyLevelLimits();
            parseFromInfo(mediaFormat);
        }

        private void applyLevelLimits() {
            String mimeType = this.mParent.getMimeType();
            if (mimeType.equalsIgnoreCase(MediaFormat.MIMETYPE_AUDIO_FLAC)) {
                this.mComplexityRange = Range.create(0, 8);
                this.mBitControl = 1;
            } else if (mimeType.equalsIgnoreCase(MediaFormat.MIMETYPE_AUDIO_AMR_NB) || mimeType.equalsIgnoreCase(MediaFormat.MIMETYPE_AUDIO_AMR_WB) || mimeType.equalsIgnoreCase(MediaFormat.MIMETYPE_AUDIO_G711_ALAW) || mimeType.equalsIgnoreCase(MediaFormat.MIMETYPE_AUDIO_G711_MLAW) || mimeType.equalsIgnoreCase(MediaFormat.MIMETYPE_AUDIO_MSGSM)) {
                this.mBitControl = 4;
            }
        }

        private void parseFromInfo(MediaFormat mediaFormat) {
            Map<String, Object> map = mediaFormat.getMap();
            if (mediaFormat.containsKey("complexity-range")) {
                this.mComplexityRange = Utils.parseIntRange(mediaFormat.getString("complexity-range"), this.mComplexityRange);
            }
            if (mediaFormat.containsKey("quality-range")) {
                this.mQualityRange = Utils.parseIntRange(mediaFormat.getString("quality-range"), this.mQualityRange);
            }
            if (mediaFormat.containsKey("feature-bitrate-modes")) {
                for (String str : mediaFormat.getString("feature-bitrate-modes").split(",")) {
                    this.mBitControl = (1 << parseBitrateMode(str)) | this.mBitControl;
                }
            }
            try {
                this.mDefaultComplexity = Integer.valueOf(Integer.parseInt((String) map.get("complexity-default")));
            } catch (NumberFormatException unused) {
            }
            try {
                this.mDefaultQuality = Integer.valueOf(Integer.parseInt((String) map.get("quality-default")));
            } catch (NumberFormatException unused2) {
            }
            this.mQualityScale = (String) map.get("quality-scale");
        }

        private boolean supports(Integer num, Integer num2, Integer num3) {
            boolean contains = num != null ? this.mComplexityRange.contains((Range<Integer>) num) : true;
            if (contains && num2 != null) {
                contains = this.mQualityRange.contains((Range<Integer>) num2);
            }
            if (!contains || num3 == null) {
                return contains;
            }
            CodecProfileLevel[] codecProfileLevelArr = this.mParent.profileLevels;
            int length = codecProfileLevelArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                if (codecProfileLevelArr[i].profile == num3.intValue()) {
                    num3 = null;
                    break;
                }
                i++;
            }
            return num3 == null;
        }

        public void getDefaultFormat(MediaFormat mediaFormat) {
            if (!this.mQualityRange.getUpper().equals(this.mQualityRange.getLower()) && this.mDefaultQuality != null) {
                mediaFormat.setInteger(MediaFormat.KEY_QUALITY, this.mDefaultQuality.intValue());
            }
            if (!this.mComplexityRange.getUpper().equals(this.mComplexityRange.getLower()) && this.mDefaultComplexity != null) {
                mediaFormat.setInteger(MediaFormat.KEY_COMPLEXITY, this.mDefaultComplexity.intValue());
            }
            for (Feature feature : bitrates) {
                if ((this.mBitControl & (1 << feature.mValue)) != 0) {
                    mediaFormat.setInteger(MediaFormat.KEY_BITRATE_MODE, feature.mValue);
                    return;
                }
            }
        }

        public boolean supportsFormat(MediaFormat mediaFormat) {
            Integer num;
            Map<String, Object> map = mediaFormat.getMap();
            String mimeType = this.mParent.getMimeType();
            Integer num2 = (Integer) map.get(MediaFormat.KEY_BITRATE_MODE);
            if (num2 != null && !isBitrateModeSupported(num2.intValue())) {
                return false;
            }
            Integer num3 = (Integer) map.get(MediaFormat.KEY_COMPLEXITY);
            if (MediaFormat.MIMETYPE_AUDIO_FLAC.equalsIgnoreCase(mimeType)) {
                Integer num4 = (Integer) map.get(MediaFormat.KEY_FLAC_COMPRESSION_LEVEL);
                if (num3 == null) {
                    num3 = num4;
                } else if (num4 != null && !num3.equals(num4)) {
                    throw new IllegalArgumentException("conflicting values for complexity and flac-compression-level");
                }
            }
            Integer num5 = (Integer) map.get(MediaFormat.KEY_PROFILE);
            if (MediaFormat.MIMETYPE_AUDIO_AAC.equalsIgnoreCase(mimeType)) {
                num = (Integer) map.get(MediaFormat.KEY_AAC_PROFILE);
                if (num5 != null) {
                    if (num != null && !num.equals(num5)) {
                        throw new IllegalArgumentException("conflicting values for profile and aac-profile");
                    }
                }
                return supports(num3, (Integer) map.get(MediaFormat.KEY_QUALITY), num);
            }
            num = num5;
            return supports(num3, (Integer) map.get(MediaFormat.KEY_QUALITY), num);
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class CodecProfileLevel {
        public static final int AACObjectELD = 39;
        public static final int AACObjectERLC = 17;
        public static final int AACObjectERScalable = 20;
        public static final int AACObjectHE = 5;
        public static final int AACObjectHE_PS = 29;
        public static final int AACObjectLC = 2;
        public static final int AACObjectLD = 23;
        public static final int AACObjectLTP = 4;
        public static final int AACObjectMain = 1;
        public static final int AACObjectSSR = 3;
        public static final int AACObjectScalable = 6;
        public static final int AACObjectXHE = 42;
        public static final int AVCLevel1 = 1;
        public static final int AVCLevel11 = 4;
        public static final int AVCLevel12 = 8;
        public static final int AVCLevel13 = 16;
        public static final int AVCLevel1b = 2;
        public static final int AVCLevel2 = 32;
        public static final int AVCLevel21 = 64;
        public static final int AVCLevel22 = 128;
        public static final int AVCLevel3 = 256;
        public static final int AVCLevel31 = 512;
        public static final int AVCLevel32 = 1024;
        public static final int AVCLevel4 = 2048;
        public static final int AVCLevel41 = 4096;
        public static final int AVCLevel42 = 8192;
        public static final int AVCLevel5 = 16384;
        public static final int AVCLevel51 = 32768;
        public static final int AVCLevel52 = 65536;
        public static final int AVCProfileBaseline = 1;
        public static final int AVCProfileConstrainedBaseline = 65536;
        public static final int AVCProfileConstrainedHigh = 524288;
        public static final int AVCProfileExtended = 4;
        public static final int AVCProfileHigh = 8;
        public static final int AVCProfileHigh10 = 16;
        public static final int AVCProfileHigh422 = 32;
        public static final int AVCProfileHigh444 = 64;
        public static final int AVCProfileMain = 2;
        public static final int DolbyVisionLevelFhd24 = 4;
        public static final int DolbyVisionLevelFhd30 = 8;
        public static final int DolbyVisionLevelFhd60 = 16;
        public static final int DolbyVisionLevelHd24 = 1;
        public static final int DolbyVisionLevelHd30 = 2;
        public static final int DolbyVisionLevelUhd24 = 32;
        public static final int DolbyVisionLevelUhd30 = 64;
        public static final int DolbyVisionLevelUhd48 = 128;
        public static final int DolbyVisionLevelUhd60 = 256;
        public static final int DolbyVisionProfileDvavPen = 2;
        public static final int DolbyVisionProfileDvavPer = 1;
        public static final int DolbyVisionProfileDvavSe = 512;
        public static final int DolbyVisionProfileDvheDen = 8;
        public static final int DolbyVisionProfileDvheDer = 4;
        public static final int DolbyVisionProfileDvheDtb = 128;
        public static final int DolbyVisionProfileDvheDth = 64;
        public static final int DolbyVisionProfileDvheDtr = 16;
        public static final int DolbyVisionProfileDvheSt = 256;
        public static final int DolbyVisionProfileDvheStn = 32;
        public static final int H263Level10 = 1;
        public static final int H263Level20 = 2;
        public static final int H263Level30 = 4;
        public static final int H263Level40 = 8;
        public static final int H263Level45 = 16;
        public static final int H263Level50 = 32;
        public static final int H263Level60 = 64;
        public static final int H263Level70 = 128;
        public static final int H263ProfileBackwardCompatible = 4;
        public static final int H263ProfileBaseline = 1;
        public static final int H263ProfileH320Coding = 2;
        public static final int H263ProfileHighCompression = 32;
        public static final int H263ProfileHighLatency = 256;
        public static final int H263ProfileISWV2 = 8;
        public static final int H263ProfileISWV3 = 16;
        public static final int H263ProfileInterlace = 128;
        public static final int H263ProfileInternet = 64;
        public static final int HEVCHighTierLevel1 = 2;
        public static final int HEVCHighTierLevel2 = 8;
        public static final int HEVCHighTierLevel21 = 32;
        public static final int HEVCHighTierLevel3 = 128;
        public static final int HEVCHighTierLevel31 = 512;
        public static final int HEVCHighTierLevel4 = 2048;
        public static final int HEVCHighTierLevel41 = 8192;
        public static final int HEVCHighTierLevel5 = 32768;
        public static final int HEVCHighTierLevel51 = 131072;
        public static final int HEVCHighTierLevel52 = 524288;
        public static final int HEVCHighTierLevel6 = 2097152;
        public static final int HEVCHighTierLevel61 = 8388608;
        public static final int HEVCHighTierLevel62 = 33554432;
        private static final int HEVCHighTierLevels = 44739242;
        public static final int HEVCMainTierLevel1 = 1;
        public static final int HEVCMainTierLevel2 = 4;
        public static final int HEVCMainTierLevel21 = 16;
        public static final int HEVCMainTierLevel3 = 64;
        public static final int HEVCMainTierLevel31 = 256;
        public static final int HEVCMainTierLevel4 = 1024;
        public static final int HEVCMainTierLevel41 = 4096;
        public static final int HEVCMainTierLevel5 = 16384;
        public static final int HEVCMainTierLevel51 = 65536;
        public static final int HEVCMainTierLevel52 = 262144;
        public static final int HEVCMainTierLevel6 = 1048576;
        public static final int HEVCMainTierLevel61 = 4194304;
        public static final int HEVCMainTierLevel62 = 16777216;
        public static final int HEVCProfileMain = 1;
        public static final int HEVCProfileMain10 = 2;
        public static final int HEVCProfileMain10HDR10 = 4096;
        public static final int HEVCProfileMainStill = 4;
        public static final int MPEG2LevelH14 = 2;
        public static final int MPEG2LevelHL = 3;
        public static final int MPEG2LevelHP = 4;
        public static final int MPEG2LevelLL = 0;
        public static final int MPEG2LevelML = 1;
        public static final int MPEG2Profile422 = 2;
        public static final int MPEG2ProfileHigh = 5;
        public static final int MPEG2ProfileMain = 1;
        public static final int MPEG2ProfileSNR = 3;
        public static final int MPEG2ProfileSimple = 0;
        public static final int MPEG2ProfileSpatial = 4;
        public static final int MPEG4Level0 = 1;
        public static final int MPEG4Level0b = 2;
        public static final int MPEG4Level1 = 4;
        public static final int MPEG4Level2 = 8;
        public static final int MPEG4Level3 = 16;
        public static final int MPEG4Level3b = 24;
        public static final int MPEG4Level4 = 32;
        public static final int MPEG4Level4a = 64;
        public static final int MPEG4Level5 = 128;
        public static final int MPEG4Level6 = 256;
        public static final int MPEG4ProfileAdvancedCoding = 4096;
        public static final int MPEG4ProfileAdvancedCore = 8192;
        public static final int MPEG4ProfileAdvancedRealTime = 1024;
        public static final int MPEG4ProfileAdvancedScalable = 16384;
        public static final int MPEG4ProfileAdvancedSimple = 32768;
        public static final int MPEG4ProfileBasicAnimated = 256;
        public static final int MPEG4ProfileCore = 4;
        public static final int MPEG4ProfileCoreScalable = 2048;
        public static final int MPEG4ProfileHybrid = 512;
        public static final int MPEG4ProfileMain = 8;
        public static final int MPEG4ProfileNbit = 16;
        public static final int MPEG4ProfileScalableTexture = 32;
        public static final int MPEG4ProfileSimple = 1;
        public static final int MPEG4ProfileSimpleFBA = 128;
        public static final int MPEG4ProfileSimpleFace = 64;
        public static final int MPEG4ProfileSimpleScalable = 2;
        public static final int VP8Level_Version0 = 1;
        public static final int VP8Level_Version1 = 2;
        public static final int VP8Level_Version2 = 4;
        public static final int VP8Level_Version3 = 8;
        public static final int VP8ProfileMain = 1;
        public static final int VP9Level1 = 1;
        public static final int VP9Level11 = 2;
        public static final int VP9Level2 = 4;
        public static final int VP9Level21 = 8;
        public static final int VP9Level3 = 16;
        public static final int VP9Level31 = 32;
        public static final int VP9Level4 = 64;
        public static final int VP9Level41 = 128;
        public static final int VP9Level5 = 256;
        public static final int VP9Level51 = 512;
        public static final int VP9Level52 = 1024;
        public static final int VP9Level6 = 2048;
        public static final int VP9Level61 = 4096;
        public static final int VP9Level62 = 8192;
        public static final int VP9Profile0 = 1;
        public static final int VP9Profile1 = 2;
        public static final int VP9Profile2 = 4;
        public static final int VP9Profile2HDR = 4096;
        public static final int VP9Profile3 = 8;
        public static final int VP9Profile3HDR = 8192;
        public int level;
        public int profile;

        public boolean equals(Object obj) {
            if (obj == null || !(obj instanceof CodecProfileLevel)) {
                return false;
            }
            CodecProfileLevel codecProfileLevel = (CodecProfileLevel) obj;
            return codecProfileLevel.profile == this.profile && codecProfileLevel.level == this.level;
        }

        public int hashCode() {
            return Long.hashCode((this.profile << 32) | this.level);
        }
    }

    public final CodecCapabilities getCapabilitiesForType(String str) {
        CodecCapabilities codecCapabilities = this.mCaps.get(str);
        if (codecCapabilities == null) {
            throw new IllegalArgumentException("codec does not support type");
        }
        return codecCapabilities.dup();
    }

    public MediaCodecInfo makeRegular() {
        ArrayList arrayList = new ArrayList();
        for (CodecCapabilities codecCapabilities : this.mCaps.values()) {
            if (codecCapabilities.isRegular()) {
                arrayList.add(codecCapabilities);
            }
        }
        if (arrayList.size() == 0) {
            return null;
        }
        return arrayList.size() == this.mCaps.size() ? this : new MediaCodecInfo(this.mName, this.mIsEncoder, (CodecCapabilities[]) arrayList.toArray(new CodecCapabilities[arrayList.size()]));
    }
}
