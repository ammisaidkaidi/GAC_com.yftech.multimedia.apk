package com.yftech.libmusic.ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Path;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.media.common.ui.widget.CanvasView;
import com.media.common.util.AudioSettingUtil;
import com.media.common.util.LogUtil;
import com.wuyr.pathlayoutmanager.PathLayoutManager;
import com.yftech.car.media.data.entity.MediaFile;
import com.yftech.car.media.music.CarMusicManager;
import com.yftech.libmusic.MusicMainActivity;
import com.yftech.libmusic.R;
import com.yftech.libmusic.bean.LyricObject;
import com.yftech.libmusic.event.MusicLyricHideEvent;
import com.yftech.libmusic.event.MusicPlayStatusEvent;
import com.yftech.libmusic.presenter.MusicLyricPresenter;
import com.yftech.libmusic.ui.adapter.MusicLyricAdapter;
import com.yftech.libmusic.view.IMusicLyricFragmentView;
import com.yftech.libmusic.widget.LyricView;
import com.yftech.libmvpmodule.mvp.BaseMvpFragment;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /home/user/work/dex/classes4.dex */
public class MusicLyricFragment extends BaseMvpFragment<MusicLyricPresenter> implements View.OnClickListener, LyricView.OnProgressTouchMoveListener, IMusicLyricFragmentView {
    private static final String ARG_PARAM1 = "mediaFile";
    private static final String ARG_PARAM2 = "music_source";
    private CanvasView cv;
    private FrameLayout fl_lyric;
    private Fragment frontFragment;
    private LinearLayout ll_music_lyric;
    private RecyclerView lv;
    private MediaFile mediaFile;
    private MusicLyricAdapter musicLyricAdapter;
    private String music_source;
    private PathLayoutManager pathLayoutManager;
    private long time;
    private TextView tv_artist;
    private TextView tv_lyric_tips;
    private TextView tv_title;
    private float x;
    private float y;
    private final int itemPlaceHolder = 3;
    private final int RC_LYRIC_POSITION = 10;
    private final int RC_LYRIC_CLICK = 20;
    private boolean isItemClick = false;
    private boolean isScrolling = false;
    private List<LyricObject> result = new ArrayList();
    private int index = -1;
    private Handler mHandler = new Handler(Looper.getMainLooper()) { // from class: com.yftech.libmusic.ui.MusicLyricFragment.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 10) {
                int i = message.arg1;
                boolean z = message.arg2 == 1;
                ((Integer) message.obj).intValue();
                if (!MusicLyricFragment.this.isScrolling) {
                    int i2 = i + 3;
                    if (MusicLyricFragment.this.index != i2) {
                        MusicLyricFragment.this.index = i2;
                        if (z) {
                            try {
                                MusicLyricFragment.this.pathLayoutManager.smoothScrollToPosition(i2);
                            } catch (Exception e) {
                                LogUtil.e("error in smoothScrollToPosition");
                                e.printStackTrace();
                            }
                        } else {
                            MusicLyricFragment.this.pathLayoutManager.scrollToPosition(i2);
                        }
                    }
                } else {
                    MusicLyricFragment.this.index = -1;
                }
                if (MusicLyricFragment.this.musicLyricAdapter != null) {
                    MusicLyricFragment.this.musicLyricAdapter.setPlayIndex(i + 3);
                    return;
                }
                return;
            }
            if (message.what == 20) {
                int i3 = message.arg1;
                LyricObject lyricObject = (LyricObject) message.obj;
                LogUtil.d("RC_LYRIC_CLICK:isItemClick=" + MusicLyricFragment.this.isItemClick + ", isScrolling=" + MusicLyricFragment.this.isScrolling);
                if (MusicLyricFragment.this.isItemClick) {
                    if (MusicLyricFragment.this.isScrolling) {
                        if (MusicLyricFragment.this.musicLyricAdapter.getmPosition() == i3 || lyricObject == null || lyricObject.begintime <= 0) {
                            return;
                        }
                        LogUtil.d("RC_LYRIC_CLICK->:progress=" + lyricObject.begintime);
                        CarMusicManager.getInstance().setPlayProgress(lyricObject.begintime);
                        return;
                    }
                    if (MusicLyricFragment.this.musicLyricAdapter.getData().isEmpty() && (MusicLyricFragment.this.getActivity() instanceof MusicMainActivity)) {
                        MusicMainActivity activity = MusicLyricFragment.this.getActivity();
                        if (MusicLyricFragment.this.frontFragment != null) {
                            activity.switchContent(MusicLyricFragment.this.frontFragment);
                        }
                    }
                }
            }
        }
    };
    private View.OnTouchListener onTouchListener = new View.OnTouchListener() { // from class: com.yftech.libmusic.ui.MusicLyricFragment.5
        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            LogUtil.d("onTouchEvent:action=" + motionEvent.getAction());
            if (motionEvent.getAction() == 0) {
                MusicLyricFragment.this.isItemClick = false;
                MusicLyricFragment.this.x = motionEvent.getX();
                MusicLyricFragment.this.y = motionEvent.getY();
                MusicLyricFragment.this.time = System.currentTimeMillis();
            } else {
                if (motionEvent.getAction() == 2) {
                    MusicLyricFragment.this.isScrolling = MusicLyricFragment.this.isScrolling | (Math.abs(MusicLyricFragment.this.x - motionEvent.getX()) > 5.0f) | (Math.abs(MusicLyricFragment.this.y - motionEvent.getY()) > 5.0f);
                } else if (motionEvent.getAction() == 1) {
                    float abs = Math.abs(MusicLyricFragment.this.x - motionEvent.getX());
                    float abs2 = Math.abs(MusicLyricFragment.this.y - motionEvent.getY());
                    long currentTimeMillis = System.currentTimeMillis() - MusicLyricFragment.this.time;
                    LogUtil.d("onTouchEvent:xOffset=" + abs + ", yOffset=" + abs2 + ", timeOffset=" + currentTimeMillis);
                    MusicLyricFragment.this.isItemClick = currentTimeMillis < 300 && abs < 20.0f && abs2 < 20.0f;
                    if (MusicLyricFragment.this.isItemClick) {
                        AudioSettingUtil.playSystemClickSoundEffect((Context) Objects.requireNonNull(MusicLyricFragment.this.getContext()));
                    }
                    MusicLyricFragment.this.isScrolling |= currentTimeMillis > 300;
                    MusicLyricFragment.this.mHandler.removeCallbacks(MusicLyricFragment.this.setScrollStateRunnable);
                    MusicLyricFragment.this.mHandler.postDelayed(MusicLyricFragment.this.setScrollStateRunnable, 3000L);
                }
            }
            return false;
        }
    };
    private Runnable setScrollStateRunnable = new Runnable() { // from class: com.yftech.libmusic.ui.MusicLyricFragment.6
        @Override // java.lang.Runnable
        public void run() {
            MusicLyricFragment.this.isScrolling = false;
        }
    };

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    public MusicLyricPresenter createPresenter() {
        return new MusicLyricPresenter(getActivity());
    }

    public static MusicLyricFragment newInstance(MediaFile mediaFile, String str) {
        MusicLyricFragment musicLyricFragment = new MusicLyricFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable(ARG_PARAM1, mediaFile);
        bundle.putString(ARG_PARAM2, str);
        musicLyricFragment.setArguments(bundle);
        return musicLyricFragment;
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.mediaFile = getArguments().getParcelable(ARG_PARAM1);
            this.music_source = getArguments().getString(ARG_PARAM2);
        }
        EventBus.getDefault().register(this);
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    public void onRefreshData() {
        LogUtil.d("onRefreshData");
        setMusicProgress(CarMusicManager.getInstance().getCurrentPlayProgress(), false);
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    public void onDestroy() {
        super.onDestroy();
        this.mHandler.removeCallbacksAndMessages(null);
        EventBus.getDefault().unregister(this);
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    protected View onBindView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_music_lyric, viewGroup, false);
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    @SuppressLint({"ClickableViewAccessibility"})
    protected void initView(View view) {
        this.tv_title = (TextView) view.findViewById(R.id.tv_title);
        this.tv_artist = (TextView) view.findViewById(R.id.tv_artist);
        this.tv_lyric_tips = (TextView) view.findViewById(R.id.tv_lyric_tips);
        this.fl_lyric = (FrameLayout) view.findViewById(R.id.fl_lyric);
        this.ll_music_lyric = (LinearLayout) view.findViewById(R.id.ll_music_lyric);
        this.lv = view.findViewById(R.id.lv);
        this.lv.setOnTouchListener(this.onTouchListener);
        this.cv = view.findViewById(R.id.cv);
        this.musicLyricAdapter = new MusicLyricAdapter();
        this.musicLyricAdapter.setOnItemClickListener(new MusicLyricAdapter.OnItemClickListener() { // from class: com.yftech.libmusic.ui.MusicLyricFragment.2
            @Override // com.yftech.libmusic.ui.adapter.MusicLyricAdapter.OnItemClickListener
            public void onTextItemClick(int i, LyricObject lyricObject) {
                StringBuilder sb = new StringBuilder();
                sb.append("onTextItemClick:position=");
                sb.append(i);
                sb.append(", lyricObject=");
                sb.append(lyricObject == null ? "" : Integer.valueOf(lyricObject.begintime));
                LogUtil.d(sb.toString());
                Message obtainMessage = MusicLyricFragment.this.mHandler.obtainMessage(20);
                obtainMessage.obj = lyricObject;
                obtainMessage.arg1 = i;
                MusicLyricFragment.this.mHandler.sendMessageDelayed(obtainMessage, 400L);
            }
        });
        this.tv_title.setOnClickListener(this);
        this.tv_lyric_tips.setOnClickListener(this);
        this.ll_music_lyric.setOnClickListener(this);
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.yftech.libmusic.ui.MusicLyricFragment.3
            @Override // java.lang.Runnable
            public void run() {
                MusicLyricFragment.this.pathLayoutManager = MusicLyricFragment.this.getPathLayoutManager();
                MusicLyricFragment.this.lv.setLayoutManager(MusicLyricFragment.this.pathLayoutManager);
                MusicLyricFragment.this.lv.setAdapter(MusicLyricFragment.this.musicLyricAdapter);
                MusicLyricFragment.this.setData();
            }
        }, 500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setData() {
        LogUtil.d("setData");
        if (this.mediaFile != null) {
            this.tv_title.setText(this.mediaFile.getTitle());
            this.tv_artist.setText(this.mediaFile.getArtist());
            getPresenter().getLyricFromFile(this.mediaFile);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public PathLayoutManager getPathLayoutManager() {
        PathLayoutManager pathLayoutManager = new PathLayoutManager((Path) null, 50);
        pathLayoutManager.setScrollMode(0);
        pathLayoutManager.setAutoSelect(true);
        pathLayoutManager.setItemDirectionFixed(true);
        pathLayoutManager.setOrientation(1);
        final Path path = new Path();
        float measuredWidth = this.fl_lyric.getMeasuredWidth();
        float measuredHeight = this.fl_lyric.getMeasuredHeight();
        path.moveTo(measuredWidth / 2.0f, 30.0f);
        path.rLineTo(0.0f, measuredHeight);
        pathLayoutManager.setItemOffset((int) (measuredHeight / 4.0f));
        pathLayoutManager.updatePath(path);
        if (this.cv.getWidth() == 0 || this.cv.getHeight() == 0) {
            this.cv.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.yftech.libmusic.ui.MusicLyricFragment.4
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    MusicLyricFragment.this.cv.setPath(path);
                    MusicLyricFragment.this.cv.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                }
            });
        } else {
            this.cv.setPath(path);
        }
        return pathLayoutManager;
    }

    public void setMediaFile(MediaFile mediaFile) {
        LogUtil.d("setMediaFile:" + mediaFile.toString());
        if (isAdded()) {
            if (this.mediaFile == null || TextUtils.isEmpty(this.mediaFile.getData()) || !this.mediaFile.getData().equals(mediaFile.getData())) {
                this.mediaFile = mediaFile;
                setData();
            } else {
                if (this.mediaFile == null || TextUtils.isEmpty(this.mediaFile.getData()) || !this.mediaFile.getData().equals(mediaFile.getData())) {
                    return;
                }
                onRefreshData();
            }
        }
    }

    public MediaFile getMediaFile() {
        return this.mediaFile;
    }

    public void setFrontFragment(Fragment fragment) {
        this.frontFragment = fragment;
    }

    public Fragment getFrontFragment() {
        return this.frontFragment;
    }

    public void setMusicProgress(int i, boolean z) {
        if (isAdded()) {
            if ((isVisible() || !CarMusicManager.getInstance().isPlaying()) && !this.result.isEmpty()) {
                int size = this.result.size() / 2;
                int i2 = 0;
                int size2 = this.result.size() - 1;
                while (size != i2 && size != size2) {
                    if (this.result.get(size).begintime + this.result.get(size).timeline > i) {
                        size2 = size;
                    } else {
                        i2 = size;
                    }
                    size = (i2 + size2) / 2;
                }
                if (this.result.get(size).begintime > i || this.result.get(size).begintime + this.result.get(size).timeline <= i) {
                    i2 = size2;
                }
                Message obtainMessage = this.mHandler.obtainMessage(10);
                obtainMessage.arg1 = i2;
                obtainMessage.arg2 = z ? 1 : 0;
                obtainMessage.obj = Integer.valueOf(i);
                this.mHandler.sendMessageDelayed(obtainMessage, 200L);
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void musicPlayStatusChanged(MusicPlayStatusEvent musicPlayStatusEvent) {
        LogUtil.d("musicPlayStatusChanged:isPlaying=" + musicPlayStatusEvent.isPlaying);
        if (isAdded()) {
            this.musicLyricAdapter.setMusicPlaying(musicPlayStatusEvent.isPlaying);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void musicLyricDisplayChanged(MusicLyricHideEvent musicLyricHideEvent) {
        LogUtil.d("musicLyricDisplayChanged");
        if (isAdded() && isVisible()) {
            this.tv_title.callOnClick();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.tv_title || view.getId() == R.id.tv_lyric_tips || view.getId() == R.id.ll_music_lyric) {
            if (getActivity() instanceof MusicMainActivity) {
                MusicMainActivity activity = getActivity();
                activity.currentFragment = this;
                if (this.frontFragment != null) {
                    activity.switchContent(this.frontFragment);
                }
                activity.setSoundEffectVisible(true);
                return;
            }
            return;
        }
        if (view.getId() == R.id.lv && this.musicLyricAdapter.getData().isEmpty() && (getActivity() instanceof MusicMainActivity)) {
            MusicMainActivity activity2 = getActivity();
            if (this.frontFragment != null) {
                activity2.switchContent(this.frontFragment);
            }
        }
    }

    @Override // com.yftech.libmusic.widget.LyricView.OnProgressTouchMoveListener
    public void onProgressMove(int i) {
        LogUtil.d("onProgressMove:progress=" + i);
        AudioSettingUtil.playSystemClickSoundEffect((Context) Objects.requireNonNull(getContext()));
        CarMusicManager.getInstance().setPlayProgress(i);
    }

    @Override // com.yftech.libmusic.view.IMusicLyricFragmentView
    public void displayMusicLyricPath(List<LyricObject> list) {
        if (list == null || list.isEmpty()) {
            this.tv_lyric_tips.setVisibility(0);
            this.result = new ArrayList();
            this.musicLyricAdapter.setPlayIndex(-1, false);
            this.musicLyricAdapter.setNewData(list);
            return;
        }
        this.tv_lyric_tips.setVisibility(8);
        this.result = new ArrayList(list);
        list.get(list.size() - 1).timeline = (int) (this.mediaFile.getDuration() - r1.begintime);
        for (int i = 0; i < 3; i++) {
            list.add(0, new LyricObject());
        }
        for (int i2 = 0; i2 < 3; i2++) {
            list.add(new LyricObject());
        }
        int currentPlayProgress = CarMusicManager.getInstance().getCurrentPlayProgress();
        this.musicLyricAdapter.setNewData(list);
        setMusicProgress(currentPlayProgress, true);
    }
}
