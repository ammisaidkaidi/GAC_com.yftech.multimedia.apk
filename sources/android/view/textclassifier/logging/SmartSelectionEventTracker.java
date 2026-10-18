package android.view.textclassifier.logging;

import android.content.Context;
import android.metrics.LogMaker;
import android.telephony.ims.ImsReasonInfo;
import android.util.Log;
import android.view.textclassifier.TextClassification;
import android.view.textclassifier.TextClassifier;
import android.view.textclassifier.TextSelection;
import com.android.internal.logging.MetricsLogger;
import com.android.internal.util.Preconditions;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Objects;
import java.util.UUID;

/* loaded from: /home/user/work/dex/classes2.dex */
public final class SmartSelectionEventTracker {
    private static final String CUSTOM_EDITTEXT = "customedit";
    private static final String CUSTOM_TEXTVIEW = "customview";
    private static final String CUSTOM_UNSELECTABLE_TEXTVIEW = "nosel-customview";
    private static final boolean DEBUG_LOG_ENABLED = true;
    private static final String EDITTEXT = "edittext";
    private static final String EDIT_WEBVIEW = "edit-webview";
    private static final int ENTITY_TYPE = 1254;
    private static final int EVENT_END = 1251;
    private static final int EVENT_START = 1250;
    private static final int INDEX = 1120;
    private static final String LOG_TAG = "SmartSelectEventTracker";
    private static final int MODEL_NAME = 1256;
    private static final int PREV_EVENT_DELTA = 1118;
    private static final int SESSION_ID = 1119;
    private static final int SMART_END = 1253;
    private static final int SMART_START = 1252;
    private static final int START_EVENT_DELTA = 1117;
    private static final String TEXTVIEW = "textview";
    private static final String UNKNOWN = "unknown";
    private static final String UNSELECTABLE_TEXTVIEW = "nosel-textview";
    private static final String WEBVIEW = "webview";
    private static final int WIDGET_TYPE = 1255;
    private static final int WIDGET_VERSION = 1262;
    private static final String ZERO = "0";
    private final Context mContext;
    private int mIndex;
    private long mLastEventTime;
    private final MetricsLogger mMetricsLogger;
    private String mModelName;
    private int mOrigStart;
    private final int[] mPrevIndices;
    private String mSessionId;
    private long mSessionStartTime;
    private final int[] mSmartIndices;
    private boolean mSmartSelectionTriggered;
    private final int mWidgetType;
    private final String mWidgetVersion;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes2.dex */
    public @interface WidgetType {
        public static final int CUSTOM_EDITTEXT = 7;
        public static final int CUSTOM_TEXTVIEW = 6;
        public static final int CUSTOM_UNSELECTABLE_TEXTVIEW = 8;
        public static final int EDITTEXT = 3;
        public static final int EDIT_WEBVIEW = 4;
        public static final int TEXTVIEW = 1;
        public static final int UNSELECTABLE_TEXTVIEW = 5;
        public static final int UNSPECIFIED = 0;
        public static final int WEBVIEW = 2;
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

    public SmartSelectionEventTracker(Context context, int i) {
        this.mMetricsLogger = new MetricsLogger();
        this.mSmartIndices = new int[2];
        this.mPrevIndices = new int[2];
        this.mWidgetType = i;
        this.mWidgetVersion = null;
        this.mContext = (Context) Preconditions.checkNotNull(context);
    }

    public SmartSelectionEventTracker(Context context, int i, String str) {
        this.mMetricsLogger = new MetricsLogger();
        this.mSmartIndices = new int[2];
        this.mPrevIndices = new int[2];
        this.mWidgetType = i;
        this.mWidgetVersion = str;
        this.mContext = (Context) Preconditions.checkNotNull(context);
    }

