package android.provider;

import android.content.ContentProvider;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.UserInfo;
import android.database.Cursor;
import android.location.Country;
import android.location.CountryDetector;
import android.net.Uri;
import android.os.UserHandle;
import android.os.UserManager;
import android.provider.ContactsContract;
import android.telecom.PhoneAccount;
import android.telecom.PhoneAccountHandle;
import android.telecom.TelecomManager;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import android.util.Log;
import android.view.textclassifier.TextClassifier;
import com.android.internal.telephony.CallerInfo;
import java.util.List;

/* loaded from: /home/user/work/dex/classes2.dex */
public class CallLog {
    public static final String AUTHORITY = "call_log";
    public static final Uri CONTENT_URI = Uri.parse("content://call_log");
    private static final String LOG_TAG = "CallLog";
    public static final String SHADOW_AUTHORITY = "call_log_shadow";
    private static final boolean VERBOSE_LOG = false;

    /* loaded from: /home/user/work/dex/classes2.dex */
    public static class Calls implements BaseColumns {
        public static final String ADD_FOR_ALL_USERS = "add_for_all_users";
        public static final int ANSWERED_EXTERNALLY_TYPE = 7;
        public static final int BLOCKED_TYPE = 6;
        public static final String CACHED_FORMATTED_NUMBER = "formatted_number";
        public static final String CACHED_LOOKUP_URI = "lookup_uri";
        public static final String CACHED_MATCHED_NUMBER = "matched_number";
        public static final String CACHED_NAME = "name";
        public static final String CACHED_NORMALIZED_NUMBER = "normalized_number";
        public static final String CACHED_NUMBER_LABEL = "numberlabel";
        public static final String CACHED_NUMBER_TYPE = "numbertype";
        public static final String CACHED_PHOTO_ID = "photo_id";
        public static final String CACHED_PHOTO_URI = "photo_uri";
        public static final String CONTENT_ITEM_TYPE = "vnd.android.cursor.item/calls";
        public static final String CONTENT_TYPE = "vnd.android.cursor.dir/calls";
        public static final String COUNTRY_ISO = "countryiso";
        public static final String DATA_USAGE = "data_usage";
        public static final String DATE = "date";
        public static final String DEFAULT_SORT_ORDER = "date DESC";
        public static final String DURATION = "duration";
        public static final String EXTRA_CALL_TYPE_FILTER = "android.provider.extra.CALL_TYPE_FILTER";
        public static final String FEATURES = "features";
        public static final int FEATURES_ASSISTED_DIALING_USED = 16;
        public static final int FEATURES_HD_CALL = 4;
        public static final int FEATURES_PULLED_EXTERNALLY = 2;
        public static final int FEATURES_RTT = 32;
        public static final int FEATURES_VIDEO = 1;
        public static final int FEATURES_WIFI = 8;
        public static final String GEOCODED_LOCATION = "geocoded_location";
        public static final int INCOMING_TYPE = 1;
        public static final String IS_READ = "is_read";
        public static final String LAST_MODIFIED = "last_modified";
        public static final String LIMIT_PARAM_KEY = "limit";
        private static final int MIN_DURATION_FOR_NORMALIZED_NUMBER_UPDATE_MS = 10000;
        public static final int MISSED_TYPE = 3;
        public static final String NEW = "new";
        public static final String NUMBER = "number";
        public static final String NUMBER_PRESENTATION = "presentation";
        public static final String OFFSET_PARAM_KEY = "offset";
        public static final int OUTGOING_TYPE = 2;
        public static final String PHONE_ACCOUNT_ADDRESS = "phone_account_address";
        public static final String PHONE_ACCOUNT_COMPONENT_NAME = "subscription_component_name";
        public static final String PHONE_ACCOUNT_HIDDEN = "phone_account_hidden";
        public static final String PHONE_ACCOUNT_ID = "subscription_id";
        public static final String POST_DIAL_DIGITS = "post_dial_digits";
        public static final int PRESENTATION_ALLOWED = 1;
        public static final int PRESENTATION_PAYPHONE = 4;
        public static final int PRESENTATION_RESTRICTED = 2;
        public static final int PRESENTATION_UNKNOWN = 3;
        public static final int REJECTED_TYPE = 5;
        public static final String SUB_ID = "sub_id";
        public static final String TRANSCRIPTION = "transcription";
        public static final String TRANSCRIPTION_STATE = "transcription_state";
        public static final String TYPE = "type";
        public static final String VIA_NUMBER = "via_number";
        public static final int VOICEMAIL_TYPE = 4;
        public static final String VOICEMAIL_URI = "voicemail_uri";
        public static final Uri CONTENT_URI = Uri.parse("content://call_log/calls");
        public static final Uri SHADOW_CONTENT_URI = Uri.parse("content://call_log_shadow/calls");
        public static final Uri CONTENT_FILTER_URI = Uri.parse("content://call_log/calls/filter");
        public static final String ALLOW_VOICEMAILS_PARAM_KEY = "allow_voicemails";
        public static final Uri CONTENT_URI_WITH_VOICEMAIL = CONTENT_URI.buildUpon().appendQueryParameter(ALLOW_VOICEMAILS_PARAM_KEY, "true").build();

