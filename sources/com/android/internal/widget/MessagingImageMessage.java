package com.android.internal.widget;

import android.app.Notification;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Pools;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RemoteViews;
import java.io.IOException;

@RemoteViews.RemoteView
/* loaded from: /home/user/work/dex/classes3.dex */
public class MessagingImageMessage extends ImageView implements MessagingMessage {
    private static final String TAG = "MessagingImageMessage";
    private static Pools.SimplePool<MessagingImageMessage> sInstancePool = new Pools.SynchronizedPool(10);
    private int mActualHeight;
    private int mActualWidth;
    private float mAspectRatio;
    private Drawable mDrawable;
    private final int mExtraSpacing;
    private final int mImageRounding;
    private boolean mIsIsolated;
    private final int mIsolatedSize;
    private final int mMaxImageHeight;
    private final int mMinImageHeight;
    private final Path mPath;
    private final MessagingMessageState mState;

    @Override // com.android.internal.widget.MessagingLinearLayout.MessagingChild
    public int getConsumedLines() {
        return 3;
    }

    @Override // com.android.internal.widget.MessagingLinearLayout.MessagingChild
    public void setMaxDisplayedLines(int i) {
    }

    public MessagingImageMessage(Context context) {
        this(context, null);
    }

    public MessagingImageMessage(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MessagingImageMessage(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public MessagingImageMessage(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mState = new MessagingMessageState(this);
        this.mPath = new Path();
        this.mMinImageHeight = context.getResources().getDimensionPixelSize(17105196);
        this.mMaxImageHeight = context.getResources().getDimensionPixelSize(17105195);
        this.mImageRounding = context.getResources().getDimensionPixelSize(17105197);
        this.mExtraSpacing = context.getResources().getDimensionPixelSize(17105194);
        setMaxHeight(this.mMaxImageHeight);
        this.mIsolatedSize = getResources().getDimensionPixelSize(17105192);
    }

    @Override // com.android.internal.widget.MessagingMessage
    public MessagingMessageState getState() {
        return this.mState;
    }

    @Override // com.android.internal.widget.MessagingMessage
    public boolean setMessage(Notification.MessagingStyle.Message message) {
        super.setMessage(message);
        try {
            Drawable resolveImage = LocalImageResolver.resolveImage(message.getDataUri(), getContext());
            int intrinsicHeight = resolveImage.getIntrinsicHeight();
            if (intrinsicHeight == 0) {
                Log.w(TAG, "Drawable with 0 intrinsic height was returned");
                return false;
            }
            this.mDrawable = resolveImage;
            this.mAspectRatio = this.mDrawable.getIntrinsicWidth() / intrinsicHeight;
            setImageDrawable(resolveImage);
            setContentDescription(message.getText());
            return true;
        } catch (IOException | SecurityException e) {
            e.printStackTrace();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static MessagingMessage createMessage(MessagingLayout messagingLayout, Notification.MessagingStyle.Message message) {
        MessagingLinearLayout messagingLinearLayout = messagingLayout.getMessagingLinearLayout();
        MessagingImageMessage messagingImageMessage = (MessagingImageMessage) sInstancePool.acquire();
        if (messagingImageMessage == null) {
            messagingImageMessage = (MessagingImageMessage) LayoutInflater.from(messagingLayout.getContext()).inflate(17367197, (ViewGroup) messagingLinearLayout, false);
            messagingImageMessage.addOnLayoutChangeListener(MessagingLayout.MESSAGING_PROPERTY_ANIMATOR);
        }
        if (messagingImageMessage.setMessage(message)) {
            return messagingImageMessage;
        }
        messagingImageMessage.recycle();
        return MessagingTextMessage.createMessage(messagingLayout, message);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        canvas.save();
        canvas.clipPath(getRoundedRectPath());
        int max = (int) Math.max(getActualWidth(), getActualHeight() * this.mAspectRatio);
        int actualWidth = (int) ((getActualWidth() - max) / 2.0f);
        this.mDrawable.setBounds(actualWidth, 0, max + actualWidth, (int) (max / this.mAspectRatio));
        this.mDrawable.draw(canvas);
        canvas.restore();
    }

    public Path getRoundedRectPath() {
        int actualWidth = getActualWidth();
        int actualHeight = getActualHeight();
        this.mPath.reset();
        float f = this.mImageRounding;
        float f2 = this.mImageRounding;
        float min = Math.min((actualWidth + 0) / 2, f);
        float min2 = Math.min((actualHeight + 0) / 2, f2);
        float f3 = 0;
        float f4 = f3 + min2;
        this.mPath.moveTo(f3, f4);
        float f5 = f3 + min;
        this.mPath.quadTo(f3, f3, f5, f3);
        float f6 = actualWidth;
        float f7 = f6 - min;
        this.mPath.lineTo(f7, f3);
        this.mPath.quadTo(f6, f3, f6, f4);
        float f8 = actualHeight;
        float f9 = f8 - min2;
        this.mPath.lineTo(f6, f9);
        this.mPath.quadTo(f6, f8, f7, f8);
        this.mPath.lineTo(f5, f8);
        this.mPath.quadTo(f3, f8, f3, f9);
        this.mPath.close();
        return this.mPath;
    }

    @Override // com.android.internal.widget.MessagingMessage
    public void recycle() {
        super.recycle();
        setImageBitmap(null);
        this.mDrawable = null;
        sInstancePool.release(this);
    }

    public static void dropCache() {
        sInstancePool = new Pools.SynchronizedPool(10);
    }

    @Override // com.android.internal.widget.MessagingLinearLayout.MessagingChild
    public int getMeasuredType() {
        int i;
        int measuredHeight = getMeasuredHeight();
        if (this.mIsIsolated) {
            i = this.mIsolatedSize;
        } else {
            i = this.mMinImageHeight;
        }
        if (measuredHeight < i && measuredHeight != this.mDrawable.getIntrinsicHeight()) {
            return 2;
        }
        return (this.mIsIsolated || measuredHeight == this.mDrawable.getIntrinsicHeight()) ? 0 : 1;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.mIsIsolated) {
            setMeasuredDimension(View.MeasureSpec.getSize(i), View.MeasureSpec.getSize(i2));
        }
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        setActualWidth(getStaticWidth());
        setActualHeight(getHeight());
    }

    public void setActualWidth(int i) {
        this.mActualWidth = i;
        invalidate();
    }

    public int getActualWidth() {
        return this.mActualWidth;
    }

    public void setActualHeight(int i) {
        this.mActualHeight = i;
        invalidate();
    }

    public int getActualHeight() {
        return this.mActualHeight;
    }

    public int getStaticWidth() {
        if (this.mIsIsolated) {
            return getWidth();
        }
        return (int) (getHeight() * this.mAspectRatio);
    }

    public void setIsolated(boolean z) {
        if (this.mIsIsolated != z) {
            this.mIsIsolated = z;
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) getLayoutParams();
            marginLayoutParams.topMargin = z ? 0 : this.mExtraSpacing;
            setLayoutParams(marginLayoutParams);
        }
    }

    @Override // com.android.internal.widget.MessagingLinearLayout.MessagingChild
    public int getExtraSpacing() {
        return this.mExtraSpacing;
    }
}
