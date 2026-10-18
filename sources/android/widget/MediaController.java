package android.widget;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.telephony.NetworkScanRequest;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityManager;
import android.widget.FrameLayout;
import android.widget.SeekBar;
import com.android.internal.policy.PhoneWindow;
import java.util.Formatter;
import java.util.Locale;

/* loaded from: /home/user/work/dex/classes2.dex */
public class MediaController extends FrameLayout {
    private static final int sDefaultTimeout = 3000;
    private final AccessibilityManager mAccessibilityManager;
    private View mAnchor;
    private final Context mContext;
    private TextView mCurrentTime;
    private View mDecor;
    private WindowManager.LayoutParams mDecorLayoutParams;
    private boolean mDragging;
    private TextView mEndTime;
    private final Runnable mFadeOut;
    private ImageButton mFfwdButton;
    private final View.OnClickListener mFfwdListener;
    StringBuilder mFormatBuilder;
    Formatter mFormatter;
    private boolean mFromXml;
    private final View.OnLayoutChangeListener mLayoutChangeListener;
    private boolean mListenersSet;
    private ImageButton mNextButton;
    private View.OnClickListener mNextListener;
    private ImageButton mPauseButton;
    private CharSequence mPauseDescription;
    private final View.OnClickListener mPauseListener;
    private CharSequence mPlayDescription;
    private MediaPlayerControl mPlayer;
    private ImageButton mPrevButton;
    private View.OnClickListener mPrevListener;
    private ProgressBar mProgress;
    private ImageButton mRewButton;
    private final View.OnClickListener mRewListener;
    private View mRoot;
    private final SeekBar.OnSeekBarChangeListener mSeekListener;
    private final Runnable mShowProgress;
    private boolean mShowing;
    private final View.OnTouchListener mTouchListener;
    private final boolean mUseFastForward;
    private Window mWindow;
    private WindowManager mWindowManager;

    /* loaded from: /home/user/work/dex/classes2.dex */
    public interface MediaPlayerControl {
        boolean canPause();

        boolean canSeekBackward();

        boolean canSeekForward();

        int getAudioSessionId();

        int getBufferPercentage();

        int getCurrentPosition();

        int getDuration();

        boolean isPlaying();

        void pause();

        void seekTo(int i);

        void start();
    }