    public void logEvent(SelectionEvent selectionEvent) {
        Preconditions.checkNotNull(selectionEvent);
        if (selectionEvent.mEventType != 1 && this.mSessionId == null) {
            Log.d(LOG_TAG, "Selection session not yet started. Ignoring event");
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        switch (selectionEvent.mEventType) {
            case 1:
                this.mSessionId = startNewSession();
                Preconditions.checkArgument(selectionEvent.mEnd == selectionEvent.mStart + 1);
                this.mOrigStart = selectionEvent.mStart;
                this.mSessionStartTime = currentTimeMillis;
                break;
            case 2:
            case 5:
                if (this.mPrevIndices[0] == selectionEvent.mStart && this.mPrevIndices[1] == selectionEvent.mEnd) {
                    return;
                }
                break;
            case 3:
            case 4:
                this.mSmartSelectionTriggered = true;
                this.mModelName = getModelName(selectionEvent);
                this.mSmartIndices[0] = selectionEvent.mStart;
                this.mSmartIndices[1] = selectionEvent.mEnd;
                break;
        }
        writeEvent(selectionEvent, currentTimeMillis);
        if (selectionEvent.isTerminal()) {
            endSession();
        }
    }

    private void writeEvent(SelectionEvent selectionEvent, long j) {
        LogMaker addTaggedData = new LogMaker(ImsReasonInfo.CODE_CALL_DROP_IWLAN_TO_LTE_UNAVAILABLE).setType(getLogType(selectionEvent)).setSubtype(1).setPackageName(this.mContext.getPackageName()).addTaggedData(START_EVENT_DELTA, Long.valueOf(j - this.mSessionStartTime)).addTaggedData(PREV_EVENT_DELTA, Long.valueOf(this.mLastEventTime != 0 ? j - this.mLastEventTime : 0L)).addTaggedData(INDEX, Integer.valueOf(this.mIndex)).addTaggedData(WIDGET_TYPE, getWidgetTypeName()).addTaggedData(WIDGET_VERSION, this.mWidgetVersion).addTaggedData(MODEL_NAME, this.mModelName).addTaggedData(ENTITY_TYPE, selectionEvent.mEntityType).addTaggedData(SMART_START, Integer.valueOf(getSmartRangeDelta(this.mSmartIndices[0]))).addTaggedData(SMART_END, Integer.valueOf(getSmartRangeDelta(this.mSmartIndices[1]))).addTaggedData(EVENT_START, Integer.valueOf(getRangeDelta(selectionEvent.mStart))).addTaggedData(EVENT_END, Integer.valueOf(getRangeDelta(selectionEvent.mEnd))).addTaggedData(SESSION_ID, this.mSessionId);
        this.mMetricsLogger.write(addTaggedData);
        debugLog(addTaggedData);
        this.mLastEventTime = j;
        this.mPrevIndices[0] = selectionEvent.mStart;
        this.mPrevIndices[1] = selectionEvent.mEnd;
        this.mIndex++;
    }

    private String startNewSession() {
        endSession();
        this.mSessionId = createSessionId();
        return this.mSessionId;
    }

    private void endSession() {
        this.mOrigStart = 0;
        int[] iArr = this.mSmartIndices;
        this.mSmartIndices[1] = 0;
        iArr[0] = 0;
        int[] iArr2 = this.mPrevIndices;
        this.mPrevIndices[1] = 0;
        iArr2[0] = 0;
        this.mIndex = 0;
        this.mSessionStartTime = 0L;
        this.mLastEventTime = 0L;
        this.mSmartSelectionTriggered = false;
        this.mModelName = getModelName(null);
        this.mSessionId = null;
    }

    private static int getLogType(SelectionEvent selectionEvent) {
        int i = selectionEvent.mEventType;
        switch (i) {
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
                switch (i) {
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
                        switch (i) {
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

    private int getRangeDelta(int i) {
        return i - this.mOrigStart;
    }

    private int getSmartRangeDelta(int i) {
        if (this.mSmartSelectionTriggered) {
            return getRangeDelta(i);
        }
        return 0;
    }

    private String getWidgetTypeName() {
        switch (this.mWidgetType) {
            case 1:
                return "textview";
            case 2:
                return "webview";
            case 3:
                return "edittext";
            case 4:
                return "edit-webview";
            case 5:
                return "nosel-textview";
            case 6:
                return "customview";
            case 7:
                return "customedit";
            case 8:
                return "nosel-customview";
            default:
                return "unknown";
        }
    }

    private String getModelName(SelectionEvent selectionEvent) {
        return selectionEvent == null ? TextClassifier.TYPE_UNKNOWN : Objects.toString(selectionEvent.mVersionTag, TextClassifier.TYPE_UNKNOWN);
    }

    private static String createSessionId() {
        return UUID.randomUUID().toString();
    }

    private static void debugLog(LogMaker logMaker) {
        String objects = Objects.toString(logMaker.getTaggedData(WIDGET_TYPE), "unknown");
        String objects2 = Objects.toString(logMaker.getTaggedData(WIDGET_VERSION), TextClassifier.TYPE_UNKNOWN);
        if (!objects2.isEmpty()) {
            objects = objects + "-" + objects2;
        }
        int parseInt = Integer.parseInt(Objects.toString(logMaker.getTaggedData(INDEX), ZERO));
        if (logMaker.getType() == 1101) {
            String objects3 = Objects.toString(logMaker.getTaggedData(SESSION_ID), TextClassifier.TYPE_UNKNOWN);
            Log.d(LOG_TAG, String.format("New selection session: %s (%s)", objects, objects3.substring(objects3.lastIndexOf("-") + 1)));
        }
        String objects4 = Objects.toString(logMaker.getTaggedData(MODEL_NAME), "unknown");
        Log.d(LOG_TAG, String.format("%2d: %s/%s, range=%d,%d - smart_range=%d,%d (%s/%s)", Integer.valueOf(parseInt), getLogTypeString(logMaker.getType()), Objects.toString(logMaker.getTaggedData(ENTITY_TYPE), "unknown"), Integer.valueOf(Integer.parseInt(Objects.toString(logMaker.getTaggedData(EVENT_START), ZERO))), Integer.valueOf(Integer.parseInt(Objects.toString(logMaker.getTaggedData(EVENT_END), ZERO))), Integer.valueOf(Integer.parseInt(Objects.toString(logMaker.getTaggedData(SMART_START), ZERO))), Integer.valueOf(Integer.parseInt(Objects.toString(logMaker.getTaggedData(SMART_END), ZERO))), objects, objects4));
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    public static final class SelectionEvent {
        private static final String NO_VERSION_TAG = "";
        public static final int OUT_OF_BOUNDS = Integer.MAX_VALUE;
        public static final int OUT_OF_BOUNDS_NEGATIVE = Integer.MIN_VALUE;
        private final int mEnd;
        private final String mEntityType;
        private int mEventType;
        private final int mStart;
        private final String mVersionTag;

        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: /home/user/work/dex/classes2.dex */
        public @interface ActionType {
            public static final int ABANDON = 107;
            public static final int COPY = 101;
            public static final int CUT = 103;
            public static final int DRAG = 106;
            public static final int OTHER = 108;
            public static final int OVERTYPE = 100;
            public static final int PASTE = 102;
            public static final int RESET = 201;
            public static final int SELECT_ALL = 200;
            public static final int SHARE = 104;
            public static final int SMART_SHARE = 105;
        }

        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: /home/user/work/dex/classes2.dex */
        private @interface EventType {
            public static final int AUTO_SELECTION = 5;
            public static final int SELECTION_MODIFIED = 2;
            public static final int SELECTION_STARTED = 1;
            public static final int SMART_SELECTION_MULTI = 4;
            public static final int SMART_SELECTION_SINGLE = 3;
        }

        private SelectionEvent(int i, int i2, int i3, String str, String str2) {
            Preconditions.checkArgument(i2 >= i, "end cannot be less than start");
            this.mStart = i;
            this.mEnd = i2;
            this.mEventType = i3;
            this.mEntityType = (String) Preconditions.checkNotNull(str);
            this.mVersionTag = (String) Preconditions.checkNotNull(str2);
        }

        public static SelectionEvent selectionStarted(int i) {
            return new SelectionEvent(i, i + 1, 1, "", "");
        }

        public static SelectionEvent selectionModified(int i, int i2) {
            return new SelectionEvent(i, i2, 2, "", "");
        }

        public static SelectionEvent selectionModified(int i, int i2, TextClassification textClassification) {
            return new SelectionEvent(i, i2, 2, textClassification.getEntityCount() > 0 ? textClassification.getEntity(0) : "", getVersionInfo(textClassification.getId()));
        }

        public static SelectionEvent selectionModified(int i, int i2, TextSelection textSelection) {
            return new SelectionEvent(i, i2, getSourceClassifier(textSelection.getId()).equals(TextClassifier.DEFAULT_LOG_TAG) ? i2 - i > 1 ? 4 : 3 : 5, textSelection.getEntityCount() > 0 ? textSelection.getEntity(0) : "", getVersionInfo(textSelection.getId()));
        }

        public static SelectionEvent selectionAction(int i, int i2, int i3) {
            return new SelectionEvent(i, i2, i3, "", "");
        }

        public static SelectionEvent selectionAction(int i, int i2, int i3, TextClassification textClassification) {
            return new SelectionEvent(i, i2, i3, textClassification.getEntityCount() > 0 ? textClassification.getEntity(0) : "", getVersionInfo(textClassification.getId()));
        }

        private static String getVersionInfo(String str) {
            int indexOf = str.indexOf("|");
            int indexOf2 = str.indexOf("|", indexOf);
            return (indexOf < 0 || indexOf2 < indexOf) ? "" : str.substring(indexOf, indexOf2);
        }

        private static String getSourceClassifier(String str) {
            int indexOf = str.indexOf("|");
            return indexOf >= 0 ? str.substring(0, indexOf) : "";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isTerminal() {
            switch (this.mEventType) {
                case 100:
                case 101:
                case 102:
                case 103:
                case 104:
                case 105:
                case 106:
                case 107:
                case 108:
                    return true;
                default:
                    return false;
            }
        }
    }
}
