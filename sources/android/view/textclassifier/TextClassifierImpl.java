package android.view.textclassifier;

import android.R;
import android.app.PendingIntent;
import android.app.RemoteAction;
import android.content.ComponentName;
import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Bundle;
import android.os.DropBoxManager;
import android.os.LocaleList;
import android.os.ParcelFileDescriptor;
import android.os.UserManager;
import android.provider.Browser;
import android.provider.CalendarContract;
import android.provider.ContactsContract;
import android.provider.SearchRecentSuggestions;
import android.service.notification.ZenModeConfig;
import android.view.textclassifier.TextClassification;
import android.view.textclassifier.TextClassifier;
import android.view.textclassifier.TextClassifierImplNative;
import android.view.textclassifier.TextLinks;
import android.view.textclassifier.TextSelection;
import com.android.internal.annotations.GuardedBy;
import com.android.internal.util.Preconditions;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.time.Instant;
import java.time.ZonedDateTime;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.StringJoiner;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

/* loaded from: /home/user/work/dex/classes2.dex */
public final class TextClassifierImpl implements TextClassifier {
    private static final String LOG_TAG = "androidtc";
    private static final String MODEL_DIR = "/etc/textclassifier/";
    private static final String MODEL_FILE_REGEX = "textclassifier\\.(.*)\\.model";
    private static final String UPDATED_MODEL_FILE_PATH = "/data/misc/textclassifier/textclassifier.model";

    @GuardedBy("mLock")
    private List<ModelFile> mAllModelFiles;
    private final Context mContext;
    private final TextClassifier mFallback;
    private final GenerateLinksLogger mGenerateLinksLogger;
    private final Object mLock;
    private final Object mLoggerLock;

    @GuardedBy("mLock")
    private ModelFile mModel;

    @GuardedBy("mLock")
    private TextClassifierImplNative mNative;

    @GuardedBy("mLoggerLock")
    private SelectionSessionLogger mSessionLogger;
    private final TextClassificationConstants mSettings;

    public TextClassifierImpl(Context context, TextClassificationConstants textClassificationConstants, TextClassifier textClassifier) {
        this.mLock = new Object();
        this.mLoggerLock = new Object();
        this.mContext = (Context) Preconditions.checkNotNull(context);
        this.mFallback = (TextClassifier) Preconditions.checkNotNull(textClassifier);
        this.mSettings = (TextClassificationConstants) Preconditions.checkNotNull(textClassificationConstants);
        this.mGenerateLinksLogger = new GenerateLinksLogger(this.mSettings.getGenerateLinksLogSampleRate());
    }

    public TextClassifierImpl(Context context, TextClassificationConstants textClassificationConstants) {
        this(context, textClassificationConstants, TextClassifier.NO_OP);
    }

    @Override // android.view.textclassifier.TextClassifier
    public TextSelection suggestSelection(TextSelection.Request request) {
        int i;
        int i2;
        Preconditions.checkNotNull(request);
        TextClassifier.Utils.checkMainThread();
        try {
            int endIndex = request.getEndIndex() - request.getStartIndex();
            String charSequence = request.getText().toString();
            if (charSequence.length() > 0 && endIndex <= this.mSettings.getSuggestSelectionMaxRangeLength()) {
                String concatenateLocales = concatenateLocales(request.getDefaultLocales());
                ZonedDateTime now = ZonedDateTime.now();
                TextClassifierImplNative textClassifierImplNative = getNative(request.getDefaultLocales());
                if (this.mSettings.isModelDarkLaunchEnabled() && !request.isDarkLaunchAllowed()) {
                    i2 = request.getStartIndex();
                    i = request.getEndIndex();
                } else {
                    int[] suggestSelection = textClassifierImplNative.suggestSelection(charSequence, request.getStartIndex(), request.getEndIndex(), new TextClassifierImplNative.SelectionOptions(concatenateLocales));
                    int i3 = suggestSelection[0];
                    i = suggestSelection[1];
                    i2 = i3;
                }
                if (i2 < i && i2 >= 0 && i <= charSequence.length() && i2 <= request.getStartIndex() && i >= request.getEndIndex()) {
                    TextSelection.Builder builder = new TextSelection.Builder(i2, i);
                    TextClassifierImplNative.ClassificationResult[] classifyText = textClassifierImplNative.classifyText(charSequence, i2, i, new TextClassifierImplNative.ClassificationOptions(now.toInstant().toEpochMilli(), now.getZone().getId(), concatenateLocales));
                    int length = classifyText.length;
                    for (int i4 = 0; i4 < length; i4++) {
                        builder.setEntityType(classifyText[i4].getCollection(), classifyText[i4].getScore());
                    }
                    return builder.setId(createId(charSequence, request.getStartIndex(), request.getEndIndex())).build();
                }
                Log.d("androidtc", "Got bad indices for input text. Ignoring result.");
            }
        } catch (Throwable th) {
            Log.e("androidtc", "Error suggesting selection for text. No changes to selection suggested.", th);
        }
        return this.mFallback.suggestSelection(request);
    }

