package android.net.captiveportal;

import android.text.TextUtils;
import android.util.Log;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class CaptivePortalProbeSpec {
    public static final String HTTP_LOCATION_HEADER_NAME = "Location";
    private static final String REGEX_SEPARATOR = "@@/@@";
    private static final String SPEC_SEPARATOR = "@@,@@";
    private static final String TAG = "CaptivePortalProbeSpec";
    private final String mEncodedSpec;
    private final URL mUrl;

    public abstract CaptivePortalProbeResult getResult(int i, String str);

    CaptivePortalProbeSpec(String str, URL url) {
        this.mEncodedSpec = str;
        this.mUrl = url;
    }

    public static CaptivePortalProbeSpec parseSpec(String str) throws ParseException, MalformedURLException {
        if (TextUtils.isEmpty(str)) {
            throw new ParseException("Empty probe spec", 0);
        }
        String[] split = TextUtils.split(str, REGEX_SEPARATOR);
        if (split.length != 3) {
            throw new ParseException("Probe spec does not have 3 parts", 0);
        }
        int length = split[0].length() + REGEX_SEPARATOR.length();
        int length2 = split[1].length() + length + REGEX_SEPARATOR.length();
        return new RegexMatchProbeSpec(str, new URL(split[0]), parsePatternIfNonEmpty(split[1], length), parsePatternIfNonEmpty(split[2], length2));
    }

    private static Pattern parsePatternIfNonEmpty(String str, int i) throws ParseException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return Pattern.compile(str);
        } catch (PatternSyntaxException e) {
            throw new ParseException(String.format("Invalid status pattern [%s]: %s", str, e), i);
        }
    }

    public static CaptivePortalProbeSpec parseSpecOrNull(String str) {
        if (str == null) {
            return null;
        }
        try {
            return parseSpec(str);
        } catch (MalformedURLException | ParseException e) {
            Log.e(TAG, "Invalid probe spec: " + str, e);
            return null;
        }
    }

    public static CaptivePortalProbeSpec[] parseCaptivePortalProbeSpecs(String str) {
        ArrayList arrayList = new ArrayList();
        if (str != null) {
            for (String str2 : TextUtils.split(str, SPEC_SEPARATOR)) {
                try {
                    arrayList.add(parseSpec(str2));
                } catch (MalformedURLException | ParseException e) {
                    Log.e(TAG, "Invalid probe spec: " + str2, e);
                }
            }
        }
        if (arrayList.isEmpty()) {
            Log.e(TAG, String.format("could not create any validation spec from %s", str));
        }
        return (CaptivePortalProbeSpec[]) arrayList.toArray(new CaptivePortalProbeSpec[arrayList.size()]);
    }

    public String getEncodedSpec() {
        return this.mEncodedSpec;
    }

    public URL getUrl() {
        return this.mUrl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class RegexMatchProbeSpec extends CaptivePortalProbeSpec {
        final Pattern mLocationHeaderRegex;
        final Pattern mStatusRegex;

        RegexMatchProbeSpec(String str, URL url, Pattern pattern, Pattern pattern2) {
            super(str, url);
            this.mStatusRegex = pattern;
            this.mLocationHeaderRegex = pattern2;
        }

        @Override // android.net.captiveportal.CaptivePortalProbeSpec
        public CaptivePortalProbeResult getResult(int i, String str) {
            return new CaptivePortalProbeResult((CaptivePortalProbeSpec.safeMatch(String.valueOf(i), this.mStatusRegex) && CaptivePortalProbeSpec.safeMatch(str, this.mLocationHeaderRegex)) ? 204 : 302, str, getUrl().toString(), this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean safeMatch(String str, Pattern pattern) {
        return pattern == null || TextUtils.isEmpty(str) || pattern.matcher(str).matches();
    }
}
