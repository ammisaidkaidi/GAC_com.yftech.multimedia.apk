package android.text.util;

import android.content.Context;
import android.telephony.PhoneNumberUtils;
import android.telephony.SubscriptionPlan;
import android.telephony.TelephonyManager;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.text.method.MovementMethod;
import android.text.style.URLSpan;
import android.util.EventLog;
import android.util.Log;
import android.util.Patterns;
import android.view.textclassifier.TextClassifier;
import android.view.textclassifier.TextLinks;
import android.view.textclassifier.TextLinksParams;
import android.webkit.WebView;
import android.widget.TextView;
import com.android.i18n.phonenumbers.PhoneNumberMatch;
import com.android.i18n.phonenumbers.PhoneNumberUtil;
import com.android.internal.util.Preconditions;
import java.io.UnsupportedEncodingException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.function.Consumer;
import java.util.function.Supplier;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import libcore.util.EmptyArray;

/* loaded from: /home/user/work/dex/classes2.dex */
public class Linkify {
    public static final int ALL = 15;
    public static final int EMAIL_ADDRESSES = 2;
    private static final String LOG_TAG = "Linkify";

    @Deprecated
    public static final int MAP_ADDRESSES = 8;
    public static final int PHONE_NUMBERS = 4;
    private static final int PHONE_NUMBER_MINIMUM_DIGITS = 5;
    public static final int WEB_URLS = 1;
    public static final MatchFilter sUrlMatchFilter = new MatchFilter() { // from class: android.text.util.Linkify.1
        @Override // android.text.util.Linkify.MatchFilter
        public final boolean acceptMatch(CharSequence charSequence, int i, int i2) {
            return i == 0 || charSequence.charAt(i - 1) != '@';
        }
    };
    public static final MatchFilter sPhoneNumberMatchFilter = new MatchFilter() { // from class: android.text.util.Linkify.2
        @Override // android.text.util.Linkify.MatchFilter
        public final boolean acceptMatch(CharSequence charSequence, int i, int i2) {
            int i3 = 0;
            while (i < i2) {
                if (Character.isDigit(charSequence.charAt(i)) && (i3 = i3 + 1) >= 5) {
                    return true;
                }
                i++;
            }
            return false;
        }
    };
    public static final TransformFilter sPhoneNumberTransformFilter = new TransformFilter() { // from class: android.text.util.Linkify.3
        @Override // android.text.util.Linkify.TransformFilter
        public final String transformUrl(Matcher matcher, String str) {
            return Patterns.digitsAndPlusOnly(matcher);
        }
    };

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes2.dex */
    public @interface LinkifyMask {
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    public interface MatchFilter {
        boolean acceptMatch(CharSequence charSequence, int i, int i2);
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    public interface TransformFilter {
        String transformUrl(Matcher matcher, String str);
    }

    public static final boolean addLinks(Spannable spannable, int i) {
        return addLinks(spannable, i, (Context) null);
    }

    private static boolean addLinks(Spannable spannable, int i, Context context) {
        if (spannable != null && containsUnsupportedCharacters(spannable.toString())) {
            EventLog.writeEvent(1397638484, "116321860", -1, TextClassifier.TYPE_UNKNOWN);
            return false;
        }
        if (i == 0) {
            return false;
        }
        URLSpan[] uRLSpanArr = (URLSpan[]) spannable.getSpans(0, spannable.length(), URLSpan.class);
        for (int length = uRLSpanArr.length - 1; length >= 0; length--) {
            spannable.removeSpan(uRLSpanArr[length]);
        }
        ArrayList arrayList = new ArrayList();
        if ((i & 1) != 0) {
            gatherLinks(arrayList, spannable, Patterns.AUTOLINK_WEB_URL, new String[]{"http://", "https://", "rtsp://"}, sUrlMatchFilter, null);
        }
        if ((i & 2) != 0) {
            gatherLinks(arrayList, spannable, Patterns.AUTOLINK_EMAIL_ADDRESS, new String[]{WebView.SCHEME_MAILTO}, null, null);
        }
        if ((i & 4) != 0) {
            gatherTelLinks(arrayList, spannable, context);
        }
        if ((i & 8) != 0) {
            gatherMapLinks(arrayList, spannable);
        }
        pruneOverlaps(arrayList);
        if (arrayList.size() == 0) {
            return false;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            LinkSpec linkSpec = (LinkSpec) it.next();
            applyLink(linkSpec.url, linkSpec.start, linkSpec.end, spannable);
        }
        return true;
    }

    public static boolean containsUnsupportedCharacters(String str) {
        if (str.contains("\u202c")) {
            Log.e(LOG_TAG, "Unsupported character for applying links: u202C");
            return true;
        }
        if (str.contains("\u202d")) {
            Log.e(LOG_TAG, "Unsupported character for applying links: u202D");
            return true;
        }
        if (!str.contains("\u202e")) {
            return false;
        }
        Log.e(LOG_TAG, "Unsupported character for applying links: u202E");
        return true;
    }

    public static final boolean addLinks(TextView textView, int i) {
        if (i == 0) {
            return false;
        }
        Context context = textView.getContext();
        CharSequence text = textView.getText();
        if (text instanceof Spannable) {
            if (!addLinks((Spannable) text, i, context)) {
                return false;
            }
            addLinkMovementMethod(textView);
            return true;
        }
        SpannableString valueOf = SpannableString.valueOf(text);
        if (!addLinks(valueOf, i, context)) {
            return false;
        }
        addLinkMovementMethod(textView);
        textView.setText(valueOf);
        return true;
    }

    private static final void addLinkMovementMethod(TextView textView) {
        MovementMethod movementMethod = textView.getMovementMethod();
        if ((movementMethod == null || !(movementMethod instanceof LinkMovementMethod)) && textView.getLinksClickable()) {
            textView.setMovementMethod(LinkMovementMethod.getInstance());
        }
    }

    public static final void addLinks(TextView textView, Pattern pattern, String str) {
        addLinks(textView, pattern, str, (String[]) null, (MatchFilter) null, (TransformFilter) null);
    }

    public static final void addLinks(TextView textView, Pattern pattern, String str, MatchFilter matchFilter, TransformFilter transformFilter) {
        addLinks(textView, pattern, str, (String[]) null, matchFilter, transformFilter);
    }

    public static final void addLinks(TextView textView, Pattern pattern, String str, String[] strArr, MatchFilter matchFilter, TransformFilter transformFilter) {
        SpannableString valueOf = SpannableString.valueOf(textView.getText());
        if (addLinks(valueOf, pattern, str, strArr, matchFilter, transformFilter)) {
            textView.setText(valueOf);
            addLinkMovementMethod(textView);
        }
    }

    public static final boolean addLinks(Spannable spannable, Pattern pattern, String str) {
        return addLinks(spannable, pattern, str, (String[]) null, (MatchFilter) null, (TransformFilter) null);
    }

    public static final boolean addLinks(Spannable spannable, Pattern pattern, String str, MatchFilter matchFilter, TransformFilter transformFilter) {
        return addLinks(spannable, pattern, str, (String[]) null, matchFilter, transformFilter);
    }

    public static final boolean addLinks(Spannable spannable, Pattern pattern, String str, String[] strArr, MatchFilter matchFilter, TransformFilter transformFilter) {
        if (spannable != null && containsUnsupportedCharacters(spannable.toString())) {
            EventLog.writeEvent(1397638484, "116321860", -1, TextClassifier.TYPE_UNKNOWN);
            return false;
        }
        if (str == null) {
            str = TextClassifier.TYPE_UNKNOWN;
        }
        if (strArr == null || strArr.length < 1) {
            strArr = EmptyArray.STRING;
        }
        String[] strArr2 = new String[strArr.length + 1];
        strArr2[0] = str.toLowerCase(Locale.ROOT);
        int i = 0;
        while (i < strArr.length) {
            String str2 = strArr[i];
            i++;
            strArr2[i] = str2 == null ? TextClassifier.TYPE_UNKNOWN : str2.toLowerCase(Locale.ROOT);
        }
        Matcher matcher = pattern.matcher(spannable);
        boolean z = false;
        while (matcher.find()) {
            int start = matcher.start();
            int end = matcher.end();
            if (matchFilter != null ? matchFilter.acceptMatch(spannable, start, end) : true) {
                applyLink(makeUrl(matcher.group(0), strArr2, matcher, transformFilter), start, end, spannable);
                z = true;
            }
        }
        return z;
    }

    public static Future<Void> addLinksAsync(TextView textView, TextLinksParams textLinksParams) {
        return addLinksAsync(textView, textLinksParams, null, null);
    }

    public static Future<Void> addLinksAsync(TextView textView, int i) {
        return addLinksAsync(textView, TextLinksParams.fromLinkMask(i), null, null);
    }

    public static Future<Void> addLinksAsync(final TextView textView, TextLinksParams textLinksParams, Executor executor, Consumer<Integer> consumer) {
        Preconditions.checkNotNull(textView);
        final CharSequence text = textView.getText();
        final Spannable valueOf = text instanceof Spannable ? (Spannable) text : SpannableString.valueOf(text);
        return addLinksAsync(valueOf, textView.getTextClassifier(), textLinksParams, executor, consumer, new Runnable() { // from class: android.text.util.-$$Lambda$Linkify$wWMJCtMwD1HLtUFna4kOfNQK1Z0
            @Override // java.lang.Runnable
            public final void run() {
                Linkify.lambda$addLinksAsync$0(TextView.this, valueOf, text);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$addLinksAsync$0(TextView textView, Spannable spannable, CharSequence charSequence) {
        addLinkMovementMethod(textView);
        if (spannable != charSequence) {
            textView.setText(spannable);
        }
    }

    public static Future<Void> addLinksAsync(Spannable spannable, TextClassifier textClassifier, TextLinksParams textLinksParams) {
        return addLinksAsync(spannable, textClassifier, textLinksParams, null, null);
    }

    public static Future<Void> addLinksAsync(Spannable spannable, TextClassifier textClassifier, int i) {
        return addLinksAsync(spannable, textClassifier, TextLinksParams.fromLinkMask(i), null, null);
    }

    public static Future<Void> addLinksAsync(Spannable spannable, TextClassifier textClassifier, TextLinksParams textLinksParams, Executor executor, Consumer<Integer> consumer) {
        return addLinksAsync(spannable, textClassifier, textLinksParams, executor, consumer, null);
    }

    private static Future<Void> addLinksAsync(final Spannable spannable, final TextClassifier textClassifier, final TextLinksParams textLinksParams, Executor executor, final Consumer<Integer> consumer, final Runnable runnable) {
        Preconditions.checkNotNull(spannable);
        Preconditions.checkNotNull(textClassifier);
        final CharSequence subSequence = spannable.subSequence(0, Math.min(spannable.length(), textClassifier.getMaxGenerateLinksTextLength()));
        final TextLinks.Request build = new TextLinks.Request.Builder(subSequence).setLegacyFallback(true).setEntityConfig(textLinksParams == null ? null : textLinksParams.getEntityConfig()).build();
        Supplier supplier = new Supplier() { // from class: android.text.util.-$$Lambda$Linkify$hPjCKfcU4vqhADicCa9bWKrOoog
            @Override // java.util.function.Supplier
            public final Object get() {
                TextLinks generateLinks;
                generateLinks = TextClassifier.this.generateLinks(build);
                return generateLinks;
            }
        };
        Consumer consumer2 = new Consumer() { // from class: android.text.util.-$$Lambda$Linkify$ZGgxzuK-YqBkZXo_7HE4xwOLsh0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                Linkify.lambda$addLinksAsync$2(consumer, spannable, subSequence, textLinksParams, runnable, (TextLinks) obj);
            }
        };
        if (executor == null) {
            return CompletableFuture.supplyAsync(supplier).thenAccept(consumer2);
        }
        return CompletableFuture.supplyAsync(supplier, executor).thenAccept(consumer2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$addLinksAsync$2(Consumer consumer, Spannable spannable, CharSequence charSequence, TextLinksParams textLinksParams, Runnable runnable, TextLinks textLinks) {
        if (textLinks.getLinks().isEmpty()) {
            if (consumer != null) {
                consumer.accept(1);
                return;
            }
            return;
        }
        TextLinks.TextLinkSpan[] textLinkSpanArr = (TextLinks.TextLinkSpan[]) spannable.getSpans(0, charSequence.length(), TextLinks.TextLinkSpan.class);
        for (int length = textLinkSpanArr.length - 1; length >= 0; length--) {
            spannable.removeSpan(textLinkSpanArr[length]);
        }
        int apply = textLinksParams.apply(spannable, textLinks);
        if (apply == 0 && runnable != null) {
            runnable.run();
        }
        if (consumer != null) {
            consumer.accept(Integer.valueOf(apply));
        }
    }

    private static final void applyLink(String str, int i, int i2, Spannable spannable) {
        spannable.setSpan(new URLSpan(str), i, i2, 33);
    }

    private static final String makeUrl(String str, String[] strArr, Matcher matcher, TransformFilter transformFilter) {
        boolean z;
        if (transformFilter != null) {
            str = transformFilter.transformUrl(matcher, str);
        }
        int i = 0;
        while (true) {
            z = true;
            if (i >= strArr.length) {
                z = false;
                break;
            }
            if (str.regionMatches(true, 0, strArr[i], 0, strArr[i].length())) {
                if (!str.regionMatches(false, 0, strArr[i], 0, strArr[i].length())) {
                    str = strArr[i] + str.substring(strArr[i].length());
                }
            } else {
                i++;
            }
        }
        if (z || strArr.length <= 0) {
            return str;
        }
        return strArr[0] + str;
    }

    private static final void gatherLinks(ArrayList<LinkSpec> arrayList, Spannable spannable, Pattern pattern, String[] strArr, MatchFilter matchFilter, TransformFilter transformFilter) {
        Matcher matcher = pattern.matcher(spannable);
        while (matcher.find()) {
            int start = matcher.start();
            int end = matcher.end();
            if (matchFilter == null || matchFilter.acceptMatch(spannable, start, end)) {
                LinkSpec linkSpec = new LinkSpec();
                linkSpec.url = makeUrl(matcher.group(0), strArr, matcher, transformFilter);
                linkSpec.start = start;
                linkSpec.end = end;
                arrayList.add(linkSpec);
            }
        }
    }

    private static void gatherTelLinks(ArrayList<LinkSpec> arrayList, Spannable spannable, Context context) {
        TelephonyManager from;
        PhoneNumberUtil phoneNumberUtil = PhoneNumberUtil.getInstance();
        if (context == null) {
            from = TelephonyManager.getDefault();
        } else {
            from = TelephonyManager.from(context);
        }
        for (PhoneNumberMatch phoneNumberMatch : phoneNumberUtil.findNumbers(spannable.toString(), from.getSimCountryIso().toUpperCase(Locale.US), PhoneNumberUtil.Leniency.POSSIBLE, SubscriptionPlan.BYTES_UNLIMITED)) {
            LinkSpec linkSpec = new LinkSpec();
            linkSpec.url = WebView.SCHEME_TEL + PhoneNumberUtils.normalizeNumber(phoneNumberMatch.rawString());
            linkSpec.start = phoneNumberMatch.start();
            linkSpec.end = phoneNumberMatch.end();
            arrayList.add(linkSpec);
        }
    }

    private static final void gatherMapLinks(ArrayList<LinkSpec> arrayList, Spannable spannable) {
        int indexOf;
        String obj = spannable.toString();
        int i = 0;
        while (true) {
            try {
                String findAddress = WebView.findAddress(obj);
                if (findAddress != null && (indexOf = obj.indexOf(findAddress)) >= 0) {
                    LinkSpec linkSpec = new LinkSpec();
                    int length = findAddress.length() + indexOf;
                    linkSpec.start = indexOf + i;
                    i += length;
                    linkSpec.end = i;
                    obj = obj.substring(length);
                    try {
                        linkSpec.url = WebView.SCHEME_GEO + URLEncoder.encode(findAddress, "UTF-8");
                        arrayList.add(linkSpec);
                    } catch (UnsupportedEncodingException unused) {
                    }
                }
                return;
            } catch (UnsupportedOperationException unused2) {
                return;
            }
        }
    }

    private static final void pruneOverlaps(ArrayList<LinkSpec> arrayList) {
        int i;
        Collections.sort(arrayList, new Comparator<LinkSpec>() { // from class: android.text.util.Linkify.4
            @Override // java.util.Comparator
            public final int compare(LinkSpec linkSpec, LinkSpec linkSpec2) {
                if (linkSpec.start < linkSpec2.start) {
                    return -1;
                }
                if (linkSpec.start <= linkSpec2.start && linkSpec.end >= linkSpec2.end) {
                    return linkSpec.end > linkSpec2.end ? -1 : 0;
                }
                return 1;
            }
        });
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size - 1) {
            LinkSpec linkSpec = arrayList.get(i2);
            int i3 = i2 + 1;
            LinkSpec linkSpec2 = arrayList.get(i3);
            if (linkSpec.start <= linkSpec2.start && linkSpec.end > linkSpec2.start) {
                if (linkSpec2.end > linkSpec.end && linkSpec.end - linkSpec.start <= linkSpec2.end - linkSpec2.start) {
                    i = linkSpec.end - linkSpec.start < linkSpec2.end - linkSpec2.start ? i2 : -1;
                } else {
                    i = i3;
                }
                if (i != -1) {
                    arrayList.remove(i);
                    size--;
                }
            }
            i2 = i3;
        }
    }
}
