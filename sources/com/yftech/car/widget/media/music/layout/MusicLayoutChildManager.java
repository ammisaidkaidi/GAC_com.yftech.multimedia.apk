package com.yftech.car.widget.media.music.layout;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.Editable;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.ProgressBar;
import android.widget.SeekBar;
import androidx.annotation.NonNull;
import androidx.core.app.NotificationManagerCompat;
import com.yftech.car.media.data.entity.MediaFile;
import com.yftech.car.media.data.util.MusicUtils;
import com.yftech.car.utils.Loger;
import com.yftech.car.widget.media.entity.SizeCore;
import com.yftech.car.widget.media.layout.BaseLayoutChildManager;
import com.yftech.car.widget.media.list.MediaDataDirectoryList;
import com.yftech.car.widget.media.list.MediaDataList;
import com.yftech.car.widget.media.list.SearchHistoryList;
import com.yftech.car.widget.media.list.adapter.SearchHistoryAdapter;
import com.yftech.car.widget.media.manager.MediaDataManager;
import com.yftech.car.widget.media.manager.MusicManager;
import com.yftech.car.widget.media.music.button.MusicButton;
import com.yftech.car.widget.media.music.layout.MusicLayoutChildManager;
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
import com.yftech.car.widget.media.utils.TaskManager;
import com.yftech.car.widget.media.utils.TouchEventUtil;
import com.yftech.car.widget.media.view.MediaImageLoading;
import com.yftech.car.widget.media.view.MediaImageView;
import com.yftech.car.widget.media.view.MediaProgressBar;
import com.yftech.car.widget.media.view.MediaSeekBar;
import com.yftech.car.widget.media.view.ReflectedImage;
import com.yftech.car.widget.media.view.SideTextRetrievalView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ExecutorService;

