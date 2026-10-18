package android.view.textclassifier;

import android.metrics.LogMaker;
import android.telephony.PreciseDisconnectCause;
import android.util.ArrayMap;
import android.view.textclassifier.TextLinks;
import com.android.internal.annotations.VisibleForTesting;
import com.android.internal.logging.MetricsLogger;
import com.android.internal.util.Preconditions;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;
import java.util.UUID;
import java.util.function.Function;

@VisibleForTesting(visibility = VisibleForTesting.Visibility.PACKAGE)
/* loaded from: /home/user/work/dex/classes2.dex */
public final class GenerateLinksLogger {
    private static final boolean DEBUG_LOG_ENABLED = false;
    private static final String LOG_TAG = "GenerateLinksLogger";
    private static final String ZERO = "0";
    private final MetricsLogger mMetricsLogger;
    private final Random mRng;
    private final int mSampleRate;

    private static void debugLog(LogMaker logMaker) {
    }

    public GenerateLinksLogger(int i) {
        this.mSampleRate = i;
        this.mRng = new Random(System.nanoTime());
        this.mMetricsLogger = new MetricsLogger();
    }

    @VisibleForTesting
    public GenerateLinksLogger(int i, MetricsLogger metricsLogger) {
        this.mSampleRate = i;
        this.mRng = new Random(System.nanoTime());
        this.mMetricsLogger = metricsLogger;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void logGenerateLinks(CharSequence charSequence, TextLinks textLinks, String str, long j) {
        String entity;
        Preconditions.checkNotNull(charSequence);
        Preconditions.checkNotNull(textLinks);
        Preconditions.checkNotNull(str);
        if (shouldLog()) {
            LinkifyStats linkifyStats = new LinkifyStats();
            ArrayMap arrayMap = new ArrayMap();
            for (TextLinks.TextLink textLink : textLinks.getLinks()) {
                if (textLink.getEntityCount() != 0 && (entity = textLink.getEntity(0)) != null && !TextClassifier.TYPE_OTHER.equals(entity) && !TextClassifier.TYPE_UNKNOWN.equals(entity)) {
                    linkifyStats.countLink(textLink);
                    ((LinkifyStats) arrayMap.computeIfAbsent(entity, new Function() { // from class: android.view.textclassifier.-$$Lambda$GenerateLinksLogger$vmbT_h7MLlbrIm0lJJwA-eHQhXk
                        @Override // java.util.function.Function
                        public final Object apply(Object obj) {
                            return GenerateLinksLogger.lambda$logGenerateLinks$0((String) obj);
                        }
                    })).countLink(textLink);
                }
            }
            String uuid = UUID.randomUUID().toString();
            writeStats(uuid, str, null, linkifyStats, charSequence, j);
            Iterator it = arrayMap.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                writeStats(uuid, str, (String) entry.getKey(), (LinkifyStats) entry.getValue(), charSequence, j);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ LinkifyStats lambda$logGenerateLinks$0(String str) {
        return new LinkifyStats();
    }

    private boolean shouldLog() {
        return this.mSampleRate <= 1 || this.mRng.nextInt(this.mSampleRate) == 0;
    }

    private void writeStats(String str, String str2, String str3, LinkifyStats linkifyStats, CharSequence charSequence, long j) {
        LogMaker addTaggedData = new LogMaker(PreciseDisconnectCause.SIP_NOT_SUPPORTED).setPackageName(str2).addTaggedData(PreciseDisconnectCause.SIP_NOT_ACCEPTABLE, str).addTaggedData(PreciseDisconnectCause.SIP_BAD_ADDRESS, Integer.valueOf(linkifyStats.mNumLinks)).addTaggedData(PreciseDisconnectCause.SIP_BUSY, Integer.valueOf(linkifyStats.mNumLinksTextLength)).addTaggedData(PreciseDisconnectCause.SIP_TEMPRARILY_UNAVAILABLE, Integer.valueOf(charSequence.length())).addTaggedData(PreciseDisconnectCause.SIP_REQUEST_TIMEOUT, Long.valueOf(j));
        if (str3 != null) {
            addTaggedData.addTaggedData(PreciseDisconnectCause.SIP_REQUEST_CANCELLED, str3);
        }
        this.mMetricsLogger.write(addTaggedData);
        debugLog(addTaggedData);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public static final class LinkifyStats {
        int mNumLinks;
        int mNumLinksTextLength;

        private LinkifyStats() {
        }

        void countLink(TextLinks.TextLink textLink) {
            this.mNumLinks++;
            this.mNumLinksTextLength += textLink.getEnd() - textLink.getStart();
        }
    }
}
