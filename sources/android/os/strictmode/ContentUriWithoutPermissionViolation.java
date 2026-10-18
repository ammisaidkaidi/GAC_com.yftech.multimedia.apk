package android.os.strictmode;

import android.net.Uri;

/* loaded from: /home/user/work/dex/classes2.dex */
public final class ContentUriWithoutPermissionViolation extends Violation {
    public ContentUriWithoutPermissionViolation(Uri uri, String str) {
        super(uri + " exposed beyond app through " + str + " without permission grant flags; did you forget FLAG_GRANT_READ_URI_PERMISSION?");
    }
}