/* loaded from: /home/user/work/dex/classes3.dex */
public class MusicLayoutChildManager extends BaseLayoutChildManager implements MusicButton.OnClickFunctionListener {
    private static final int COLLECT_CHANGE_LOADING = 1;
    private static final int PLAY_LIST_CHANGE_LOADING = 0;
    private static final String TAG = "LayoutChildManager";
    private MusicManager.CarMusicControlCallback mCarMusicControlCallback;
    private InputMethodManager mInputMethodManager;
    private ViewGroup mLayout;
    private MediaFindSearch mMediaFindSearch;
    private MusicImageRunnable mMusicImageRunnable;
    private MediaDataManager.OnDataChangeCallback mOnDataChangeCallback;
    private SeekBar.OnSeekBarChangeListener mOnSeekBarChangeListener;
    private MediaFile mPlayMusic;
    private long mSeekBarTime;
    private final List<MediaDataList> mMediaDataList = new ArrayList();
    private final List<MusicButton> mButtonList = new ArrayList();
    private final List<MediaFileTextView> mTextViewList = new ArrayList();
    private final List<MediaPlayTime> mPlayTimeList = new ArrayList();
    private final List<MediaSeekBar> mMusicSeekBarList = new ArrayList();
    private final List<MediaProgressBar> mProgressBarList = new ArrayList();
    private final List<MediaImageView> mImageViewList = new ArrayList();
    private final List<ReflectedImage> mReflectedImageList = new ArrayList();
    private final List<MediaListFolderPath> mMediaListFolderPathList = new ArrayList();
    private final List<MediaDataListText> mMediaDataListTextList = new ArrayList();
    private final List<MediaDataModifyBtn> mMediaDataModifyBtnList = new ArrayList();
    private final List<VisibilityTextButton> mVisibilityTextButtonList = new ArrayList();
    private final List<MediaSearchEditText> mMediaSearchEditTextList = new ArrayList();
    private final List<SearchEditButton> mSearchEditButtonList = new ArrayList();
    private final List<SearchHistoryList> mSearchHistoryList = new ArrayList();
    private final List<MediaImageLoading> mMediaImageLoadingList = new ArrayList();
    private final List<MediaDataDirectoryList> mMediaDataDirectoryList = new ArrayList();
    private final List<SideTextRetrievalView> mSideTextRetrievalViewList = new ArrayList();
    private final Map<View, SizeCore> mSizeCore = new ArrayMap();
    private boolean isAnimationLoading = false;
    private boolean isTouchSeekBar = false;
    private ExecutorService mThreadExecutor = null;
    private boolean isMusicDataLoading = false;
    private boolean isPlayListChangeLoading = false;
    private boolean isCollectChangeLoading = false;
    private final Handler mHandler = new Handler(Looper.getMainLooper()) { // from class: com.yftech.car.widget.media.music.layout.MusicLayoutChildManager.1
        @Override // android.os.Handler
        public void handleMessage(@NonNull Message message) {
            super.handleMessage(message);
            switch (message.what) {
                case 0:
                    MusicLayoutChildManager.this.updatePlayList();
                    return;
                case 1:
                    MusicLayoutChildManager.this.updateCollectList(message.arg1);
                    return;
                default:
                    return;
            }
        }
    };
    private final MediaDataList.OnDirectoryListener mOnDirectoryListener = new MediaDataList.OnDirectoryListener() { // from class: com.yftech.car.widget.media.music.layout.MusicLayoutChildManager.3
        @Override // com.yftech.car.widget.media.list.MediaDataList.OnDirectoryListener
        public void onDirectoryPathChange(String str) {
            for (MusicButton musicButton : MusicLayoutChildManager.this.mButtonList) {
                if (musicButton.isFunction(9)) {
                    musicButton.setActivatedStatus(MusicManager.getInstance().isDirectoryPlayPath(str));
                }
            }
        }
    };
    private final SearchHistoryAdapter.OnSearchHistoryItemClickListener mOnSearchHistoryItemClickListener = new SearchHistoryAdapter.OnSearchHistoryItemClickListener() { // from class: com.yftech.car.widget.media.music.layout.MusicLayoutChildManager.5
        @Override // com.yftech.car.widget.media.list.adapter.SearchHistoryAdapter.OnSearchHistoryItemClickListener
        public void onItemSearch(SearchHistoryList searchHistoryList, String str) {
            for (MediaSearchEditText mediaSearchEditText : MusicLayoutChildManager.this.mMediaSearchEditTextList) {
                if (searchHistoryList.getSearchEditTextId() == -1 || searchHistoryList.getSearchEditTextId() == mediaSearchEditText.getId()) {
                    mediaSearchEditText.setText(str);
                    MusicLayoutChildManager.this.mOnSearchTextListener.onSearchText(mediaSearchEditText);
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
    private final MediaSearchEditText.OnSearchTextListener mOnSearchTextListener = new AnonymousClass6();
    private final VisibilityTextButton.OnClickVisibilityListener mOnClickVisibilityListener = new AnonymousClass8();

    public void initView(ViewGroup viewGroup) {
        this.mLayout = viewGroup;
        Loger.d(TAG, "initView: ");
        if (this.mCarMusicControlCallback == null) {
            long currentTimeMillis = System.currentTimeMillis();
            this.mCarMusicControlCallback = getCarRadioControlCallback();
            this.mOnDataChangeCallback = getOnDataChangeCallback();
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
                    if (childAt instanceof MediaDataList) {
                        MediaDataList mediaDataList = (MediaDataList) childAt;
                        mediaDataList.setLinkedList(linkedList);
                        this.mMediaDataList.add(mediaDataList);
                    } else if (childAt instanceof MediaDataDirectoryList) {
                        this.mMediaDataDirectoryList.add((MediaDataDirectoryList) childAt);
                    } else if (childAt instanceof SearchHistoryList) {
                        this.mSearchHistoryList.add((SearchHistoryList) childAt);
                    } else if (childAt instanceof ViewGroup) {
                        linkedList.add((ViewGroup) childAt);
                    } else if (childAt instanceof MusicButton) {
                        this.mButtonList.add((MusicButton) childAt);
                    } else if (childAt instanceof MediaFileTextView) {
                        this.mTextViewList.add((MediaFileTextView) childAt);
                    } else if (childAt instanceof MediaPlayTime) {
                        this.mPlayTimeList.add((MediaPlayTime) childAt);
                    } else if (childAt instanceof MediaSeekBar) {
                        this.mMusicSeekBarList.add((MediaSeekBar) childAt);
                    } else if (childAt instanceof MediaImageView) {
                        this.mImageViewList.add((MediaImageView) childAt);
                    } else if (childAt instanceof MediaProgressBar) {
                        this.mProgressBarList.add((MediaProgressBar) childAt);
                    } else if (childAt instanceof ReflectedImage) {
                        this.mReflectedImageList.add((ReflectedImage) childAt);
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
            if (this.mCarMusicControlCallback != null) {
                MusicManager.getInstance().registerMusicControlCallback(this.mCarMusicControlCallback);
            }
            if (this.mOnDataChangeCallback != null) {
                MediaDataManager.getInstance().registerCarDataControlCallback(this.mOnDataChangeCallback);
            }
            Loger.d(TAG, " initView: mMediaDataList==" + this.mMediaDataList.size() + ",LinkedList time == " + (System.currentTimeMillis() - currentTimeMillis));
            for (final MediaDataList mediaDataList2 : this.mMediaDataList) {
                Iterator<MediaListFolderPath> it = this.mMediaListFolderPathList.iterator();
                while (it.hasNext()) {
                    mediaDataList2.setMediaListFolderPath(it.next());
                }
                mediaDataList2.setMediaDataDirectoryList(this.mMediaDataDirectoryList);
                mediaDataList2.setMediaDataListTextList(this.mMediaDataListTextList);
                mediaDataList2.setMediaDataModifyBtnList(this.mMediaDataModifyBtnList);
                mediaDataList2.setSideTextRetrievalViewList(this.mSideTextRetrievalViewList);
                mediaDataList2.setOnDirectoryListener(this.mOnDirectoryListener);
                int mediaDefaultList = mediaDataList2.getMediaDefaultList();
                mediaDataList2.setMediaType(0, new Runnable() { // from class: com.yftech.car.widget.media.music.layout.-$$Lambda$MusicLayoutChildManager$v8yhlvekpQahZlykhnGqOJENQ_w
                    @Override // java.lang.Runnable
                    public final void run() {
                        MusicLayoutChildManager.lambda$initView$0(MediaDataList.this);
                    }
                });
                Loger.d(TAG, " initView: loading data time == " + (System.currentTimeMillis() - currentTimeMillis));
                for (MusicButton musicButton : this.mButtonList) {
                    musicButton.setSelected(musicButton.isFunction(mediaDefaultList + 1000));
                }
                boolean isScanner = MediaDataManager.getInstance().isScanner(mediaDataList2.getUsbIndex());
                for (MediaImageLoading mediaImageLoading : this.mMediaImageLoadingList) {
                    if (mediaImageLoading.getMediaDataListId() == -1 || mediaImageLoading.getMediaDataListId() == mediaDataList2.getId()) {
                        mediaImageLoading.setLoadingStatus(isScanner);
                    }
                }
                for (SearchHistoryList searchHistoryList : this.mSearchHistoryList) {
                    if (mediaDefaultList == 101) {
                        searchHistoryList.setVisibility(0);
                    } else {
                        searchHistoryList.setVisibility(8);
                    }
                }
            }
            if (this.mOnSeekBarChangeListener == null) {
                this.mOnSeekBarChangeListener = getOnSeekBarChangeListener();
            }
            Iterator<MediaSeekBar> it2 = this.mMusicSeekBarList.iterator();
            while (it2.hasNext()) {
                it2.next().setOnSeekBarChangeListener(this.mOnSeekBarChangeListener);
            }
            onResume();
            for (final VisibilityTextButton visibilityTextButton : this.mVisibilityTextButtonList) {
                visibilityTextButton.setOnClickVisibilityListener(this.mOnClickVisibilityListener);
                visibilityTextButton.postOnAnimation(new Runnable() { // from class: com.yftech.car.widget.media.music.layout.-$$Lambda$MusicLayoutChildManager$cbn89DlZ1p4jahfJZRervsbYvGs
                    @Override // java.lang.Runnable
                    public final void run() {
                        r1.setVisibilityShow(visibilityTextButton.isMediaDataListShow(MusicLayoutChildManager.this.mLayout));
                    }
                });
            }
            for (MediaSearchEditText mediaSearchEditText : this.mMediaSearchEditTextList) {
                Iterator<SearchEditButton> it3 = this.mSearchEditButtonList.iterator();
                while (it3.hasNext()) {
                    mediaSearchEditText.addSearchEditButton(it3.next());
                }
                mediaSearchEditText.setOnSearchTextListener(this.mOnSearchTextListener);
                Iterator<SearchHistoryList> it4 = this.mSearchHistoryList.iterator();
                while (it4.hasNext() && !mediaSearchEditText.setSearchHistoryList(it4.next())) {
                }
                for (MediaDataList mediaDataList3 : this.mMediaDataList) {
                    if (mediaSearchEditText.getSearchDataListId() == -1 || mediaSearchEditText.getSearchDataListId() == mediaDataList3.getId()) {
                        mediaSearchEditText.setMediaDataList(mediaDataList3);
                        break;
                    }
                }
            }
            for (SearchHistoryList searchHistoryList2 : this.mSearchHistoryList) {
                searchHistoryList2.setOnSearchHistoryItemClickListener(this.mOnSearchHistoryItemClickListener);
                Iterator<SearchEditButton> it5 = this.mSearchEditButtonList.iterator();
                while (it5.hasNext() && !searchHistoryList2.setSearchEditButton(it5.next())) {
                }
                for (SearchEditButton searchEditButton : this.mSearchEditButtonList) {
                    if (searchEditButton.isSearchType(3) && (searchEditButton.getMediaSearchHistoryListId() == -1 || searchEditButton.getMediaSearchHistoryListId() == searchHistoryList2.getId())) {
                        searchEditButton.setVisibility(searchHistoryList2.getVisibility());
                    }
                }
            }
            for (SearchEditButton searchEditButton2 : this.mSearchEditButtonList) {
                if (searchEditButton2.getSearchVisibilityShow() > 0) {
                    searchEditButton2.setVisibility(searchEditButton2.isSearchVisibilityShow(4) ? 0 : 8);
                }
            }
            Log.d(TAG, "initView: loading time ==" + (System.currentTimeMillis() - currentTimeMillis));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$initView$0(MediaDataList mediaDataList) {
        int usbIndex = mediaDataList.getUsbIndex();
        int mediaDefaultList = mediaDataList.getMediaDefaultList();
        if (mediaDefaultList != 100) {
            switch (mediaDefaultList) {
                case 0:
                    mediaDataList.updateFileList(MusicManager.getInstance().getCollectMusic(usbIndex), true);
                    return;
                case 1:
                    mediaDataList.updateFolderList(MediaDataManager.getInstance().getFolderMusic(usbIndex), true);
                    return;
                case 2:
                    mediaDataList.updateFileList(MediaDataManager.getInstance().getFileMusic(usbIndex), true);
                    return;
                case 3:
                    mediaDataList.updateFolderList(MediaDataManager.getInstance().getArtistsMusic(usbIndex), true);
                    return;
                case 4:
                    mediaDataList.updateFolderList(MediaDataManager.getInstance().getAlbumsMusic(usbIndex), true);
                    return;
                case 5:
                    mediaDataList.updateFolderList(MediaDataManager.getInstance().getGenreMusic(usbIndex), true);
                    return;
                case 6:
                    mediaDataList.updateDirectoryList(MediaDataManager.getInstance().getMusicDirectory(usbIndex));
                    Loger.d(TAG, "initView: mediaDataList.getMediaDefaultList()== MediaDataList.DIRECTORY");
                    return;
                default:
                    Log.e(TAG, "initView: no MediaDefaultList == " + mediaDataList.getMediaDefaultList());
                    return;
            }
        }
        mediaDataList.updateFileList(MusicManager.getInstance().getCurrentPlayList(), true);
    }

    private void onResume() {
        Log.d(TAG, "onResume: ");
        this.mPlayMusic = MusicManager.getInstance().getPlayMusic();
        if (this.mPlayMusic != null && this.mImageViewList.size() > 0) {
            if (this.mMusicImageRunnable != null) {
                this.mMusicImageRunnable.isStatus = false;
            }
            this.mMusicImageRunnable = new MusicImageRunnable(this.mPlayMusic.getData(), this.mLayout);
            TaskManager.getInstance().threadRunnable(this.mMusicImageRunnable);
        }
        for (MediaFileTextView mediaFileTextView : this.mTextViewList) {
            mediaFileTextView.setSelected(true);
            mediaFileTextView.updateMediaFile(this.mPlayMusic);
        }
        long currentPlayDuration = MusicManager.getInstance().getCurrentPlayDuration();
        int currentPlayProgress = MusicManager.getInstance().getCurrentPlayProgress();
        for (MediaProgressBar mediaProgressBar : this.mProgressBarList) {
            mediaProgressBar.setMax((int) currentPlayDuration);
            mediaProgressBar.setProgress(currentPlayProgress);
        }
        for (MediaSeekBar mediaSeekBar : this.mMusicSeekBarList) {
            mediaSeekBar.setMax((int) currentPlayDuration);
            mediaSeekBar.setProgress(currentPlayProgress);
        }
        for (MediaPlayTime mediaPlayTime : this.mPlayTimeList) {
            mediaPlayTime.updateDuration(currentPlayDuration);
            mediaPlayTime.updateProgress(currentPlayProgress);
        }
        for (MusicButton musicButton : this.mButtonList) {
            musicButton.setOnClickFunctionListener(this);
            if (musicButton.isFunction(6)) {
                musicButton.setActivatedStatus(MusicManager.getInstance().isCollectMusic(this.mPlayMusic));
            } else if (musicButton.isFunction(4)) {
                musicButton.setActivatedStatus(MusicManager.getInstance().isPlaying());
            } else if (musicButton.isFunction(5)) {
                musicButton.updatePlayMode(MusicManager.getInstance().getPlayMode());
            } else if (musicButton.isUsbFunction() && this.mPlayMusic != null) {
                musicButton.setUsbStatus(MediaDataManager.getInstance().getUsbIndex(this.mPlayMusic.getData()));
            }
        }
    }

    public void unregister() {
        Loger.d(TAG, "unregister: ");
        if (this.mCarMusicControlCallback != null) {
            MusicManager.getInstance().unregisterMusicControlCallback(this.mCarMusicControlCallback);
            this.mCarMusicControlCallback = null;
            MediaDataManager.getInstance().unregisterCarDataControlCallback(this.mOnDataChangeCallback);
            this.mOnDataChangeCallback = null;
            this.mButtonList.clear();
            this.mTextViewList.clear();
            this.mPlayTimeList.clear();
            this.mProgressBarList.clear();
            this.mImageViewList.clear();
            this.mReflectedImageList.clear();
            this.mMediaListFolderPathList.clear();
            this.mMediaDataListTextList.clear();
            Iterator<MediaSeekBar> it = this.mMusicSeekBarList.iterator();
            while (it.hasNext()) {
                it.next().setOnSeekBarChangeListener(null);
            }
            this.mMusicSeekBarList.clear();
            this.mOnSeekBarChangeListener = null;
            Iterator<MediaDataList> it2 = this.mMediaDataList.iterator();
            while (it2.hasNext()) {
                it2.next().release();
            }
            this.mMediaDataList.clear();
            this.mMediaDataModifyBtnList.clear();
            this.mMediaImageLoadingList.clear();
            Iterator<MediaDataDirectoryList> it3 = this.mMediaDataDirectoryList.iterator();
            while (it3.hasNext()) {
                it3.next().release();
            }
            this.mMediaDataDirectoryList.clear();
            if (this.mMusicImageRunnable != null) {
                this.mMusicImageRunnable.isStatus = false;
            }
            this.mVisibilityTextButtonList.clear();
            Iterator<MediaSearchEditText> it4 = this.mMediaSearchEditTextList.iterator();
            while (it4.hasNext()) {
                it4.next().release();
            }
            this.mMediaSearchEditTextList.clear();
            this.mSearchEditButtonList.clear();
            this.mSearchHistoryList.clear();
            hideInput();
            this.mLayout = null;
            this.mPlayMusic = null;
            if (this.mThreadExecutor != null) {
                this.mThreadExecutor.shutdown();
                this.mThreadExecutor = null;
            }
        }
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
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

    private SeekBar.OnSeekBarChangeListener getOnSeekBarChangeListener() {
        return new SeekBar.OnSeekBarChangeListener() { // from class: com.yftech.car.widget.media.music.layout.MusicLayoutChildManager.2
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                if (z) {
                    Iterator it = MusicLayoutChildManager.this.mPlayTimeList.iterator();
                    while (it.hasNext()) {
                        ((MediaPlayTime) it.next()).updateProgress(i);
                    }
                }
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
                ((MediaSeekBar) seekBar).setTouchSeekBar(true);
                MusicLayoutChildManager.this.isTouchSeekBar = true;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
                int progress = seekBar.getProgress();
                MusicManager.getInstance().setPlayProgress(progress);
                Iterator it = MusicLayoutChildManager.this.mPlayTimeList.iterator();
                while (it.hasNext()) {
                    ((MediaPlayTime) it.next()).updateProgress(progress);
                }
                ((MediaSeekBar) seekBar).setTouchSeekBar(false);
                MusicLayoutChildManager.this.isTouchSeekBar = false;
                MusicLayoutChildManager.this.mSeekBarTime = System.currentTimeMillis();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yftech.car.widget.media.music.layout.MusicLayoutChildManager$4, reason: invalid class name */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public class AnonymousClass4 extends MediaDataManager.OnDataChangeCallback {
        AnonymousClass4() {
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:12:0x0031. Please report as an issue. */
        @Override // com.yftech.car.widget.media.manager.MediaDataManager.OnDataChangeCallback, com.yftech.car.widget.media.manager.MediaDataManager.OnDataChangeListener
        public void onScanStatusChange(int i, boolean z) {
            if (MediaDataManager.getInstance().isUsbExists(i)) {
                if (!z) {
                    for (MediaDataList mediaDataList : MusicLayoutChildManager.this.mMediaDataList) {
                        if (mediaDataList.getUsbIndex() == i) {
                            int mediaDefaultList = mediaDataList.getMediaDefaultList();
                            if (mediaDefaultList != 100) {
                                switch (mediaDefaultList) {
                                    case 1:
                                        mediaDataList.updateFolderList(MediaDataManager.getInstance().getFolderMusic(i), true);
                                        break;
                                    case 2:
                                        mediaDataList.updateFileList(MediaDataManager.getInstance().getFileMusic(i), true);
                                        break;
                                    case 3:
                                        mediaDataList.updateFolderList(MediaDataManager.getInstance().getArtistsMusic(i), true);
                                        break;
                                    case 4:
                                        mediaDataList.updateFolderList(MediaDataManager.getInstance().getAlbumsMusic(i), true);
                                        break;
                                    case 5:
                                        mediaDataList.updateFolderList(MediaDataManager.getInstance().getGenreMusic(i), true);
                                        break;
                                    case 6:
                                        Objects.requireNonNull(mediaDataList);
                                        mediaDataList.postOnAnimation(new $$Lambda$CZB4jbJKe4H7VHMQ0XTlIdVSXzU(mediaDataList));
                                        break;
                                }
                            } else {
                                mediaDataList.updateFileList(MusicManager.getInstance().getCurrentPlayList(), true);
                            }
                            for (final MediaImageLoading mediaImageLoading : MusicLayoutChildManager.this.mMediaImageLoadingList) {
                                if (mediaImageLoading.getMediaDataListId() == -1 || mediaImageLoading.getMediaDataListId() == mediaDataList.getId()) {
                                    mediaImageLoading.postOnAnimation(new Runnable() { // from class: com.yftech.car.widget.media.music.layout.-$$Lambda$MusicLayoutChildManager$4$598ba1FeGejOOfD9-mny8-6gENA
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
                for (final MediaDataList mediaDataList2 : MusicLayoutChildManager.this.mMediaDataList) {
                    if (mediaDataList2.getUsbIndex() == i) {
                        mediaDataList2.postOnAnimation(new Runnable() { // from class: com.yftech.car.widget.media.music.layout.-$$Lambda$MusicLayoutChildManager$4$ks1HDNlTwAh8bCtAzL-JAUWhEQI
                            @Override // java.lang.Runnable
                            public final void run() {
                                MusicLayoutChildManager.AnonymousClass4.lambda$onScanStatusChange$1(MusicLayoutChildManager.AnonymousClass4.this, mediaDataList2);
                            }
                        });
                    }
                }
            }
        }

        public static /* synthetic */ void lambda$onScanStatusChange$1(AnonymousClass4 anonymousClass4, MediaDataList mediaDataList) {
            for (MediaImageLoading mediaImageLoading : MusicLayoutChildManager.this.mMediaImageLoadingList) {
                if (mediaImageLoading.getMediaDataListId() == -1 || mediaImageLoading.getMediaDataListId() == mediaDataList.getId()) {
                    mediaImageLoading.setLoadingStatus(true);
                }
            }
            mediaDataList.setUsbLoadingScan();
        }

        @Override // com.yftech.car.widget.media.manager.MediaDataManager.OnDataChangeCallback, com.yftech.car.widget.media.manager.MediaDataManager.OnDataChangeListener
        public void onMusicDataChange(int i) {
            super.onMusicDataChange(i);
            if (!MusicLayoutChildManager.this.isMusicDataLoading) {
                for (MediaDataList mediaDataList : MusicLayoutChildManager.this.mMediaDataList) {
                    if (mediaDataList.getUsbIndex() == i) {
                        switch (mediaDataList.getMediaDefaultList()) {
                            case 1:
                                mediaDataList.updateFolderList(MediaDataManager.getInstance().getFolderMusic(i), true);
                                break;
                            case 2:
                                mediaDataList.updateFileList(MediaDataManager.getInstance().getFileMusic(i), true);
                                break;
                            case 3:
                                mediaDataList.updateFolderList(MediaDataManager.getInstance().getArtistsMusic(i), true);
                                break;
                            case 4:
                                mediaDataList.updateFolderList(MediaDataManager.getInstance().getAlbumsMusic(i), true);
                                break;
                            case 5:
                                mediaDataList.updateFolderList(MediaDataManager.getInstance().getGenreMusic(i), true);
                                break;
                            case 6:
                                Objects.requireNonNull(mediaDataList);
                                mediaDataList.postOnAnimation(new $$Lambda$CZB4jbJKe4H7VHMQ0XTlIdVSXzU(mediaDataList));
                                break;
                        }
                    }
                }
                MusicLayoutChildManager.this.isMusicDataLoading = false;
                return;
            }
            Log.e(MusicLayoutChildManager.TAG, "onMusicDataChange: isMusicDataLoading is true");
        }

        @Override // com.yftech.car.widget.media.manager.MediaDataManager.OnDataChangeCallback, com.yftech.car.widget.media.manager.MediaDataManager.OnDataChangeListener
        public void onUsbStatusChange(int i, boolean z) {
            super.onUsbStatusChange(i, z);
            if (z) {
                for (MediaDataList mediaDataList : MusicLayoutChildManager.this.mMediaDataList) {
                    if (mediaDataList.isEmptyList() && mediaDataList.isMediaUsbDisconnectAutoSwitchIndex()) {
                        MusicLayoutChildManager.this.updateUsbStatusChange(i, mediaDataList);
                    }
                }
                return;
            }
            final byte b = -1;
            byte[] musicExistsDataIndex = MediaDataManager.getInstance().getMusicExistsDataIndex();
            if (musicExistsDataIndex != null && musicExistsDataIndex.length > 0) {
                b = musicExistsDataIndex[0];
            }
            Loger.d(MusicLayoutChildManager.TAG, " onUsbStatusChange: usbIndex==" + i + ",index==" + ((int) b));
            for (final MediaDataList mediaDataList2 : MusicLayoutChildManager.this.mMediaDataList) {
                if (mediaDataList2.getUsbIndex() == i) {
                    mediaDataList2.postOnAnimation(new Runnable() { // from class: com.yftech.car.widget.media.music.layout.-$$Lambda$MusicLayoutChildManager$4$0lFzQAzElTCBsZ_u7J70iFeqYbo
                        @Override // java.lang.Runnable
                        public final void run() {
                            MusicLayoutChildManager.AnonymousClass4.lambda$onUsbStatusChange$2(MusicLayoutChildManager.AnonymousClass4.this, mediaDataList2, b);
                        }
                    });
                }
            }
            if (MusicLayoutChildManager.this.mPlayMusic != null) {
                int usbIndex = MediaDataManager.getInstance().getUsbIndex(MusicLayoutChildManager.this.mPlayMusic.getData());
                Loger.e(MusicLayoutChildManager.TAG, "onUsbStatusChange: playUsbIndex==" + usbIndex + ",usbIndex==" + i);
                if (usbIndex == i) {
                    for (final MediaImageView mediaImageView : MusicLayoutChildManager.this.mImageViewList) {
                        mediaImageView.setAlbumPicturesExist(MusicLayoutChildManager.this.mLayout, false);
                        mediaImageView.setImageDrawable(mediaImageView.getImageDrawable());
                        MusicLayoutChildManager.this.mHandler.post(new Runnable() { // from class: com.yftech.car.widget.media.music.layout.-$$Lambda$MusicLayoutChildManager$4$4Za-Yj0UjNlbVEfmCE6Lt1KjrlA
                            @Override // java.lang.Runnable
                            public final void run() {
                                MusicLayoutChildManager.AnonymousClass4.lambda$onUsbStatusChange$3(MusicLayoutChildManager.AnonymousClass4.this, mediaImageView);
                            }
                        });
                    }
                    MusicLayoutChildManager.this.mPlayMusic.setFolder("<unknown>");
                    MusicLayoutChildManager.this.mPlayMusic.setTitle("<unknown>");
                    MusicLayoutChildManager.this.mPlayMusic.setArtist("<unknown>");
                    MusicLayoutChildManager.this.mPlayMusic.setAlbum("<unknown>");
                    MusicLayoutChildManager.this.mPlayMusic.setGenre("<unknown>");
                    MusicLayoutChildManager.this.mPlayMusic.setFileName("<unknown>");
                    MusicLayoutChildManager.this.mPlayMusic.setDuration(1L);
                    MusicLayoutChildManager.this.mPlayMusic.setCurrentTime(0);
                    MusicLayoutChildManager.this.mPlayMusic.setSize(0L);
                    MusicLayoutChildManager.this.mPlayMusic.setId(0L);
                    MusicLayoutChildManager.this.mPlayMusic.setData("<unknown>");
                    MusicLayoutChildManager.this.mHandler.post(new Runnable() { // from class: com.yftech.car.widget.media.music.layout.-$$Lambda$MusicLayoutChildManager$4$ALiX1UV8pOwy_XjCCEN6IMBEQz8
                        @Override // java.lang.Runnable
                        public final void run() {
                            MusicLayoutChildManager.AnonymousClass4.lambda$onUsbStatusChange$4(MusicLayoutChildManager.AnonymousClass4.this);
                        }
                    });
                }
            }
        }

        public static /* synthetic */ void lambda$onUsbStatusChange$2(AnonymousClass4 anonymousClass4, MediaDataList mediaDataList, int i) {
            mediaDataList.clearList();
            if (i != -1 && mediaDataList.isMediaUsbDisconnectAutoSwitchIndex()) {
                MusicLayoutChildManager.this.updateUsbStatusChange(i, mediaDataList);
            }
            for (MediaImageLoading mediaImageLoading : MusicLayoutChildManager.this.mMediaImageLoadingList) {
                if (mediaImageLoading.getMediaDataListId() == -1 || mediaImageLoading.getMediaDataListId() == mediaDataList.getId()) {
                    mediaImageLoading.setLoadingStatus(false);
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ void lambda$onUsbStatusChange$3(AnonymousClass4 anonymousClass4, MediaImageView mediaImageView) {
            View findViewById;
            for (ReflectedImage reflectedImage : MusicLayoutChildManager.this.mReflectedImageList) {
                if (reflectedImage.getReflectedViewId() != -1 && (findViewById = MusicLayoutChildManager.this.mLayout.findViewById(reflectedImage.getReflectedViewId())) != null) {
                    reflectedImage.setReflectedImage(findViewById);
                    return;
                } else if (reflectedImage.isReflectedViewId(mediaImageView.getId())) {
                    reflectedImage.setReflectedImage(mediaImageView);
                }
            }
        }

        public static /* synthetic */ void lambda$onUsbStatusChange$4(AnonymousClass4 anonymousClass4) {
            for (MediaFileTextView mediaFileTextView : MusicLayoutChildManager.this.mTextViewList) {
                if (mediaFileTextView.isMediaFileInfo()) {
                    mediaFileTextView.updateMediaFile(MusicLayoutChildManager.this.mPlayMusic);
                }
            }
            for (MediaPlayTime mediaPlayTime : MusicLayoutChildManager.this.mPlayTimeList) {
                mediaPlayTime.updateDuration(10L);
                mediaPlayTime.updateProgress(0L);
            }
            for (MediaSeekBar mediaSeekBar : MusicLayoutChildManager.this.mMusicSeekBarList) {
                mediaSeekBar.setMax(10);
                mediaSeekBar.setProgress(0);
            }
            for (ProgressBar progressBar : MusicLayoutChildManager.this.mProgressBarList) {
                progressBar.setMax(10);
                progressBar.setProgress(0);
            }
        }
    }

    private MediaDataManager.OnDataChangeCallback getOnDataChangeCallback() {
        return new AnonymousClass4();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateUsbStatusChange(final int i, final MediaDataList mediaDataList) {
        mediaDataList.setUsbIndex(i);
        int mediaDefaultList = mediaDataList.getMediaDefaultList();
        if (mediaDefaultList != 100) {
            switch (mediaDefaultList) {
                case 1:
                    mediaDataList.updateFolderList(MediaDataManager.getInstance().getFolderMusic(i), true);
                    return;
                case 2:
                    mediaDataList.updateFileList(MediaDataManager.getInstance().getFileMusic(i), true);
                    return;
                case 3:
                    mediaDataList.updateFolderList(MediaDataManager.getInstance().getArtistsMusic(i), true);
                    return;
                case 4:
                    mediaDataList.updateFolderList(MediaDataManager.getInstance().getAlbumsMusic(i), true);
                    return;
                case 5:
                    mediaDataList.updateFolderList(MediaDataManager.getInstance().getGenreMusic(i), true);
                    return;
                case 6:
                    mediaDataList.postOnAnimation(new Runnable() { // from class: com.yftech.car.widget.media.music.layout.-$$Lambda$MusicLayoutChildManager$eg1qYJ0vfpHnIyxT1EqnqLlczGQ
                        @Override // java.lang.Runnable
                        public final void run() {
                            MediaDataList.this.updateDirectoryList(MediaDataManager.getInstance().getMusicDirectory(i));
                        }
                    });
                    Loger.d(TAG, "initView: mediaDataList.getMediaDefaultList()== MediaDataList.DIRECTORY");
                    return;
                default:
                    Log.e(TAG, "initView: no MediaDefaultList == " + mediaDataList.getMediaDefaultList());
                    return;
            }
        }
        mediaDataList.updateFileList(MusicManager.getInstance().getCurrentPlayList(), true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yftech.car.widget.media.music.layout.MusicLayoutChildManager$6, reason: invalid class name */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public class AnonymousClass6 implements MediaSearchEditText.OnSearchTextListener {
        AnonymousClass6() {
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
            MusicLayoutChildManager.this.hideInput();
            for (MediaDataList mediaDataList : MusicLayoutChildManager.this.mMediaDataList) {
                if (mediaSearchEditText.getSearchDataListId() == -1 || mediaSearchEditText.getSearchDataListId() == mediaDataList.getId()) {
                    mediaDataList.setMediaDefaultList(101);
                    mediaDataList.setVisibility(0);
                    mediaDataList.setSearchLoading();
                }
            }
            for (SearchHistoryList searchHistoryList : MusicLayoutChildManager.this.mSearchHistoryList) {
                if (searchHistoryList.getSearchEditTextId() == -1 || searchHistoryList.getSearchEditTextId() == mediaSearchEditText.getId()) {
                    searchHistoryList.setVisibility(8);
                    searchHistoryList.addSearchData(obj);
                }
                for (SearchEditButton searchEditButton : MusicLayoutChildManager.this.mSearchEditButtonList) {
                    if (searchEditButton.isSearchType(3) && (searchEditButton.getMediaSearchHistoryListId() == -1 || searchEditButton.getMediaSearchHistoryListId() == searchHistoryList.getId())) {
                        searchEditButton.setVisibility(8);
                    }
                }
            }
            if (MusicLayoutChildManager.this.mMediaFindSearch != null) {
                MusicLayoutChildManager.this.mMediaFindSearch.setValid(false);
            }
            MusicLayoutChildManager.this.mMediaFindSearch = new MediaFindSearch();
            for (SearchEditButton searchEditButton2 : MusicLayoutChildManager.this.mSearchEditButtonList) {
                if (searchEditButton2.getSearchVisibilityShow() > 0) {
                    searchEditButton2.setVisibility(searchEditButton2.isSearchVisibilityShow(1) ? 0 : 8);
                }
            }
            MusicLayoutChildManager.this.mLayout.postOnAnimation(new Runnable() { // from class: com.yftech.car.widget.media.music.layout.-$$Lambda$MusicLayoutChildManager$6$lWfnLO1X-hD93Lwm8CN9BDoi9TM
                @Override // java.lang.Runnable
                public final void run() {
                    mediaSearchEditText.setStartSearchView(MusicLayoutChildManager.this.mLayout);
                }
            });
            mediaSearchEditText.setStartSearchText(obj);
            MusicLayoutChildManager.this.mMediaFindSearch.startSearch(obj, mediaSearchEditText, MusicLayoutChildManager.this.mMediaDataList, new Runnable() { // from class: com.yftech.car.widget.media.music.layout.-$$Lambda$MusicLayoutChildManager$6$lXZCMkJQunINiLMXlmudWv7dGTs
                @Override // java.lang.Runnable
                public final void run() {
                    MusicLayoutChildManager.AnonymousClass6.lambda$onSearchText$1(MusicLayoutChildManager.AnonymousClass6.this);
                }
            });
            return true;
        }

        public static /* synthetic */ void lambda$onSearchText$1(AnonymousClass6 anonymousClass6) {
            for (SearchEditButton searchEditButton : MusicLayoutChildManager.this.mSearchEditButtonList) {
                if (searchEditButton.getSearchVisibilityShow() > 0) {
                    searchEditButton.setVisibility(searchEditButton.isSearchVisibilityShow(2) ? 0 : 8);
                }
            }
        }

        @Override // com.yftech.car.widget.media.text.MediaSearchEditText.OnSearchTextListener
        public void onCancelSearch() {
            if (MusicLayoutChildManager.this.mMediaFindSearch != null) {
                MusicLayoutChildManager.this.mMediaFindSearch.setValid(false);
            }
        }

        @Override // com.yftech.car.widget.media.text.MediaSearchEditText.OnSearchTextListener
        public void onSearchEmptyBackList(MediaDataList mediaDataList) {
            MusicLayoutChildManager.this.hideInput();
            int usbIndex = mediaDataList.getUsbIndex();
            int mediaDefaultList = mediaDataList.getMediaDefaultList();
            if (mediaDefaultList == 101) {
                mediaDefaultList = mediaDataList.getMediaSearchBackList();
                mediaDataList.setMediaDefaultList(mediaDefaultList);
            }
            Log.d(MusicLayoutChildManager.TAG, "onSearchEmptyBackList: mediaDefaultList==" + mediaDefaultList);
            if (mediaDefaultList != 100) {
                switch (mediaDefaultList) {
                    case 0:
                        mediaDataList.updateFileList(MusicManager.getInstance().getCollectMusic(usbIndex), true);
                        break;
                    case 1:
                        mediaDataList.updateFolderList(MediaDataManager.getInstance().getFolderMusic(usbIndex), true);
                        break;
                    case 2:
                        mediaDataList.updateFileList(MediaDataManager.getInstance().getFileMusic(usbIndex), true);
                        break;
                    case 3:
                        mediaDataList.updateFolderList(MediaDataManager.getInstance().getArtistsMusic(usbIndex), true);
                        break;
                    case 4:
                        mediaDataList.updateFolderList(MediaDataManager.getInstance().getAlbumsMusic(usbIndex), true);
                        break;
                    case 5:
                        mediaDataList.updateFolderList(MediaDataManager.getInstance().getGenreMusic(usbIndex), true);
                        break;
                    case 6:
                        mediaDataList.updateDirectoryList();
                        break;
                    default:
                        Log.e(MusicLayoutChildManager.TAG, "initView: no MediaDefaultList == " + mediaDefaultList);
                        break;
                }
            } else {
                mediaDataList.updateFileList(MusicManager.getInstance().getCurrentPlayList(), true);
            }
            mediaDataList.setVisibility(0);
            Iterator it = MusicLayoutChildManager.this.mSearchHistoryList.iterator();
            while (it.hasNext()) {
                ((SearchHistoryList) it.next()).setVisibility(8);
            }
        }
    }

    public void updateTouchEvent(boolean z) {
        if (z) {
            hideInput();
        }
    }

    public void hideInput() {
        if (this.mLayout != null) {
            this.mInputMethodManager.hideSoftInputFromWindow(this.mLayout.getWindowToken(), 0);
            Iterator<MediaSearchEditText> it = this.mMediaSearchEditTextList.iterator();
            while (it.hasNext()) {
                it.next().setCursorVisible(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yftech.car.widget.media.music.layout.MusicLayoutChildManager$7, reason: invalid class name */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public class AnonymousClass7 extends MusicManager.CarMusicControlCallback {
        AnonymousClass7() {
        }

        @Override // com.yftech.car.widget.media.manager.MusicManager.CarMusicControlCallback, com.yftech.car.widget.media.manager.MusicManager.OnMusicControlListener
        public void onChangePlayMusic(final MediaFile mediaFile) {
            MusicLayoutChildManager.this.mPlayMusic = mediaFile;
            if (Looper.myLooper() == Looper.getMainLooper()) {
                for (MusicButton musicButton : MusicLayoutChildManager.this.mButtonList) {
                    if (musicButton.isFunction(6)) {
                        musicButton.setActivatedStatus(MusicManager.getInstance().isCollectMusic(mediaFile));
                    }
                }
                for (MediaFileTextView mediaFileTextView : MusicLayoutChildManager.this.mTextViewList) {
                    if (mediaFileTextView.isMediaFileInfo()) {
                        mediaFileTextView.updateMediaFile(mediaFile);
                    }
                }
                if (MusicLayoutChildManager.this.mImageViewList.size() > 0) {
                    if (MusicLayoutChildManager.this.mMusicImageRunnable != null) {
                        MusicLayoutChildManager.this.mMusicImageRunnable.isStatus = false;
                    }
                    MusicLayoutChildManager.this.mMusicImageRunnable = new MusicImageRunnable(mediaFile.getData(), MusicLayoutChildManager.this.mLayout);
                    TaskManager.getInstance().threadRunnable(MusicLayoutChildManager.this.mMusicImageRunnable);
                }
                for (MediaDataList mediaDataList : MusicLayoutChildManager.this.mMediaDataList) {
                    mediaDataList.notifyDataSetChanged();
                    mediaDataList.updateListPosition();
                }
                return;
            }
            MusicLayoutChildManager.this.mLayout.postOnAnimation(new Runnable() { // from class: com.yftech.car.widget.media.music.layout.-$$Lambda$MusicLayoutChildManager$7$NRlgWPL4x0vYDxBfnjzO8KTDNCc
                @Override // java.lang.Runnable
                public final void run() {
                    MusicLayoutChildManager.AnonymousClass7.this.onChangePlayMusic(mediaFile);
                }
            });
        }

        @Override // com.yftech.car.widget.media.manager.MusicManager.CarMusicControlCallback, com.yftech.car.widget.media.manager.MusicManager.OnMusicControlListener
        public void onPlayListChange(final int i) {
            Runnable runnable = new Runnable() { // from class: com.yftech.car.widget.media.music.layout.-$$Lambda$MusicLayoutChildManager$7$WdaOZjP6tvgAamTFSDC2sQgmkbM
                @Override // java.lang.Runnable
                public final void run() {
                    MusicLayoutChildManager.AnonymousClass7.lambda$onPlayListChange$1(MusicLayoutChildManager.AnonymousClass7.this, i);
                }
            };
            if (Looper.myLooper() != Looper.getMainLooper()) {
                MusicLayoutChildManager.this.mLayout.postOnAnimation(runnable);
            } else {
                runnable.run();
            }
            MusicLayoutChildManager.this.updatePlayList();
        }

        public static /* synthetic */ void lambda$onPlayListChange$1(AnonymousClass7 anonymousClass7, int i) {
            for (MusicButton musicButton : MusicLayoutChildManager.this.mButtonList) {
                if (musicButton.isUsbFunction()) {
                    musicButton.setUsbStatus(i);
                }
            }
            Log.d(MusicLayoutChildManager.TAG, "onPlayListChange: index==" + i);
            for (MediaFileTextView mediaFileTextView : MusicLayoutChildManager.this.mTextViewList) {
                if (mediaFileTextView.isMediaFileInfo()) {
                    mediaFileTextView.updateMediaFile(MusicManager.getInstance().getPlayMusic());
                }
            }
        }

        @Override // com.yftech.car.widget.media.manager.MusicManager.CarMusicControlCallback, com.yftech.car.widget.media.manager.MusicManager.OnMusicControlListener
        public void onChangePlaying(final boolean z) {
            Log.d(MusicLayoutChildManager.TAG, "onChangePlaying: mButtonList==" + MusicLayoutChildManager.this.mButtonList.size() + ",isPlaying==" + z);
            if (Looper.myLooper() == Looper.getMainLooper()) {
                for (MusicButton musicButton : MusicLayoutChildManager.this.mButtonList) {
                    if (musicButton.isFunction(4)) {
                        musicButton.setActivatedStatus(z);
                    }
                }
                Iterator it = MusicLayoutChildManager.this.mMediaDataList.iterator();
                while (it.hasNext()) {
                    ((MediaDataList) it.next()).notifyDataSetChanged();
                }
                return;
            }
            MusicLayoutChildManager.this.mLayout.postOnAnimation(new Runnable() { // from class: com.yftech.car.widget.media.music.layout.-$$Lambda$MusicLayoutChildManager$7$KPXuAApzQ0PhXdTS-3CQg5wC_qQ
                @Override // java.lang.Runnable
                public final void run() {
                    MusicLayoutChildManager.AnonymousClass7.this.onChangePlaying(z);
                }
            });
        }

        @Override // com.yftech.car.widget.media.manager.MusicManager.CarMusicControlCallback, com.yftech.car.widget.media.manager.MusicManager.OnMusicControlListener
        public void onCollectChange(int i) {
            Runnable runnable = new Runnable() { // from class: com.yftech.car.widget.media.music.layout.-$$Lambda$MusicLayoutChildManager$7$t-oirIBzVB6HzvUkLv75A-hQuHU
                @Override // java.lang.Runnable
                public final void run() {
                    MusicLayoutChildManager.AnonymousClass7.lambda$onCollectChange$3(MusicLayoutChildManager.AnonymousClass7.this);
                }
            };
            if (Looper.myLooper() != Looper.getMainLooper()) {
                MusicLayoutChildManager.this.mLayout.postOnAnimation(runnable);
            } else {
                runnable.run();
            }
            MusicLayoutChildManager.this.updateCollectList(i);
        }

        public static /* synthetic */ void lambda$onCollectChange$3(AnonymousClass7 anonymousClass7) {
            for (MusicButton musicButton : MusicLayoutChildManager.this.mButtonList) {
                if (musicButton.isFunction(6)) {
                    musicButton.setActivatedStatus(MusicManager.getInstance().isCollectMusic(MusicManager.getInstance().getPlayMusic()));
                }
            }
        }

        @Override // com.yftech.car.widget.media.manager.MusicManager.CarMusicControlCallback, com.yftech.car.widget.media.manager.MusicManager.OnMusicControlListener
        public void onChangePlayMode(final int i) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                for (MusicButton musicButton : MusicLayoutChildManager.this.mButtonList) {
                    if (musicButton.isFunction(5)) {
                        musicButton.updatePlayMode(i);
                    }
                }
                return;
            }
            MusicLayoutChildManager.this.mLayout.postOnAnimation(new Runnable() { // from class: com.yftech.car.widget.media.music.layout.-$$Lambda$MusicLayoutChildManager$7$1vzwu1oaG5CXKtLsTaHGKhgAsX0
                @Override // java.lang.Runnable
                public final void run() {
                    MusicLayoutChildManager.AnonymousClass7.this.onChangePlayMode(i);
                }
            });
        }

        @Override // com.yftech.car.widget.media.manager.MusicManager.CarMusicControlCallback, com.yftech.car.widget.media.manager.MusicManager.OnMusicControlListener
        public void onChangeProgress(final int i) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                if (!MusicLayoutChildManager.this.isTouchSeekBar && Math.abs(System.currentTimeMillis() - MusicLayoutChildManager.this.mSeekBarTime) > 200) {
                    Iterator it = MusicLayoutChildManager.this.mPlayTimeList.iterator();
                    while (it.hasNext()) {
                        ((MediaPlayTime) it.next()).updateProgress(i);
                    }
                    Iterator it2 = MusicLayoutChildManager.this.mMusicSeekBarList.iterator();
                    while (it2.hasNext()) {
                        ((MediaSeekBar) it2.next()).setProgress(i);
                    }
                    Iterator it3 = MusicLayoutChildManager.this.mProgressBarList.iterator();
                    while (it3.hasNext()) {
                        ((ProgressBar) it3.next()).setProgress(i);
                    }
                }
                for (MusicButton musicButton : MusicLayoutChildManager.this.mButtonList) {
                    if (musicButton.isFunction(4)) {
                        if (musicButton.isActivatedStatus() || !MusicManager.getInstance().isPlaying()) {
                            return;
                        }
                        Log.e(MusicLayoutChildManager.TAG, "onChangeProgress: play status error");
                        onChangePlaying(true);
                        return;
                    }
                }
                return;
            }
            MusicLayoutChildManager.this.mLayout.postOnAnimation(new Runnable() { // from class: com.yftech.car.widget.media.music.layout.-$$Lambda$MusicLayoutChildManager$7$4ZWzlCRvu5UBtCOZwuw62KFKnUU
                @Override // java.lang.Runnable
                public final void run() {
                    MusicLayoutChildManager.AnonymousClass7.this.onChangeProgress(i);
                }
            });
        }

        @Override // com.yftech.car.widget.media.manager.MusicManager.CarMusicControlCallback, com.yftech.car.widget.media.manager.MusicManager.OnMusicControlListener
        public void onPrepared(final int i) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                Iterator it = MusicLayoutChildManager.this.mPlayTimeList.iterator();
                while (it.hasNext()) {
                    ((MediaPlayTime) it.next()).updateDuration(i);
                }
                Iterator it2 = MusicLayoutChildManager.this.mMusicSeekBarList.iterator();
                while (it2.hasNext()) {
                    ((MediaSeekBar) it2.next()).setMax(i);
                }
                Iterator it3 = MusicLayoutChildManager.this.mProgressBarList.iterator();
                while (it3.hasNext()) {
                    ((ProgressBar) it3.next()).setMax(i);
                }
                return;
            }
            MusicLayoutChildManager.this.mLayout.postOnAnimation(new Runnable() { // from class: com.yftech.car.widget.media.music.layout.-$$Lambda$MusicLayoutChildManager$7$MWcVsNM1NHb4oIdwc4aqfQaDaIQ
                @Override // java.lang.Runnable
                public final void run() {
                    MusicLayoutChildManager.AnonymousClass7.this.onPrepared(i);
                }
            });
        }
    }

    private MusicManager.CarMusicControlCallback getCarRadioControlCallback() {
        return new AnonymousClass7();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCollectList(int i) {
        for (MediaDataList mediaDataList : this.mMediaDataList) {
            int usbIndex = mediaDataList.getUsbIndex();
            if (mediaDataList.getMediaDefaultList() == 0 && usbIndex == i) {
                mediaDataList.updateFileList(MusicManager.getInstance().getCollectMusic(usbIndex), true, false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePlayList() {
        this.mHandler.removeMessages(0);
        for (MediaDataList mediaDataList : this.mMediaDataList) {
            if (mediaDataList.getMediaDefaultList() == 100) {
                mediaDataList.updateFileList(MusicManager.getInstance().getCurrentPlayList(), true);
            }
        }
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
                float width2 = this.mLayout.getWidth() / 2.0f;
                float height = this.mLayout.getHeight() / 2.0f;
                if (width < width2 && Math.abs(y - height) < Math.abs(width - width2)) {
                    AnimationUtil.showTranslateAnimation(view, i2, 0.0f, -(view.getWidth() + view.getX()), 0.0f, 0.0f);
                    break;
                } else if (y < height && Math.abs(width2 - width) < Math.abs(y - height)) {
                    AnimationUtil.showTranslateAnimation(view, i2, 0.0f, 0.0f, 0.0f, -(view.getHeight() + view.getY()));
                    break;
                } else if (width2 < width && Math.abs(width - width2) > Math.abs(y - height)) {
                    AnimationUtil.showTranslateAnimation(view, i2, 0.0f, view.getWidth() + (this.mLayout.getWidth() - (view.getX() + view.getWidth())), 0.0f, 0.0f);
                    break;
                } else {
                    AnimationUtil.showTranslateAnimation(view, i2, 0.0f, 0.0f, 0.0f, view.getHeight() + (this.mLayout.getHeight() - (view.getY() + view.getHeight())));
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
                float width2 = this.mLayout.getWidth() / 2.0f;
                float height = this.mLayout.getHeight() / 2.0f;
                if (width < width2 && Math.abs(y - height) < Math.abs(width - width2)) {
                    AnimationUtil.showTranslateAnimation(view, i2, -(view.getWidth() + view.getX()), 0.0f, 0.0f, 0.0f);
                    return;
                }
                if (y < height && Math.abs(width2 - width) < Math.abs(y - height)) {
                    AnimationUtil.showTranslateAnimation(view, i2, 0.0f, 0.0f, -(view.getHeight() + view.getY()), 0.0f);
                    return;
                }
                if (width2 < width && Math.abs(width - width2) > Math.abs(y - height)) {
                    AnimationUtil.showTranslateAnimation(view, i2, view.getWidth() + (this.mLayout.getWidth() - (view.getX() + view.getWidth())), 0.0f, 0.0f, 0.0f);
                    return;
                } else {
                    AnimationUtil.showTranslateAnimation(view, i2, 0.0f, 0.0f, view.getHeight() + (this.mLayout.getHeight() - (view.getY() + view.getHeight())), 0.0f);
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
        Log.d(TAG, "onWindowFocusChanged: hasWindowFocus==" + z);
        if (!z) {
            hideInput();
        } else {
            onResume();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.yftech.car.widget.media.music.button.MusicButton.OnClickFunctionListener
    public void onClickFunction(int i, int i2) {
        Log.d(TAG, "onClickFunction: mediaListId==" + i + ",function==" + i2);
        for (MediaDataList mediaDataList : this.mMediaDataList) {
            if (i == -1 || i == mediaDataList.getId()) {
                int usbIndex = mediaDataList.getUsbIndex();
                if (i2 != 9) {
                    if (i2 != 1100) {
                        switch (i2) {
                            case 1000:
                                mediaDataList.setMediaDefaultList(i2 + NotificationManagerCompat.IMPORTANCE_UNSPECIFIED);
                                mediaDataList.updateFileList(MusicManager.getInstance().getCollectMusic(usbIndex), true);
                                break;
                            case 1001:
                                mediaDataList.setMediaDefaultList(i2 + NotificationManagerCompat.IMPORTANCE_UNSPECIFIED);
                                mediaDataList.updateFolderList(MediaDataManager.getInstance().getFolderMusic(usbIndex), true);
                                break;
                            case 1002:
                                mediaDataList.setMediaDefaultList(i2 + NotificationManagerCompat.IMPORTANCE_UNSPECIFIED);
                                mediaDataList.updateFileList(MediaDataManager.getInstance().getFileMusic(usbIndex), true);
                                break;
                            case 1003:
                                mediaDataList.setMediaDefaultList(i2 + NotificationManagerCompat.IMPORTANCE_UNSPECIFIED);
                                mediaDataList.updateFolderList(MediaDataManager.getInstance().getArtistsMusic(usbIndex), true);
                                break;
                            case 1004:
                                mediaDataList.setMediaDefaultList(i2 + NotificationManagerCompat.IMPORTANCE_UNSPECIFIED);
                                mediaDataList.updateFolderList(MediaDataManager.getInstance().getAlbumsMusic(usbIndex), true);
                                break;
                            case 1005:
                                mediaDataList.setMediaDefaultList(i2 + NotificationManagerCompat.IMPORTANCE_UNSPECIFIED);
                                mediaDataList.updateFolderList(MediaDataManager.getInstance().getGenreMusic(usbIndex), true);
                                break;
                            case 1006:
                                mediaDataList.setMediaDefaultList(i2 + NotificationManagerCompat.IMPORTANCE_UNSPECIFIED);
                                if (mediaDataList.isMediaListClickMemoryDirectory()) {
                                    mediaDataList.updateDirectoryList();
                                    break;
                                } else {
                                    mediaDataList.updateDirectoryList(MediaDataManager.getInstance().getMusicDirectory(usbIndex));
                                    break;
                                }
                            default:
                                int i3 = i2 - 100;
                                if (i3 >= 0 && i3 <= 4) {
                                    int mediaDefaultList = mediaDataList.getMediaDefaultList();
                                    mediaDataList.setUsbIndex(i3);
                                    if (mediaDefaultList != 100) {
                                        switch (mediaDefaultList) {
                                            case 0:
                                                mediaDataList.updateFileList(MusicManager.getInstance().getCollectMusic(i3), true);
                                                break;
                                            case 1:
                                                mediaDataList.updateFolderList(MediaDataManager.getInstance().getFolderMusic(i3), true);
                                                break;
                                            case 2:
                                                mediaDataList.updateFileList(MediaDataManager.getInstance().getFileMusic(i3), true);
                                                break;
                                            case 3:
                                                mediaDataList.updateFolderList(MediaDataManager.getInstance().getArtistsMusic(i3), true);
                                                break;
                                            case 4:
                                                mediaDataList.updateFolderList(MediaDataManager.getInstance().getAlbumsMusic(i3), true);
                                                break;
                                            case 5:
                                                mediaDataList.updateFolderList(MediaDataManager.getInstance().getGenreMusic(i3), true);
                                                break;
                                            case 6:
                                                mediaDataList.updateDirectoryList(MediaDataManager.getInstance().getMusicDirectory(i3));
                                                Loger.d(TAG, "initView: mediaDataList.getMediaDefaultList()==" + mediaDefaultList);
                                                break;
                                        }
                                    } else {
                                        mediaDataList.updateFileList(MusicManager.getInstance().getCurrentPlayList(), true);
                                        break;
                                    }
                                }
                                break;
                        }
                    } else {
                        mediaDataList.setMediaDefaultList(i2 + NotificationManagerCompat.IMPORTANCE_UNSPECIFIED);
                        mediaDataList.updateFileList(MusicManager.getInstance().getCurrentPlayList(), true);
                    }
                } else if (mediaDataList.getMediaDefaultList() == 6) {
                    MusicManager.getInstance().start(null, mediaDataList.getDirectoryFolderPath(), 6);
                    for (MusicButton musicButton : this.mButtonList) {
                        if (musicButton.isFunction(9)) {
                            musicButton.setActivatedStatus(true);
                        }
                    }
                }
                int mediaDefaultList2 = mediaDataList.getMediaDefaultList();
                for (MusicButton musicButton2 : this.mButtonList) {
                    musicButton2.setSelected(musicButton2.isFunction(1000 + mediaDefaultList2));
                }
                if (i2 >= 1000) {
                    mediaDataList.setVisibility(0);
                    Iterator<SearchHistoryList> it = this.mSearchHistoryList.iterator();
                    while (it.hasNext()) {
                        it.next().setVisibility(8);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yftech.car.widget.media.music.layout.MusicLayoutChildManager$8, reason: invalid class name */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public class AnonymousClass8 implements VisibilityTextButton.OnClickVisibilityListener {
        AnonymousClass8() {
        }

        @Override // com.yftech.car.widget.media.text.VisibilityTextButton.OnClickVisibilityListener
        public void onClickVisibility(int[] iArr, int i, int i2, int i3) {
            if (MusicLayoutChildManager.this.mLayout != null) {
                if (MusicLayoutChildManager.this.isAnimationLoading) {
                    Log.e(MusicLayoutChildManager.TAG, "onClickVisibility: Double Click isAnimationLoading is true");
                    return;
                }
                int i4 = i2;
                boolean z = -1;
                for (int i5 : iArr) {
                    if (i5 != -1) {
                        final View findViewById = MusicLayoutChildManager.this.mLayout.findViewById(i5);
                        if (findViewById.getVisibility() != 0) {
                            if ((i & 1) > 0) {
                                if (i4 == -1) {
                                    i4 = 0;
                                }
                                MusicLayoutChildManager.this.isAnimationLoading = true;
                                MusicLayoutChildManager.this.visibilityVisible(findViewById, i4, i3);
                                z = true;
                            }
                        } else if (findViewById.getVisibility() != 8 && (i & 2) > 0) {
                            MusicLayoutChildManager.this.isAnimationLoading = true;
                            if (i4 == -1) {
                                i4 = 0;
                            }
                            MusicLayoutChildManager.this.visibilityGone(findViewById, i4, i3);
                            z = false;
                        }
                        if (MusicLayoutChildManager.this.isAnimationLoading) {
                            if (i4 == 1 || i4 == 2) {
                                MusicLayoutChildManager.this.mLayout.postOnAnimationDelayed(new Runnable() { // from class: com.yftech.car.widget.media.music.layout.-$$Lambda$MusicLayoutChildManager$8$9W19yz6uzvawTDy5nzYgQJ8QpJA
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        MusicLayoutChildManager.AnonymousClass8.lambda$onClickVisibility$1(MusicLayoutChildManager.AnonymousClass8.this, findViewById);
                                    }
                                }, i3);
                            } else {
                                MusicLayoutChildManager.this.isAnimationLoading = false;
                            }
                        }
                    }
                }
                Iterator it = MusicLayoutChildManager.this.mVisibilityTextButtonList.iterator();
                while (it.hasNext()) {
                    ((VisibilityTextButton) it.next()).setVisibilityShow(z);
                }
            }
        }

        public static /* synthetic */ void lambda$onClickVisibility$1(final AnonymousClass8 anonymousClass8, View view) {
            view.clearAnimation();
            MusicLayoutChildManager.this.mLayout.postOnAnimationDelayed(new Runnable() { // from class: com.yftech.car.widget.media.music.layout.-$$Lambda$MusicLayoutChildManager$8$EP_IYDKX3BTU3ZJn7uhdW-HN8m0
                @Override // java.lang.Runnable
                public final void run() {
                    MusicLayoutChildManager.this.isAnimationLoading = false;
                }
            }, 100L);
        }

        @Override // com.yftech.car.widget.media.text.VisibilityTextButton.OnClickVisibilityListener
        public void onClickVisibilityVisible(int[] iArr, int i, int i2) {
            if (MusicLayoutChildManager.this.mLayout != null) {
                int i3 = i;
                for (int i4 : iArr) {
                    if (i4 != -1) {
                        final View findViewById = MusicLayoutChildManager.this.mLayout.findViewById(i4);
                        if (findViewById.getVisibility() != 0) {
                            if (i3 == -1) {
                                i3 = 0;
                            }
                            MusicLayoutChildManager.this.visibilityVisible(findViewById, i3, i2);
                        }
                        if (i3 == 1 || i3 == 2) {
                            MusicLayoutChildManager.this.mLayout.postOnAnimationDelayed(new Runnable() { // from class: com.yftech.car.widget.media.music.layout.-$$Lambda$MusicLayoutChildManager$8$oGpqsPssSPv6GYBxu-4MjQtvxHk
                                @Override // java.lang.Runnable
                                public final void run() {
                                    findViewById.clearAnimation();
                                }
                            }, i2);
                        }
                    }
                }
            }
        }

        @Override // com.yftech.car.widget.media.text.VisibilityTextButton.OnClickVisibilityListener
        public void onClickVisibilityGone(int[] iArr, int i, int i2) {
            if (MusicLayoutChildManager.this.mLayout != null) {
                int i3 = i;
                for (int i4 : iArr) {
                    if (i4 != -1) {
                        final View findViewById = MusicLayoutChildManager.this.mLayout.findViewById(i4);
                        if (findViewById.getVisibility() != 8) {
                            MusicLayoutChildManager.this.isAnimationLoading = true;
                            if (i3 == -1) {
                                i3 = 0;
                            }
                            MusicLayoutChildManager.this.visibilityGone(findViewById, i3, i2);
                            if (i3 == 1 || i3 == 2) {
                                MusicLayoutChildManager.this.mLayout.postOnAnimationDelayed(new Runnable() { // from class: com.yftech.car.widget.media.music.layout.-$$Lambda$MusicLayoutChildManager$8$QenxttOFoOeYXbZbr-LjaTtYsd0
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        findViewById.clearAnimation();
                                    }
                                }, i2);
                            }
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public class MusicImageRunnable implements Runnable {
        private boolean isStatus;
        private Bitmap mBitmap;
        private final View mLayout;
        private final String path;

        private MusicImageRunnable(String str, View view) {
            this.isStatus = true;
            this.path = str;
            this.mLayout = view;
            this.isStatus = true;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.mBitmap != null && !this.mBitmap.isRecycled()) {
                this.mBitmap.recycle();
                this.mBitmap = null;
            }
            this.mBitmap = MusicUtils.getEmbeddedPictureAlbum(this.path);
            int width = this.mLayout.getHeight() > this.mLayout.getWidth() ? this.mLayout.getWidth() : this.mLayout.getHeight();
            if (this.mBitmap != null && (this.mBitmap.getHeight() > width || this.mBitmap.getWidth() > width)) {
                this.mBitmap = MusicUtils.compress(width, width, this.mBitmap);
            }
            if (this.isStatus) {
                MusicLayoutChildManager.this.mHandler.post(new Runnable() { // from class: com.yftech.car.widget.media.music.layout.MusicLayoutChildManager.MusicImageRunnable.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (MusicImageRunnable.this.mBitmap != null) {
                            for (final MediaImageView mediaImageView : MusicLayoutChildManager.this.mImageViewList) {
                                mediaImageView.setAlbumPicturesExist(MusicImageRunnable.this.mLayout, true);
                                mediaImageView.setImageBitmap(MusicImageRunnable.this.mBitmap);
                                MusicLayoutChildManager.this.mHandler.post(new Runnable() { // from class: com.yftech.car.widget.media.music.layout.MusicLayoutChildManager.MusicImageRunnable.1.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        View findViewById;
                                        for (ReflectedImage reflectedImage : MusicLayoutChildManager.this.mReflectedImageList) {
                                            if (reflectedImage.getReflectedViewId() != -1 && (findViewById = MusicImageRunnable.this.mLayout.findViewById(reflectedImage.getReflectedViewId())) != null) {
                                                reflectedImage.setReflectedImage(findViewById);
                                                return;
                                            } else if (reflectedImage.isReflectedViewId(mediaImageView.getId())) {
                                                reflectedImage.setReflectedImage(mediaImageView);
                                            }
                                        }
                                    }
                                });
                            }
                            return;
                        }
                        for (final MediaImageView mediaImageView2 : MusicLayoutChildManager.this.mImageViewList) {
                            mediaImageView2.setAlbumPicturesExist(MusicImageRunnable.this.mLayout, false);
                            mediaImageView2.setImageDrawable(mediaImageView2.getImageDrawable());
                            MusicLayoutChildManager.this.mHandler.post(new Runnable() { // from class: com.yftech.car.widget.media.music.layout.MusicLayoutChildManager.MusicImageRunnable.1.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    View findViewById;
                                    for (ReflectedImage reflectedImage : MusicLayoutChildManager.this.mReflectedImageList) {
                                        if (reflectedImage.getReflectedViewId() != -1 && (findViewById = MusicImageRunnable.this.mLayout.findViewById(reflectedImage.getReflectedViewId())) != null) {
                                            reflectedImage.setReflectedImage(findViewById);
                                            return;
                                        } else if (reflectedImage.isReflectedViewId(mediaImageView2.getId())) {
                                            reflectedImage.setReflectedImage(mediaImageView2);
                                        }
                                    }
                                }
                            });
                        }
                    }
                });
            }
        }
    }
}
