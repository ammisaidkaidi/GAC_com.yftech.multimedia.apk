package android.widget;

import android.content.AsyncQueryHandler;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.provider.ContactsContract;
import android.telecom.PhoneAccount;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import com.android.internal.R;

/* loaded from: /home/user/work/dex/classes2.dex */
public class QuickContactBadge extends ImageView implements View.OnClickListener {
    static final int EMAIL_ID_COLUMN_INDEX = 0;
    static final int EMAIL_LOOKUP_STRING_COLUMN_INDEX = 1;
    private static final String EXTRA_URI_CONTENT = "uri_content";
    static final int PHONE_ID_COLUMN_INDEX = 0;
    static final int PHONE_LOOKUP_STRING_COLUMN_INDEX = 1;
    private static final int TOKEN_EMAIL_LOOKUP = 0;
    private static final int TOKEN_EMAIL_LOOKUP_AND_TRIGGER = 2;
    private static final int TOKEN_PHONE_LOOKUP = 1;
    private static final int TOKEN_PHONE_LOOKUP_AND_TRIGGER = 3;
    private String mContactEmail;
    private String mContactPhone;
    private Uri mContactUri;
    private Drawable mDefaultAvatar;
    protected String[] mExcludeMimes;
    private Bundle mExtras;
    private Drawable mOverlay;
    private String mPrioritizedMimeType;
    private QueryHandler mQueryHandler;
    static final String[] EMAIL_LOOKUP_PROJECTION = {"contact_id", ContactsContract.ContactsColumns.LOOKUP_KEY};
    static final String[] PHONE_LOOKUP_PROJECTION = {"_id", ContactsContract.ContactsColumns.LOOKUP_KEY};

    public void setMode(int i) {
    }

    public QuickContactBadge(Context context) {
        this(context, null);
    }