    @Override // android.view.textclassifier.TextClassifier
    public TextClassification classifyText(TextClassification.Request request) {
        Preconditions.checkNotNull(request);
        TextClassifier.Utils.checkMainThread();
        try {
            int endIndex = request.getEndIndex() - request.getStartIndex();
            String charSequence = request.getText().toString();
            if (charSequence.length() > 0 && endIndex <= this.mSettings.getClassifyTextMaxRangeLength()) {
                String concatenateLocales = concatenateLocales(request.getDefaultLocales());
                ZonedDateTime referenceTime = request.getReferenceTime() != null ? request.getReferenceTime() : ZonedDateTime.now();
                TextClassifierImplNative.ClassificationResult[] classifyText = getNative(request.getDefaultLocales()).classifyText(charSequence, request.getStartIndex(), request.getEndIndex(), new TextClassifierImplNative.ClassificationOptions(referenceTime.toInstant().toEpochMilli(), referenceTime.getZone().getId(), concatenateLocales));
                if (classifyText.length > 0) {
                    return createClassificationResult(classifyText, charSequence, request.getStartIndex(), request.getEndIndex(), referenceTime.toInstant());
                }
            }
        } catch (Throwable th) {
            Log.e("androidtc", "Error getting text classification info.", th);
        }
        return this.mFallback.classifyText(request);
    }

    @Override // android.view.textclassifier.TextClassifier
    public TextLinks generateLinks(TextLinks.Request request) {
        Collection<String> entityListDefault;
        String callingPackageName;
        Preconditions.checkNotNull(request);
        TextClassifier.Utils.checkTextLength(request.getText(), getMaxGenerateLinksTextLength());
        TextClassifier.Utils.checkMainThread();
        if (!this.mSettings.isSmartLinkifyEnabled() && request.isLegacyFallback()) {
            return TextClassifier.Utils.generateLegacyLinks(request);
        }
        String charSequence = request.getText().toString();
        TextLinks.Builder builder = new TextLinks.Builder(charSequence);
        try {
            long currentTimeMillis = System.currentTimeMillis();
            ZonedDateTime now = ZonedDateTime.now();
            if (request.getEntityConfig() != null) {
                entityListDefault = request.getEntityConfig().resolveEntityListModifications(getEntitiesForHints(request.getEntityConfig().getHints()));
            } else {
                entityListDefault = this.mSettings.getEntityListDefault();
            }
            for (TextClassifierImplNative.AnnotatedSpan annotatedSpan : getNative(request.getDefaultLocales()).annotate(charSequence, new TextClassifierImplNative.AnnotationOptions(now.toInstant().toEpochMilli(), now.getZone().getId(), concatenateLocales(request.getDefaultLocales())))) {
                TextClassifierImplNative.ClassificationResult[] classification = annotatedSpan.getClassification();
                if (classification.length != 0 && entityListDefault.contains(classification[0].getCollection())) {
                    HashMap hashMap = new HashMap();
                    for (int i = 0; i < classification.length; i++) {
                        hashMap.put(classification[i].getCollection(), Float.valueOf(classification[i].getScore()));
                    }
                    builder.addLink(annotatedSpan.getStartIndex(), annotatedSpan.getEndIndex(), hashMap);
                }
            }
            TextLinks build = builder.build();
            long currentTimeMillis2 = System.currentTimeMillis();
            if (request.getCallingPackageName() == null) {
                callingPackageName = this.mContext.getPackageName();
            } else {
                callingPackageName = request.getCallingPackageName();
            }
            this.mGenerateLinksLogger.logGenerateLinks(request.getText(), build, callingPackageName, currentTimeMillis2 - currentTimeMillis);
            return build;
        } catch (Throwable th) {
            Log.e("androidtc", "Error getting links info.", th);
            return this.mFallback.generateLinks(request);
        }
    }

