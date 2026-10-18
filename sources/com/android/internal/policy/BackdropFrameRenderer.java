package com.android.internal.policy;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.view.Choreographer;
import android.view.RenderNode;
import android.view.ThreadedRenderer;
import android.view.View;

/* loaded from: /home/user/work/dex/classes3.dex */
public class BackdropFrameRenderer extends Thread implements Choreographer.FrameCallback {
    private Drawable mCaptionBackgroundDrawable;
    private Choreographer mChoreographer;
    private DecorView mDecorView;
    private RenderNode mFrameAndBackdropNode;
    private boolean mFullscreen;
    private int mLastCaptionHeight;
    private int mLastContentHeight;
    private int mLastContentWidth;
    private int mLastXOffset;
    private int mLastYOffset;
    private ColorDrawable mNavigationBarColor;
    private boolean mOldFullscreen;
    private ThreadedRenderer mRenderer;
    private boolean mReportNextDraw;
    private final int mResizeMode;
    private Drawable mResizingBackgroundDrawable;
    private ColorDrawable mStatusBarColor;
    private RenderNode mSystemBarBackgroundNode;
    private Drawable mUserCaptionBackgroundDrawable;
    private final Rect mTargetRect = new Rect();
    private final Rect mOldTargetRect = new Rect();
    private final Rect mNewTargetRect = new Rect();
    private final Rect mOldSystemInsets = new Rect();
    private final Rect mOldStableInsets = new Rect();
    private final Rect mSystemInsets = new Rect();
    private final Rect mStableInsets = new Rect();
    private final Rect mTmpRect = new Rect();