    public QuickContactBadge(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public QuickContactBadge(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public QuickContactBadge(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mExtras = null;
        this.mExcludeMimes = null;
        TypedArray obtainStyledAttributes = this.mContext.obtainStyledAttributes(R.styleable.Theme);
        this.mOverlay = obtainStyledAttributes.getDrawable(DisplayMetrics.DENSITY_XHIGH);
        obtainStyledAttributes.recycle();
        setOnClickListener(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.ImageView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (isInEditMode()) {
            return;
        }
        this.mQueryHandler = new QueryHandler(this.mContext.getContentResolver());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.ImageView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.mOverlay;
        if (drawable != null && drawable.isStateful() && drawable.setState(getDrawableState())) {
            invalidateDrawable(drawable);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void drawableHotspotChanged(float f, float f2) {
        super.drawableHotspotChanged(f, f2);
        if (this.mOverlay != null) {
            this.mOverlay.setHotspot(f, f2);
        }
    }

    public void setPrioritizedMimeType(String str) {
        this.mPrioritizedMimeType = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!isEnabled() || this.mOverlay == null || this.mOverlay.getIntrinsicWidth() == 0 || this.mOverlay.getIntrinsicHeight() == 0) {
            return;
        }
        this.mOverlay.setBounds(0, 0, getWidth(), getHeight());
        if (this.mPaddingTop == 0 && this.mPaddingLeft == 0) {
            this.mOverlay.draw(canvas);
            return;
        }
        int saveCount = canvas.getSaveCount();
        canvas.save();
        canvas.translate(this.mPaddingLeft, this.mPaddingTop);
        this.mOverlay.draw(canvas);
        canvas.restoreToCount(saveCount);
    }

    private boolean isAssigned() {
        return (this.mContactUri == null && this.mContactEmail == null && this.mContactPhone == null) ? false : true;
    }

    public void setImageToDefault() {
        if (this.mDefaultAvatar == null) {
            this.mDefaultAvatar = this.mContext.getDrawable(android.R.drawable.ic_bluetooth_transient_animation_drawable);
        }
        setImageDrawable(this.mDefaultAvatar);
    }

    public void assignContactUri(Uri uri) {
        this.mContactUri = uri;
        this.mContactEmail = null;
        this.mContactPhone = null;
        onContactUriChanged();
    }

    public void assignContactFromEmail(String str, boolean z) {
        assignContactFromEmail(str, z, null);
    }

    public void assignContactFromEmail(String str, boolean z, Bundle bundle) {
        this.mContactEmail = str;
        this.mExtras = bundle;
        if (!z && this.mQueryHandler != null) {
            this.mQueryHandler.startQuery(0, null, Uri.withAppendedPath(ContactsContract.CommonDataKinds.Email.CONTENT_LOOKUP_URI, Uri.encode(this.mContactEmail)), EMAIL_LOOKUP_PROJECTION, null, null, null);
        } else {
            this.mContactUri = null;
            onContactUriChanged();
        }
    }

    public void assignContactFromPhone(String str, boolean z) {
        assignContactFromPhone(str, z, new Bundle());
    }

    public void assignContactFromPhone(String str, boolean z, Bundle bundle) {
        this.mContactPhone = str;
        this.mExtras = bundle;
        if (!z && this.mQueryHandler != null) {
            this.mQueryHandler.startQuery(1, null, Uri.withAppendedPath(ContactsContract.PhoneLookup.CONTENT_FILTER_URI, this.mContactPhone), PHONE_LOOKUP_PROJECTION, null, null, null);
        } else {
            this.mContactUri = null;
            onContactUriChanged();
        }
    }

    public void setOverlay(Drawable drawable) {
        this.mOverlay = drawable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onContactUriChanged() {
        setEnabled(isAssigned());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Bundle bundle = this.mExtras == null ? new Bundle() : this.mExtras;
        if (this.mContactUri != null) {
            ContactsContract.QuickContact.showQuickContact(getContext(), this, this.mContactUri, this.mExcludeMimes, this.mPrioritizedMimeType);
            return;
        }
        if (this.mContactEmail != null && this.mQueryHandler != null) {
            bundle.putString(EXTRA_URI_CONTENT, this.mContactEmail);
            this.mQueryHandler.startQuery(2, bundle, Uri.withAppendedPath(ContactsContract.CommonDataKinds.Email.CONTENT_LOOKUP_URI, Uri.encode(this.mContactEmail)), EMAIL_LOOKUP_PROJECTION, null, null, null);
        } else {
            if (this.mContactPhone == null || this.mQueryHandler == null) {
                return;
            }
            bundle.putString(EXTRA_URI_CONTENT, this.mContactPhone);
            this.mQueryHandler.startQuery(3, bundle, Uri.withAppendedPath(ContactsContract.PhoneLookup.CONTENT_FILTER_URI, this.mContactPhone), PHONE_LOOKUP_PROJECTION, null, null, null);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public CharSequence getAccessibilityClassName() {
        return QuickContactBadge.class.getName();
    }

    public void setExcludeMimes(String[] strArr) {
        this.mExcludeMimes = strArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public class QueryHandler extends AsyncQueryHandler {
        public QueryHandler(ContentResolver contentResolver) {
            super(contentResolver);
        }

        @Override // android.content.AsyncQueryHandler
        protected void onQueryComplete(int i, Object obj, Cursor cursor) {
            boolean z;
            Uri uri;
            Bundle bundle = obj != null ? (Bundle) obj : new Bundle();
            Uri uri2 = null;
            try {
                switch (i) {
                    case 0:
                        z = false;
                        uri = null;
                        if (cursor != null && cursor.moveToFirst()) {
                            uri2 = ContactsContract.Contacts.getLookupUri(cursor.getLong(0), cursor.getString(1));
                            break;
                        }
                        break;
                    case 1:
                        z = false;
                        uri = null;
                        if (cursor != null && cursor.moveToFirst()) {
                            uri2 = ContactsContract.Contacts.getLookupUri(cursor.getLong(0), cursor.getString(1));
                            break;
                        }
                        break;
                    case 2:
                        uri = Uri.fromParts("mailto", bundle.getString(QuickContactBadge.EXTRA_URI_CONTENT), null);
                        z = true;
                        if (cursor != null) {
                            uri2 = ContactsContract.Contacts.getLookupUri(cursor.getLong(0), cursor.getString(1));
                            break;
                        }
                        break;
                    case 3:
                        uri = Uri.fromParts(PhoneAccount.SCHEME_TEL, bundle.getString(QuickContactBadge.EXTRA_URI_CONTENT), null);
                        z = true;
                        if (cursor != null) {
                            uri2 = ContactsContract.Contacts.getLookupUri(cursor.getLong(0), cursor.getString(1));
                            break;
                        }
                        break;
                    default:
                        z = false;
                        uri = null;
                        break;
                }
                if (cursor != null) {
                    cursor.close();
                }
                QuickContactBadge.this.mContactUri = uri2;
                QuickContactBadge.this.onContactUriChanged();
                if (z && QuickContactBadge.this.mContactUri != null) {
                    ContactsContract.QuickContact.showQuickContact(QuickContactBadge.this.getContext(), QuickContactBadge.this, QuickContactBadge.this.mContactUri, QuickContactBadge.this.mExcludeMimes, QuickContactBadge.this.mPrioritizedMimeType);
                    return;
                }
                if (uri != null) {
                    Intent intent = new Intent("com.android.contacts.action.SHOW_OR_CREATE_CONTACT", uri);
                    if (bundle != null) {
                        bundle.remove(QuickContactBadge.EXTRA_URI_CONTENT);
                        intent.putExtras(bundle);
                    }
                    QuickContactBadge.this.getContext().startActivity(intent);
                }
            } catch (Throwable th) {
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        }
    }
}