    public MediaController(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mLayoutChangeListener = new View.OnLayoutChangeListener() { // from class: android.widget.MediaController.1
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                MediaController.this.updateFloatingWindowLayout();
                if (MediaController.this.mShowing) {
                    MediaController.this.mWindowManager.updateViewLayout(MediaController.this.mDecor, MediaController.this.mDecorLayoutParams);
                }
            }
        };
        this.mTouchListener = new View.OnTouchListener() { // from class: android.widget.MediaController.2
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() != 0 || !MediaController.this.mShowing) {
                    return false;
                }
                MediaController.this.hide();
                return false;
            }
        };
        this.mFadeOut = new Runnable() { // from class: android.widget.MediaController.3
            @Override // java.lang.Runnable
            public void run() {
                MediaController.this.hide();
            }
        };
        this.mShowProgress = new Runnable() { // from class: android.widget.MediaController.4
            @Override // java.lang.Runnable
            public void run() {
                int progress = MediaController.this.setProgress();
                if (!MediaController.this.mDragging && MediaController.this.mShowing && MediaController.this.mPlayer.isPlaying()) {
                    MediaController.this.postDelayed(MediaController.this.mShowProgress, 1000 - (progress % 1000));
                }
            }
        };
        this.mPauseListener = new View.OnClickListener() { // from class: android.widget.MediaController.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MediaController.this.doPauseResume();
                MediaController.this.show(MediaController.sDefaultTimeout);
            }
        };
        this.mSeekListener = new SeekBar.OnSeekBarChangeListener() { // from class: android.widget.MediaController.6
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
                MediaController.this.show(3600000);
                MediaController.this.mDragging = true;
                MediaController.this.removeCallbacks(MediaController.this.mShowProgress);
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                if (z) {
                    int duration = (int) ((MediaController.this.mPlayer.getDuration() * i) / 1000);
                    MediaController.this.mPlayer.seekTo(duration);
                    if (MediaController.this.mCurrentTime != null) {
                        MediaController.this.mCurrentTime.setText(MediaController.this.stringForTime(duration));
                    }
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
                MediaController.this.mDragging = false;
                MediaController.this.setProgress();
                MediaController.this.updatePausePlay();
                MediaController.this.show(MediaController.sDefaultTimeout);
                MediaController.this.post(MediaController.this.mShowProgress);
            }
        };
        this.mRewListener = new View.OnClickListener() { // from class: android.widget.MediaController.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MediaController.this.mPlayer.seekTo(MediaController.this.mPlayer.getCurrentPosition() - 5000);
                MediaController.this.setProgress();
                MediaController.this.show(MediaController.sDefaultTimeout);
            }
        };
        this.mFfwdListener = new View.OnClickListener() { // from class: android.widget.MediaController.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MediaController.this.mPlayer.seekTo(MediaController.this.mPlayer.getCurrentPosition() + 15000);
                MediaController.this.setProgress();
                MediaController.this.show(MediaController.sDefaultTimeout);
            }
        };
        this.mRoot = this;
        this.mContext = context;
        this.mUseFastForward = true;
        this.mFromXml = true;
        this.mAccessibilityManager = AccessibilityManager.getInstance(context);
    }

    @Override // android.view.View
    public void onFinishInflate() {
        if (this.mRoot != null) {
            initControllerView(this.mRoot);
        }
    }

    public MediaController(Context context, boolean z) {
        super(context);
        this.mLayoutChangeListener = new View.OnLayoutChangeListener() { // from class: android.widget.MediaController.1
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                MediaController.this.updateFloatingWindowLayout();
                if (MediaController.this.mShowing) {
                    MediaController.this.mWindowManager.updateViewLayout(MediaController.this.mDecor, MediaController.this.mDecorLayoutParams);
                }
            }
        };
        this.mTouchListener = new View.OnTouchListener() { // from class: android.widget.MediaController.2
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() != 0 || !MediaController.this.mShowing) {
                    return false;
                }
                MediaController.this.hide();
                return false;
            }
        };
        this.mFadeOut = new Runnable() { // from class: android.widget.MediaController.3
            @Override // java.lang.Runnable
            public void run() {
                MediaController.this.hide();
            }
        };
        this.mShowProgress = new Runnable() { // from class: android.widget.MediaController.4
            @Override // java.lang.Runnable
            public void run() {
                int progress = MediaController.this.setProgress();
                if (!MediaController.this.mDragging && MediaController.this.mShowing && MediaController.this.mPlayer.isPlaying()) {
                    MediaController.this.postDelayed(MediaController.this.mShowProgress, 1000 - (progress % 1000));
                }
            }
        };
        this.mPauseListener = new View.OnClickListener() { // from class: android.widget.MediaController.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MediaController.this.doPauseResume();
                MediaController.this.show(MediaController.sDefaultTimeout);
            }
        };
        this.mSeekListener = new SeekBar.OnSeekBarChangeListener() { // from class: android.widget.MediaController.6
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
                MediaController.this.show(3600000);
                MediaController.this.mDragging = true;
                MediaController.this.removeCallbacks(MediaController.this.mShowProgress);
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i, boolean z2) {
                if (z2) {
                    int duration = (int) ((MediaController.this.mPlayer.getDuration() * i) / 1000);
                    MediaController.this.mPlayer.seekTo(duration);
                    if (MediaController.this.mCurrentTime != null) {
                        MediaController.this.mCurrentTime.setText(MediaController.this.stringForTime(duration));
                    }
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
                MediaController.this.mDragging = false;
                MediaController.this.setProgress();
                MediaController.this.updatePausePlay();
                MediaController.this.show(MediaController.sDefaultTimeout);
                MediaController.this.post(MediaController.this.mShowProgress);
            }
        };
        this.mRewListener = new View.OnClickListener() { // from class: android.widget.MediaController.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MediaController.this.mPlayer.seekTo(MediaController.this.mPlayer.getCurrentPosition() - 5000);
                MediaController.this.setProgress();
                MediaController.this.show(MediaController.sDefaultTimeout);
            }
        };
        this.mFfwdListener = new View.OnClickListener() { // from class: android.widget.MediaController.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MediaController.this.mPlayer.seekTo(MediaController.this.mPlayer.getCurrentPosition() + 15000);
                MediaController.this.setProgress();
                MediaController.this.show(MediaController.sDefaultTimeout);
            }
        };
        this.mContext = context;
        this.mUseFastForward = z;
        initFloatingWindowLayout();
        initFloatingWindow();
        this.mAccessibilityManager = AccessibilityManager.getInstance(context);
    }

    public MediaController(Context context) {
        this(context, true);
    }

    private void initFloatingWindow() {
        this.mWindowManager = (WindowManager) this.mContext.getSystemService("window");
        this.mWindow = new PhoneWindow(this.mContext);
        this.mWindow.setWindowManager(this.mWindowManager, null, null);
        this.mWindow.requestFeature(1);
        this.mDecor = this.mWindow.getDecorView();
        this.mDecor.setOnTouchListener(this.mTouchListener);
        this.mWindow.setContentView(this);
        this.mWindow.setBackgroundDrawableResource(R.color.transparent);
        this.mWindow.setVolumeControlStream(3);
        setFocusable(true);
        setFocusableInTouchMode(true);
        setDescendantFocusability(262144);
        requestFocus();
    }

    private void initFloatingWindowLayout() {
        this.mDecorLayoutParams = new WindowManager.LayoutParams();
        WindowManager.LayoutParams layoutParams = this.mDecorLayoutParams;
        layoutParams.gravity = 51;
        layoutParams.height = -2;
        layoutParams.x = 0;
        layoutParams.format = -3;
        layoutParams.type = 1000;
        layoutParams.flags |= 8519712;
        layoutParams.token = null;
        layoutParams.windowAnimations = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateFloatingWindowLayout() {
        int[] iArr = new int[2];
        this.mAnchor.getLocationOnScreen(iArr);
        this.mDecor.measure(View.MeasureSpec.makeMeasureSpec(this.mAnchor.getWidth(), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(this.mAnchor.getHeight(), Integer.MIN_VALUE));
        WindowManager.LayoutParams layoutParams = this.mDecorLayoutParams;
        layoutParams.width = this.mAnchor.getWidth();
        layoutParams.x = iArr[0] + ((this.mAnchor.getWidth() - layoutParams.width) / 2);
        layoutParams.y = (iArr[1] + this.mAnchor.getHeight()) - this.mDecor.getMeasuredHeight();
    }

    public void setMediaPlayer(MediaPlayerControl mediaPlayerControl) {
        this.mPlayer = mediaPlayerControl;
        updatePausePlay();
    }

    public void setAnchorView(View view) {
        if (this.mAnchor != null) {
            this.mAnchor.removeOnLayoutChangeListener(this.mLayoutChangeListener);
        }
        this.mAnchor = view;
        if (this.mAnchor != null) {
            this.mAnchor.addOnLayoutChangeListener(this.mLayoutChangeListener);
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        removeAllViews();
        addView(makeControllerView(), layoutParams);
    }

    protected View makeControllerView() {
        this.mRoot = ((LayoutInflater) this.mContext.getSystemService("layout_inflater")).inflate(R.layout.input_method_extract_view, (ViewGroup) null);
        initControllerView(this.mRoot);
        return this.mRoot;
    }

    private void initControllerView(View view) {
        Resources resources = this.mContext.getResources();
        this.mPlayDescription = resources.getText(R.string.factorytest_failed);
        this.mPauseDescription = resources.getText(R.string.factory_reset_warning);
        this.mPauseButton = (ImageButton) view.findViewById(R.id.message_icon_container);
        if (this.mPauseButton != null) {
            this.mPauseButton.requestFocus();
            this.mPauseButton.setOnClickListener(this.mPauseListener);
        }
        this.mFfwdButton = (ImageButton) view.findViewById(R.id.content_preview_image_area);
        if (this.mFfwdButton != null) {
            this.mFfwdButton.setOnClickListener(this.mFfwdListener);
            if (!this.mFromXml) {
                this.mFfwdButton.setVisibility(this.mUseFastForward ? 0 : 8);
            }
        }
        this.mRewButton = (ImageButton) view.findViewById(R.id.notification_media_progress_bar);
        if (this.mRewButton != null) {
            this.mRewButton.setOnClickListener(this.mRewListener);
            if (!this.mFromXml) {
                this.mRewButton.setVisibility(this.mUseFastForward ? 0 : 8);
            }
        }
        this.mNextButton = (ImageButton) view.findViewById(R.id.issued_to_header);
        if (this.mNextButton != null && !this.mFromXml && !this.mListenersSet) {
            this.mNextButton.setVisibility(8);
        }
        this.mPrevButton = (ImageButton) view.findViewById(R.id.never);
        if (this.mPrevButton != null && !this.mFromXml && !this.mListenersSet) {
            this.mPrevButton.setVisibility(8);
        }
        this.mProgress = (ProgressBar) view.findViewById(R.id.immersive_cling_back_bg_light);
        if (this.mProgress != null) {
            if (this.mProgress instanceof SeekBar) {
                ((SeekBar) this.mProgress).setOnSeekBarChangeListener(this.mSeekListener);
            }
            this.mProgress.setMax(1000);
        }
        this.mEndTime = (TextView) view.findViewById(R.id.sensor);
        this.mCurrentTime = (TextView) view.findViewById(R.id.sentences);
        this.mFormatBuilder = new StringBuilder();
        this.mFormatter = new Formatter(this.mFormatBuilder, Locale.getDefault());
        installPrevNextListeners();
    }

    public void show() {
        show(sDefaultTimeout);
    }

    private void disableUnsupportedButtons() {
        try {
            if (this.mPauseButton != null && !this.mPlayer.canPause()) {
                this.mPauseButton.setEnabled(false);
            }
            if (this.mRewButton != null && !this.mPlayer.canSeekBackward()) {
                this.mRewButton.setEnabled(false);
            }
            if (this.mFfwdButton != null && !this.mPlayer.canSeekForward()) {
                this.mFfwdButton.setEnabled(false);
            }
            if (this.mProgress == null || this.mPlayer.canSeekBackward() || this.mPlayer.canSeekForward()) {
                return;
            }
            this.mProgress.setEnabled(false);
        } catch (IncompatibleClassChangeError unused) {
        }
    }

    public void show(int i) {
        if (!this.mShowing && this.mAnchor != null) {
            setProgress();
            if (this.mPauseButton != null) {
                this.mPauseButton.requestFocus();
            }
            disableUnsupportedButtons();
            updateFloatingWindowLayout();
            this.mWindowManager.addView(this.mDecor, this.mDecorLayoutParams);
            this.mShowing = true;
        }
        updatePausePlay();
        post(this.mShowProgress);
        if (i == 0 || this.mAccessibilityManager.isTouchExplorationEnabled()) {
            return;
        }
        removeCallbacks(this.mFadeOut);
        postDelayed(this.mFadeOut, i);
    }

    public boolean isShowing() {
        return this.mShowing;
    }

    public void hide() {
        if (this.mAnchor != null && this.mShowing) {
            try {
                removeCallbacks(this.mShowProgress);
                this.mWindowManager.removeView(this.mDecor);
            } catch (IllegalArgumentException unused) {
                Log.w("MediaController", "already removed");
            }
            this.mShowing = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String stringForTime(int i) {
        int i2 = i / 1000;
        int i3 = i2 % 60;
        int i4 = (i2 / 60) % 60;
        int i5 = i2 / NetworkScanRequest.MAX_SEARCH_MAX_SEC;
        this.mFormatBuilder.setLength(0);
        return i5 > 0 ? this.mFormatter.format("%d:%02d:%02d", Integer.valueOf(i5), Integer.valueOf(i4), Integer.valueOf(i3)).toString() : this.mFormatter.format("%02d:%02d", Integer.valueOf(i4), Integer.valueOf(i3)).toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int setProgress() {
        if (this.mPlayer == null || this.mDragging) {
            return 0;
        }
        int currentPosition = this.mPlayer.getCurrentPosition();
        int duration = this.mPlayer.getDuration();
        if (this.mProgress != null) {
            if (duration > 0) {
                this.mProgress.setProgress((int) ((currentPosition * 1000) / duration));
            }
            this.mProgress.setSecondaryProgress(this.mPlayer.getBufferPercentage() * 10);
        }
        if (this.mEndTime != null) {
            this.mEndTime.setText(stringForTime(duration));
        }
        if (this.mCurrentTime != null) {
            this.mCurrentTime.setText(stringForTime(currentPosition));
        }
        return currentPosition;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 3) {
            switch (action) {
                case 0:
                    show(0);
                    return true;
                case 1:
                    show(sDefaultTimeout);
                    return true;
                default:
                    return true;
            }
        }
        hide();
        return true;
    }

    @Override // android.view.View
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        show(sDefaultTimeout);
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        boolean z = keyEvent.getRepeatCount() == 0 && keyEvent.getAction() == 0;
        if (keyCode == 79 || keyCode == 85 || keyCode == 62) {
            if (z) {
                doPauseResume();
                show(sDefaultTimeout);
                if (this.mPauseButton != null) {
                    this.mPauseButton.requestFocus();
                }
            }
            return true;
        }
        if (keyCode == 126) {
            if (z && !this.mPlayer.isPlaying()) {
                this.mPlayer.start();
                updatePausePlay();
                show(sDefaultTimeout);
            }
            return true;
        }
        if (keyCode == 86 || keyCode == 127) {
            if (z && this.mPlayer.isPlaying()) {
                this.mPlayer.pause();
                updatePausePlay();
                show(sDefaultTimeout);
            }
            return true;
        }
        if (keyCode == 25 || keyCode == 24 || keyCode == 164 || keyCode == 27) {
            return super.dispatchKeyEvent(keyEvent);
        }
        if (keyCode != 4 && keyCode != 82) {
            show(sDefaultTimeout);
            return super.dispatchKeyEvent(keyEvent);
        }
        if (z) {
            hide();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePausePlay() {
        if (this.mRoot == null || this.mPauseButton == null) {
            return;
        }
        if (this.mPlayer.isPlaying()) {
            this.mPauseButton.setImageResource(R.drawable.ic_media_pause);
            this.mPauseButton.setContentDescription(this.mPauseDescription);
        } else {
            this.mPauseButton.setImageResource(R.drawable.ic_media_play);
            this.mPauseButton.setContentDescription(this.mPlayDescription);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doPauseResume() {
        if (this.mPlayer.isPlaying()) {
            this.mPlayer.pause();
        } else {
            this.mPlayer.start();
        }
        updatePausePlay();
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        if (this.mPauseButton != null) {
            this.mPauseButton.setEnabled(z);
        }
        if (this.mFfwdButton != null) {
            this.mFfwdButton.setEnabled(z);
        }
        if (this.mRewButton != null) {
            this.mRewButton.setEnabled(z);
        }
        if (this.mNextButton != null) {
            this.mNextButton.setEnabled(z && this.mNextListener != null);
        }
        if (this.mPrevButton != null) {
            this.mPrevButton.setEnabled(z && this.mPrevListener != null);
        }
        if (this.mProgress != null) {
            this.mProgress.setEnabled(z);
        }
        disableUnsupportedButtons();
        super.setEnabled(z);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return MediaController.class.getName();
    }

    private void installPrevNextListeners() {
        if (this.mNextButton != null) {
            this.mNextButton.setOnClickListener(this.mNextListener);
            this.mNextButton.setEnabled(this.mNextListener != null);
        }
        if (this.mPrevButton != null) {
            this.mPrevButton.setOnClickListener(this.mPrevListener);
            this.mPrevButton.setEnabled(this.mPrevListener != null);
        }
    }

    public void setPrevNextListeners(View.OnClickListener onClickListener, View.OnClickListener onClickListener2) {
        this.mNextListener = onClickListener;
        this.mPrevListener = onClickListener2;
        this.mListenersSet = true;
        if (this.mRoot != null) {
            installPrevNextListeners();
            if (this.mNextButton != null && !this.mFromXml) {
                this.mNextButton.setVisibility(0);
            }
            if (this.mPrevButton == null || this.mFromXml) {
                return;
            }
            this.mPrevButton.setVisibility(0);
        }
    }
}