    public BackdropFrameRenderer(DecorView decorView, ThreadedRenderer threadedRenderer, Rect rect, Drawable drawable, Drawable drawable2, Drawable drawable3, int i, int i2, boolean z, Rect rect2, Rect rect3, int i3) {
        setName("ResizeFrame");
        this.mRenderer = threadedRenderer;
        onResourcesLoaded(decorView, drawable, drawable2, drawable3, i, i2);
        this.mFrameAndBackdropNode = RenderNode.create("FrameAndBackdropNode", (View) null);
        this.mRenderer.addRenderNode(this.mFrameAndBackdropNode, true);
        this.mTargetRect.set(rect);
        this.mFullscreen = z;
        this.mOldFullscreen = z;
        this.mSystemInsets.set(rect2);
        this.mStableInsets.set(rect3);
        this.mOldSystemInsets.set(rect2);
        this.mOldStableInsets.set(rect3);
        this.mResizeMode = i3;
        start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onResourcesLoaded(DecorView decorView, Drawable drawable, Drawable drawable2, Drawable drawable3, int i, int i2) {
        this.mDecorView = decorView;
        this.mResizingBackgroundDrawable = (drawable == null || drawable.getConstantState() == null) ? null : drawable.getConstantState().newDrawable();
        this.mCaptionBackgroundDrawable = (drawable2 == null || drawable2.getConstantState() == null) ? null : drawable2.getConstantState().newDrawable();
        this.mUserCaptionBackgroundDrawable = (drawable3 == null || drawable3.getConstantState() == null) ? null : drawable3.getConstantState().newDrawable();
        if (this.mCaptionBackgroundDrawable == null) {
            this.mCaptionBackgroundDrawable = this.mResizingBackgroundDrawable;
        }
        if (i != 0) {
            this.mStatusBarColor = new ColorDrawable(i);
            addSystemBarNodeIfNeeded();
        } else {
            this.mStatusBarColor = null;
        }
        if (i2 != 0) {
            this.mNavigationBarColor = new ColorDrawable(i2);
            addSystemBarNodeIfNeeded();
        } else {
            this.mNavigationBarColor = null;
        }
    }

    private void addSystemBarNodeIfNeeded() {
        if (this.mSystemBarBackgroundNode != null) {
            return;
        }
        this.mSystemBarBackgroundNode = RenderNode.create("SystemBarBackgroundNode", (View) null);
        this.mRenderer.addRenderNode(this.mSystemBarBackgroundNode, false);
    }

    public void setTargetRect(Rect rect, boolean z, Rect rect2, Rect rect3) {
        synchronized (this) {
            this.mFullscreen = z;
            this.mTargetRect.set(rect);
            this.mSystemInsets.set(rect2);
            this.mStableInsets.set(rect3);
            pingRenderLocked(false);
        }
    }

    public void onConfigurationChange() {
        synchronized (this) {
            if (this.mRenderer != null) {
                this.mOldTargetRect.set(0, 0, 0, 0);
                pingRenderLocked(false);
            }
        }
    }

    public void releaseRenderer() {
        synchronized (this) {
            if (this.mRenderer != null) {
                this.mRenderer.setContentDrawBounds(0, 0, 0, 0);
                this.mRenderer.removeRenderNode(this.mFrameAndBackdropNode);
                if (this.mSystemBarBackgroundNode != null) {
                    this.mRenderer.removeRenderNode(this.mSystemBarBackgroundNode);
                }
                this.mRenderer = null;
                pingRenderLocked(false);
            }
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        try {
            Looper.prepare();
            synchronized (this) {
                this.mChoreographer = Choreographer.getInstance();
            }
            Looper.loop();
            synchronized (this) {
                this.mChoreographer = null;
                Choreographer.releaseInstance();
            }
        } finally {
            releaseRenderer();
        }
    }

    @Override // android.view.Choreographer.FrameCallback
    public void doFrame(long j) {
        synchronized (this) {
            if (this.mRenderer == null) {
                reportDrawIfNeeded();
                Looper.myLooper().quit();
            } else {
                doFrameUncheckedLocked();
            }
        }
    }

    private void doFrameUncheckedLocked() {
        this.mNewTargetRect.set(this.mTargetRect);
        if (this.mNewTargetRect.equals(this.mOldTargetRect) && this.mOldFullscreen == this.mFullscreen && this.mStableInsets.equals(this.mOldStableInsets) && this.mSystemInsets.equals(this.mOldSystemInsets) && !this.mReportNextDraw) {
            return;
        }
        this.mOldFullscreen = this.mFullscreen;
        this.mOldTargetRect.set(this.mNewTargetRect);
        this.mOldSystemInsets.set(this.mSystemInsets);
        this.mOldStableInsets.set(this.mStableInsets);
        redrawLocked(this.mNewTargetRect, this.mFullscreen, this.mSystemInsets, this.mStableInsets);
    }

    public boolean onContentDrawn(int i, int i2, int i3, int i4) {
        boolean z;
        synchronized (this) {
            z = false;
            boolean z2 = this.mLastContentWidth == 0;
            this.mLastContentWidth = i3;
            this.mLastContentHeight = i4 - this.mLastCaptionHeight;
            this.mLastXOffset = i;
            this.mLastYOffset = i2;
            this.mRenderer.setContentDrawBounds(this.mLastXOffset, this.mLastYOffset, this.mLastXOffset + this.mLastContentWidth, this.mLastYOffset + this.mLastCaptionHeight + this.mLastContentHeight);
            if (z2 && (this.mLastCaptionHeight != 0 || !this.mDecorView.isShowingCaption())) {
                z = true;
            }
        }
        return z;
    }

    public void onRequestDraw(boolean z) {
        synchronized (this) {
            this.mReportNextDraw = z;
            this.mOldTargetRect.set(0, 0, 0, 0);
            pingRenderLocked(true);
        }
    }

    private void redrawLocked(Rect rect, boolean z, Rect rect2, Rect rect3) {
        int captionHeight = this.mDecorView.getCaptionHeight();
        if (captionHeight != 0) {
            this.mLastCaptionHeight = captionHeight;
        }
        if ((this.mLastCaptionHeight == 0 && this.mDecorView.isShowingCaption()) || this.mLastContentWidth == 0 || this.mLastContentHeight == 0) {
            return;
        }
        int i = this.mLastXOffset + rect.left;
        int i2 = this.mLastYOffset + rect.top;
        int width = rect.width();
        int height = rect.height();
        int i3 = i + width;
        int i4 = i2 + height;
        this.mFrameAndBackdropNode.setLeftTopRightBottom(i, i2, i3, i4);
        Canvas start = this.mFrameAndBackdropNode.start(width, height);
        Drawable drawable = this.mUserCaptionBackgroundDrawable != null ? this.mUserCaptionBackgroundDrawable : this.mCaptionBackgroundDrawable;
        if (drawable != null) {
            drawable.setBounds(0, 0, i3, this.mLastCaptionHeight + i2);
            drawable.draw(start);
        }
        if (this.mResizingBackgroundDrawable != null) {
            this.mResizingBackgroundDrawable.setBounds(0, this.mLastCaptionHeight, i3, i4);
            this.mResizingBackgroundDrawable.draw(start);
        }
        this.mFrameAndBackdropNode.end(start);
        drawColorViews(i, i2, width, height, z, rect2, rect3);
        this.mRenderer.drawRenderNode(this.mFrameAndBackdropNode);
        reportDrawIfNeeded();
    }

    private void drawColorViews(int i, int i2, int i3, int i4, boolean z, Rect rect, Rect rect2) {
        if (this.mSystemBarBackgroundNode == null) {
            return;
        }
        Canvas start = this.mSystemBarBackgroundNode.start(i3, i4);
        int i5 = i + i3;
        this.mSystemBarBackgroundNode.setLeftTopRightBottom(i, i2, i5, i2 + i4);
        int colorViewTopInset = DecorView.getColorViewTopInset(this.mStableInsets.top, this.mSystemInsets.top);
        if (this.mStatusBarColor != null) {
            this.mStatusBarColor.setBounds(0, 0, i5, colorViewTopInset);
            this.mStatusBarColor.draw(start);
        }
        if (this.mNavigationBarColor != null && z) {
            DecorView.getNavigationBarRect(i3, i4, rect2, rect, this.mTmpRect);
            this.mNavigationBarColor.setBounds(this.mTmpRect);
            this.mNavigationBarColor.draw(start);
        }
        this.mSystemBarBackgroundNode.end(start);
        this.mRenderer.drawRenderNode(this.mSystemBarBackgroundNode);
    }

    private void reportDrawIfNeeded() {
        if (this.mReportNextDraw) {
            if (this.mDecorView.isAttachedToWindow()) {
                this.mDecorView.getViewRootImpl().reportDrawFinish();
            }
            this.mReportNextDraw = false;
        }
    }

    private void pingRenderLocked(boolean z) {
        if (this.mChoreographer != null && !z) {
            this.mChoreographer.postFrameCallback(this);
        } else {
            doFrameUncheckedLocked();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setUserCaptionBackgroundDrawable(Drawable drawable) {
        this.mUserCaptionBackgroundDrawable = drawable;
    }
}
