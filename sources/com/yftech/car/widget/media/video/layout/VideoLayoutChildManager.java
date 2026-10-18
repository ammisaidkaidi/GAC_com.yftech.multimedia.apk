package com.yftech.car.widget.media.video.layout;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.text.Editable;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.NotificationManagerCompat;
import com.android.internal.logging.nano.MetricsProto;
import com.yftech.car.media.data.entity.MediaFile;
import com.yftech.car.utils.Loger;
import com.yftech.car.widget.media.entity.SizeCore;
import com.yftech.car.widget.media.layout.BaseLayoutChildManager;
import com.yftech.car.widget.media.list.MediaDataDirectoryList;
import com.yftech.car.widget.media.list.MediaDataList;
import com.yftech.car.widget.media.list.SearchHistoryList;
import com.yftech.car.widget.media.list.adapter.MediaFileAdapter;
import com.yftech.car.widget.media.list.adapter.SearchHistoryAdapter;
import com.yftech.car.widget.media.manager.MediaDataManager;
import com.yftech.car.widget.media.text.MediaDataListText;
import com.yftech.car.widget.media.text.MediaDataModifyBtn;
import com.yftech.car.widget.media.text.MediaFileTextView;
import com.yftech.car.widget.media.text.MediaListFolderPath;
import com.yftech.car.widget.media.text.MediaPlayTime;
import com.yftech.car.widget.media.text.MediaSearchEditText;
import com.yftech.car.widget.media.text.SearchEditButton;
import com.yftech.car.widget.media.text.VisibilityTextButton;
import com.yftech.car.widget.media.utils.AnimationUtil;
import com.yftech.car.widget.media.utils.MediaFindSearch;
import com.yftech.car.widget.media.utils.TouchEventUtil;
import com.yftech.car.widget.media.video.BaseVideo;
import com.yftech.car.widget.media.video.VideoDataPlayManager;
import com.yftech.car.widget.media.video.VideoPlayer;
import com.yftech.car.widget.media.video.VideoSeekViewImage;
import com.yftech.car.widget.media.video.button.VideoButton;
import com.yftech.car.widget.media.video.layout.VideoLayoutChildManager;
import com.yftech.car.widget.media.view.MediaImageLoading;
import com.yftech.car.widget.media.view.MediaProgressBar;
import com.yftech.car.widget.media.view.MediaSeekBar;
import com.yftech.car.widget.media.view.SideTextRetrievalView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* loaded from: /home/user/work/dex/classes3.dex */
public class VideoLayoutChildManager extends BaseLayoutChildManager implements VideoButton.OnClickFunctionListener {
    private static final String TAG = "LayoutChildManager";
    private long mClickTime;
    private InputMethodManager mInputMethodManager;
    private MediaFindSearch mMediaFindSearch;
    private MediaDataManager.OnDataChangeCallback mOnDataChangeCallback;
    private ViewGroup mRootLayout;
    private VideoPlayer.VideoCallback mVideoCallback;
    private BaseVideo mVideoPlayer;
    private VideoSeekViewImage mVideoSeekViewImage;
    private final List<MediaDataList> mMediaDataList = new ArrayList();
    private final List<VideoButton> mButtonList = new ArrayList();
    private final List<MediaFileTextView> mTextViewList = new ArrayList();
    private final List<MediaPlayTime> mPlayTimeList = new ArrayList();
    private final List<MediaSeekBar> mMediaSeekBarList = new ArrayList();
    private final List<MediaProgressBar> mProgressBarList = new ArrayList();
    private final List<MediaListFolderPath> mMediaListFolderPathList = new ArrayList();
    private final List<MediaDataListText> mMediaDataListTextList = new ArrayList();
    private final List<VisibilityTextButton> mVisibilityTextButtonList = new ArrayList();
    private final List<MediaDataModifyBtn> mMediaDataModifyBtnList = new ArrayList();
    private final List<MediaSearchEditText> mMediaSearchEditTextList = new ArrayList();
    private final List<SearchEditButton> mSearchEditButtonList = new ArrayList();
    private final List<SearchHistoryList> mSearchHistoryList = new ArrayList();
    private final List<MediaImageLoading> mMediaImageLoadingList = new ArrayList();
    private final List<MediaDataDirectoryList> mMediaDataDirectoryList = new ArrayList();
    private final List<SideTextRetrievalView> mSideTextRetrievalViewList = new ArrayList();
    private final Map<View, SizeCore> mSizeCore = new ArrayMap();
    private boolean isAnimationLoading = false;
    private boolean isTouchSeekBar = false;
    private boolean mShowVisibility = true;
    private int mScreenWidth = MetricsProto.MetricsEvent.ACTION_USB_CONFIG_ACCESSORY;
    private final MediaFileAdapter.OnItemFileListener mItemFileListener = new MediaFileAdapter.OnItemFileListener() { // from class: com.yftech.car.widget.media.video.layout.VideoLayoutChildManager.1
        @Override // com.yftech.car.widget.media.list.adapter.MediaFileAdapter.OnItemFileListener
        public void onListFile(List<MediaFile> list, int i) {
            if (VideoLayoutChildManager.this.mVideoPlayer == null || VideoLayoutChildManager.this.isAnimationLoading || VideoLayoutChildManager.this.mVideoPlayer.isOnTouchClick()) {
                return;
            }
            VideoLayoutChildManager.this.mVideoPlayer.startPlayList(list, i);
        }
    };
    private final SearchHistoryAdapter.OnSearchHistoryItemClickListener mOnSearchHistoryItemClickListener = new SearchHistoryAdapter.OnSearchHistoryItemClickListener() { // from class: com.yftech.car.widget.media.video.layout.VideoLayoutChildManager.3
        @Override // com.yftech.car.widget.media.list.adapter.SearchHistoryAdapter.OnSearchHistoryItemClickListener
        public void onItemSearch(SearchHistoryList searchHistoryList, String str) {
            for (MediaSearchEditText mediaSearchEditText : VideoLayoutChildManager.this.mMediaSearchEditTextList) {
                if (searchHistoryList.getSearchEditTextId() == -1 || searchHistoryList.getSearchEditTextId() == mediaSearchEditText.getId()) {
                    mediaSearchEditText.setText(str);
                    VideoLayoutChildManager.this.mOnSearchTextListener.onSearchText(mediaSearchEditText);
                    mediaSearchEditText.setSelection(str.length());
                    return;
                }
            }
        }

        @Override // com.yftech.car.widget.media.list.adapter.SearchHistoryAdapter.OnSearchHistoryItemClickListener
        public void onItemDelete(SearchHistoryList searchHistoryList, String str) {
            searchHistoryList.deleteSearch(str);
        }
    };
    private final MediaSearchEditText.OnSearchTextListener mOnSearchTextListener = new AnonymousClass4();
    private final Runnable mHideRunnable = new Runnable() { // from class: com.yftech.car.widget.media.video.layout.VideoLayoutChildManager.5
        @Override // java.lang.Runnable
        public void run() {
            if (VideoLayoutChildManager.this.mVideoPlayer == null || !VideoLayoutChildManager.this.mVideoPlayer.isPlaying()) {
                return;
            }
            Log.d(VideoLayoutChildManager.TAG, "run getSystemUIToTheTimeAutoHidden: " + VideoLayoutChildManager.this.mVideoPlayer.isSystemUIToTheTimeAutoHidden());
            if (VideoLayoutChildManager.this.mVideoPlayer.isSystemUIToTheTimeAutoHidden()) {
                if (VideoLayoutChildManager.this.mVideoPlayer.getSystemUiVisibilityHide() != -1) {
                    VideoLayoutChildManager.this.mRootLayout.setSystemUiVisibility(VideoLayoutChildManager.this.mVideoPlayer.getSystemUiVisibilityHide());
                }
                if (VideoLayoutChildManager.this.mVideoPlayer.isAutoCountdownHide(2)) {
                    VideoLayoutChildManager.this.setVisibilityVisibleGone(false);
                }
                for (VisibilityTextButton visibilityTextButton : VideoLayoutChildManager.this.mVisibilityTextButtonList) {
                    visibilityTextButton.setVisibilityShow(visibilityTextButton.isMediaDataListShow(VideoLayoutChildManager.this.mRootLayout));
                }
            }
        }
    };
    private final VideoDataPlayManager.OnMediaDataListUpdateListener mOnMediaDataListUpdateListener = new VideoDataPlayManager.OnMediaDataListUpdateListener() { // from class: com.yftech.car.widget.media.video.layout.VideoLayoutChildManager.6
        @Override // com.yftech.car.widget.media.video.VideoDataPlayManager.OnMediaDataListUpdateListener
        public void onPlayChange() {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                for (MediaDataList mediaDataList : VideoLayoutChildManager.this.mMediaDataList) {
                    if (mediaDataList.getMediaDefaultList() == 100 && mediaDataList.isEmptyList()) {
                        if (VideoLayoutChildManager.this.mVideoPlayer != null) {
                            mediaDataList.updateFileList(VideoLayoutChildManager.this.mVideoPlayer.getPlayList(), true);
                        }
                    } else {
                        mediaDataList.notifyDataSetChanged();
                        mediaDataList.updateListPosition();
                    }
                }
                return;
            }
            if (VideoLayoutChildManager.this.mRootLayout != null) {
                ViewGroup viewGroup = VideoLayoutChildManager.this.mRootLayout;
                final VideoDataPlayManager.OnMediaDataListUpdateListener onMediaDataListUpdateListener = VideoLayoutChildManager.this.mOnMediaDataListUpdateListener;
                Objects.requireNonNull(onMediaDataListUpdateListener);
                viewGroup.post(new Runnable() { // from class: com.yftech.car.widget.media.video.layout.-$$Lambda$UgO9eYxT97kOnmC8PBbvbaoP3OE
                    @Override // java.lang.Runnable
                    public final void run() {
                        VideoDataPlayManager.OnMediaDataListUpdateListener.this.onPlayChange();
                    }
                });
            }
        }
    };
    private final VisibilityTextButton.OnClickVisibilityListener mOnClickVisibilityListener = new AnonymousClass8();

    public void initView(final ViewGroup viewGroup) {
        this.mRootLayout = viewGroup;
        if (this.mOnDataChangeCallback == null) {
            this.mOnDataChangeCallback = getOnDataChangeCallback();
            MediaDataManager.getInstance().registerCarDataControlCallback(this.mOnDataChangeCallback);
            this.mInputMethodManager = (InputMethodManager) viewGroup.getContext().getSystemService("input_method");
            LinkedList<ViewGroup> linkedList = new LinkedList<>();
            linkedList.add(viewGroup);
            while (true) {
                if (linkedList.isEmpty()) {
                    break;
                }
                ViewGroup removeFirst = linkedList.removeFirst();
                for (int i = 0; i < removeFirst.getChildCount(); i++) {
                    Object childAt = removeFirst.getChildAt(i);
                    if (childAt instanceof BaseVideo) {
                        if (this.mVideoPlayer == null) {
                            this.mVideoPlayer = (BaseVideo) childAt;
                            this.mVideoPlayer.setLayoutChildManager(this);
                        } else {
                            Loger.e(TAG, "initView: add VideoPlayer: Only one VideoPlayer is valid");
                        }
                    } else if (childAt instanceof MediaDataList) {
                        MediaDataList mediaDataList = (MediaDataList) childAt;
                        mediaDataList.setLinkedList(linkedList);
                        this.mMediaDataList.add(mediaDataList);
                    } else if (childAt instanceof MediaDataDirectoryList) {
                        this.mMediaDataDirectoryList.add((MediaDataDirectoryList) childAt);
                    }
                    if (childAt instanceof SearchHistoryList) {
                        this.mSearchHistoryList.add((SearchHistoryList) childAt);
                    } else if (childAt instanceof VideoSeekViewImage) {
                        this.mVideoSeekViewImage = (VideoSeekViewImage) childAt;
                    } else if (childAt instanceof ViewGroup) {
                        linkedList.add((ViewGroup) childAt);
                    } else if (childAt instanceof VideoButton) {
                        this.mButtonList.add((VideoButton) childAt);
                    } else if (childAt instanceof MediaFileTextView) {
                        this.mTextViewList.add((MediaFileTextView) childAt);
                    } else if (childAt instanceof MediaPlayTime) {
                        this.mPlayTimeList.add((MediaPlayTime) childAt);
                    } else if (childAt instanceof MediaSeekBar) {
                        this.mMediaSeekBarList.add((MediaSeekBar) childAt);
                    } else if (childAt instanceof MediaProgressBar) {
                        this.mProgressBarList.add((MediaProgressBar) childAt);
                    } else if (childAt instanceof MediaListFolderPath) {
                        this.mMediaListFolderPathList.add((MediaListFolderPath) childAt);
                    } else if (childAt instanceof MediaDataListText) {
                        this.mMediaDataListTextList.add((MediaDataListText) childAt);
                    } else if (childAt instanceof VisibilityTextButton) {
                        this.mVisibilityTextButtonList.add((VisibilityTextButton) childAt);
                    } else if (childAt instanceof MediaSearchEditText) {
                        this.mMediaSearchEditTextList.add((MediaSearchEditText) childAt);
                    } else if (childAt instanceof SearchEditButton) {
                        this.mSearchEditButtonList.add((SearchEditButton) childAt);
                    } else if (childAt instanceof MediaDataModifyBtn) {
                        this.mMediaDataModifyBtnList.add((MediaDataModifyBtn) childAt);
                    } else if (childAt instanceof MediaImageLoading) {
                        this.mMediaImageLoadingList.add((MediaImageLoading) childAt);
                    } else if (childAt instanceof SideTextRetrievalView) {
                        this.mSideTextRetrievalViewList.add((SideTextRetrievalView) childAt);
                    }
                }
            }
            Loger.d(TAG, " initView: mMediaSeekBarList==" + this.mMediaSeekBarList.size() + ",mMediaDataList==" + this.mMediaDataList.size());
            TouchEventUtil.mNoClicking = false;
            if (this.mVideoPlayer != null) {
                if (this.mVideoCallback == null) {
                    this.mVideoCallback = getVideoCallback();
                }
                this.mVideoPlayer.addVideoCallback(this.mVideoCallback);
                ImageView mediaImageView = this.mVideoSeekViewImage != null ? this.mVideoSeekViewImage.getMediaImageView() : null;
                Iterator<MediaSeekBar> it = this.mMediaSeekBarList.iterator();
                while (it.hasNext()) {
                    it.next().setOnSeekBarChangeListener(this.mVideoPlayer.getOnSeekBar(mediaImageView));
                }
                MediaFile currentPlay = this.mVideoPlayer.getCurrentPlay();
                Iterator<MediaFileTextView> it2 = this.mTextViewList.iterator();
                while (it2.hasNext()) {
                    it2.next().updateMediaFile(currentPlay, this.mVideoPlayer.getPlayPosition(), this.mVideoPlayer.getPlayListSize());
                }
                long duration = this.mVideoPlayer.getDuration();
                int progressPosition = this.mVideoPlayer.getProgressPosition();
                Loger.d(TAG, " initView: duration==" + duration + ",progress==" + progressPosition);
                for (MediaProgressBar mediaProgressBar : this.mProgressBarList) {
                    mediaProgressBar.setMax((int) duration);
                    mediaProgressBar.setProgress(progressPosition);
                }
                for (MediaSeekBar mediaSeekBar : this.mMediaSeekBarList) {
                    mediaSeekBar.setMax((int) duration);
                    mediaSeekBar.setProgress(progressPosition);
                }
                if (this.mVideoSeekViewImage != null) {
                    this.mVideoSeekViewImage.setVideoPlayer(this.mVideoPlayer);
                    this.mVideoSeekViewImage.setVisibility(4);
                    this.mVideoSeekViewImage.postDelayed(new Runnable() { // from class: com.yftech.car.widget.media.video.layout.-$$Lambda$VideoLayoutChildManager$jzg4ANNjW63T6HRFq5XKjgcHysM
                        @Override // java.lang.Runnable
                        public final void run() {
                            VideoLayoutChildManager.lambda$initView$0(VideoLayoutChildManager.this);
                        }
                    }, 10L);
                }
                for (final MediaPlayTime mediaPlayTime : this.mPlayTimeList) {
                    mediaPlayTime.setForwardDrawable();
                    if (mediaPlayTime.isSeekBarShowScrollTime()) {
                        mediaPlayTime.setVisibility(4);
                        mediaPlayTime.postDelayed(new Runnable() { // from class: com.yftech.car.widget.media.video.layout.-$$Lambda$VideoLayoutChildManager$ksOFXdDZXECqXo9KfK1zVlpW2Kw
                            @Override // java.lang.Runnable
                            public final void run() {
                                VideoLayoutChildManager.lambda$initView$1(MediaPlayTime.this);
                            }
                        }, 1L);
                    } else if (mediaPlayTime.isVideoShowScrollTime()) {
                        mediaPlayTime.postDelayed(new Runnable() { // from class: com.yftech.car.widget.media.video.layout.-$$Lambda$VideoLayoutChildManager$ZrwkW-8qPZJnm-Ftm4Ibpj0fEEQ
                            @Override // java.lang.Runnable
                            public final void run() {
                                VideoLayoutChildManager.lambda$initView$2(MediaPlayTime.this);
                            }
                        }, 10L);
                    }
                    mediaPlayTime.updateDuration(duration);
                    mediaPlayTime.updateProgress(progressPosition);
                }
                int playMode = this.mVideoPlayer.getPlayMode();
                int scaleType = this.mVideoPlayer.getScaleType();
                for (VideoButton videoButton : this.mButtonList) {
                    videoButton.setVideoPlayer(this.mVideoPlayer);
                    if (videoButton.isFunction(5)) {
                        videoButton.updatePlayMode(playMode);
                    } else if (videoButton.isFunction(6)) {
                        videoButton.updatePlayScale(scaleType);
                    }
                }
                if (this.mVideoPlayer.getAutoHideTime() > 0) {
                    this.mVideoPlayer.postOnAnimationDelayed(new Runnable() { // from class: com.yftech.car.widget.media.video.layout.-$$Lambda$VideoLayoutChildManager$ZNgoWdcQUeoMDCTaKr2SKHIkdlA
                        @Override // java.lang.Runnable
                        public final void run() {
                            VideoLayoutChildManager.lambda$initView$3(VideoLayoutChildManager.this);
                        }
                    }, 1000L);
                }
                if (this.mRootLayout.getSystemUiVisibility() != this.mVideoPlayer.getSystemUiVisibilityShow()) {
                    this.mRootLayout.setSystemUiVisibility(this.mVideoPlayer.getSystemUiVisibilityShow());
                }
            } else {
                Loger.e(TAG, " initView: no VideoPlayer");
            }
            for (final VisibilityTextButton visibilityTextButton : this.mVisibilityTextButtonList) {
                visibilityTextButton.setOnClickVisibilityListener(this.mOnClickVisibilityListener);
                visibilityTextButton.postOnAnimation(new Runnable() { // from class: com.yftech.car.widget.media.video.layout.-$$Lambda$VideoLayoutChildManager$PEfV4vOzM0C_kSp2jKL_IaScDJg
                    @Override // java.lang.Runnable
                    public final void run() {
                        r1.setVisibilityShow(visibilityTextButton.isMediaDataListShow(VideoLayoutChildManager.this.mRootLayout));
                    }
                });
            }
            Iterator<VideoButton> it3 = this.mButtonList.iterator();
            while (it3.hasNext()) {
                it3.next().setOnClickFunctionListener(this);
            }
            for (MediaSearchEditText mediaSearchEditText : this.mMediaSearchEditTextList) {
                Iterator<SearchEditButton> it4 = this.mSearchEditButtonList.iterator();
                while (it4.hasNext()) {
                    mediaSearchEditText.addSearchEditButton(it4.next());
                }
                mediaSearchEditText.setOnSearchTextListener(this.mOnSearchTextListener);
                Iterator<SearchHistoryList> it5 = this.mSearchHistoryList.iterator();
                while (it5.hasNext() && !mediaSearchEditText.setSearchHistoryList(it5.next())) {
                }
                for (MediaDataList mediaDataList2 : this.mMediaDataList) {
                    if (mediaSearchEditText.getSearchDataListId() == -1 || mediaSearchEditText.getSearchDataListId() == mediaDataList2.getId()) {
                        mediaSearchEditText.setMediaDataList(mediaDataList2);
                        break;
                    }
                }
            }
            VideoDataPlayManager.getInstance().addPlayFinishCallback(this.mOnMediaDataListUpdateListener);
            if (this.mMediaDataList.size() > 0) {
                for (final MediaDataList mediaDataList3 : this.mMediaDataList) {
                    Iterator<MediaListFolderPath> it6 = this.mMediaListFolderPathList.iterator();
                    while (it6.hasNext()) {
                        mediaDataList3.setMediaListFolderPath(it6.next());
                    }
                    mediaDataList3.setMediaDataDirectoryList(this.mMediaDataDirectoryList);
                    mediaDataList3.setMediaDataListTextList(this.mMediaDataListTextList);
                    mediaDataList3.setSideTextRetrievalViewList(this.mSideTextRetrievalViewList);
                    mediaDataList3.setMediaDataModifyBtnList(this.mMediaDataModifyBtnList);
                    final int mediaDefaultList = mediaDataList3.getMediaDefaultList();
                    mediaDataList3.setMediaType(1, new Runnable() { // from class: com.yftech.car.widget.media.video.layout.-$$Lambda$VideoLayoutChildManager$cVvQHesuXCH5jjGL-7WuEzeVJF0
                        @Override // java.lang.Runnable
                        public final void run() {
                            VideoLayoutChildManager.lambda$initView$5(VideoLayoutChildManager.this, mediaDataList3, viewGroup, mediaDefaultList);
                        }
                    });
                    int usbIndex = mediaDataList3.getUsbIndex();
                    initVideoMemoryData(viewGroup.getContext(), usbIndex);
                    for (SearchHistoryList searchHistoryList : this.mSearchHistoryList) {
                        if (mediaDefaultList == 101) {
                            searchHistoryList.setVisibility(0);
                        } else {
                            searchHistoryList.setVisibility(8);
                        }
                    }
                    if (this.mVideoPlayer != null) {
                        mediaDataList3.setOnItemFileListener(this.mItemFileListener);
                    }
                    boolean isScanner = MediaDataManager.getInstance().isScanner(usbIndex);
                    for (MediaImageLoading mediaImageLoading : this.mMediaImageLoadingList) {
                        if (mediaImageLoading.getMediaDataListId() == -1 || mediaImageLoading.getMediaDataListId() == mediaDataList3.getId()) {
                            mediaImageLoading.setLoadingStatus(isScanner);
                        }
                    }
                    for (VideoButton videoButton2 : this.mButtonList) {
                        videoButton2.setSelected(videoButton2.isFunction(mediaDefaultList + 1000));
                    }
                }
                for (SearchHistoryList searchHistoryList2 : this.mSearchHistoryList) {
                    searchHistoryList2.setOnSearchHistoryItemClickListener(this.mOnSearchHistoryItemClickListener);
                    Iterator<SearchEditButton> it7 = this.mSearchEditButtonList.iterator();
                    while (it7.hasNext() && !searchHistoryList2.setSearchEditButton(it7.next())) {
                    }
                    for (SearchEditButton searchEditButton : this.mSearchEditButtonList) {
                        if (searchEditButton.isSearchType(3) && (searchEditButton.getMediaSearchHistoryListId() == -1 || searchEditButton.getMediaSearchHistoryListId() == searchHistoryList2.getId())) {
                            searchEditButton.setVisibility(searchHistoryList2.getVisibility());
                        }
                    }
                }
            }
            for (SearchEditButton searchEditButton2 : this.mSearchEditButtonList) {
                if (searchEditButton2.getSearchVisibilityShow() > 0) {
                    searchEditButton2.setVisibility(searchEditButton2.isSearchVisibilityShow(4) ? 0 : 8);
                }
            }
        }
        this.mScreenWidth = getScreenWidth(viewGroup.getContext());
        Loger.d(TAG, " initView: view loading -----------------------finish");
    }

    public static /* synthetic */ void lambda$initView$0(VideoLayoutChildManager videoLayoutChildManager) {
        if (videoLayoutChildManager.mVideoSeekViewImage != null) {
            videoLayoutChildManager.mVideoSeekViewImage.initHeight();
            videoLayoutChildManager.mVideoSeekViewImage.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$initView$1(MediaPlayTime mediaPlayTime) {
        mediaPlayTime.setInitHeight(mediaPlayTime.getHeight());
        mediaPlayTime.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$initView$2(MediaPlayTime mediaPlayTime) {
        mediaPlayTime.setInitHeight(mediaPlayTime.getHeight());
        mediaPlayTime.setVisibility(8);
    }

    public static /* synthetic */ void lambda$initView$3(VideoLayoutChildManager videoLayoutChildManager) {
        if (videoLayoutChildManager.mVideoPlayer != null) {
            videoLayoutChildManager.mVideoPlayer.postOnAnimationDelayed(videoLayoutChildManager.mHideRunnable, videoLayoutChildManager.mVideoPlayer.getAutoHideTime());
        }
    }

    public static /* synthetic */ void lambda$initView$5(VideoLayoutChildManager videoLayoutChildManager, MediaDataList mediaDataList, ViewGroup viewGroup, int i) {
        int usbIndex = mediaDataList.getUsbIndex();
        videoLayoutChildManager.initVideoMemoryData(viewGroup.getContext(), usbIndex);
        int mediaDefaultList = mediaDataList.getMediaDefaultList();
        if (mediaDefaultList == 6) {
            mediaDataList.updateDirectoryList(MediaDataManager.getInstance().getVideoDirectory(usbIndex));
            Loger.d(TAG, "initView: mediaDataList.getMediaDefaultList()==" + mediaDataList.getMediaDefaultList());
        } else if (mediaDefaultList != 100) {
            switch (mediaDefaultList) {
                case 1:
                    mediaDataList.updateFolderList(MediaDataManager.getInstance().getFolderVideo(usbIndex), true);
                    break;
                case 2:
                    mediaDataList.updateFileList(MediaDataManager.getInstance().getFileVideo(usbIndex), true);
                    break;
                case 3:
                    mediaDataList.updateFolderList(MediaDataManager.getInstance().getArtistsVideo(usbIndex), true);
                    break;
                default:
                    Log.e(TAG, "initView: no MediaDefaultList == " + i);
                    break;
            }
        } else if (videoLayoutChildManager.mVideoPlayer != null) {
            mediaDataList.updateFileList(videoLayoutChildManager.mVideoPlayer.getPlayList(), true);
        }
        Loger.d(TAG, " initView: data loading -----------------------finish");
    }

    private void initVideoMemoryData(Context context, int i) {
        if (VideoDataPlayManager.getInstance().getPlayVideoId() == -1) {
            SharedPreferences sharedPreferences = context.getSharedPreferences("media_video_memory_play", 0);
            MediaFile mediaFile = new MediaFile(1);
            mediaFile.setId(sharedPreferences.getLong("play_id" + i, -1L));
            mediaFile.setData(sharedPreferences.getString("data_path" + i, "null"));
            VideoDataPlayManager.getInstance().setPlayVideoFile(mediaFile);
        }
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (TouchEventUtil.mNoClicking) {
            return true;
        }
        if (motionEvent != null) {
            int action = motionEvent.getAction();
            if (action == 0) {
                if (!TouchEventUtil.mDispatchTouchEvent) {
                    updateTouchEvent(true);
                }
            } else if (action == 1 || action == 3) {
                if (TouchEventUtil.mDispatchTouchEvent) {
                    TouchEventUtil.mDispatchTouchEvent = false;
                } else {
                    updateTouchEvent(false);
                }
            }
        } else {
            Log.e(TAG, "dispatchTouchEvent: event is null");
        }
        return false;
    }

    public void updateTouchEvent(boolean z) {
        if (z) {
            hideInput();
        }
        if (this.mVideoPlayer == null || this.mVideoPlayer.getAutoHideTime() <= 0) {
            return;
        }
        if (z) {
            this.mVideoPlayer.removeCallbacks(this.mHideRunnable);
        } else {
            this.mVideoPlayer.postOnAnimationDelayed(this.mHideRunnable, this.mVideoPlayer.getAutoHideTime());
        }
    }

    public void unregister() {
        if (this.mOnDataChangeCallback != null) {
            if (this.mVideoPlayer != null) {
                this.mVideoPlayer.removeVideoCallback(this.mVideoCallback);
                this.mVideoPlayer.release();
            }
            this.mVideoCallback = null;
            MediaDataManager.getInstance().unregisterCarDataControlCallback(this.mOnDataChangeCallback);
            this.mOnDataChangeCallback = null;
            Iterator<MediaSeekBar> it = this.mMediaSeekBarList.iterator();
            while (it.hasNext()) {
                it.next().setOnSeekBarChangeListener(null);
            }
            this.mButtonList.clear();
            this.mTextViewList.clear();
            this.mPlayTimeList.clear();
            this.mMediaSeekBarList.clear();
            this.mProgressBarList.clear();
            this.mMediaListFolderPathList.clear();
            this.mMediaDataListTextList.clear();
            Iterator<MediaDataList> it2 = this.mMediaDataList.iterator();
            while (it2.hasNext()) {
                it2.next().release();
            }
            this.mMediaDataList.clear();
            this.mMediaDataModifyBtnList.clear();
            this.mMediaImageLoadingList.clear();
            this.mSizeCore.clear();
            this.mVisibilityTextButtonList.clear();
            Iterator<MediaSearchEditText> it3 = this.mMediaSearchEditTextList.iterator();
            while (it3.hasNext()) {
                it3.next().release();
            }
            this.mMediaSearchEditTextList.clear();
            this.mSearchEditButtonList.clear();
            this.mSearchHistoryList.clear();
            Iterator<MediaDataDirectoryList> it4 = this.mMediaDataDirectoryList.iterator();
            while (it4.hasNext()) {
                it4.next().release();
            }
            this.mMediaDataDirectoryList.clear();
            VideoDataPlayManager.getInstance().removePlayFinishCallback(this.mOnMediaDataListUpdateListener);
            hideInput();
            this.mVideoPlayer = null;
            this.mVideoSeekViewImage = null;
            this.mRootLayout = null;
            TouchEventUtil.mNoClicking = false;
        }
    }

    public boolean isAnimationLoading() {
        return this.isAnimationLoading;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yftech.car.widget.media.video.layout.VideoLayoutChildManager$2, reason: invalid class name */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public class AnonymousClass2 extends MediaDataManager.OnDataChangeCallback {
        AnonymousClass2() {
        }

        @Override // com.yftech.car.widget.media.manager.MediaDataManager.OnDataChangeCallback, com.yftech.car.widget.media.manager.MediaDataManager.OnDataChangeListener
        public void onUsbStatusChange(final int i, final boolean z) {
            VideoLayoutChildManager.this.mRootLayout.postOnAnimation(new Runnable() { // from class: com.yftech.car.widget.media.video.layout.-$$Lambda$VideoLayoutChildManager$2$AOOkvI7y9GPP3L6XNM1tG3mQbE0
                @Override // java.lang.Runnable
                public final void run() {
                    VideoLayoutChildManager.AnonymousClass2.lambda$onUsbStatusChange$0(VideoLayoutChildManager.AnonymousClass2.this, z, i);
                }
            });
        }

        public static /* synthetic */ void lambda$onUsbStatusChange$0(AnonymousClass2 anonymousClass2, boolean z, int i) {
            if (z) {
                for (MediaDataList mediaDataList : VideoLayoutChildManager.this.mMediaDataList) {
                    if (mediaDataList.isEmptyList() && mediaDataList.isMediaUsbDisconnectAutoSwitchIndex()) {
                        VideoLayoutChildManager.this.updateUsbStatusChange(i, mediaDataList);
                    }
                }
                return;
            }
            byte[] videoExistsDataIndex = MediaDataManager.getInstance().getVideoExistsDataIndex();
            byte b = (videoExistsDataIndex == null || videoExistsDataIndex.length <= 0) ? (byte) -1 : videoExistsDataIndex[0];
            for (MediaDataList mediaDataList2 : VideoLayoutChildManager.this.mMediaDataList) {
                if (mediaDataList2.getUsbIndex() == i) {
                    mediaDataList2.clearList();
                    if (b != -1 && mediaDataList2.isMediaUsbDisconnectAutoSwitchIndex()) {
                        VideoLayoutChildManager.this.updateUsbStatusChange(b, mediaDataList2);
                    }
                    for (MediaImageLoading mediaImageLoading : VideoLayoutChildManager.this.mMediaImageLoadingList) {
                        if (mediaImageLoading.getMediaDataListId() == -1 || mediaImageLoading.getMediaDataListId() == mediaDataList2.getId()) {
                            mediaImageLoading.setLoadingStatus(false);
                        }
                    }
                }
            }
            if (VideoLayoutChildManager.this.mVideoPlayer != null) {
                MediaFile currentPlay = VideoLayoutChildManager.this.mVideoPlayer.getCurrentPlay();
                if (currentPlay == null || i == MediaDataManager.getInstance().getUsbIndex(currentPlay.getData())) {
                    VideoLayoutChildManager.this.mVideoPlayer.release();
                    VideoLayoutChildManager.this.mVideoPlayer.setStorageDisconnect();
                }
            }
        }

        @Override // com.yftech.car.widget.media.manager.MediaDataManager.OnDataChangeCallback, com.yftech.car.widget.media.manager.MediaDataManager.OnDataChangeListener
        public void onScanStatusChange(final int i, final boolean z) {
            VideoLayoutChildManager.this.mRootLayout.postOnAnimation(new Runnable() { // from class: com.yftech.car.widget.media.video.layout.-$$Lambda$VideoLayoutChildManager$2$9oeAe0Ad9jdgMpsDT_JJ9KkRmxs
                @Override // java.lang.Runnable
                public final void run() {
                    VideoLayoutChildManager.AnonymousClass2.lambda$onScanStatusChange$3(VideoLayoutChildManager.AnonymousClass2.this, i, z);
                }
            });
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:14:0x0031. Please report as an issue. */
        public static /* synthetic */ void lambda$onScanStatusChange$3(AnonymousClass2 anonymousClass2, int i, boolean z) {
            if (MediaDataManager.getInstance().isUsbExists(i)) {
                if (!z) {
                    for (MediaDataList mediaDataList : VideoLayoutChildManager.this.mMediaDataList) {
                        if (mediaDataList.getUsbIndex() == i) {
                            int mediaDefaultList = mediaDataList.getMediaDefaultList();
                            if (mediaDefaultList != 6) {
                                switch (mediaDefaultList) {
                                    case 1:
                                        mediaDataList.updateFolderList(MediaDataManager.getInstance().getFolderVideo(i), true);
                                        break;
                                    case 2:
                                        mediaDataList.updateFileList(MediaDataManager.getInstance().getFileVideo(i), true);
                                        break;
                                    case 3:
                                        mediaDataList.updateFolderList(MediaDataManager.getInstance().getArtistsVideo(i), true);
                                        break;
                                }
                            } else {
                                mediaDataList.updateDirectoryList();
                            }
                            for (final MediaImageLoading mediaImageLoading : VideoLayoutChildManager.this.mMediaImageLoadingList) {
                                if (mediaImageLoading.getMediaDataListId() == -1 || mediaImageLoading.getMediaDataListId() == mediaDataList.getId()) {
                                    mediaImageLoading.postOnAnimation(new Runnable() { // from class: com.yftech.car.widget.media.video.layout.-$$Lambda$VideoLayoutChildManager$2$rBwDlqifOwy8FRSEmipgSiOo4FQ
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            MediaImageLoading.this.setLoadingStatus(false);
                                        }
                                    });
                                }
                            }
                        }
                    }
                    return;
                }
                for (MediaDataList mediaDataList2 : VideoLayoutChildManager.this.mMediaDataList) {
                    if (mediaDataList2.getUsbIndex() == i) {
                        for (final MediaImageLoading mediaImageLoading2 : VideoLayoutChildManager.this.mMediaImageLoadingList) {
                            if (mediaImageLoading2.getMediaDataListId() == -1 || mediaImageLoading2.getMediaDataListId() == mediaDataList2.getId()) {
                                mediaImageLoading2.postOnAnimation(new Runnable() { // from class: com.yftech.car.widget.media.video.layout.-$$Lambda$VideoLayoutChildManager$2$9S7R0amdcEvKuTPVgPcLudNpyio
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        MediaImageLoading.this.setLoadingStatus(true);
                                    }
                                });
                            }
                        }
                        mediaDataList2.setUsbLoadingScan();
                    }
                }
            }
        }

        @Override // com.yftech.car.widget.media.manager.MediaDataManager.OnDataChangeCallback, com.yftech.car.widget.media.manager.MediaDataManager.OnDataChangeListener
        public void onVideoDataChange(int i) {
            for (MediaDataList mediaDataList : VideoLayoutChildManager.this.mMediaDataList) {
                if (mediaDataList.getUsbIndex() == i) {
                    int mediaDefaultList = mediaDataList.getMediaDefaultList();
                    if (mediaDefaultList != 6) {
                        switch (mediaDefaultList) {
                            case 1:
                                mediaDataList.updateFolderList(MediaDataManager.getInstance().getFolderVideo(i), true);
                                break;
                            case 2:
                                mediaDataList.updateFileList(MediaDataManager.getInstance().getFileVideo(i), true);
                                break;
                            case 3:
                                mediaDataList.updateFolderList(MediaDataManager.getInstance().getArtistsVideo(i), true);
                                break;
                        }
                    } else {
                        mediaDataList.updateDirectoryList();
                    }
                }
            }
        }
    }

    private MediaDataManager.OnDataChangeCallback getOnDataChangeCallback() {
        return new AnonymousClass2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateUsbStatusChange(int i, MediaDataList mediaDataList) {
        mediaDataList.setUsbIndex(i);
        int mediaDefaultList = mediaDataList.getMediaDefaultList();
        if (mediaDefaultList != 6) {
            switch (mediaDefaultList) {
                case 1:
                    mediaDataList.updateFolderList(MediaDataManager.getInstance().getFolderVideo(i), true);
                    return;
                case 2:
                    mediaDataList.updateFileList(MediaDataManager.getInstance().getFileVideo(i), true);
                    return;
                case 3:
                    mediaDataList.updateFolderList(MediaDataManager.getInstance().getArtistsVideo(i), true);
                    return;
                default:
                    Log.e(TAG, "initView: no MediaDefaultList == " + mediaDataList.getMediaDefaultList());
                    return;
            }
        }
        mediaDataList.updateDirectoryList(MediaDataManager.getInstance().getVideoDirectory(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yftech.car.widget.media.video.layout.VideoLayoutChildManager$4, reason: invalid class name */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public class AnonymousClass4 implements MediaSearchEditText.OnSearchTextListener {
        AnonymousClass4() {
        }

        @Override // com.yftech.car.widget.media.text.MediaSearchEditText.OnSearchTextListener
        public boolean onSearchText(final MediaSearchEditText mediaSearchEditText) {
            Editable text = mediaSearchEditText.getText();
            if (text == null) {
                return true;
            }
            String obj = text.toString();
            if (TextUtils.isEmpty(obj)) {
                return true;
            }
            VideoLayoutChildManager.this.hideInput();
            for (MediaDataList mediaDataList : VideoLayoutChildManager.this.mMediaDataList) {
                if (mediaSearchEditText.getSearchDataListId() == -1 || mediaSearchEditText.getSearchDataListId() == mediaDataList.getId()) {
                    mediaDataList.setMediaDefaultList(101);
                    mediaDataList.setVisibility(0);
                    mediaDataList.setSearchLoading();
                }
            }
            for (SearchHistoryList searchHistoryList : VideoLayoutChildManager.this.mSearchHistoryList) {
                if (searchHistoryList.getSearchEditTextId() == -1 || searchHistoryList.getSearchEditTextId() == mediaSearchEditText.getId()) {
                    searchHistoryList.setVisibility(8);
                    searchHistoryList.addSearchData(obj);
                }
                for (SearchEditButton searchEditButton : VideoLayoutChildManager.this.mSearchEditButtonList) {
                    if (searchEditButton.isSearchType(3) && (searchEditButton.getMediaSearchHistoryListId() == -1 || searchEditButton.getMediaSearchHistoryListId() == searchHistoryList.getId())) {
                        searchEditButton.setVisibility(8);
                    }
                }
            }
            if (VideoLayoutChildManager.this.mMediaFindSearch != null) {
                VideoLayoutChildManager.this.mMediaFindSearch.setValid(false);
            }
            VideoLayoutChildManager.this.mMediaFindSearch = new MediaFindSearch();
            for (SearchEditButton searchEditButton2 : VideoLayoutChildManager.this.mSearchEditButtonList) {
                if (searchEditButton2.getSearchVisibilityShow() > 0) {
                    searchEditButton2.setVisibility(searchEditButton2.isSearchVisibilityShow(1) ? 0 : 8);
                }
            }
            VideoLayoutChildManager.this.mRootLayout.postOnAnimation(new Runnable() { // from class: com.yftech.car.widget.media.video.layout.-$$Lambda$VideoLayoutChildManager$4$-aSV27mE5p0c7RVcfrnes-FQCpA
                @Override // java.lang.Runnable
                public final void run() {
                    mediaSearchEditText.setStartSearchView(VideoLayoutChildManager.this.mRootLayout);
                }
            });
            mediaSearchEditText.setStartSearchText(obj);
            VideoLayoutChildManager.this.mMediaFindSearch.startSearch(obj, mediaSearchEditText, VideoLayoutChildManager.this.mMediaDataList, new Runnable() { // from class: com.yftech.car.widget.media.video.layout.-$$Lambda$VideoLayoutChildManager$4$GSrNBGlRfjxhCzdehFY_XXngNS0
                @Override // java.lang.Runnable
                public final void run() {
                    VideoLayoutChildManager.AnonymousClass4.lambda$onSearchText$1(VideoLayoutChildManager.AnonymousClass4.this);
                }
            });
            return true;
        }

        public static /* synthetic */ void lambda$onSearchText$1(AnonymousClass4 anonymousClass4) {
            for (SearchEditButton searchEditButton : VideoLayoutChildManager.this.mSearchEditButtonList) {
                if (searchEditButton.getSearchVisibilityShow() > 0) {
                    searchEditButton.setVisibility(searchEditButton.isSearchVisibilityShow(2) ? 0 : 8);
                }
            }
        }

        @Override // com.yftech.car.widget.media.text.MediaSearchEditText.OnSearchTextListener
        public void onCancelSearch() {
            if (VideoLayoutChildManager.this.mMediaFindSearch != null) {
                VideoLayoutChildManager.this.mMediaFindSearch.setValid(false);
            }
        }

        @Override // com.yftech.car.widget.media.text.MediaSearchEditText.OnSearchTextListener
        public void onSearchEmptyBackList(MediaDataList mediaDataList) {
            VideoLayoutChildManager.this.hideInput();
            int usbIndex = mediaDataList.getUsbIndex();
            int mediaDefaultList = mediaDataList.getMediaDefaultList();
            if (mediaDefaultList == 101) {
                mediaDefaultList = mediaDataList.getMediaSearchBackList();
                mediaDataList.setMediaDefaultList(mediaDefaultList);
            }
            Log.d(VideoLayoutChildManager.TAG, "onSearchEmptyBackList: mediaDefaultList==" + mediaDefaultList);
            if (mediaDefaultList == 6) {
                mediaDataList.updateDirectoryList();
            } else if (mediaDefaultList == 100) {
                if (VideoLayoutChildManager.this.mVideoPlayer != null) {
                    mediaDataList.updateFileList(VideoLayoutChildManager.this.mVideoPlayer.getPlayList(), true);
                }
            } else {
                switch (mediaDefaultList) {
                    case 1:
                        mediaDataList.updateFolderList(MediaDataManager.getInstance().getFolderVideo(usbIndex), true);
                        break;
                    case 2:
                        mediaDataList.updateFileList(MediaDataManager.getInstance().getFileVideo(usbIndex), true);
                        break;
                    case 3:
                        mediaDataList.updateFolderList(MediaDataManager.getInstance().getArtistsVideo(usbIndex), true);
                        break;
                    default:
                        Log.e(VideoLayoutChildManager.TAG, "initView: no MediaDefaultList == " + mediaDefaultList);
                        break;
                }
            }
            mediaDataList.setVisibility(0);
            Iterator it = VideoLayoutChildManager.this.mSearchHistoryList.iterator();
            while (it.hasNext()) {
                ((SearchHistoryList) it.next()).setVisibility(8);
            }
        }
    }

    public void hideInput() {
        if (this.mRootLayout != null) {
            this.mInputMethodManager.hideSoftInputFromWindow(this.mRootLayout.getWindowToken(), 0);
            Iterator<MediaSearchEditText> it = this.mMediaSearchEditTextList.iterator();
            while (it.hasNext()) {
                it.next().setCursorVisible(false);
            }
        }
    }

    private VideoPlayer.VideoCallback getVideoCallback() {
        return new VideoPlayer.VideoCallback() { // from class: com.yftech.car.widget.media.video.layout.VideoLayoutChildManager.7
            @Override // com.yftech.car.widget.media.video.VideoPlayer.VideoCallback, com.yftech.car.widget.media.video.BaseVideo.VideoListener
            public void onPlayError(int i) {
            }

            @Override // com.yftech.car.widget.media.video.VideoPlayer.VideoCallback, com.yftech.car.widget.media.video.BaseVideo.VideoListener
            public void onPlaybackParams(float f) {
            }

            @Override // com.yftech.car.widget.media.video.VideoPlayer.VideoCallback, com.yftech.car.widget.media.video.BaseVideo.VideoListener
            public void onPlayChange(MediaFile mediaFile) {
                for (MediaFileTextView mediaFileTextView : VideoLayoutChildManager.this.mTextViewList) {
                    if (mediaFileTextView.isMediaFileInfo()) {
                        mediaFileTextView.updateMediaFile(mediaFile, VideoLayoutChildManager.this.mVideoPlayer.getPlayPosition(), VideoLayoutChildManager.this.mVideoPlayer.getPlayListSize());
                    }
                }
                for (MediaDataList mediaDataList : VideoLayoutChildManager.this.mMediaDataList) {
                    if (mediaDataList.getMediaDefaultList() == 100 && mediaDataList.isEmptyList()) {
                        mediaDataList.updateFileList(VideoLayoutChildManager.this.mVideoPlayer.getPlayList(), true);
                    } else {
                        mediaDataList.notifyDataSetChanged();
                        mediaDataList.updateListPosition();
                    }
                }
                if (VideoLayoutChildManager.this.mVideoSeekViewImage != null) {
                    VideoLayoutChildManager.this.mVideoSeekViewImage.releaseMediaPlayer();
                }
            }

            /* JADX WARN: Type inference failed for: r6v2, types: [com.yftech.car.widget.media.text.MediaPlayTime, android.view.View] */
            @Override // com.yftech.car.widget.media.video.VideoPlayer.VideoCallback, com.yftech.car.widget.media.video.BaseVideo.VideoListener
            public void onProgress(int i) {
                if (VideoLayoutChildManager.this.isTouchSeekBar) {
                    return;
                }
                for (MediaPlayTime mediaPlayTime : VideoLayoutChildManager.this.mPlayTimeList) {
                    if (!mediaPlayTime.isVideoShowScrollTime()) {
                        mediaPlayTime.updateProgress(i);
                    }
                }
                boolean z = false;
                for (MediaSeekBar mediaSeekBar : VideoLayoutChildManager.this.mMediaSeekBarList) {
                    mediaSeekBar.setProgress(i);
                    for (?? r6 : VideoLayoutChildManager.this.mPlayTimeList) {
                        if (r6.isSeekBarShowScrollTime() && (r6.getSeekBarShowTimeId() == -1 || r6.getSeekBarShowTimeId() == mediaSeekBar.getId())) {
                            VideoLayoutChildManager.this.updateSeekShowTime(i, mediaSeekBar, r6, r6.getSeekBarShowTimeOffset(), r6.getSeekBarShowTimeDistance(), r6.getInitHeight());
                        }
                    }
                    if (!z && VideoLayoutChildManager.this.mVideoSeekViewImage != null && VideoLayoutChildManager.this.mVideoSeekViewImage.getVisibility() == 0) {
                        z = true;
                        VideoLayoutChildManager.this.mVideoSeekViewImage.setPlayProgress(i);
                        VideoLayoutChildManager.this.updateSeekShowTime(i, mediaSeekBar, VideoLayoutChildManager.this.mVideoSeekViewImage, VideoLayoutChildManager.this.mVideoSeekViewImage.getSeekBarShowOffset(), VideoLayoutChildManager.this.mVideoSeekViewImage.getSeekBarShowDistance(), VideoLayoutChildManager.this.mVideoSeekViewImage.getInitHeight());
                    }
                }
                Iterator it = VideoLayoutChildManager.this.mProgressBarList.iterator();
                while (it.hasNext()) {
                    ((ProgressBar) it.next()).setProgress(i);
                }
            }

            @Override // com.yftech.car.widget.media.video.VideoPlayer.VideoCallback, com.yftech.car.widget.media.video.BaseVideo.VideoListener
            public void onStartTrackingTouch(int i, boolean z) {
                Iterator it = VideoLayoutChildManager.this.mPlayTimeList.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    MediaPlayTime mediaPlayTime = (MediaPlayTime) it.next();
                    if (mediaPlayTime.getSeekBarShowTimeId() == -1 || i == mediaPlayTime.getSeekBarShowTimeId()) {
                        if (mediaPlayTime.isSeekBarShowScrollTime()) {
                            mediaPlayTime.setVisibility(z ? 0 : 8);
                        }
                    }
                }
                if (z) {
                    if (VideoLayoutChildManager.this.mVideoSeekViewImage != null) {
                        VideoLayoutChildManager.this.mVideoSeekViewImage.setVisibility(0);
                        VideoLayoutChildManager.this.mVideoSeekViewImage.loadStart();
                        return;
                    }
                    return;
                }
                if (VideoLayoutChildManager.this.mVideoSeekViewImage != null) {
                    VideoLayoutChildManager.this.mVideoSeekViewImage.setVisibility(8);
                }
            }

            @Override // com.yftech.car.widget.media.video.VideoPlayer.VideoCallback, com.yftech.car.widget.media.video.BaseVideo.VideoListener
            public void onPrepared(int i) {
                Loger.d(VideoLayoutChildManager.TAG, "onPrepared: duration==" + i + ",mMediaSeekBarList==" + VideoLayoutChildManager.this.mMediaSeekBarList.size());
                Iterator it = VideoLayoutChildManager.this.mPlayTimeList.iterator();
                while (it.hasNext()) {
                    ((MediaPlayTime) it.next()).updateDuration(i);
                }
                Iterator it2 = VideoLayoutChildManager.this.mMediaSeekBarList.iterator();
                while (it2.hasNext()) {
                    ((MediaSeekBar) it2.next()).setMax(i);
                }
                Iterator it3 = VideoLayoutChildManager.this.mProgressBarList.iterator();
                while (it3.hasNext()) {
                    ((ProgressBar) it3.next()).setMax(i);
                }
                if (VideoLayoutChildManager.this.mVideoSeekViewImage != null) {
                    VideoLayoutChildManager.this.mVideoSeekViewImage.updateDuration(i);
                    VideoLayoutChildManager.this.mVideoSeekViewImage.loadStart();
                }
            }

            @Override // com.yftech.car.widget.media.video.VideoPlayer.VideoCallback, com.yftech.car.widget.media.video.BaseVideo.VideoListener
            public void onPlayMode(int i) {
                for (VideoButton videoButton : VideoLayoutChildManager.this.mButtonList) {
                    if (videoButton.isFunction(5)) {
                        videoButton.updatePlayMode(i);
                    }
                }
            }

            @Override // com.yftech.car.widget.media.video.VideoPlayer.VideoCallback, com.yftech.car.widget.media.video.BaseVideo.VideoListener
            public void onScaleType(int i) {
                for (VideoButton videoButton : VideoLayoutChildManager.this.mButtonList) {
                    if (videoButton.isFunction(6)) {
                        videoButton.updatePlayScale(i);
                    }
                }
            }

            @Override // com.yftech.car.widget.media.video.VideoPlayer.VideoCallback, com.yftech.car.widget.media.video.BaseVideo.VideoListener
            public void onPlayingChange(boolean z) {
                for (VideoButton videoButton : VideoLayoutChildManager.this.mButtonList) {
                    if (videoButton.isFunction(4)) {
                        videoButton.setActivatedStatus(z);
                    }
                }
                Iterator it = VideoLayoutChildManager.this.mMediaDataList.iterator();
                while (it.hasNext()) {
                    ((MediaDataList) it.next()).notifyDataSetChanged();
                }
                if (!z || VideoLayoutChildManager.this.mVideoPlayer.getAutoHideTime() <= 0) {
                    return;
                }
                VideoLayoutChildManager.this.mVideoPlayer.removeCallbacks(VideoLayoutChildManager.this.mHideRunnable);
                VideoLayoutChildManager.this.mVideoPlayer.postOnAnimationDelayed(VideoLayoutChildManager.this.mHideRunnable, VideoLayoutChildManager.this.mVideoPlayer.getAutoHideTime());
            }

            @Override // com.yftech.car.widget.media.video.VideoPlayer.VideoCallback, com.yftech.car.widget.media.video.BaseVideo.VideoListener
            public boolean onPlayerError(int i, int i2) {
                return super.onPlayerError(i, i2);
            }

            @Override // com.yftech.car.widget.media.video.VideoPlayer.VideoCallback, com.yftech.car.widget.media.video.BaseVideo.VideoListener
            public boolean onInfo(int i, int i2) {
                return super.onInfo(i, i2);
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Removed duplicated region for block: B:43:0x00c9  */
            /* JADX WARN: Removed duplicated region for block: B:46:0x00e1  */
            @Override // com.yftech.car.widget.media.video.VideoPlayer.VideoCallback, com.yftech.car.widget.media.video.BaseVideo.VideoListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void onSlideProgress(boolean z, int i, long j, boolean z2) {
                Object tag;
                if (VideoLayoutChildManager.this.mVideoPlayer.getAutoHideTime() > 0) {
                    for (MediaPlayTime mediaPlayTime : VideoLayoutChildManager.this.mPlayTimeList) {
                        if (!mediaPlayTime.isSeekBarShowScrollTime() && mediaPlayTime.isVideoShowScrollTime()) {
                            mediaPlayTime.setVisibility(z ? 0 : 8);
                            mediaPlayTime.updateSlideProgress(i, j, z2);
                        }
                    }
                }
                if (VideoLayoutChildManager.this.mVideoPlayer.isVideoSlideShowSeekImage()) {
                    if (z) {
                        if (VideoLayoutChildManager.this.mVideoSeekViewImage == null || VideoLayoutChildManager.this.mVideoSeekViewImage.isShow()) {
                            return;
                        }
                        VideoLayoutChildManager.this.mVideoSeekViewImage.setVisibility(0);
                        VideoLayoutChildManager.this.mVideoSeekViewImage.loadStart();
                        if (VideoLayoutChildManager.this.mShowVisibility) {
                            return;
                        }
                        int videoHideShowAnimationDuration = VideoLayoutChildManager.this.mVideoPlayer.getVideoHideShowAnimationDuration();
                        for (int i2 = 0; i2 < VideoLayoutChildManager.this.mRootLayout.getChildCount(); i2++) {
                            View childAt = VideoLayoutChildManager.this.mRootLayout.getChildAt(i2);
                            if (!(childAt instanceof VideoPlayer)) {
                                if (childAt instanceof MediaPlayTime) {
                                    MediaPlayTime mediaPlayTime2 = (MediaPlayTime) childAt;
                                    if (mediaPlayTime2.isSeekBarShowScrollTime() || mediaPlayTime2.isVideoShowScrollTime()) {
                                        mediaPlayTime2.setVisibility(8);
                                    }
                                    tag = childAt.getTag();
                                    if (!"visibility_user".equals(tag)) {
                                        Log.d(VideoLayoutChildManager.TAG, "setVisibility: visibility_user ,User View==" + childAt);
                                    } else if (childAt.getVisibility() != 0) {
                                        VideoLayoutChildManager.this.mShowVisibility = true;
                                        if ("visibility_user_show".equals(tag)) {
                                            Log.d(VideoLayoutChildManager.TAG, "setVisibility: visibility_user_show ,User View==" + childAt);
                                        } else {
                                            VideoLayoutChildManager.this.visibilityVisible(childAt, 0, videoHideShowAnimationDuration);
                                        }
                                    }
                                } else {
                                    if (childAt instanceof VideoSeekViewImage) {
                                    }
                                    tag = childAt.getTag();
                                    if (!"visibility_user".equals(tag)) {
                                    }
                                }
                            }
                        }
                        return;
                    }
                    if (VideoLayoutChildManager.this.mVideoSeekViewImage != null) {
                        VideoLayoutChildManager.this.mVideoSeekViewImage.setVisibility(8);
                    }
                }
            }

            @Override // com.yftech.car.widget.media.video.VideoPlayer.VideoCallback, com.yftech.car.widget.media.video.BaseVideo.VideoListener
            public void onDoubleClick(boolean z) {
                if (VideoLayoutChildManager.this.mVideoPlayer != null) {
                    if (z) {
                        if (!VideoLayoutChildManager.this.isAnimationLoading) {
                            if (VideoLayoutChildManager.this.mVideoPlayer.isDoubleClickSwitchHideShow(1)) {
                                if (VideoLayoutChildManager.this.mRootLayout.getSystemUiVisibility() != VideoLayoutChildManager.this.mVideoPlayer.getSystemUiVisibilityShow()) {
                                    VideoLayoutChildManager.this.mRootLayout.setSystemUiVisibility(VideoLayoutChildManager.this.mVideoPlayer.getSystemUiVisibilityShow());
                                } else if (VideoLayoutChildManager.this.mVideoPlayer.getSystemUiVisibilityHide() != -1) {
                                    VideoLayoutChildManager.this.mRootLayout.setSystemUiVisibility(VideoLayoutChildManager.this.mVideoPlayer.getSystemUiVisibilityHide());
                                }
                            }
                            if (VideoLayoutChildManager.this.mVideoPlayer.isDoubleClickSwitchHideShow(2)) {
                                VideoLayoutChildManager.this.setVisibilityVisibleGone(true);
                            }
                        } else {
                            Log.e(VideoLayoutChildManager.TAG, "onDoubleClick: Double Click isAnimationLoading is true");
                            return;
                        }
                    } else if (!VideoLayoutChildManager.this.isAnimationLoading) {
                        if (VideoLayoutChildManager.this.mVideoPlayer.isClickSwitchHideShow(1)) {
                            if (VideoLayoutChildManager.this.mRootLayout.getSystemUiVisibility() != VideoLayoutChildManager.this.mVideoPlayer.getSystemUiVisibilityShow()) {
                                VideoLayoutChildManager.this.mRootLayout.setSystemUiVisibility(VideoLayoutChildManager.this.mVideoPlayer.getSystemUiVisibilityShow());
                            } else if (VideoLayoutChildManager.this.mVideoPlayer.getSystemUiVisibilityHide() != -1) {
                                VideoLayoutChildManager.this.mRootLayout.setSystemUiVisibility(VideoLayoutChildManager.this.mVideoPlayer.getSystemUiVisibilityHide());
                            }
                        }
                        if (VideoLayoutChildManager.this.mVideoPlayer.isClickSwitchHideShow(2)) {
                            VideoLayoutChildManager.this.setVisibilityVisibleGone(true);
                        }
                    } else {
                        Log.e(VideoLayoutChildManager.TAG, "onDoubleClick: Click isAnimationLoading is true");
                        return;
                    }
                }
                for (VisibilityTextButton visibilityTextButton : VideoLayoutChildManager.this.mVisibilityTextButtonList) {
                    visibilityTextButton.setVisibilityShow(visibilityTextButton.isMediaDataListShow(VideoLayoutChildManager.this.mRootLayout));
                }
            }

            @Override // com.yftech.car.widget.media.video.VideoPlayer.VideoCallback, com.yftech.car.widget.media.video.BaseVideo.VideoListener
            public boolean onPlayException(int i) {
                return super.onPlayException(i);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSeekShowTime(int i, MediaSeekBar mediaSeekBar, View view, float f, float f2, int i2) {
        if (this.mVideoPlayer == null || this.mVideoPlayer.isVideoSeekImageWhetherToFollowSeekBar()) {
            int layoutDirection = view.getLayoutDirection();
            ViewParent parent = mediaSeekBar.getParent();
            int i3 = 0;
            int i4 = 0;
            int i5 = 0;
            while (parent instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) parent;
                ViewParent parent2 = viewGroup.getParent();
                i4 = (int) (i4 + viewGroup.getX());
                i5 = (int) (i5 + viewGroup.getY());
                parent = parent2;
            }
            int x = (int) (i4 + mediaSeekBar.getX());
            int y = (int) (i5 + mediaSeekBar.getY());
            int max = mediaSeekBar.getMax();
            int width = mediaSeekBar.getWidth() - (mediaSeekBar.getPaddingStart() + mediaSeekBar.getPaddingEnd());
            if (layoutDirection == 1) {
                if (this.mScreenWidth == 0) {
                    this.mScreenWidth = getScreenWidth(this.mRootLayout.getContext());
                }
                x = (this.mScreenWidth - x) - mediaSeekBar.getWidth();
            }
            int i6 = x;
            int i7 = (int) ((i / max) * width);
            int width2 = view.getWidth();
            int width3 = (int) (i7 + (i6 - ((view.getWidth() - (view.getPaddingStart() + view.getPaddingEnd())) / 2.0f)));
            Drawable thumb = mediaSeekBar.getThumb();
            if (thumb != null) {
                width3 += thumb.getIntrinsicWidth() / 5;
            }
            int i8 = (int) (width3 + f);
            if (i8 >= 0) {
                i3 = i8 + width2 > this.mRootLayout.getWidth() ? this.mRootLayout.getWidth() - width2 : i8;
            }
            ConstraintLayout.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof FrameLayout.LayoutParams) {
                FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
                layoutParams2.topMargin = (int) (y - (f2 + i2));
                if (layoutDirection == 1) {
                    layoutParams2.rightMargin = i3;
                } else {
                    layoutParams2.leftMargin = i3;
                }
                view.requestLayout();
                return;
            }
            if (layoutParams instanceof RelativeLayout.LayoutParams) {
                RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) layoutParams;
                layoutParams3.topMargin = (int) (y - (f2 + i2));
                if (layoutDirection == 1) {
                    layoutParams3.rightMargin = i3;
                } else {
                    layoutParams3.leftMargin = i3;
                }
                view.requestLayout();
                return;
            }
            if (layoutParams instanceof LinearLayout.LayoutParams) {
                LinearLayout.LayoutParams layoutParams4 = (LinearLayout.LayoutParams) layoutParams;
                layoutParams4.topMargin = (int) (y - (f2 + i2));
                if (layoutDirection == 1) {
                    layoutParams4.rightMargin = i3;
                } else {
                    layoutParams4.leftMargin = i3;
                }
                view.requestLayout();
                return;
            }
            if (layoutParams instanceof ConstraintLayout.LayoutParams) {
                ConstraintLayout.LayoutParams layoutParams5 = layoutParams;
                layoutParams5.topMargin = (int) (y - (f2 + i2));
                if (layoutDirection == 1) {
                    layoutParams5.rightMargin = i3;
                } else {
                    layoutParams5.leftMargin = i3;
                }
                view.requestLayout();
                return;
            }
            Log.e(TAG, "updateSeekShowTime: ");
        }
    }

    public int getScreenWidth(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.widthPixels;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setVisibilityVisibleGone(boolean z) {
        setVisibilityVisibleGone(z, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x006c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void setVisibilityVisibleGone(boolean z, boolean z2) {
        Object tag;
        this.isAnimationLoading = true;
        TouchEventUtil.mNoClicking = true;
        int videoHideShowAnimation = this.mVideoPlayer.getVideoHideShowAnimation();
        int videoHideShowAnimationDuration = this.mVideoPlayer.getVideoHideShowAnimationDuration();
        for (int i = 0; i < this.mRootLayout.getChildCount(); i++) {
            View childAt = this.mRootLayout.getChildAt(i);
            if (!(childAt instanceof BaseVideo)) {
                if (childAt instanceof MediaPlayTime) {
                    MediaPlayTime mediaPlayTime = (MediaPlayTime) childAt;
                    if (mediaPlayTime.isSeekBarShowScrollTime() || mediaPlayTime.isVideoShowScrollTime()) {
                        mediaPlayTime.setVisibility(8);
                    }
                    tag = childAt.getTag();
                    if (!"visibility_user".equals(tag)) {
                        Log.d(TAG, "setVisibility: visibility_user ,User View==" + childAt);
                    } else if (z2 || (z && childAt.getVisibility() != 0)) {
                        this.mShowVisibility = true;
                        if ("visibility_user_show".equals(tag)) {
                            Log.d(TAG, "setVisibility: visibility_user_show ,User View==" + childAt);
                        } else {
                            visibilityVisible(childAt, videoHideShowAnimation, videoHideShowAnimationDuration);
                        }
                    } else {
                        if (childAt.getVisibility() != 8) {
                            if ("visibility_user_hide".equals(tag)) {
                                Log.d(TAG, "setVisibility: visibility_user_hide ,User View==" + childAt);
                            } else if (z) {
                                visibilityGone(childAt, videoHideShowAnimation, videoHideShowAnimationDuration);
                            } else if (childAt.getVisibility() != 4) {
                                visibilityGone(childAt, videoHideShowAnimation, videoHideShowAnimationDuration);
                            }
                        }
                        this.mShowVisibility = false;
                    }
                } else {
                    if (childAt instanceof VideoSeekViewImage) {
                    }
                    tag = childAt.getTag();
                    if (!"visibility_user".equals(tag)) {
                    }
                }
            }
        }
        if (videoHideShowAnimation == 1 || videoHideShowAnimation == 2) {
            this.mVideoPlayer.postOnAnimationDelayed(new Runnable() { // from class: com.yftech.car.widget.media.video.layout.-$$Lambda$VideoLayoutChildManager$RnbTtrfXa9yDMLFK-wIFePm_BRs
                @Override // java.lang.Runnable
                public final void run() {
                    VideoLayoutChildManager.lambda$setVisibilityVisibleGone$7(VideoLayoutChildManager.this);
                }
            }, this.mVideoPlayer.getVideoHideShowAnimationDuration());
        } else {
            this.isAnimationLoading = false;
            TouchEventUtil.mNoClicking = false;
        }
        if (this.mVideoSeekViewImage == null || this.mVideoSeekViewImage.getVisibility() == 8) {
            return;
        }
        this.mVideoSeekViewImage.setVisibility(8);
    }

    public static /* synthetic */ void lambda$setVisibilityVisibleGone$7(final VideoLayoutChildManager videoLayoutChildManager) {
        if (videoLayoutChildManager.mRootLayout != null) {
            for (int i = 0; i < videoLayoutChildManager.mRootLayout.getChildCount(); i++) {
                videoLayoutChildManager.mRootLayout.getChildAt(i).clearAnimation();
            }
            videoLayoutChildManager.mVideoPlayer.postOnAnimationDelayed(new Runnable() { // from class: com.yftech.car.widget.media.video.layout.-$$Lambda$VideoLayoutChildManager$91RhAzLFzqU210Tic3swBhtWDbo
                @Override // java.lang.Runnable
                public final void run() {
                    VideoLayoutChildManager.lambda$setVisibilityVisibleGone$6(VideoLayoutChildManager.this);
                }
            }, 100L);
        }
    }

    public static /* synthetic */ void lambda$setVisibilityVisibleGone$6(VideoLayoutChildManager videoLayoutChildManager) {
        videoLayoutChildManager.isAnimationLoading = false;
        TouchEventUtil.mNoClicking = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void visibilityGone(View view, int i, int i2) {
        float width;
        float y;
        switch (i) {
            case 1:
                SizeCore sizeCore = this.mSizeCore.get(view);
                if (sizeCore != null) {
                    width = sizeCore.childAtCoreX;
                    y = sizeCore.childAtCoreY;
                } else {
                    width = (view.getWidth() / 2.0f) + view.getX();
                    y = view.getY() + (view.getHeight() / 2.0f);
                    SizeCore sizeCore2 = new SizeCore();
                    sizeCore2.childAtCoreX = width;
                    sizeCore2.childAtCoreY = y;
                    this.mSizeCore.put(view, sizeCore2);
                }
                float width2 = this.mRootLayout.getWidth() / 2.0f;
                float height = this.mRootLayout.getHeight() / 2.0f;
                if (width < width2 && Math.abs(y - height) < Math.abs(width - width2)) {
                    AnimationUtil.showTranslateAnimation(view, i2, 0.0f, -(view.getWidth() + view.getX()), 0.0f, 0.0f);
                    break;
                } else if (y < height && Math.abs(width2 - width) < Math.abs(y - height)) {
                    AnimationUtil.showTranslateAnimation(view, i2, 0.0f, 0.0f, 0.0f, -(view.getHeight() + view.getY()));
                    break;
                } else if (width2 < width && Math.abs(width - width2) > Math.abs(y - height)) {
                    AnimationUtil.showTranslateAnimation(view, i2, 0.0f, view.getWidth() + (this.mRootLayout.getWidth() - (view.getX() + view.getWidth())), 0.0f, 0.0f);
                    break;
                } else {
                    AnimationUtil.showTranslateAnimation(view, i2, 0.0f, 0.0f, 0.0f, view.getHeight() + (this.mRootLayout.getHeight() - (view.getY() + view.getHeight())));
                    break;
                }
                break;
            case 2:
                AnimationUtil.showAlphaAnimation(view, i2, false);
                break;
        }
        view.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void visibilityVisible(View view, int i, int i2) {
        float width;
        float y;
        view.setVisibility(0);
        switch (i) {
            case 1:
                SizeCore sizeCore = this.mSizeCore.get(view);
                if (sizeCore != null) {
                    width = sizeCore.childAtCoreX;
                    y = sizeCore.childAtCoreY;
                } else {
                    width = (view.getWidth() / 2.0f) + view.getX();
                    y = view.getY() + (view.getHeight() / 2.0f);
                    SizeCore sizeCore2 = new SizeCore();
                    sizeCore2.childAtCoreX = width;
                    sizeCore2.childAtCoreY = y;
                    this.mSizeCore.put(view, sizeCore2);
                }
                float width2 = this.mRootLayout.getWidth() / 2.0f;
                float height = this.mRootLayout.getHeight() / 2.0f;
                if (width < width2 && Math.abs(y - height) < Math.abs(width - width2)) {
                    AnimationUtil.showTranslateAnimation(view, i2, -(view.getWidth() + view.getX()), 0.0f, 0.0f, 0.0f);
                    return;
                }
                if (y < height && Math.abs(width2 - width) < Math.abs(y - height)) {
                    AnimationUtil.showTranslateAnimation(view, i2, 0.0f, 0.0f, -(view.getHeight() + view.getY()), 0.0f);
                    return;
                }
                if (width2 < width && Math.abs(width - width2) > Math.abs(y - height)) {
                    AnimationUtil.showTranslateAnimation(view, i2, view.getWidth() + (this.mRootLayout.getWidth() - (view.getX() + view.getWidth())), 0.0f, 0.0f, 0.0f);
                    return;
                } else {
                    AnimationUtil.showTranslateAnimation(view, i2, 0.0f, 0.0f, view.getHeight() + (this.mRootLayout.getHeight() - (view.getY() + view.getHeight())), 0.0f);
                    return;
                }
            case 2:
                AnimationUtil.showAlphaAnimation(view, i2, true);
                return;
            default:
                return;
        }
    }

    public void onWindowFocusChanged(boolean z) {
        Loger.d(TAG, " onWindowFocusChanged: hasWindowFocus==" + z);
        if (z) {
            updateTouchEvent(false);
            if (this.mVideoPlayer != null) {
                if (this.mVideoPlayer.isClickSwitchHideShow(1) && this.mRootLayout.getSystemUiVisibility() != this.mVideoPlayer.getSystemUiVisibilityShow()) {
                    this.mRootLayout.setSystemUiVisibility(this.mVideoPlayer.getSystemUiVisibilityShow());
                }
                if (!this.mVideoPlayer.isClickSwitchHideShow(2) || this.mShowVisibility) {
                    return;
                }
                setVisibilityVisibleGone(true, true);
                return;
            }
            return;
        }
        hideInput();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.yftech.car.widget.media.video.button.VideoButton.OnClickFunctionListener
    public void onClickFunction(int i, int i2) {
        if (this.isAnimationLoading || (this.mVideoPlayer != null && this.mVideoPlayer.isOnTouchClick())) {
            Log.e(TAG, "onClickFunction: Double Click isAnimationLoading is true");
            return;
        }
        switch (i2) {
            case 0:
                if (this.mVideoPlayer != null) {
                    this.mVideoPlayer.setPlayState(1);
                    return;
                }
                return;
            case 1:
                if (this.mVideoPlayer != null) {
                    this.mVideoPlayer.setPlayState(2);
                    return;
                }
                return;
            case 2:
                if (this.mVideoPlayer != null) {
                    this.mVideoPlayer.setPlayState(4);
                    return;
                }
                return;
            case 3:
                if (this.mVideoPlayer != null) {
                    this.mVideoPlayer.setPlayState(5);
                    return;
                }
                return;
            case 4:
                if (this.mVideoPlayer != null) {
                    this.mVideoPlayer.setPlayState(3);
                    return;
                }
                return;
            case 5:
                if (this.mVideoPlayer != null) {
                    this.mVideoPlayer.switchPlayMode();
                    return;
                }
                return;
            case 6:
                if (this.mVideoPlayer != null) {
                    this.mVideoPlayer.switchScaleType();
                    return;
                }
                return;
            default:
                for (MediaDataList mediaDataList : this.mMediaDataList) {
                    if (i == -1 || i == mediaDataList.getId()) {
                        if (i2 == 1006) {
                            mediaDataList.setMediaDefaultList(i2 + NotificationManagerCompat.IMPORTANCE_UNSPECIFIED);
                            if (mediaDataList.isMediaListClickMemoryDirectory()) {
                                mediaDataList.updateDirectoryList();
                            } else {
                                mediaDataList.updateDirectoryList(MediaDataManager.getInstance().getVideoDirectory(mediaDataList.getUsbIndex()));
                            }
                            mediaDataList.scrollToPositionWithOffset(0, 0);
                        } else if (i2 != 1100) {
                            switch (i2) {
                                case 1001:
                                    mediaDataList.setMediaDefaultList(i2 + NotificationManagerCompat.IMPORTANCE_UNSPECIFIED);
                                    mediaDataList.updateFolderList(MediaDataManager.getInstance().getFolderVideo(mediaDataList.getUsbIndex()), true);
                                    mediaDataList.scrollToPositionWithOffset(0, 0);
                                    break;
                                case 1002:
                                    mediaDataList.setMediaDefaultList(i2 + NotificationManagerCompat.IMPORTANCE_UNSPECIFIED);
                                    mediaDataList.updateFileList(MediaDataManager.getInstance().getFileVideo(mediaDataList.getUsbIndex()), true);
                                    mediaDataList.scrollToPositionWithOffset(0, 0);
                                    break;
                                case 1003:
                                    mediaDataList.setMediaDefaultList(i2 + NotificationManagerCompat.IMPORTANCE_UNSPECIFIED);
                                    mediaDataList.updateFolderList(MediaDataManager.getInstance().getArtistsVideo(mediaDataList.getUsbIndex()), true);
                                    mediaDataList.scrollToPositionWithOffset(0, 0);
                                    break;
                                default:
                                    int i3 = i2 - 100;
                                    if (i3 >= 0 && i3 <= 4) {
                                        mediaDataList.setUsbIndex(i3);
                                        int mediaDefaultList = mediaDataList.getMediaDefaultList();
                                        if (mediaDefaultList == 6) {
                                            mediaDataList.updateDirectoryList(MediaDataManager.getInstance().getVideoDirectory(i3));
                                            Loger.d(TAG, "initView: mediaDataList.getMediaDefaultList()==" + mediaDataList.getMediaDefaultList());
                                        } else if (mediaDefaultList != 100) {
                                            switch (mediaDefaultList) {
                                                case 1:
                                                    mediaDataList.updateFolderList(MediaDataManager.getInstance().getFolderVideo(i3), true);
                                                    break;
                                                case 2:
                                                    mediaDataList.updateFileList(MediaDataManager.getInstance().getFileVideo(i3), true);
                                                    break;
                                                case 3:
                                                    mediaDataList.updateFolderList(MediaDataManager.getInstance().getArtistsVideo(i3), true);
                                                    break;
                                            }
                                        } else if (this.mVideoPlayer != null) {
                                            mediaDataList.updateFileList(this.mVideoPlayer.getPlayList(), true);
                                        }
                                        mediaDataList.scrollToPositionWithOffset(0, 0);
                                        break;
                                    }
                                    break;
                            }
                        } else if (this.mVideoPlayer != null) {
                            mediaDataList.setMediaDefaultList(i2 + NotificationManagerCompat.IMPORTANCE_UNSPECIFIED);
                            mediaDataList.updateFileList(this.mVideoPlayer.getPlayList(), true);
                            mediaDataList.scrollToPositionWithOffset(0, 0);
                        }
                        int mediaDefaultList2 = mediaDataList.getMediaDefaultList();
                        for (VideoButton videoButton : this.mButtonList) {
                            videoButton.setSelected(videoButton.isFunction(mediaDefaultList2 + 1000));
                        }
                        mediaDataList.setVisibility(0);
                        Iterator<SearchHistoryList> it = this.mSearchHistoryList.iterator();
                        while (it.hasNext()) {
                            it.next().setVisibility(8);
                        }
                    }
                }
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yftech.car.widget.media.video.layout.VideoLayoutChildManager$8, reason: invalid class name */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public class AnonymousClass8 implements VisibilityTextButton.OnClickVisibilityListener {
        AnonymousClass8() {
        }

        @Override // com.yftech.car.widget.media.text.VisibilityTextButton.OnClickVisibilityListener
        public void onClickVisibility(int[] iArr, int i, int i2, int i3) {
            if (VideoLayoutChildManager.this.mRootLayout != null) {
                if (VideoLayoutChildManager.this.isAnimationLoading) {
                    Log.e(VideoLayoutChildManager.TAG, "onClickVisibility: Double Click isAnimationLoading is true");
                    return;
                }
                int i4 = i3;
                char c = 65535;
                int i5 = i2;
                for (int i6 : iArr) {
                    if (i6 != -1) {
                        final View findViewById = VideoLayoutChildManager.this.mRootLayout.findViewById(i6);
                        if (findViewById.getVisibility() != 0) {
                            if ((i & 1) > 0) {
                                if (i5 == -1) {
                                    if (VideoLayoutChildManager.this.mVideoPlayer != null) {
                                        i5 = VideoLayoutChildManager.this.mVideoPlayer.getVideoHideShowAnimation();
                                        i4 = VideoLayoutChildManager.this.mVideoPlayer.getVideoHideShowAnimationDuration();
                                    } else {
                                        i5 = 0;
                                    }
                                }
                                VideoLayoutChildManager.this.isAnimationLoading = true;
                                VideoLayoutChildManager.this.visibilityVisible(findViewById, i5, i4);
                                c = 1;
                            }
                        } else if (findViewById.getVisibility() != 8 && (i & 2) > 0) {
                            VideoLayoutChildManager.this.isAnimationLoading = true;
                            if (i5 == -1) {
                                if (VideoLayoutChildManager.this.mVideoPlayer != null) {
                                    i5 = VideoLayoutChildManager.this.mVideoPlayer.getVideoHideShowAnimation();
                                    i4 = VideoLayoutChildManager.this.mVideoPlayer.getVideoHideShowAnimationDuration();
                                } else {
                                    i5 = 0;
                                }
                            }
                            VideoLayoutChildManager.this.visibilityGone(findViewById, i5, i4);
                            c = 0;
                        }
                        if (VideoLayoutChildManager.this.isAnimationLoading) {
                            if (i5 == 1 || i5 == 2) {
                                VideoLayoutChildManager.this.mRootLayout.postOnAnimationDelayed(new Runnable() { // from class: com.yftech.car.widget.media.video.layout.-$$Lambda$VideoLayoutChildManager$8$kecyK8zEkuNS7myxIRQkEAy_e0E
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        VideoLayoutChildManager.AnonymousClass8.lambda$onClickVisibility$1(VideoLayoutChildManager.AnonymousClass8.this, findViewById);
                                    }
                                }, i4);
                            } else {
                                VideoLayoutChildManager.this.isAnimationLoading = false;
                            }
                        }
                    }
                }
                if (VideoLayoutChildManager.this.mVideoPlayer != null) {
                    if (VideoLayoutChildManager.this.mRootLayout.getSystemUiVisibility() != VideoLayoutChildManager.this.mVideoPlayer.getSystemUiVisibilityShow()) {
                        if ((i & 4) > 0) {
                            if (c == 65535) {
                                c = 1;
                            }
                            VideoLayoutChildManager.this.mRootLayout.setSystemUiVisibility(VideoLayoutChildManager.this.mVideoPlayer.getSystemUiVisibilityShow());
                        }
                    } else if ((i & 8) > 0 && VideoLayoutChildManager.this.mVideoPlayer.getSystemUiVisibilityHide() != -1) {
                        if (c == 65535) {
                            c = 0;
                        }
                        VideoLayoutChildManager.this.mRootLayout.setSystemUiVisibility(VideoLayoutChildManager.this.mVideoPlayer.getSystemUiVisibilityHide());
                    }
                }
                Iterator it = VideoLayoutChildManager.this.mVisibilityTextButtonList.iterator();
                while (it.hasNext()) {
                    ((VisibilityTextButton) it.next()).setVisibilityShow(c == 1);
                }
            }
        }

        public static /* synthetic */ void lambda$onClickVisibility$1(final AnonymousClass8 anonymousClass8, View view) {
            view.clearAnimation();
            VideoLayoutChildManager.this.mRootLayout.postOnAnimationDelayed(new Runnable() { // from class: com.yftech.car.widget.media.video.layout.-$$Lambda$VideoLayoutChildManager$8$LQSubmOdNv5sE5xgl435NHnkrxo
                @Override // java.lang.Runnable
                public final void run() {
                    VideoLayoutChildManager.this.isAnimationLoading = false;
                }
            }, 100L);
        }

        @Override // com.yftech.car.widget.media.text.VisibilityTextButton.OnClickVisibilityListener
        public void onClickVisibilityVisible(int[] iArr, int i, int i2) {
            if (VideoLayoutChildManager.this.mRootLayout != null) {
                int i3 = i2;
                int i4 = i;
                for (int i5 : iArr) {
                    if (i5 != -1) {
                        final View findViewById = VideoLayoutChildManager.this.mRootLayout.findViewById(i5);
                        if (findViewById.getVisibility() != 0) {
                            if (i4 == -1) {
                                if (VideoLayoutChildManager.this.mVideoPlayer != null) {
                                    i4 = VideoLayoutChildManager.this.mVideoPlayer.getVideoHideShowAnimation();
                                    i3 = VideoLayoutChildManager.this.mVideoPlayer.getVideoHideShowAnimationDuration();
                                } else {
                                    i4 = 0;
                                }
                            }
                            VideoLayoutChildManager.this.visibilityVisible(findViewById, i4, i3);
                            if (i4 == 1 || i4 == 2) {
                                VideoLayoutChildManager.this.mRootLayout.postOnAnimationDelayed(new Runnable() { // from class: com.yftech.car.widget.media.video.layout.-$$Lambda$VideoLayoutChildManager$8$fe5r0HWnoX80PTPTlNgd7IbyPI4
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        findViewById.clearAnimation();
                                    }
                                }, i3);
                            }
                        }
                    }
                }
            }
        }

        @Override // com.yftech.car.widget.media.text.VisibilityTextButton.OnClickVisibilityListener
        public void onClickVisibilityGone(int[] iArr, int i, int i2) {
            if (VideoLayoutChildManager.this.mRootLayout != null) {
                int i3 = i2;
                int i4 = i;
                for (int i5 : iArr) {
                    if (i5 != -1) {
                        final View findViewById = VideoLayoutChildManager.this.mRootLayout.findViewById(i5);
                        if (findViewById.getVisibility() != 8) {
                            if (i4 == -1) {
                                if (VideoLayoutChildManager.this.mVideoPlayer != null) {
                                    i4 = VideoLayoutChildManager.this.mVideoPlayer.getVideoHideShowAnimation();
                                    i3 = VideoLayoutChildManager.this.mVideoPlayer.getVideoHideShowAnimationDuration();
                                } else {
                                    i4 = 0;
                                }
                            }
                            VideoLayoutChildManager.this.visibilityGone(findViewById, i4, i3);
                            if (i4 == 1 || i4 == 2) {
                                VideoLayoutChildManager.this.mRootLayout.postOnAnimationDelayed(new Runnable() { // from class: com.yftech.car.widget.media.video.layout.-$$Lambda$VideoLayoutChildManager$8$yPIu4-60s1nMOEy4H_23nlOPWw4
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        findViewById.clearAnimation();
                                    }
                                }, i3);
                            }
                        }
                    }
                }
            }
        }
    }
}