    @Override // android.view.textclassifier.TextClassifier
    public int getMaxGenerateLinksTextLength() {
        return this.mSettings.getGenerateLinksMaxTextLength();
    }

    private Collection<String> getEntitiesForHints(Collection<String> collection) {
        boolean contains = collection.contains(TextClassifier.HINT_TEXT_IS_EDITABLE);
        if (contains == collection.contains(TextClassifier.HINT_TEXT_IS_NOT_EDITABLE)) {
            return this.mSettings.getEntityListDefault();
        }
        if (contains) {
            return this.mSettings.getEntityListEditable();
        }
        return this.mSettings.getEntityListNotEditable();
    }

    @Override // android.view.textclassifier.TextClassifier
    public void onSelectionEvent(SelectionEvent selectionEvent) {
        Preconditions.checkNotNull(selectionEvent);
        synchronized (this.mLoggerLock) {
            if (this.mSessionLogger == null) {
                this.mSessionLogger = new SelectionSessionLogger();
            }
            this.mSessionLogger.writeEvent(selectionEvent);
        }
    }

    private TextClassifierImplNative getNative(LocaleList localeList) throws FileNotFoundException {
        TextClassifierImplNative textClassifierImplNative;
        synchronized (this.mLock) {
            if (localeList == null) {
                try {
                    localeList = LocaleList.getEmptyLocaleList();
                } catch (Throwable th) {
                    throw th;
                }
            }
            ModelFile findBestModelLocked = findBestModelLocked(localeList);
            if (findBestModelLocked == null) {
                throw new FileNotFoundException("No model for " + localeList.toLanguageTags());
            }
            if (this.mNative == null || !Objects.equals(this.mModel, findBestModelLocked)) {
                Log.d("androidtc", "Loading " + findBestModelLocked);
                destroyNativeIfExistsLocked();
                ParcelFileDescriptor open = ParcelFileDescriptor.open(new File(findBestModelLocked.getPath()), 268435456);
                this.mNative = new TextClassifierImplNative(open.getFd());
                closeAndLogError(open);
                this.mModel = findBestModelLocked;
            }
            textClassifierImplNative = this.mNative;
        }
        return textClassifierImplNative;
    }

    private String createId(String str, int i, int i2) {
        String createId;
        synchronized (this.mLock) {
            createId = SelectionSessionLogger.createId(str, i, i2, this.mContext, this.mModel.getVersion(), this.mModel.getSupportedLocales());
        }
        return createId;
    }

    @GuardedBy("mLock")
    private void destroyNativeIfExistsLocked() {
        if (this.mNative != null) {
            this.mNative.close();
            this.mNative = null;
        }
    }

    private static String concatenateLocales(LocaleList localeList) {
        return localeList == null ? TextClassifier.TYPE_UNKNOWN : localeList.toLanguageTags();
    }

