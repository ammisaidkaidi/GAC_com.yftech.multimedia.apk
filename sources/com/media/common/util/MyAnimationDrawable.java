package com.media.common.util;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.os.Looper;
import android.widget.ImageView;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes3.dex */
public class MyAnimationDrawable {
    private static final Handler handler = new Handler(Looper.getMainLooper());
    private static MyAnimationDrawable instance;

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class MyFrame {
        Bitmap bitmap;
        int duration;
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface OnAnimationListener {
        void onAnimationEnd();

        void onAnimationStart();

        void onDrawableLoaded(Object obj);
    }

    private MyAnimationDrawable() {
    }

    public static synchronized MyAnimationDrawable getInstance() {
        MyAnimationDrawable myAnimationDrawable;
        synchronized (MyAnimationDrawable.class) {
            if (instance == null) {
                instance = new MyAnimationDrawable();
            }
            myAnimationDrawable = instance;
        }
        return myAnimationDrawable;
    }

    public void animateFromDrawableResource(int[] iArr, int[] iArr2, ImageView imageView, OnAnimationListener onAnimationListener) {
        animateDrawableManually(new BitmapFactory.Options(), iArr, iArr2, new ArrayList(), imageView, onAnimationListener, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void animateDrawableManually(final BitmapFactory.Options options, final int[] iArr, final int[] iArr2, final List<MyFrame> list, final ImageView imageView, final OnAnimationListener onAnimationListener, final int i) {
        MyFrame myFrame;
        LogUtil.d("animateDrawableManually:frameNumber==" + i);
        if (i == 0) {
            myFrame = new MyFrame();
            myFrame.duration = iArr2[0];
            myFrame.bitmap = BitmapFactory.decodeResource(imageView.getContext().getApplicationContext().getResources(), iArr[0], options);
            list.add(myFrame);
        } else {
            myFrame = list.get(1);
            list.remove(0);
        }
        MyFrame myFrame2 = myFrame;
        options.inMutable = true;
        options.inSampleSize = 1;
        options.inBitmap = myFrame2.bitmap;
        imageView.setImageBitmap(myFrame2.bitmap);
        handler.postDelayed(new Runnable() { // from class: com.media.common.util.MyAnimationDrawable.1
            @Override // java.lang.Runnable
            public void run() {
                MyFrame myFrame3 = new MyFrame();
                myFrame3.duration = iArr2[(i + 1) % iArr.length];
                myFrame3.bitmap = BitmapFactory.decodeResource(imageView.getContext().getApplicationContext().getResources(), iArr[(i + 1) % iArr.length], options);
                LogUtil.e("run: $$$" + BitmapUtils.canUseForInBitmap(myFrame3.bitmap, options) + "$" + myFrame3.bitmap.getHeight());
                list.add(myFrame3);
                MyAnimationDrawable.this.animateDrawableManually(options, iArr, iArr2, list, imageView, onAnimationListener, (i + 1) % iArr.length);
            }
        }, myFrame2.duration);
    }
}
