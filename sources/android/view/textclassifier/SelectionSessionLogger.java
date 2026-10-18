package android.view.textclassifier;

import android.content.Context;
import android.metrics.LogMaker;
import android.telephony.ims.ImsReasonInfo;
import com.android.internal.annotations.VisibleForTesting;
import com.android.internal.logging.MetricsLogger;
import com.android.internal.util.Preconditions;
import java.text.BreakIterator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.StringJoiner;

/* loaded from: /home/user/work/dex/classes2.dex */
public final class SelectionSessionLogger {
    static final String CLASSIFIER_ID = "androidtc";
    private static final boolean DEBUG_LOG_ENABLED = false;
    private static final int ENTITY_TYPE = 1254;
    private static final int EVENT_END = 1251;
    private static final int EVENT_START = 1250;
    private static final int INDEX = 1120;
    private static final String LOG_TAG = "SelectionSessionLogger";
    private static final int MODEL_NAME = 1256;
    private static final int PREV_EVENT_DELTA = 1118;
    private static final int SESSION_ID = 1119;
    private static final int SMART_END = 1253;
    private static final int SMART_START = 1252;
    private static final int START_EVENT_DELTA = 1117;
    private static final String UNKNOWN = "unknown";
    private static final int WIDGET_TYPE = 1255;
    private static final int WIDGET_VERSION = 1262;
    private static final String ZERO = "0";
    private final MetricsLogger mMetricsLogger;

    private static void debugLog(LogMaker logMaker) {
    }

    private static String getLogSubTypeString(int i) {
        switch (i) {
            case 1:
                return "MANUAL";
            case 2:
                return "LINK";
            default:
                return "unknown";
        }
    }

    private static String getLogTypeString(int i) {
        switch (i) {
            case 1101:
                return "SELECTION_STARTED";
            case 1102:
                return "SELECTION_MODIFIED";
            case 1103:
                return "SELECT_ALL";
            case 1104:
                return "RESET";
            case 1105:
                return "SMART_SELECTION_SINGLE";
            case 1106:
                return "SMART_SELECTION_MULTI";
            case 1107:
                return "AUTO_SELECTION";
            case 1108:
                return "OVERTYPE";
            case 1109:
                return "COPY";
            case 1110:
                return "PASTE";
            case 1111:
                return "CUT";
            case 1112:
                return "SHARE";
            case 1113:
                return "SMART_SHARE";
            case 1114:
                return "DRAG";
            case 1115:
                return "ABANDON";
            case 1116:
                return "OTHER";
            default:
                return "unknown";
        }
    }

    public SelectionSessionLogger() {
        this.mMetricsLogger = new MetricsLogger();
    }

    @VisibleForTesting
    public SelectionSessionLogger(MetricsLogger metricsLogger) {
        this.mMetricsLogger = (MetricsLogger) Preconditions.checkNotNull(metricsLogger);
    }

    public void writeEvent(SelectionEvent selectionEvent) {
        Preconditions.checkNotNull(selectionEvent);
        LogMaker addTaggedData = new LogMaker(ImsReasonInfo.CODE_CALL_DROP_IWLAN_TO_LTE_UNAVAILABLE).setType(getLogType(selectionEvent)).setSubtype(getLogSubType(selectionEvent)).setPackageName(selectionEvent.getPackageName()).addTaggedData(START_EVENT_DELTA, Long.valueOf(selectionEvent.getDurationSinceSessionStart())).addTaggedData(PREV_EVENT_DELTA, Long.valueOf(selectionEvent.getDurationSincePreviousEvent())).addTaggedData(INDEX, Integer.valueOf(selectionEvent.getEventIndex())).addTaggedData(WIDGET_TYPE, selectionEvent.getWidgetType()).addTaggedData(WIDGET_VERSION, selectionEvent.getWidgetVersion()).addTaggedData(MODEL_NAME, SignatureParser.getModelName(selectionEvent.getResultId())).addTaggedData(ENTITY_TYPE, selectionEvent.getEntityType()).addTaggedData(SMART_START, Integer.valueOf(selectionEvent.getSmartStart())).addTaggedData(SMART_END, Integer.valueOf(selectionEvent.getSmartEnd())).addTaggedData(EVENT_START, Integer.valueOf(selectionEvent.getStart())).addTaggedData(EVENT_END, Integer.valueOf(selectionEvent.getEnd()));
        if (selectionEvent.getSessionId() != null) {
            addTaggedData.addTaggedData(SESSION_ID, selectionEvent.getSessionId().flattenToString());
        }
        this.mMetricsLogger.write(addTaggedData);
        debugLog(addTaggedData);
    }

    private static int getLogType(SelectionEvent selectionEvent) {
        int eventType = selectionEvent.getEventType();
        switch (eventType) {
            case 1:
                return 1101;
            case 2:
                return 1102;
            case 3:
                return 1105;
            case 4:
                return 1106;
            case 5:
                return 1107;
            default:
                switch (eventType) {
                    case 100:
                        return 1108;
                    case 101:
                        return 1109;
                    case 102:
                        return 1110;
                    case 103:
                        return 1111;
                    case 104:
                        return 1112;
                    case 105:
                        return 1113;
                    case 106:
                        return 1114;
                    case 107:
                        return 1115;
                    case 108:
                        return 1116;
                    default:
                        switch (eventType) {
                            case 200:
                                return 1103;
                            case 201:
                                return 1104;
                            default:
                                return 0;
                        }
                }
        }
    }

    private static int getLogSubType(SelectionEvent selectionEvent) {
        switch (selectionEvent.getInvocationMethod()) {
            case 1:
                return 1;
            case 2:
                return 2;
            default:
                return 0;
        }
    }

    public static BreakIterator getTokenIterator(Locale locale) {
        return BreakIterator.getWordInstance((Locale) Preconditions.checkNotNull(locale));
    }

    public static String createId(String str, int i, int i2, Context context, int i3, List<Locale> list) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(list);
        StringJoiner stringJoiner = new StringJoiner(",");
        Iterator<Locale> it = list.iterator();
        while (it.hasNext()) {
            stringJoiner.add(it.next().toLanguageTag());
        }
        return SignatureParser.createSignature("androidtc", String.format(Locale.US, "%s_v%d", stringJoiner.toString(), Integer.valueOf(i3)), Objects.hash(str, Integer.valueOf(i), Integer.valueOf(i2), context.getPackageName()));
    }

    @VisibleForTesting
    /* loaded from: /home/user/work/dex/classes2.dex */
    public static final class SignatureParser {
        static String createSignature(String str, String str2, int i) {
            return String.format(Locale.US, "%s|%s|%d", str, str2, Integer.valueOf(i));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static String getClassifierId(String str) {
            int indexOf;
            return (str != null && (indexOf = str.indexOf("|")) >= 0) ? str.substring(0, indexOf) : TextClassifier.TYPE_UNKNOWN;
        }

        static String getModelName(String str) {
            if (str == null) {
                return TextClassifier.TYPE_UNKNOWN;
            }
            int indexOf = str.indexOf("|") + 1;
            int indexOf2 = str.indexOf("|", indexOf);
            return (indexOf < 1 || indexOf2 < indexOf) ? TextClassifier.TYPE_UNKNOWN : str.substring(indexOf, indexOf2);
        }

        static int getHash(String str) {
            int indexOf;
            if (str != null && (indexOf = str.indexOf("|", str.indexOf("|"))) > 0) {
                return Integer.parseInt(str.substring(indexOf));
            }
            return 0;
        }
    }
}