    @GuardedBy("mLock")
    private ModelFile findBestModelLocked(LocaleList localeList) {
        List<Locale.LanguageRange> parse = Locale.LanguageRange.parse(localeList.isEmpty() ? LocaleList.getDefault().toLanguageTags() : localeList.toLanguageTags() + "," + LocaleList.getDefault().toLanguageTags());
        ModelFile modelFile = null;
        for (ModelFile modelFile2 : listAllModelsLocked()) {
            if (modelFile2.isAnyLanguageSupported(parse) && modelFile2.isPreferredTo(modelFile)) {
                modelFile = modelFile2;
            }
        }
        return modelFile;
    }

    @GuardedBy("mLock")
    private List<ModelFile> listAllModelsLocked() {
        ModelFile fromPath;
        ModelFile fromPath2;
        if (this.mAllModelFiles == null) {
            ArrayList arrayList = new ArrayList();
            if (new File(UPDATED_MODEL_FILE_PATH).exists() && (fromPath2 = ModelFile.fromPath(UPDATED_MODEL_FILE_PATH)) != null) {
                arrayList.add(fromPath2);
            }
            File file = new File(MODEL_DIR);
            if (file.exists() && file.isDirectory()) {
                File[] listFiles = file.listFiles();
                Pattern compile = Pattern.compile(MODEL_FILE_REGEX);
                for (File file2 : listFiles) {
                    if (compile.matcher(file2.getName()).matches() && file2.isFile() && (fromPath = ModelFile.fromPath(file2.getAbsolutePath())) != null) {
                        arrayList.add(fromPath);
                    }
                }
            }
            this.mAllModelFiles = arrayList;
        }
        return this.mAllModelFiles;
    }