        public static Uri addCall(CallerInfo callerInfo, Context context, String str, int i, int i2, int i3, PhoneAccountHandle phoneAccountHandle, long j, int i4, Long l) {
            return addCall(callerInfo, context, str, TextClassifier.TYPE_UNKNOWN, TextClassifier.TYPE_UNKNOWN, i, i2, i3, phoneAccountHandle, j, i4, l, false, null, false);
        }

        public static Uri addCall(CallerInfo callerInfo, Context context, String str, String str2, String str3, int i, int i2, int i3, PhoneAccountHandle phoneAccountHandle, long j, int i4, Long l, boolean z, UserHandle userHandle) {
            return addCall(callerInfo, context, str, str2, str3, i, i2, i3, phoneAccountHandle, j, i4, l, z, userHandle, false);
        }

        public static Uri addCall(CallerInfo callerInfo, Context context, String str, String str2, String str3, int i, int i2, int i3, PhoneAccountHandle phoneAccountHandle, long j, int i4, Long l, boolean z, UserHandle userHandle, boolean z2) {
            TelecomManager telecomManager;
            String str4;
            String str5;
            String str6;
            ContentValues contentValues;
            boolean z3;
            Uri uri;
            Cursor query;
            PhoneAccount phoneAccount;
            Uri subscriptionAddress;
            ContentResolver contentResolver = context.getContentResolver();
            try {
                telecomManager = TelecomManager.from(context);
            } catch (UnsupportedOperationException unused) {
                telecomManager = null;
            }
            String schemeSpecificPart = (telecomManager == null || phoneAccountHandle == null || (phoneAccount = telecomManager.getPhoneAccount(phoneAccountHandle)) == null || (subscriptionAddress = phoneAccount.getSubscriptionAddress()) == null) ? null : subscriptionAddress.getSchemeSpecificPart();
            int i5 = 4;
            if (i == 2) {
                i5 = 2;
            } else if (i != 4) {
                i5 = (TextUtils.isEmpty(str) || i == 3) ? 3 : 1;
            }
            if (i5 != 1) {
                str4 = TextClassifier.TYPE_UNKNOWN;
                if (callerInfo != null) {
                    callerInfo.name = TextClassifier.TYPE_UNKNOWN;
                }
            } else {
                str4 = str;
            }
            if (phoneAccountHandle != null) {
                str6 = phoneAccountHandle.getComponentName().flattenToString();
                str5 = phoneAccountHandle.getId();
            } else {
                str5 = null;
                str6 = null;
            }
            ContentValues contentValues2 = new ContentValues(6);
            contentValues2.put("number", str4);
            contentValues2.put(POST_DIAL_DIGITS, str2);
            contentValues2.put(VIA_NUMBER, str3);
            contentValues2.put(NUMBER_PRESENTATION, Integer.valueOf(i5));
            contentValues2.put("type", Integer.valueOf(i2));
            contentValues2.put(FEATURES, Integer.valueOf(i3));
            contentValues2.put("date", Long.valueOf(j));
            contentValues2.put("duration", Long.valueOf(i4));
            if (l != null) {
                contentValues2.put(DATA_USAGE, l);
            }
            contentValues2.put("subscription_component_name", str6);
            contentValues2.put("subscription_id", str5);
            contentValues2.put(PHONE_ACCOUNT_ADDRESS, schemeSpecificPart);
            contentValues2.put("new", (Integer) 1);
            contentValues2.put(ADD_FOR_ALL_USERS, Integer.valueOf(z ? 1 : 0));
            if (i2 == 3) {
                contentValues2.put("is_read", Integer.valueOf(z2 ? 1 : 0));
            }
            if (callerInfo == null || callerInfo.contactIdOrZero <= 0) {
                contentValues = contentValues2;
            } else {
                if (callerInfo.normalizedNumber != null) {
                    contentValues = contentValues2;
                    query = contentResolver.query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, new String[]{"_id"}, "contact_id =? AND data4 =?", new String[]{String.valueOf(callerInfo.contactIdOrZero), callerInfo.normalizedNumber}, null);
                } else {
                    contentValues = contentValues2;
                    query = contentResolver.query(Uri.withAppendedPath(ContactsContract.CommonDataKinds.Callable.CONTENT_FILTER_URI, Uri.encode(callerInfo.phoneNumber != null ? callerInfo.phoneNumber : str4)), new String[]{"_id"}, "contact_id =?", new String[]{String.valueOf(callerInfo.contactIdOrZero)}, null);
                }
                if (query != null) {
                    try {
                        if (query.getCount() > 0 && query.moveToFirst()) {
                            String string = query.getString(0);
                            updateDataUsageStatForData(contentResolver, string);
                            if (i4 >= 10000 && i2 == 2 && TextUtils.isEmpty(callerInfo.normalizedNumber)) {
                                updateNormalizedNumber(context, contentResolver, string, str4);
                            }
                        }
                    } finally {
                        query.close();
                    }
                }
            }
            UserManager userManager = (UserManager) context.getSystemService(UserManager.class);
            int userHandle2 = userManager.getUserHandle();
            if (z) {
                Uri addEntryAndRemoveExpiredEntries = addEntryAndRemoveExpiredEntries(context, userManager, UserHandle.SYSTEM, contentValues);
                if (addEntryAndRemoveExpiredEntries == null || CallLog.SHADOW_AUTHORITY.equals(addEntryAndRemoveExpiredEntries.getAuthority())) {
                    return null;
                }
                if (userHandle2 == 0) {
                    uri = addEntryAndRemoveExpiredEntries;
                    z3 = true;
                } else {
                    z3 = true;
                    uri = null;
                }
                List<UserInfo> users = userManager.getUsers(z3);
                int size = users.size();
                for (int i6 = 0; i6 < size; i6++) {
                    UserHandle userHandle3 = users.get(i6).getUserHandle();
                    int identifier = userHandle3.getIdentifier();
                    if (!userHandle3.isSystem() && shouldHaveSharedCallLogEntries(context, userManager, identifier) && userManager.isUserRunning(userHandle3) && userManager.isUserUnlocked(userHandle3)) {
                        Uri addEntryAndRemoveExpiredEntries2 = addEntryAndRemoveExpiredEntries(context, userManager, userHandle3, contentValues);
                        if (identifier == userHandle2) {
                            uri = addEntryAndRemoveExpiredEntries2;
                        }
                    }
                }
                return uri;
            }
            return addEntryAndRemoveExpiredEntries(context, userManager, userHandle != null ? userHandle : UserHandle.of(userHandle2), contentValues);
        }

