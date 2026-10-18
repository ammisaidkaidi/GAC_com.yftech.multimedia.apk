package com.yftech.car.widget.media.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatTextView;
import com.yftech.car.widget.media.R;
import com.yftech.car.widget.media.manager.MusicManager;
import com.yftech.car.widget.media.manager.RadioManager;
import com.yftech.car.widget.media.video.VideoDataPlayManager;

/* loaded from: /home/user/work/dex/classes3.dex */
public class PlayAnimation extends AppCompatTextView {
    public static final int RADIO = 5;
    private static final String TAG = "PlayAnimation";
    private boolean isPlay;
    private boolean isSelectedPlay;
    private AnimationDrawable mAnimationDrawable;
    private int mMediaType;
    private Drawable mNoPlayDrawable;
    private boolean mNoPlayIsNumber;
    private int mOfFrames;
    private final Runnable mRunnable;

    static /* synthetic */ int access$308(PlayAnimation playAnimation) {
        int i = playAnimation.mOfFrames;
        playAnimation.mOfFrames = i + 1;
        return i;
    }

    public PlayAnimation(Context context) {
        super(context);
        this.isSelectedPlay = false;
        this.mOfFrames = 0;
        this.mMediaType = -1;
        this.mRunnable = new Runnable() { // from class: com.yftech.car.widget.media.view.PlayAnimation.1
            @Override // java.lang.Runnable
            public void run() {
                if (PlayAnimation.this.isPlay && PlayAnimation.this.mAnimationDrawable != null && PlayAnimation.this.getVisibility() == 0) {
                    PlayAnimation.this.postOnAnimationDelayed(PlayAnimation.this.mRunnable, PlayAnimation.this.mAnimationDrawable.getDuration(PlayAnimation.this.mOfFrames));
                    PlayAnimation.this.setCompoundDrawablesRelativeWithIntrinsicBounds(PlayAnimation.this.mAnimationDrawable.getFrame(PlayAnimation.this.mOfFrames), null, null, null);
                    if (PlayAnimation.this.mOfFrames >= PlayAnimation.this.mAnimationDrawable.getNumberOfFrames() - 1) {
                        PlayAnimation.this.mOfFrames = 0;
                    } else {
                        PlayAnimation.access$308(PlayAnimation.this);
                    }
                }
            }
        };
    }

    public PlayAnimation(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PlayAnimation(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.isSelectedPlay = false;
        this.mOfFrames = 0;
        this.mMediaType = -1;
        this.mRunnable = new Runnable() { // from class: com.yftech.car.widget.media.view.PlayAnimation.1
            @Override // java.lang.Runnable
            public void run() {
                if (PlayAnimation.this.isPlay && PlayAnimation.this.mAnimationDrawable != null && PlayAnimation.this.getVisibility() == 0) {
                    PlayAnimation.this.postOnAnimationDelayed(PlayAnimation.this.mRunnable, PlayAnimation.this.mAnimationDrawable.getDuration(PlayAnimation.this.mOfFrames));
                    PlayAnimation.this.setCompoundDrawablesRelativeWithIntrinsicBounds(PlayAnimation.this.mAnimationDrawable.getFrame(PlayAnimation.this.mOfFrames), null, null, null);
                    if (PlayAnimation.this.mOfFrames >= PlayAnimation.this.mAnimationDrawable.getNumberOfFrames() - 1) {
                        PlayAnimation.this.mOfFrames = 0;
                    } else {
                        PlayAnimation.access$308(PlayAnimation.this);
                    }
                }
            }
        };
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.PlayAnimation);
        Drawable drawable = obtainStyledAttributes.getDrawable(R.styleable.PlayAnimation_play_drawable);
        this.mNoPlayDrawable = obtainStyledAttributes.getDrawable(R.styleable.PlayAnimation_no_play_drawable);
        this.mNoPlayIsNumber = obtainStyledAttributes.getBoolean(R.styleable.PlayAnimation_no_play_is_number, false);
        if (drawable instanceof AnimationDrawable) {
            this.mAnimationDrawable = (AnimationDrawable) drawable;
            setCompoundDrawablesRelativeWithIntrinsicBounds(this.mAnimationDrawable.getFrame(this.mOfFrames), null, null, null);
        } else {
            setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, null, null, null);
        }
    }

    public void setAnimationDrawable(AnimationDrawable animationDrawable) {
        this.mAnimationDrawable = animationDrawable;
        if (this.mAnimationDrawable != null) {
            this.mOfFrames = 0;
            setCompoundDrawablesRelativeWithIntrinsicBounds(this.mAnimationDrawable.getFrame(this.mOfFrames), null, null, null);
        } else {
            setCompoundDrawablesRelativeWithIntrinsicBounds(null, null, null, null);
        }
    }

    public void setSelectedPlay(boolean z) {
        this.isSelectedPlay = z;
        if (this.isSelectedPlay) {
            setPlay(MusicManager.getInstance().isPlaying());
        } else {
            setNoPlayDrawable();
        }
    }

    public void setMediaType(int i) {
        this.mMediaType = i;
    }

    public void setPlay(boolean z) {
        this.isPlay = z;
        if (z) {
            removeCallbacks(this.mRunnable);
            post(this.mRunnable);
        } else {
            if (this.mAnimationDrawable == null || this.mAnimationDrawable.getNumberOfFrames() <= this.mOfFrames) {
                return;
            }
            setCompoundDrawablesRelativeWithIntrinsicBounds(this.mAnimationDrawable.getFrame(this.mOfFrames), null, null, null);
        }
    }

    public void setNumberText(String str) {
        if (this.mNoPlayIsNumber) {
            setText(str);
        }
    }

    private void setNoPlayDrawable() {
        this.isPlay = false;
        removeCallbacks(this.mRunnable);
        setCompoundDrawablesRelativeWithIntrinsicBounds(this.mNoPlayDrawable, null, null, null);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.mMediaType == -1 || !this.isSelectedPlay) {
            return;
        }
        if (this.mMediaType == 0) {
            setPlay(MusicManager.getInstance().isPlaying());
        } else if (this.mMediaType == 1) {
            setPlay(VideoDataPlayManager.getInstance().isPlaying());
        } else if (this.mMediaType == 5) {
            setPlay(RadioManager.getInstance().isPlaying());
        }
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.mRunnable);
    }
}
