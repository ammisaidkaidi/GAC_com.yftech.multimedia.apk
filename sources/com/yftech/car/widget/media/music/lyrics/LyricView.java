package com.yftech.car.widget.media.music.lyrics;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.DynamicLayout;
import android.text.Layout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.DecelerateInterpolator;
import android.widget.OverScroller;
import com.yftech.car.media.data.entity.MediaFile;
import com.yftech.car.widget.media.R;
import com.yftech.car.widget.media.manager.MusicManager;
import com.yftech.car.widget.media.music.lyrics.Lyric;
import com.yftech.car.widget.media.utils.TaskManager;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

/* loaded from: /home/user/work/dex/classes3.dex */
public class LyricView extends View {
    private static final int AUTO_SCROLLER = 4;
    private static final String TAG = "LyricView";
    private static final int TEXT_ALIGN_CENTER = 1;
    private static final int TEXT_ALIGN_LEFT = 0;
    private static final int TEXT_ALIGN_RIGHT = 2;
    private static final int UPDATE_TIME = 3;
    private boolean isFling;
    private boolean isPlay;
    private boolean isPressing;
    private boolean isRightStart;
    private boolean mAddKrc;
    private int mAnimatorSpeed;
    private final ValueAnimator.AnimatorUpdateListener mAnimatorUpdateListener;
    private MusicManager.CarMusicControlCallback mCarMusicControlCallback;
    private boolean mClickItemPlay;
    private int mCurrentLineIndex;
    private float mDownX;
    private float mDownY;
    private final TextPaint mEmptyTextPaint;
    private final Handler mHandler;
    private float mHighlightOffset;
    private final TextPaint mHighlightPaint;
    private final TextPaint mHighlightPlayPaint;
    private boolean mIsClick;
    private float mLastMotionY;
    private int mLineSpace;
    private int mLinearMax;
    private final LoadLyricRunnable mLoadLyricRunnable;
    private Lyric mLyric;
    private LyricForm mLyricForm;
    private String mLyricLoading;
    private final HashMap<String, DynamicLayout> mLyricMap;
    private String mLyricMessage;
    private final HashMap<String, DynamicLayout> mLyricPlayMap;
    private Layout.Alignment mLyricTextAlignment;
    private final int mMaxFlingVelocity;
    private final int mMinFlingVelocity;
    private boolean mNeedRevert;
    private String mNoLyric;
    private String mNoPlay;
    private float mOffsetY;
    private OnLyricLoadingListener mOnLyricLoadingListener;
    private final OverScroller mOverScroller;
    private long mPlayTimeMillis;
    private Rect mRect;
    private final int mScaledTouchSlop;
    private boolean mScrollToTouch;
    private final HashMap<String, DynamicLayout> mStaticLayoutHashMap;
    private final TextPaint mTextPaint;
    private Lyric.TimeLineMapper mTimeLineMapper;
    private int mUpdateFrequencyTime;
    private VelocityTracker mVelocityTracker;
    private boolean mVerbatimPlay;
    private int mVerbatimScrollStartOffset;
    private int mVerbatimScrollTopOffset;

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface OnLyricLoadingListener {
        public static final int MSG_LOAD_ERROR = 3;
        public static final int MSG_LOAD_SUCCESS = 1;
        public static final int MSG_NOT_LYRIC = 2;
        public static final int MSG_NO_PLAY = 4;
        public static final int MSG_START_LOADING = 0;

        void onLoadLyric(int i);
    }

    private LyricView(Context context) {
        this(context, null);
    }