    private TextClassification createClassificationResult(TextClassifierImplNative.ClassificationResult[] classificationResultArr, String str, int i, int i2, Instant instant) {
        String substring = str.substring(i, i2);
        TextClassification.Builder text = new TextClassification.Builder().setText(substring);
        int length = classificationResultArr.length;
        float f = Float.MIN_VALUE;
        TextClassifierImplNative.ClassificationResult classificationResult = null;
        for (int i3 = 0; i3 < length; i3++) {
            text.setEntityType(classificationResultArr[i3].getCollection(), classificationResultArr[i3].getScore());
            if (classificationResultArr[i3].getScore() > f) {
                classificationResult = classificationResultArr[i3];
                f = classificationResultArr[i3].getScore();
            }
        }
        boolean z = true;
        for (LabeledIntent labeledIntent : IntentFactory.create(this.mContext, instant, classificationResult, substring)) {
            RemoteAction asRemoteAction = labeledIntent.asRemoteAction(this.mContext);
            if (asRemoteAction != null) {
                if (z) {
                    text.setIcon(asRemoteAction.getIcon().loadDrawable(this.mContext));
                    text.setLabel(asRemoteAction.getTitle().toString());
                    text.setIntent(labeledIntent.getIntent());
                    text.setOnClickListener(TextClassification.createIntentOnClickListener(TextClassification.createPendingIntent(this.mContext, labeledIntent.getIntent(), labeledIntent.getRequestCode())));
                    z = false;
                }
                text.addAction(asRemoteAction);
            }
        }
        return text.setId(createId(str, i, i2)).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void closeAndLogError(ParcelFileDescriptor parcelFileDescriptor) {
        try {
            parcelFileDescriptor.close();
        } catch (IOException e) {
            Log.e("androidtc", "Error closing file.", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public static final class ModelFile {
        private final boolean mLanguageIndependent;
        private final String mName;
        private final String mPath;
        private final List<Locale> mSupportedLocales;
        private final int mVersion;

        static ModelFile fromPath(String str) {
            File file = new File(str);
            try {
                ParcelFileDescriptor open = ParcelFileDescriptor.open(file, 268435456);
                int version = TextClassifierImplNative.getVersion(open.getFd());
                String locales = TextClassifierImplNative.getLocales(open.getFd());
                if (locales.isEmpty()) {
                    Log.d("androidtc", "Ignoring " + file.getAbsolutePath());
                    return null;
                }
                boolean equals = locales.equals("*");
                ArrayList arrayList = new ArrayList();
                for (String str2 : locales.split(",")) {
                    arrayList.add(Locale.forLanguageTag(str2));
                }
                TextClassifierImpl.closeAndLogError(open);
                return new ModelFile(str, file.getName(), version, arrayList, equals);
            } catch (FileNotFoundException e) {
                Log.e("androidtc", "Failed to peek " + file.getAbsolutePath(), e);
                return null;
            }
        }

        String getPath() {
            return this.mPath;
        }

        String getName() {
            return this.mName;
        }

        int getVersion() {
            return this.mVersion;
        }

        boolean isAnyLanguageSupported(List<Locale.LanguageRange> list) {
            return this.mLanguageIndependent || Locale.lookup(list, this.mSupportedLocales) != null;
        }

        List<Locale> getSupportedLocales() {
            return Collections.unmodifiableList(this.mSupportedLocales);
        }

        public boolean isPreferredTo(ModelFile modelFile) {
            if (modelFile == null) {
                return true;
            }
            return (!this.mLanguageIndependent && modelFile.mLanguageIndependent) || getVersion() > modelFile.getVersion();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !ModelFile.class.isAssignableFrom(obj.getClass())) {
                return false;
            }
            return this.mPath.equals(((ModelFile) obj).mPath);
        }

        public String toString() {
            StringJoiner stringJoiner = new StringJoiner(",");
            Iterator<Locale> it = this.mSupportedLocales.iterator();
            while (it.hasNext()) {
                stringJoiner.add(it.next().toLanguageTag());
            }
            return String.format(Locale.US, "ModelFile { path=%s name=%s version=%d locales=%s }", this.mPath, this.mName, Integer.valueOf(this.mVersion), stringJoiner.toString());
        }

        private ModelFile(String str, String str2, int i, List<Locale> list, boolean z) {
            this.mPath = str;
            this.mName = str2;
            this.mVersion = i;
            this.mSupportedLocales = list;
            this.mLanguageIndependent = z;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public static final class LabeledIntent {
        static final int DEFAULT_REQUEST_CODE = 0;
        private final String mDescription;
        private final Intent mIntent;
        private final int mRequestCode;
        private final String mTitle;

        LabeledIntent(String str, String str2, Intent intent, int i) {
            this.mTitle = str;
            this.mDescription = str2;
            this.mIntent = intent;
            this.mRequestCode = i;
        }

        String getTitle() {
            return this.mTitle;
        }

        String getDescription() {
            return this.mDescription;
        }

        Intent getIntent() {
            return this.mIntent;
        }

        int getRequestCode() {
            return this.mRequestCode;
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0047  */
        /* JADX WARN: Removed duplicated region for block: B:16:0x005a A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:18:0x005b  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        RemoteAction asRemoteAction(Context context) {
            Icon icon;
            PendingIntent createPendingIntent;
            boolean z = false;
            ResolveInfo resolveActivity = context.getPackageManager().resolveActivity(this.mIntent, 0);
            String str = (resolveActivity == null || resolveActivity.activityInfo == null) ? null : resolveActivity.activityInfo.packageName;
            if (str != null && !ZenModeConfig.SYSTEM_AUTHORITY.equals(str)) {
                this.mIntent.setComponent(new ComponentName(str, resolveActivity.activityInfo.name));
                if (resolveActivity.activityInfo.getIconResource() != 0) {
                    icon = Icon.createWithResource(str, resolveActivity.activityInfo.getIconResource());
                    z = true;
                    if (icon == null) {
                        icon = Icon.createWithResource(ZenModeConfig.SYSTEM_AUTHORITY, R.drawable.ic_menu_blocked_user);
                    }
                    createPendingIntent = TextClassification.createPendingIntent(context, this.mIntent, this.mRequestCode);
                    if (createPendingIntent != null) {
                        return null;
                    }
                    RemoteAction remoteAction = new RemoteAction(icon, this.mTitle, this.mDescription, createPendingIntent);
                    remoteAction.setShouldShowIcon(z);
                    return remoteAction;
                }
            }
            icon = null;
            if (icon == null) {
            }
            createPendingIntent = TextClassification.createPendingIntent(context, this.mIntent, this.mRequestCode);
            if (createPendingIntent != null) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public static final class IntentFactory {
        private static final long MIN_EVENT_FUTURE_MILLIS = TimeUnit.MINUTES.toMillis(5);
        private static final long DEFAULT_EVENT_DURATION = TimeUnit.HOURS.toMillis(1);

        private IntentFactory() {
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        public static List<LabeledIntent> create(Context context, Instant instant, TextClassifierImplNative.ClassificationResult classificationResult, String str) {
            char c;
            String lowerCase = classificationResult.getCollection().trim().toLowerCase(Locale.ENGLISH);
            String trim = str.trim();
            switch (lowerCase.hashCode()) {
                case -1271823248:
                    if (lowerCase.equals(TextClassifier.TYPE_FLIGHT_NUMBER)) {
                        c = 6;
                        break;
                    }
                    c = 65535;
                    break;
                case -1147692044:
                    if (lowerCase.equals("address")) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                case 116079:
                    if (lowerCase.equals("url")) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                case 3076014:
                    if (lowerCase.equals("date")) {
                        c = 4;
                        break;
                    }
                    c = 65535;
                    break;
                case 96619420:
                    if (lowerCase.equals("email")) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                case 106642798:
                    if (lowerCase.equals("phone")) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                case 1793702779:
                    if (lowerCase.equals(TextClassifier.TYPE_DATE_TIME)) {
                        c = 5;
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    c = 65535;
                    break;
            }
            switch (c) {
                case 0:
                    return createForEmail(context, trim);
                case 1:
                    return createForPhone(context, trim);
                case 2:
                    return createForAddress(context, trim);
                case 3:
                    return createForUrl(context, trim);
                case 4:
                case 5:
                    if (classificationResult.getDatetimeResult() != null) {
                        return createForDatetime(context, lowerCase, instant, Instant.ofEpochMilli(classificationResult.getDatetimeResult().getTimeMsUtc()));
                    }
                    return new ArrayList();
                case 6:
                    return createForFlight(context, trim);
                default:
                    return new ArrayList();
            }
        }

        private static List<LabeledIntent> createForEmail(Context context, String str) {
            return Arrays.asList(new LabeledIntent(context.getString(R.string.common_name), context.getString(R.string.config_UsbDeviceConnectionHandling_component), new Intent("android.intent.action.SENDTO").setData(Uri.parse(String.format("mailto:%s", str))), 0), new LabeledIntent(context.getString(R.string.PERSOSUBSTATE_RUIM_NETWORK2_PUK_IN_PROGRESS), context.getString(R.string.PERSOSUBSTATE_RUIM_NETWORK2_PUK_SUCCESS), new Intent("android.intent.action.INSERT_OR_EDIT").setType(ContactsContract.Contacts.CONTENT_ITEM_TYPE).putExtra("email", str), str.hashCode()));
        }

        private static List<LabeledIntent> createForPhone(Context context, String str) {
            ArrayList arrayList = new ArrayList();
            UserManager userManager = (UserManager) context.getSystemService(UserManager.class);
            Bundle userRestrictions = userManager != null ? userManager.getUserRestrictions() : new Bundle();
            if (!userRestrictions.getBoolean(UserManager.DISALLOW_OUTGOING_CALLS, false)) {
                arrayList.add(new LabeledIntent(context.getString(R.string.car_mode_disable_notification_message), context.getString(R.string.car_mode_disable_notification_title), new Intent("android.intent.action.DIAL").setData(Uri.parse(String.format("tel:%s", str))), 0));
            }
            arrayList.add(new LabeledIntent(context.getString(R.string.PERSOSUBSTATE_RUIM_NETWORK2_PUK_IN_PROGRESS), context.getString(R.string.PERSOSUBSTATE_RUIM_NETWORK2_PUK_SUCCESS), new Intent("android.intent.action.INSERT_OR_EDIT").setType(ContactsContract.Contacts.CONTENT_ITEM_TYPE).putExtra("phone", str), str.hashCode()));
            if (!userRestrictions.getBoolean(UserManager.DISALLOW_SMS, false)) {
                arrayList.add(new LabeledIntent(context.getString(R.string.permgrouplab_activityRecognition), context.getString(R.string.permgrouplab_location), new Intent("android.intent.action.SENDTO").setData(Uri.parse(String.format("smsto:%s", str))), 0));
            }
            return arrayList;
        }

        private static List<LabeledIntent> createForAddress(Context context, String str) {
            ArrayList arrayList = new ArrayList();
            try {
                arrayList.add(new LabeledIntent(context.getString(R.string.find_previous), context.getString(R.string.fingerprint_acquired_imager_dirty), new Intent("android.intent.action.VIEW").setData(Uri.parse(String.format("geo:0,0?q=%s", URLEncoder.encode(str, "UTF-8")))), 0));
            } catch (UnsupportedEncodingException e) {
                Log.e("androidtc", "Could not encode address", e);
            }
            return arrayList;
        }

        private static List<LabeledIntent> createForUrl(Context context, String str) {
            if (Uri.parse(str).getScheme() == null) {
                str = "http://" + str;
            }
            return Arrays.asList(new LabeledIntent(context.getString(R.string.accessibility_system_action_on_screen_a11y_shortcut_chooser_label), context.getString(R.string.accessibility_system_action_on_screen_a11y_shortcut_label), new Intent("android.intent.action.VIEW", Uri.parse(str)).putExtra(Browser.EXTRA_APPLICATION_ID, context.getPackageName()), 0));
        }

        private static List<LabeledIntent> createForDatetime(Context context, String str, Instant instant, Instant instant2) {
            if (instant == null) {
                instant = Instant.now();
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(createCalendarViewIntent(context, instant2));
            if (instant.until(instant2, ChronoUnit.MILLIS) > MIN_EVENT_FUTURE_MILLIS) {
                arrayList.add(createCalendarCreateEventIntent(context, instant2, str));
            }
            return arrayList;
        }

        private static List<LabeledIntent> createForFlight(Context context, String str) {
            return Arrays.asList(new LabeledIntent(context.getString(R.string.personal_apps_suspension_text), context.getString(R.string.personal_apps_suspension_title), new Intent("android.intent.action.WEB_SEARCH").putExtra(SearchRecentSuggestions.SuggestionColumns.QUERY, str), str.hashCode()));
        }

        private static LabeledIntent createCalendarViewIntent(Context context, Instant instant) {
            Uri.Builder buildUpon = CalendarContract.CONTENT_URI.buildUpon();
            buildUpon.appendPath(DropBoxManager.EXTRA_TIME);
            ContentUris.appendId(buildUpon, instant.toEpochMilli());
            return new LabeledIntent(context.getString(R.string.personal_apps_suspended_turn_profile_on), context.getString(R.string.personal_apps_suspension_soon_text), new Intent("android.intent.action.VIEW").setData(buildUpon.build()), 0);
        }

        private static LabeledIntent createCalendarCreateEventIntent(Context context, Instant instant, String str) {
            return new LabeledIntent(context.getString(R.string.PERSOSUBSTATE_RUIM_NETWORK2_PUK_ENTRY), context.getString(R.string.PERSOSUBSTATE_RUIM_NETWORK2_PUK_ERROR), new Intent("android.intent.action.INSERT").setData(CalendarContract.Events.CONTENT_URI).putExtra("allDay", "date".equals(str)).putExtra(CalendarContract.EXTRA_EVENT_BEGIN_TIME, instant.toEpochMilli()).putExtra(CalendarContract.EXTRA_EVENT_END_TIME, instant.toEpochMilli() + DEFAULT_EVENT_DURATION), instant.hashCode());
        }
    }
}
