package android.provider;

import android.R;
import android.app.admin.DevicePolicyManager;
import android.content.ActivityNotFoundException;
import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.content.UriMatcher;
import android.net.Uri;
import android.os.UserHandle;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.widget.Toast;
import java.util.List;

/* loaded from: /home/user/work/dex/classes2.dex */
public class ContactsInternal {
    private static final int CONTACTS_URI_LOOKUP = 1001;
    private static final int CONTACTS_URI_LOOKUP_ID = 1000;
    private static final UriMatcher sContactsUriMatcher = new UriMatcher(-1);

    private ContactsInternal() {
    }

    static {
        UriMatcher uriMatcher = sContactsUriMatcher;
        uriMatcher.addURI(ContactsContract.AUTHORITY, "contacts/lookup/*", 1001);
        uriMatcher.addURI(ContactsContract.AUTHORITY, "contacts/lookup/*/#", 1000);
    }

    public static void startQuickContactWithErrorToast(Context context, Intent intent) {
        switch (sContactsUriMatcher.match(intent.getData())) {
            case 1000:
            case 1001:
                if (maybeStartManagedQuickContact(context, intent)) {
                    return;
                }
                break;
        }
        startQuickContactWithErrorToastForUser(context, intent, context.getUser());
    }

    public static void startQuickContactWithErrorToastForUser(Context context, Intent intent, UserHandle userHandle) {
        try {
            context.startActivityAsUser(intent, userHandle);
        } catch (ActivityNotFoundException unused) {
            Toast.makeText(context, R.string.owner_name, 0).show();
        }
    }

    private static boolean maybeStartManagedQuickContact(Context context, Intent intent) {
        long parseId;
        Uri data = intent.getData();
        List<String> pathSegments = data.getPathSegments();
        boolean z = pathSegments.size() < 4;
        if (z) {
            parseId = ContactsContract.Contacts.ENTERPRISE_CONTACT_ID_BASE;
        } else {
            parseId = ContentUris.parseId(data);
        }
        String str = pathSegments.get(2);
        String queryParameter = data.getQueryParameter("directory");
        long parseLong = queryParameter == null ? 1000000000L : Long.parseLong(queryParameter);
        if (TextUtils.isEmpty(str) || !str.startsWith(ContactsContract.Contacts.ENTERPRISE_CONTACT_LOOKUP_PREFIX)) {
            return false;
        }
        if (!ContactsContract.Contacts.isEnterpriseContactId(parseId)) {
            throw new IllegalArgumentException("Invalid enterprise contact id: " + parseId);
        }
        if (!ContactsContract.Directory.isEnterpriseDirectoryId(parseLong)) {
            throw new IllegalArgumentException("Invalid enterprise directory id: " + parseLong);
        }
        ((DevicePolicyManager) context.getSystemService(DevicePolicyManager.class)).startManagedQuickContact(str.substring(ContactsContract.Contacts.ENTERPRISE_CONTACT_LOOKUP_PREFIX.length()), parseId - ContactsContract.Contacts.ENTERPRISE_CONTACT_ID_BASE, z, parseLong - 1000000000, intent);
        return true;
    }
}
