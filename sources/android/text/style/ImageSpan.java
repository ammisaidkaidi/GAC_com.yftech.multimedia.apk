package android.text.style;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.Log;
import java.io.InputStream;

/* loaded from: /home/user/work/dex/classes2.dex */
public class ImageSpan extends DynamicDrawableSpan {
    private Uri mContentUri;
    private Context mContext;
    private Drawable mDrawable;
    private int mResourceId;
    private String mSource;

    @Deprecated
    public ImageSpan(Bitmap bitmap) {
        this((Context) null, bitmap, 0);
    }

    @Deprecated
    public ImageSpan(Bitmap bitmap, int i) {
        this((Context) null, bitmap, i);
    }

    public ImageSpan(Context context, Bitmap bitmap) {
        this(context, bitmap, 0);
    }

    public ImageSpan(Context context, Bitmap bitmap, int i) {
        super(i);
        BitmapDrawable bitmapDrawable;
        this.mContext = context;
        if (context != null) {
            bitmapDrawable = new BitmapDrawable(context.getResources(), bitmap);
        } else {
            bitmapDrawable = new BitmapDrawable(bitmap);
        }
        this.mDrawable = bitmapDrawable;
        int intrinsicWidth = this.mDrawable.getIntrinsicWidth();
        int intrinsicHeight = this.mDrawable.getIntrinsicHeight();
        this.mDrawable.setBounds(0, 0, intrinsicWidth <= 0 ? 0 : intrinsicWidth, intrinsicHeight <= 0 ? 0 : intrinsicHeight);
    }

    public ImageSpan(Drawable drawable) {
        this(drawable, 0);
    }

    public ImageSpan(Drawable drawable, int i) {
        super(i);
        this.mDrawable = drawable;
    }

    public ImageSpan(Drawable drawable, String str) {
        this(drawable, str, 0);
    }

    public ImageSpan(Drawable drawable, String str, int i) {
        super(i);
        this.mDrawable = drawable;
        this.mSource = str;
    }

    public ImageSpan(Context context, Uri uri) {
        this(context, uri, 0);
    }

    public ImageSpan(Context context, Uri uri, int i) {
        super(i);
        this.mContext = context;
        this.mContentUri = uri;
        this.mSource = uri.toString();
    }

    public ImageSpan(Context context, int i) {
        this(context, i, 0);
    }

    public ImageSpan(Context context, int i, int i2) {
        super(i2);
        this.mContext = context;
        this.mResourceId = i;
    }

    @Override // android.text.style.DynamicDrawableSpan
    public Drawable getDrawable() {
        Drawable drawable;
        InputStream openInputStream;
        BitmapDrawable bitmapDrawable;
        if (this.mDrawable != null) {
            return this.mDrawable;
        }
        BitmapDrawable bitmapDrawable2 = null;
        if (this.mContentUri != null) {
            try {
                openInputStream = this.mContext.getContentResolver().openInputStream(this.mContentUri);
                bitmapDrawable = new BitmapDrawable(this.mContext.getResources(), BitmapFactory.decodeStream(openInputStream));
            } catch (Exception e) {
                e = e;
            }
            try {
                bitmapDrawable.setBounds(0, 0, bitmapDrawable.getIntrinsicWidth(), bitmapDrawable.getIntrinsicHeight());
                openInputStream.close();
                return bitmapDrawable;
            } catch (Exception e2) {
                e = e2;
                bitmapDrawable2 = bitmapDrawable;
                Log.e("ImageSpan", "Failed to loaded content " + this.mContentUri, e);
                return bitmapDrawable2;
            }
        }
        try {
            drawable = this.mContext.getDrawable(this.mResourceId);
            try {
                drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
            } catch (Exception unused) {
                Log.e("ImageSpan", "Unable to find resource: " + this.mResourceId);
                return drawable;
            }
        } catch (Exception unused2) {
            drawable = null;
        }
        return drawable;
    }

    public String getSource() {
        return this.mSource;
    }
}