    public LyricView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LyricView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        int i2;
        this.mUpdateFrequencyTime = 40;
        this.mLyricMap = new HashMap<>();
        this.mLyricPlayMap = new HashMap<>();
        this.mStaticLayoutHashMap = new HashMap<>();
        this.mLyricTextAlignment = Layout.Alignment.ALIGN_NORMAL;
        this.mHighlightOffset = 0.5f;
        this.mIsClick = false;
        this.mLyricMessage = null;
        this.mNoPlay = null;
        this.mNoLyric = null;
        this.mLyricLoading = null;
        this.mLinearMax = -1;
        this.mAnimatorSpeed = 300;
        this.mScrollToTouch = true;
        this.mNeedRevert = false;
        this.mHandler = new Handler(Looper.getMainLooper()) { // from class: com.yftech.car.widget.media.music.lyrics.LyricView.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what == 3) {
                    LyricView.this.mHandler.sendEmptyMessageDelayed(3, (LyricView.this.mVerbatimPlay && LyricView.this.mLinearMax == 1) ? LyricView.this.mUpdateFrequencyTime : 100L);
                    if (LyricView.this.isPlay) {
                        LyricView.this.updateTimeMills(MusicManager.getInstance().getCurrentPlayProgress());
                        return;
                    }
                    return;
                }
                if (message.what == 4) {
                    LyricView.this.scrollToPosition(LyricView.this.mCurrentLineIndex);
                }
            }
        };
        this.mAnimatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: com.yftech.car.widget.media.music.lyrics.LyricView.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                LyricView.this.mOffsetY = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                LyricView.this.refresh();
            }
        };
        this.mLoadLyricRunnable = new LoadLyricRunnable();
        Resources resources = context.getResources();
        int color = resources.getColor(17170443, null);
        int color2 = resources.getColor(17170455, null);
        int color3 = resources.getColor(17170457, null);
        int color4 = resources.getColor(17170456, null);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.LyricView);
        int i3 = 24;
        int i4 = 20;
        if (obtainStyledAttributes != null) {
            int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(R.styleable.LyricView_lyric_view_text_size, 20);
            i3 = obtainStyledAttributes.getDimensionPixelSize(R.styleable.LyricView_lyric_view_highlight_text_size, dimensionPixelSize);
            i2 = obtainStyledAttributes.getDimensionPixelSize(R.styleable.LyricView_lyric_view_toast_text_size, dimensionPixelSize);
            this.mLineSpace = obtainStyledAttributes.getDimensionPixelSize(R.styleable.LyricView_lyric_view_line_spacing, 20);
            color = obtainStyledAttributes.getColor(R.styleable.LyricView_lyric_view_text_color, color);
            color2 = obtainStyledAttributes.getColor(R.styleable.LyricView_lyric_view_highlight_text_color, color2);
            color3 = obtainStyledAttributes.getColor(R.styleable.LyricView_lyric_view_highlight_play_text_color, color3);
            int color5 = obtainStyledAttributes.getColor(R.styleable.LyricView_lyric_view_toast_text_color, color3);
            int i5 = obtainStyledAttributes.getInt(R.styleable.LyricView_lyric_view_text_align, 0);
            this.mLinearMax = obtainStyledAttributes.getInt(R.styleable.LyricView_lyric_view_linear_max, -1);
            this.mUpdateFrequencyTime = obtainStyledAttributes.getInt(R.styleable.LyricView_lyric_view_update_frequency_time, 40);
            this.mAnimatorSpeed = obtainStyledAttributes.getInt(R.styleable.LyricView_lyric_view_animator_scroll_duration, 300);
            this.mHighlightOffset = obtainStyledAttributes.getFloat(R.styleable.LyricView_lyric_view_highlight_offset, 0.5f);
            this.mVerbatimScrollTopOffset = obtainStyledAttributes.getInt(R.styleable.LyricView_lyric_view_verbatim_scroll_top_offset, 0);
            this.mVerbatimScrollStartOffset = obtainStyledAttributes.getInt(R.styleable.LyricView_lyric_view_verbatim_scroll_start_offset, 0);
            this.mNoPlay = obtainStyledAttributes.getString(R.styleable.LyricView_lyric_view_no_play_music);
            this.mNoLyric = obtainStyledAttributes.getString(R.styleable.LyricView_lyric_view_no_lyric);
            this.mLyricLoading = obtainStyledAttributes.getString(R.styleable.LyricView_lyric_view_lyric_loading);
            this.mVerbatimPlay = obtainStyledAttributes.getBoolean(R.styleable.LyricView_lyric_view_highlight_verbatim_play, false);
            this.mAddKrc = obtainStyledAttributes.getBoolean(R.styleable.LyricView_lyric_view_add_krc, false);
            this.mClickItemPlay = obtainStyledAttributes.getBoolean(R.styleable.LyricView_lyric_view_click_item_play, false);
            this.mScrollToTouch = obtainStyledAttributes.getBoolean(R.styleable.LyricView_lyric_view_touch, true);
            this.mNeedRevert = obtainStyledAttributes.getBoolean(R.styleable.LyricView_lyric_view_need_revert, false);
            Locale locale = Locale.getDefault();
            if (this.mNeedRevert) {
                this.isRightStart = locale.getLanguage().equals("ar") || locale.getLanguage().equals("he");
            }
            switch (i5) {
                case 1:
                    this.mLyricTextAlignment = Layout.Alignment.ALIGN_CENTER;
                    break;
                case 2:
                    this.mLyricTextAlignment = this.isRightStart ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_OPPOSITE;
                    break;
                default:
                    this.mLyricTextAlignment = this.isRightStart ? Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_NORMAL;
                    break;
            }
            obtainStyledAttributes.recycle();
            i4 = dimensionPixelSize;
            color4 = color5;
        } else {
            Log.e(TAG, "LyricView: typedArray is null.");
            i2 = 24;
        }
        if (this.mHighlightOffset < 0.0f) {
            this.mHighlightOffset = 0.0f;
        }
        if (this.mHighlightOffset > 1.0f) {
            this.mHighlightOffset = 1.0f;
        }
        if (this.mNoPlay == null) {
            this.mNoPlay = context.getString(R.string.no_play);
        }
        if (this.mNoLyric == null) {
            this.mNoLyric = context.getString(R.string.no_lyric);
        }
        if (this.mLyricLoading == null) {
            this.mLyricLoading = context.getString(R.string.lyric_loading);
        }
        this.mTextPaint = new TextPaint();
        this.mTextPaint.setAntiAlias(true);
        this.mTextPaint.setTextAlign(Paint.Align.LEFT);
        this.mTextPaint.setColor(color);
        this.mTextPaint.setTextSize(i4);
        this.mHighlightPaint = new TextPaint(this.mTextPaint);
        this.mHighlightPaint.setColor(color2);
        float f = i3;
        this.mHighlightPaint.setTextSize(f);
        this.mHighlightPlayPaint = new TextPaint(this.mTextPaint);
        this.mHighlightPlayPaint.setColor(color3);
        this.mHighlightPlayPaint.setTextSize(f);
        this.mHighlightPlayPaint.setFakeBoldText(true);
        this.mEmptyTextPaint = new TextPaint(this.mTextPaint);
        this.mEmptyTextPaint.setColor(color4);
        this.mEmptyTextPaint.setTextSize(i2);
        this.mOverScroller = new OverScroller(context, new DecelerateInterpolator());
        this.mOverScroller.setFriction(0.1f);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.mScaledTouchSlop = viewConfiguration.getScaledTouchSlop();
        this.mMaxFlingVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        this.mMinFlingVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
    }

    private int getAvailableWidth() {
        return (getWidth() - getPaddingStart()) - getPaddingEnd();
    }

    private int getAvailableHeight() {
        return (getHeight() - getPaddingTop()) - getPaddingBottom();
    }

    private boolean isEmpty() {
        return this.mLyric == null || this.mLyric.getLineCount() == 0;
    }

    private int getLineCount() {
        if (this.mLyric == null) {
            return 0;
        }
        return this.mLyric.getLineCount();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setLyricMessageNoLyric() {
        this.mLyricMessage = this.mNoLyric;
    }

    public void setOnLyricLoadingListener(OnLyricLoadingListener onLyricLoadingListener) {
        this.mOnLyricLoadingListener = onLyricLoadingListener;
    }

    public void setLyric(Lyric lyric) {
        reset();
        if (lyric == null) {
            this.mLyric = null;
            this.mTimeLineMapper = null;
            if (this.mOnLyricLoadingListener != null) {
                this.mOnLyricLoadingListener.onLoadLyric(2);
            }
        } else {
            this.mLyric = lyric.removeBlankLines();
            this.mTimeLineMapper = this.mLyric.newTimeLineMapper();
        }
        if (lyric == null || Lyric.EMPTY == lyric) {
            if (this.mOnLyricLoadingListener != null) {
                this.mOnLyricLoadingListener.onLoadLyric(2);
            }
        } else if (this.mOnLyricLoadingListener != null) {
            this.mOnLyricLoadingListener.onLoadLyric(1);
        }
        refresh();
        if (this.isPlay) {
            return;
        }
        updateTimeMills(MusicManager.getInstance().getCurrentPlayProgress());
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        Log.d(TAG, "onFinishInflate: ");
        LrcParser.setLinearMax(this.mLinearMax);
        if (this.mCarMusicControlCallback == null) {
            this.mCarMusicControlCallback = getCarMusicControlCallback();
            MusicManager.getInstance().registerMusicControlCallback(this.mCarMusicControlCallback);
            this.isPlay = MusicManager.getInstance().isPlaying();
            this.mHandler.sendEmptyMessage(3);
            this.mCarMusicControlCallback.onChangePlayMusic(MusicManager.getInstance().getPlayMusic());
        }
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Log.d(TAG, "onAttachedToWindow: ");
        if (this.mCarMusicControlCallback == null) {
            this.mCarMusicControlCallback = getCarMusicControlCallback();
            MusicManager.getInstance().registerMusicControlCallback(this.mCarMusicControlCallback);
            this.isPlay = MusicManager.getInstance().isPlaying();
            this.mHandler.sendEmptyMessage(3);
            this.mCarMusicControlCallback.onChangePlayMusic(MusicManager.getInstance().getPlayMusic());
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Log.d(TAG, "onDetachedFromWindow: ");
        this.mHandler.removeMessages(3);
        MusicManager.getInstance().unregisterMusicControlCallback(this.mCarMusicControlCallback);
        this.mCarMusicControlCallback = null;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (isEmpty()) {
            drawEmptyText(canvas);
            return;
        }
        float paddingStart = getPaddingStart();
        float availableHeight = getAvailableHeight() * this.mHighlightOffset;
        int lineCount = getLineCount();
        for (int i = 0; i < lineCount; i++) {
            if (i > 0) {
                availableHeight += ((getLineHeight(i - 1) + getLineHeight(i)) / 2.0f) + this.mLineSpace;
            }
            drawLyricLine(canvas, paddingStart, availableHeight, i);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:82:0x030b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void drawLyricLine(Canvas canvas, float f, float f2, int i) {
        String str;
        Bitmap bitmap;
        int i2;
        int i3;
        String charSequence;
        int i4;
        int measureText;
        if (this.mLyric == null) {
            Log.e(TAG, "drawLyricLine: mLyric is null");
            return;
        }
        String lineText = this.mLyric.getLineText(i);
        DynamicLayout dynamicLayout = this.mLyricMap.get(lineText);
        int availableWidth = getAvailableWidth();
        if (i == this.mCurrentLineIndex) {
            DynamicLayout dynamicLayout2 = this.mLyricPlayMap.get(lineText);
            if (dynamicLayout2 == null) {
                if (this.mLinearMax == 1) {
                    String[] split = lineText.split("\n");
                    charSequence = split.length > 1 ? split[0] : lineText;
                    float measureText2 = this.mHighlightPaint.measureText(charSequence);
                    float f3 = availableWidth;
                    if (measureText2 > f3) {
                        while (measureText2 > f3) {
                            charSequence = charSequence.substring(0, charSequence.length() - 1);
                            measureText2 = this.mHighlightPaint.measureText(charSequence + "...");
                        }
                        charSequence = charSequence + "...";
                    }
                } else {
                    charSequence = lineText;
                }
                if (Build.VERSION.SDK_INT >= 28) {
                    dynamicLayout = DynamicLayout.Builder.obtain(charSequence, this.mHighlightPaint, availableWidth).setAlignment(this.mLyricTextAlignment).setLineSpacing(0.0f, 1.0f).setEllipsize(TextUtils.TruncateAt.END).setEllipsizedWidth(availableWidth).setIncludePad(false).build();
                    i2 = 0;
                    i3 = 1;
                } else {
                    i2 = 0;
                    i3 = 1;
                    dynamicLayout = new DynamicLayout(charSequence, this.mHighlightPaint, availableWidth, this.mLyricTextAlignment, 1.0f, 0.0f, false);
                }
                this.mLyricPlayMap.put(lineText, dynamicLayout);
            } else {
                i2 = 0;
                i3 = 1;
                dynamicLayout = dynamicLayout2;
                charSequence = dynamicLayout2.getText().toString();
            }
            if (this.mVerbatimPlay && this.mLinearMax == i3) {
                long lineStartTime = this.mLyric.getLineStartTime(this.mCurrentLineIndex);
                if (lineStartTime > 0 && this.mPlayTimeMillis > lineStartTime) {
                    List<KrcPlayEntity> krcPlayEntity = this.mLyric.getKrcPlayEntity(this.mCurrentLineIndex);
                    int i5 = (int) (this.mPlayTimeMillis - lineStartTime);
                    if (krcPlayEntity != null) {
                        int i6 = i2;
                        float f4 = 0.0f;
                        KrcPlayEntity krcPlayEntity2 = null;
                        while (true) {
                            if (i6 >= krcPlayEntity.size()) {
                                break;
                            }
                            KrcPlayEntity krcPlayEntity3 = krcPlayEntity.get(i6);
                            int[] playTime = krcPlayEntity3.getPlayTime();
                            int length = playTime.length;
                            for (int i7 = i2; i7 < length; i7++) {
                                i2 += playTime[i7];
                            }
                            if (i2 >= i5) {
                                krcPlayEntity2 = krcPlayEntity3;
                                break;
                            }
                            f4 += this.mHighlightPlayPaint.measureText(krcPlayEntity3.getLyrics());
                            if (i6 >= krcPlayEntity.size() - i3) {
                                krcPlayEntity2 = krcPlayEntity3;
                            }
                            i6++;
                            i2 = 0;
                        }
                        if (krcPlayEntity2 != null) {
                            float measureText3 = this.mHighlightPlayPaint.measureText(krcPlayEntity2.getLyrics());
                            int[] playTime2 = krcPlayEntity2.getPlayTime();
                            int i8 = playTime2[i3];
                            float f5 = i5 - playTime2[0];
                            if (f5 < 1.0f) {
                                f5 = 1.0f;
                            }
                            float f6 = (f5 / i8) * measureText3;
                            if (f6 < 1.0f) {
                                f6 = 1.0f;
                            }
                            if (f6 > measureText3) {
                                f6 = measureText3;
                            }
                            float f7 = f6 + f4;
                            if (f7 < 1.0f) {
                                f7 = 1.0f;
                            }
                            float f8 = availableWidth;
                            if (f7 > f8) {
                                f7 = f8;
                            }
                            switch (AnonymousClass4.$SwitchMap$android$text$Layout$Alignment[this.mLyricTextAlignment.ordinal()]) {
                                case 1:
                                    measureText = ((int) (f8 - this.mHighlightPlayPaint.measureText(charSequence))) / 2;
                                    break;
                                case 2:
                                    measureText = (int) (f8 - this.mHighlightPlayPaint.measureText(charSequence));
                                    break;
                                default:
                                    measureText = 0;
                                    break;
                            }
                            int i9 = measureText < 0 ? 0 : measureText;
                            bitmap = Bitmap.createBitmap(((int) f7) + i9, dynamicLayout.getHeight(), Bitmap.Config.ARGB_8888);
                            Canvas canvas2 = new Canvas(bitmap);
                            int height = (int) (dynamicLayout.getHeight() - (dynamicLayout.getHeight() / 6.0f));
                            if (this.mVerbatimScrollTopOffset != 0) {
                                height += this.mVerbatimScrollTopOffset;
                            }
                            if (this.mVerbatimScrollStartOffset != 0) {
                                i9 += this.mVerbatimScrollStartOffset;
                            }
                            canvas2.drawText(charSequence, i9, height, this.mHighlightPlayPaint);
                        }
                    } else {
                        long lineStartTime2 = this.mLyric.getLineStartTime(this.mCurrentLineIndex + i3) - lineStartTime;
                        if (lineStartTime2 <= 0) {
                            lineStartTime2 = 1000;
                        }
                        float measureText4 = this.mHighlightPlayPaint.measureText(charSequence);
                        int i10 = (int) ((i5 / ((float) lineStartTime2)) * measureText4);
                        if (i10 <= 0) {
                            i10 = i3;
                        }
                        switch (AnonymousClass4.$SwitchMap$android$text$Layout$Alignment[this.mLyricTextAlignment.ordinal()]) {
                            case 1:
                                i4 = ((int) (availableWidth - measureText4)) / 2;
                                break;
                            case 2:
                                i4 = (int) (availableWidth - measureText4);
                                break;
                            default:
                                i4 = 0;
                                break;
                        }
                        int i11 = i4 < 0 ? 0 : i4;
                        Bitmap createBitmap = Bitmap.createBitmap(i10 + i11, dynamicLayout.getHeight(), Bitmap.Config.ARGB_8888);
                        Canvas canvas3 = new Canvas(createBitmap);
                        int height2 = (int) (dynamicLayout.getHeight() - (dynamicLayout.getHeight() / 6.0f));
                        if (this.mVerbatimScrollTopOffset != 0) {
                            height2 += this.mVerbatimScrollTopOffset;
                        }
                        if (this.mVerbatimScrollStartOffset != 0) {
                            i11 += this.mVerbatimScrollStartOffset;
                        }
                        canvas3.drawText(charSequence, i11, height2, this.mHighlightPlayPaint);
                        bitmap = createBitmap;
                    }
                    canvas.save();
                    canvas.translate(f, (f2 - (dynamicLayout.getHeight() / 2.0f)) - this.mOffsetY);
                    dynamicLayout.draw(canvas);
                    if (bitmap != null) {
                        canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
                    }
                    canvas.restore();
                }
            }
        } else if (dynamicLayout == null) {
            if (this.mLinearMax == 1) {
                String[] split2 = lineText.split("\n");
                str = split2.length > 1 ? split2[0] : lineText;
                float measureText5 = this.mTextPaint.measureText(str);
                float f9 = availableWidth;
                if (measureText5 > f9) {
                    while (measureText5 > f9) {
                        str = str.substring(0, str.length() - 1);
                        measureText5 = this.mTextPaint.measureText(str + "...");
                    }
                    str = str + "...";
                }
            } else {
                str = lineText;
            }
            if (Build.VERSION.SDK_INT >= 28) {
                dynamicLayout = DynamicLayout.Builder.obtain(str, this.mTextPaint, availableWidth).setAlignment(this.mLyricTextAlignment).setLineSpacing(0.0f, 1.0f).setEllipsize(TextUtils.TruncateAt.END).setEllipsizedWidth(availableWidth).setIncludePad(false).build();
            } else {
                dynamicLayout = new DynamicLayout(str, this.mTextPaint, availableWidth, this.mLyricTextAlignment, 1.0f, 0.0f, false);
            }
            this.mLyricMap.put(lineText, dynamicLayout);
        }
        bitmap = null;
        canvas.save();
        canvas.translate(f, (f2 - (dynamicLayout.getHeight() / 2.0f)) - this.mOffsetY);
        dynamicLayout.draw(canvas);
        if (bitmap != null) {
        }
        canvas.restore();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yftech.car.widget.media.music.lyrics.LyricView$4, reason: invalid class name */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public static /* synthetic */ class AnonymousClass4 {
        static final /* synthetic */ int[] $SwitchMap$android$text$Layout$Alignment = new int[Layout.Alignment.values().length];

        static {
            try {
                $SwitchMap$android$text$Layout$Alignment[Layout.Alignment.ALIGN_CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$android$text$Layout$Alignment[Layout.Alignment.ALIGN_OPPOSITE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$android$text$Layout$Alignment[Layout.Alignment.ALIGN_NORMAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private void drawEmptyText(Canvas canvas) {
        Layout.Alignment alignment;
        DynamicLayout dynamicLayout;
        canvas.save();
        int availableWidth = getAvailableWidth();
        if (this.mLyricMessage == null) {
            this.mLyricMessage = this.mNoLyric;
        }
        switch (AnonymousClass4.$SwitchMap$android$text$Layout$Alignment[this.mLyricTextAlignment.ordinal()]) {
            case 1:
                alignment = Layout.Alignment.ALIGN_CENTER;
                break;
            case 2:
                if (!this.isRightStart) {
                    alignment = Layout.Alignment.ALIGN_OPPOSITE;
                    break;
                } else {
                    alignment = Layout.Alignment.ALIGN_NORMAL;
                    break;
                }
            default:
                if (!this.isRightStart) {
                    alignment = Layout.Alignment.ALIGN_NORMAL;
                    break;
                } else {
                    alignment = Layout.Alignment.ALIGN_OPPOSITE;
                    break;
                }
        }
        Layout.Alignment alignment2 = alignment;
        if (Build.VERSION.SDK_INT >= 28) {
            dynamicLayout = DynamicLayout.Builder.obtain(this.mLyricMessage, this.mEmptyTextPaint, availableWidth).setAlignment(alignment2).setLineSpacing(0.0f, 1.0f).setEllipsize(TextUtils.TruncateAt.END).setEllipsizedWidth(availableWidth).setIncludePad(false).build();
        } else {
            dynamicLayout = new DynamicLayout(this.mLyricMessage, this.mEmptyTextPaint, availableWidth, alignment2, 1.0f, 0.0f, false);
        }
        canvas.translate(getPaddingStart(), (getAvailableHeight() - dynamicLayout.getHeight()) / 2.0f);
        dynamicLayout.draw(canvas);
        canvas.restore();
    }

    private int getTextHeight(String str, Paint paint) {
        if (this.mRect == null) {
            this.mRect = new Rect();
        }
        paint.getTextBounds(str, 0, str.length(), this.mRect);
        return this.mRect.height();
    }

    public void updateTimeMills(long j) {
        if (isEmpty()) {
            return;
        }
        this.mPlayTimeMillis = j;
        synchronized (this.mTimeLineMapper) {
            int lineIndexByTime = getLineIndexByTime(j);
            if (this.mCurrentLineIndex != lineIndexByTime) {
                this.mCurrentLineIndex = lineIndexByTime;
                if (!this.isPressing && !this.mHandler.hasMessages(4)) {
                    this.mHandler.sendEmptyMessage(4);
                }
                refresh();
                return;
            }
            if (this.mVerbatimPlay && this.mLinearMax == 1) {
                invalidate();
            }
        }
    }

    private int getLineIndexByTime(long j) {
        if (this.mTimeLineMapper == null) {
            return 0;
        }
        return this.mTimeLineMapper.map(j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scrollToPosition(int i) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(this.mOffsetY, getOffsetY(i));
        ofFloat.addUpdateListener(this.mAnimatorUpdateListener);
        ofFloat.setDuration(this.mAnimatorSpeed);
        ofFloat.start();
    }

    private synchronized float getOffsetY(int i) {
        float f;
        f = 0.0f;
        for (int i2 = 1; i2 <= i; i2++) {
            f += ((getLineHeight(i2 - 1) + getLineHeight(i2)) / 2.0f) + this.mLineSpace;
        }
        return f;
    }

    private float getLineHeight(int i) {
        String str;
        DynamicLayout dynamicLayout;
        String str2;
        if (this.mLyric == null) {
            return 0.0f;
        }
        int availableWidth = getAvailableWidth();
        String lineText = this.mLyric.getLineText(i);
        if (this.mLinearMax == 1) {
            String[] split = lineText.split("\n");
            String str3 = split.length > 1 ? split[0] : lineText;
            if (this.mHighlightPaint.measureText(str3) > availableWidth) {
                str2 = str3.substring(0, 1) + "...";
            } else {
                str2 = str3;
            }
            str = str2;
        } else {
            str = lineText;
        }
        DynamicLayout dynamicLayout2 = this.mStaticLayoutHashMap.get(lineText);
        if (i == this.mCurrentLineIndex) {
            dynamicLayout = new DynamicLayout(str, this.mHighlightPaint, getAvailableWidth(), Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
        } else if (dynamicLayout2 == null) {
            dynamicLayout = new DynamicLayout(str, this.mTextPaint, getAvailableWidth(), Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
            this.mStaticLayoutHashMap.put(lineText, dynamicLayout);
        } else {
            dynamicLayout = dynamicLayout2;
        }
        return dynamicLayout.getHeight();
    }

    private boolean isOverScrolled() {
        return this.mOffsetY > getOffsetY(getLineCount() - 1) || this.mOffsetY < 0.0f;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (isEmpty() || !this.mScrollToTouch) {
            return super.onTouchEvent(motionEvent);
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        float f = 0.0f;
        int i = 0;
        switch (motionEvent.getAction()) {
            case 0:
                this.mHandler.removeMessages(4);
                if (!this.mOverScroller.isFinished()) {
                    this.mOverScroller.abortAnimation();
                }
                this.mDownX = motionEvent.getX();
                this.mDownY = motionEvent.getY();
                this.mLastMotionY = this.mDownY;
                this.isPressing = true;
                this.isFling = false;
                this.mIsClick = true;
                break;
            case 1:
            case 3:
                if (!this.isFling) {
                    refresh();
                    performClick();
                }
                handleActionUp();
                this.isPressing = false;
                if (this.mIsClick) {
                    this.mIsClick = false;
                    if (this.mClickItemPlay) {
                        float y = motionEvent.getY() - (getAvailableHeight() * this.mHighlightOffset);
                        while (f < this.mOffsetY + (y - getLineHeight(i))) {
                            i++;
                            f += getLineHeight(i) + this.mLineSpace;
                        }
                        if (this.mCurrentLineIndex != i || i == 0) {
                            MusicManager.getInstance().setPlayProgress((int) this.mLyric.getLineStartTime(i));
                        }
                        Log.d(TAG, "onTouchEvent: click text==" + this.mLyric.getLineText(i));
                        break;
                    }
                }
                break;
            case 2:
                float y2 = motionEvent.getY() - this.mLastMotionY;
                if (Math.abs(y2) > this.mScaledTouchSlop) {
                    this.isFling = true;
                    this.mIsClick = false;
                }
                if (this.isFling) {
                    float offsetY = getOffsetY(getLineCount() - 1);
                    if (this.mOffsetY < 0.0f || this.mOffsetY > offsetY) {
                        y2 /= 3.5f;
                    }
                    this.mOffsetY -= y2;
                    this.mLastMotionY = motionEvent.getY();
                    refresh();
                    break;
                } else {
                    float abs = Math.abs(motionEvent.getX() - this.mDownX);
                    float abs2 = Math.abs(motionEvent.getY() - this.mDownY);
                    if (abs > this.mScaledTouchSlop || abs2 > this.mScaledTouchSlop) {
                        this.mIsClick = false;
                        break;
                    }
                }
                break;
        }
        return true;
    }

    private void handleActionUp() {
        if (isOverScrolled() && this.mOffsetY < 0.0f) {
            scrollToPosition(0);
            postScrollToCurrentLine();
            return;
        }
        if (isOverScrolled() && this.mOffsetY > getOffsetY(getLineCount() - 1)) {
            scrollToPosition(getLineCount() - 1);
            postScrollToCurrentLine();
            return;
        }
        this.mVelocityTracker.computeCurrentVelocity(1000, this.mMaxFlingVelocity);
        float yVelocity = this.mVelocityTracker.getYVelocity();
        if (Math.abs(yVelocity) > this.mMinFlingVelocity) {
            this.mOverScroller.fling(0, (int) this.mOffsetY, 0, (int) (-yVelocity), 0, 0, 0, (int) getOffsetY(getLineCount() - 1), 0, (int) getLineHeight(0));
            refresh();
        }
        releaseVelocityTracker();
        postScrollToCurrentLine();
    }

    private void postScrollToCurrentLine() {
        this.mHandler.sendEmptyMessageDelayed(4, 2500L);
    }

    @Override // android.view.View
    public void computeScroll() {
        super.computeScroll();
        if (this.mOverScroller.computeScrollOffset()) {
            this.mOffsetY = this.mOverScroller.getCurrY();
            refresh();
        }
    }

    private void releaseVelocityTracker() {
        if (this.mVelocityTracker == null) {
            return;
        }
        this.mVelocityTracker.clear();
        this.mVelocityTracker.recycle();
        this.mVelocityTracker = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reset() {
        this.mLyric = null;
        this.mTimeLineMapper = null;
        this.mLyricMap.clear();
        this.mLyricPlayMap.clear();
        this.mStaticLayoutHashMap.clear();
        this.mCurrentLineIndex = 0;
        this.mOffsetY = 0.0f;
        this.isPressing = false;
        this.isFling = false;
        this.mHandler.removeMessages(4);
        refresh();
    }

    @Override // android.view.View
    public boolean performClick() {
        return super.performClick();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refresh() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            invalidate();
        } else {
            postInvalidate();
        }
    }

    private MusicManager.CarMusicControlCallback getCarMusicControlCallback() {
        return new MusicManager.CarMusicControlCallback() { // from class: com.yftech.car.widget.media.music.lyrics.LyricView.3
            @Override // com.yftech.car.widget.media.manager.MusicManager.CarMusicControlCallback, com.yftech.car.widget.media.manager.MusicManager.OnMusicControlListener
            public void onChangePlayMusic(MediaFile mediaFile) {
                LyricView.this.mLyric = null;
                LyricView.this.mTimeLineMapper = null;
                if (mediaFile != null && !TextUtils.isEmpty(mediaFile.getData()) && !mediaFile.getData().equals("unknown")) {
                    if (LyricView.this.mOnLyricLoadingListener != null) {
                        LyricView.this.mOnLyricLoadingListener.onLoadLyric(0);
                    }
                    LyricView.this.mLyricMessage = LyricView.this.mLyricLoading;
                    if (Looper.myLooper() == Looper.getMainLooper()) {
                        LyricView.this.invalidate();
                    } else {
                        LyricView.this.postInvalidate();
                    }
                    if (LyricView.this.mLyricForm != null) {
                        LyricView.this.mLyricForm.setValid(false);
                        LyricView.this.reset();
                        LyricView.this.mLyricForm = null;
                    }
                    LyricView.this.mLoadLyricRunnable.mMediaDataPath = mediaFile.getData();
                    TaskManager.getInstance().threadRunnable(LyricView.this.mLoadLyricRunnable);
                    return;
                }
                LyricView.this.mLyricMessage = LyricView.this.mNoPlay;
                if (LyricView.this.mOnLyricLoadingListener != null) {
                    LyricView.this.mOnLyricLoadingListener.onLoadLyric(4);
                }
                if (Looper.myLooper() == Looper.getMainLooper()) {
                    LyricView.this.invalidate();
                } else {
                    LyricView.this.postInvalidate();
                }
            }

            @Override // com.yftech.car.widget.media.manager.MusicManager.CarMusicControlCallback, com.yftech.car.widget.media.manager.MusicManager.OnMusicControlListener
            public void onChangePlaying(boolean z) {
                LyricView.this.isPlay = z;
            }
        };
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    private class LoadLyricRunnable implements Runnable {
        private String mMediaDataPath;

        private LoadLyricRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.mMediaDataPath != null) {
                if (LyricView.this.mLyricForm != null) {
                    LyricView.this.mLyricForm.setValid(false);
                    LyricView.this.mLyricForm = null;
                    LyricView.this.mLyricMessage = LyricView.this.mLyricLoading;
                    if (LyricView.this.mOnLyricLoadingListener != null) {
                        LyricView.this.mOnLyricLoadingListener.onLoadLyric(0);
                    }
                    LyricView.this.reset();
                    LyricView.this.postInvalidate();
                }
                LyricView.this.mLyricForm = new LyricForm(LyricView.this.mHandler, LyricView.this.mAddKrc);
                LyricView.this.mLyricForm.parseLyric(LyricView.this, this.mMediaDataPath);
            }
        }
    }
}