        public static boolean shouldHaveSharedCallLogEntries(Context context, UserManager userManager, int i) {
            UserInfo userInfo;
            return (userManager.hasUserRestriction(UserManager.DISALLOW_OUTGOING_CALLS, UserHandle.of(i)) || (userInfo = userManager.getUserInfo(i)) == null || userInfo.isManagedProfile()) ? false : true;
        }

        public static String getLastOutgoingCall(Context context) {
            ContentResolver contentResolver = context.getContentResolver();
            Cursor cursor = null;
            try {
                Cursor query = contentResolver.query(CONTENT_URI, new String[]{"number"}, "type = 2", null, "date DESC LIMIT 1");
                if (query != null) {
                    try {
                        if (query.moveToFirst()) {
                            String string = query.getString(0);
                            if (query != null) {
                                query.close();
                            }
                            return string;
                        }
                    } catch (Throwable th) {
                        th = th;
                        cursor = query;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
                if (query != null) {
                    query.close();
                }
                return TextClassifier.TYPE_UNKNOWN;
            } catch (Throwable th2) {
                th = th2;
            }
        }

        private static Uri addEntryAndRemoveExpiredEntries(Context context, UserManager userManager, UserHandle userHandle, ContentValues contentValues) {
            ContentResolver contentResolver = context.getContentResolver();
            Uri maybeAddUserId = ContentProvider.maybeAddUserId(userManager.isUserUnlocked(userHandle) ? CONTENT_URI : SHADOW_CONTENT_URI, userHandle.getIdentifier());
            try {
                Uri insert = contentResolver.insert(maybeAddUserId, contentValues);
                if (contentValues.containsKey("subscription_id") && !TextUtils.isEmpty(contentValues.getAsString("subscription_id")) && contentValues.containsKey("subscription_component_name") && !TextUtils.isEmpty(contentValues.getAsString("subscription_component_name"))) {
                    contentResolver.delete(maybeAddUserId, "_id IN (SELECT _id FROM calls WHERE subscription_component_name = ? AND subscription_id = ? ORDER BY date DESC LIMIT -1 OFFSET 500)", new String[]{contentValues.getAsString("subscription_component_name"), contentValues.getAsString("subscription_id")});
                } else {
                    contentResolver.delete(maybeAddUserId, "_id IN (SELECT _id FROM calls ORDER BY date DESC LIMIT -1 OFFSET 500)", null);
                }
                return insert;
            } catch (IllegalArgumentException e) {
                Log.w(CallLog.LOG_TAG, "Failed to insert calllog", e);
                return null;
            }
        }

        private static void updateDataUsageStatForData(ContentResolver contentResolver, String str) {
            contentResolver.update(ContactsContract.DataUsageFeedback.FEEDBACK_URI.buildUpon().appendPath(str).appendQueryParameter("type", ContactsContract.DataUsageFeedback.USAGE_TYPE_CALL).build(), new ContentValues(), null, null);
        }

        private static void updateNormalizedNumber(Context context, ContentResolver contentResolver, String str, String str2) {
            if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str) || TextUtils.isEmpty(getCurrentCountryIso(context))) {
                return;
            }
            String formatNumberToE164 = PhoneNumberUtils.formatNumberToE164(str2, getCurrentCountryIso(context));
            if (TextUtils.isEmpty(formatNumberToE164)) {
                return;
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("data4", formatNumberToE164);
            contentResolver.update(ContactsContract.Data.CONTENT_URI, contentValues, "_id=?", new String[]{str});
        }

        private static String getCurrentCountryIso(Context context) {
            Country detectCountry;
            CountryDetector countryDetector = (CountryDetector) context.getSystemService("country_detector");
            if (countryDetector == null || (detectCountry = countryDetector.detectCountry()) == null) {
                return null;
            }
            return detectCountry.getCountryIso();
        }
    }
}
