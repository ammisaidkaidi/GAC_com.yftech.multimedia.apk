package com.android.internal.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: /home/user/work/dex/classes3.dex */
public class LocalImageResolver {
    private static final int MAX_SAFE_ICON_SIZE_PX = 480;

    public static Drawable resolveImage(Uri uri, Context context) throws IOException {
        int i;
        BitmapFactory.Options boundsOptionsForImage = getBoundsOptionsForImage(uri, context);
        if (boundsOptionsForImage.outWidth == -1 || boundsOptionsForImage.outHeight == -1) {
            return null;
        }
        if (boundsOptionsForImage.outHeight > boundsOptionsForImage.outWidth) {
            i = boundsOptionsForImage.outHeight;
        } else {
            i = boundsOptionsForImage.outWidth;
        }
        double d = i > 480 ? i / 480 : 1.0d;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inSampleSize = getPowerOfTwoForSampleRatio(d);
        InputStream openInputStream = context.getContentResolver().openInputStream(uri);
        Bitmap decodeStream = BitmapFactory.decodeStream(openInputStream, null, options);
        openInputStream.close();
        return new BitmapDrawable(context.getResources(), decodeStream);
    }

    private static BitmapFactory.Options getBoundsOptionsForImage(Uri uri, Context context) throws IOException {
        InputStream openInputStream = context.getContentResolver().openInputStream(uri);
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(openInputStream, null, options);
        openInputStream.close();
        return options;
    }

    private static int getPowerOfTwoForSampleRatio(double d) {
        return Math.max(1, Integer.highestOneBit((int) Math.floor(d)));
    }
}
