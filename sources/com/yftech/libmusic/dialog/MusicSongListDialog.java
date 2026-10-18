package com.yftech.libmusic.dialog;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.media.common.util.FastScroller;
import com.media.common.util.LogUtil;
import com.yftech.car.media.data.entity.MediaFile;
import com.yftech.car.media.music.CarMusicManager;
import com.yftech.libmusic.bean.MediaFileItem;
import com.yftech.libmusic.dialog.adapter.MusicSongListAdapter;
import com.yftech.libmusic.event.MusicPlayStatusEvent;
import com.yftech.libmusic.event.MusicSourceChangedEvent;
import com.yftech.libmusic.event.MusicSwitchEvent;
import com.yftech.libmusic.presenter.MusicSongListPresenter;
import com.yftech.libmusic.view.IMusicSongListDialogView;
import com.yftech.libmvpmodule.mvp.BaseMvpDialogFragment;
import com.yftech.vehicle.internal.adapter.ICarDrive;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /home/user/work/dex/classes4.dex */
public class MusicSongListDialog extends BaseMvpDialogFragment<MusicSongListPresenter> implements IMusicSongListDialogView, View.OnClickListener {
    private static final String ARG_PARAM1 = "index";
    private int index;
    private ImageView iv_toBoard;
    private LinearLayoutManager linearLayoutManager;
    private MusicSongListAdapter musicSongListAdapter;
    private RecyclerView rv;
    private TextView tv_num;
    private boolean pullUp = false;
    private boolean isPlaying = false;
    private boolean dismissOutOfView = false;
    private final int RC_DISMISS = 10;
    private final int DISMISS_INTERVAL = 15000;
    private final int RC_REFRESH = 20;
    private final Handler mHandler = new Handler(Looper.getMainLooper()) { // from class: com.yftech.libmusic.dialog.MusicSongListDialog.1
        @Override // android.os.Handler
        public void handleMessage(@NonNull Message message) {
            if (message.what == 10) {
                MusicSongListDialog.this.dismissOutOfView = false;
                MusicSongListDialog.this.dismissAllowingStateLoss();
            } else if (message.what == 20) {
                int i = message.arg1;
                LogUtil.d("RC_REFRESH:position=" + i);
                MusicSongListDialog.this.musicSongListAdapter.setPlayingIndex(i, true, MusicSongListDialog.this.isPlaying);
            }
        }
    };
    private BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.yftech.libmusic.dialog.MusicSongListDialog.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("test".equals(intent.getAction())) {
                MusicSongListDialog.this.getPresenter().getCurrentPlayList();
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.yftech.libmvpmodule.mvp.BaseMvpDialogFragment
    public MusicSongListPresenter createPresenter() {
        return new MusicSongListPresenter(getActivity());
    }

    public static MusicSongListDialog newInstance(int i) {
        MusicSongListDialog musicSongListDialog = new MusicSongListDialog();
        Bundle bundle = new Bundle();
        bundle.putInt(ARG_PARAM1, i);
        musicSongListDialog.setArguments(bundle);
        return musicSongListDialog;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.index = getArguments().getInt(ARG_PARAM1);
        }
        this.isPlaying = CarMusicManager.getInstance().isPlaying();
        EventBus.getDefault().register(this);
        registerTestReceiver();
    }

    private void registerTestReceiver() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("test");
        this.mActivity.registerReceiver(this.receiver, intentFilter);
    }

    public void onResume() {
        super.onResume();
        if (this.mHandler.hasMessages(10)) {
            this.mHandler.removeMessages(10);
        }
        this.mHandler.sendEmptyMessageDelayed(10, 15000L);
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseDialogFragment
    public void onDestroy() {
        super.onDestroy();
        LogUtil.d("onDestroy");
        this.mHandler.removeMessages(10);
        EventBus.getDefault().unregister(this);
        this.mActivity.unregisterReceiver(this.receiver);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void musicSwitch(MusicSwitchEvent musicSwitchEvent) {
        LogUtil.d("musicSwitch");
        if (isAdded()) {
            getPresenter().getPlayPosition();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void musicPlayStatusChanged(MusicPlayStatusEvent musicPlayStatusEvent) {
        LogUtil.d("musicPlayStatusChanged:isPlaying=" + musicPlayStatusEvent.isPlaying);
        if (!isAdded() || this.isPlaying == musicPlayStatusEvent.isPlaying) {
            return;
        }
        this.isPlaying = musicPlayStatusEvent.isPlaying;
        if (this.musicSongListAdapter != null) {
            this.musicSongListAdapter.setPlayingIndex(this.musicSongListAdapter.getPosition(), true, this.isPlaying);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMusicSourceChanged(MusicSourceChangedEvent musicSourceChangedEvent) {
        if (isAdded()) {
            getPresenter().getPlayListSize();
            getPresenter().getCurrentPlayList();
        }
    }

    public void onStart() {
        Window window;
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null) {
            return;
        }
        window.setBackgroundDrawableResource(R.color.transparent);
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.dimAmount = 0.0f;
        attributes.windowAnimations = com.yftech.libmusic.R.style.DialogRightAnimation;
        attributes.width = 580;
        attributes.height = 696;
        attributes.gravity = 8388659;
        attributes.y = 60;
        attributes.x = ICarDrive.EPS_STYLE;
        window.setAttributes(attributes);
    }

    public void onCancel(@NonNull DialogInterface dialogInterface) {
        super.onCancel(dialogInterface);
        this.dismissOutOfView = true;
    }

    public void onDismiss(@NonNull DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        this.dismissOutOfView = false;
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpDialogFragment
    protected View onBindView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(com.yftech.libmusic.R.layout.dialog_music_song_list, viewGroup, false);
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpDialogFragment
    protected void initView(View view) {
        ((ImageView) view.findViewById(com.yftech.libmusic.R.id.iv_close)).setOnClickListener(this);
        this.tv_num = (TextView) view.findViewById(com.yftech.libmusic.R.id.tv_num);
        this.iv_toBoard = (ImageView) view.findViewById(com.yftech.libmusic.R.id.iv_toBoard);
        this.iv_toBoard.setOnClickListener(this);
        this.rv = view.findViewById(com.yftech.libmusic.R.id.rv);
        this.linearLayoutManager = new LinearLayoutManager(getContext());
        this.rv.setLayoutManager(this.linearLayoutManager);
        StateListDrawable stateListDrawable = (StateListDrawable) ContextCompat.getDrawable((Context) Objects.requireNonNull(getContext()), com.yftech.libmusic.R.drawable.thumb_drawable);
        Drawable drawable = ContextCompat.getDrawable((Context) Objects.requireNonNull(getContext()), com.yftech.libmusic.R.drawable.line_drawable);
        if (stateListDrawable != null && drawable != null) {
            new FastScroller(this.rv, stateListDrawable, drawable, stateListDrawable, drawable, 20, 100, 20);
        }
        this.rv.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.yftech.libmusic.dialog.MusicSongListDialog.3
            public void onScrolled(@NonNull RecyclerView recyclerView, int i, int i2) {
                if (MusicSongListDialog.this.mHandler.hasMessages(10)) {
                    MusicSongListDialog.this.mHandler.removeMessages(10);
                }
                MusicSongListDialog.this.mHandler.sendEmptyMessageDelayed(10, 15000L);
                if (MusicSongListDialog.this.pullUp != (i2 < 0)) {
                    MusicSongListDialog.this.pullUp = i2 < 0;
                }
                MusicSongListDialog.this.pullUp = i2 < 0;
                LogUtil.d("onScrolled:pullUp=" + MusicSongListDialog.this.pullUp);
                int findFirstVisibleItemPosition = MusicSongListDialog.this.linearLayoutManager.findFirstVisibleItemPosition();
                int findLastVisibleItemPosition = MusicSongListDialog.this.linearLayoutManager.findLastVisibleItemPosition();
                LogUtil.d("firstVisibleItemPosition=" + findFirstVisibleItemPosition);
                LogUtil.d("lastVisibleItemPosition=" + findLastVisibleItemPosition);
                if (findFirstVisibleItemPosition <= 7 || findLastVisibleItemPosition >= MusicSongListDialog.this.musicSongListAdapter.getItemCount() - 1) {
                    MusicSongListDialog.this.setBoardVisible(false);
                } else if (MusicSongListDialog.this.pullUp) {
                    MusicSongListDialog.this.iv_toBoard.setImageResource(com.yftech.libmusic.R.mipmap.music_btn_reach_top);
                    MusicSongListDialog.this.setBoardVisible(true);
                } else {
                    MusicSongListDialog.this.iv_toBoard.setImageResource(com.yftech.libmusic.R.mipmap.music_btn_reach_bottom);
                    MusicSongListDialog.this.setBoardVisible(true);
                }
            }
        });
        this.musicSongListAdapter = new MusicSongListAdapter(getContext());
        this.musicSongListAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.yftech.libmusic.dialog.MusicSongListDialog.4
            public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view2, int i) {
                MediaFileItem mediaFileItem;
                if (MusicSongListDialog.this.mHandler.hasMessages(10)) {
                    MusicSongListDialog.this.mHandler.removeMessages(10);
                }
                MusicSongListDialog.this.mHandler.sendEmptyMessageDelayed(10, 15000L);
                if (MusicSongListDialog.this.musicSongListAdapter == null || MusicSongListDialog.this.musicSongListAdapter.getPosition() == i || (mediaFileItem = (MediaFileItem) MusicSongListDialog.this.musicSongListAdapter.getItem(i)) == null) {
                    return;
                }
                int musicType = CarMusicManager.getInstance().getMusicType();
                LogUtil.d("getMusicType:type=" + musicType);
                MediaFile mediaFile = new MediaFile(mediaFileItem.getType());
                mediaFile.setTitle(mediaFileItem.getTitle());
                mediaFile.setAlbum(mediaFileItem.getAlbum());
                mediaFile.setArtist(mediaFileItem.getArtist());
                mediaFile.setCurrentTime(mediaFileItem.getCurrentTime());
                mediaFile.setData(mediaFileItem.getData());
                mediaFile.setDuration(mediaFileItem.getDuration());
                mediaFile.setFileName(mediaFileItem.getFileName());
                mediaFile.setFolder(mediaFileItem.getFolder());
                mediaFile.setGenre(mediaFileItem.getGenre());
                mediaFile.setFileName(mediaFileItem.getFileName());
                mediaFile.setSize(mediaFileItem.getSize());
                CarMusicManager.getInstance().start(mediaFile, musicType);
                MusicSongListDialog.this.musicSongListAdapter.setPlayingIndex(i, true, MusicSongListDialog.this.isPlaying);
            }
        });
        this.musicSongListAdapter.setOnItemChildClickListener(new BaseQuickAdapter.OnItemChildClickListener() { // from class: com.yftech.libmusic.dialog.MusicSongListDialog.5
            public void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view2, int i) {
                MediaFileItem mediaFileItem;
                if (MusicSongListDialog.this.mHandler.hasMessages(10)) {
                    MusicSongListDialog.this.mHandler.removeMessages(10);
                }
                MusicSongListDialog.this.mHandler.sendEmptyMessageDelayed(10, 15000L);
                if (MusicSongListDialog.this.musicSongListAdapter == null || MusicSongListDialog.this.musicSongListAdapter.getPosition() == i || (mediaFileItem = (MediaFileItem) MusicSongListDialog.this.musicSongListAdapter.getItem(i)) == null) {
                    return;
                }
                int musicType = CarMusicManager.getInstance().getMusicType();
                LogUtil.d("getMusicType:type=" + musicType);
                MediaFile mediaFile = new MediaFile(mediaFileItem.getType());
                mediaFile.setTitle(mediaFileItem.getTitle());
                mediaFile.setAlbum(mediaFileItem.getAlbum());
                mediaFile.setArtist(mediaFileItem.getArtist());
                mediaFile.setCurrentTime(mediaFileItem.getCurrentTime());
                mediaFile.setData(mediaFileItem.getData());
                mediaFile.setDuration(mediaFileItem.getDuration());
                mediaFile.setFileName(mediaFileItem.getFileName());
                mediaFile.setFolder(mediaFileItem.getFolder());
                mediaFile.setGenre(mediaFileItem.getGenre());
                mediaFile.setFileName(mediaFileItem.getFileName());
                mediaFile.setSize(mediaFileItem.getSize());
                CarMusicManager.getInstance().start(mediaFile, musicType);
                MusicSongListDialog.this.musicSongListAdapter.setPlayingIndex(i, true, MusicSongListDialog.this.isPlaying);
            }
        });
        this.rv.setAdapter(this.musicSongListAdapter);
        getPresenter().getPlayListSize();
        getPresenter().getCurrentPlayList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setBoardVisible(boolean z) {
        if (z) {
            this.iv_toBoard.animate().cancel();
            this.iv_toBoard.setVisibility(0);
            this.iv_toBoard.setAlpha(1.0f);
            this.iv_toBoard.animate().alpha(0.0f).setStartDelay(4000L).setDuration(1000L).setListener(new AnimatorListenerAdapter() { // from class: com.yftech.libmusic.dialog.MusicSongListDialog.6
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    MusicSongListDialog.this.iv_toBoard.setVisibility(4);
                }
            }).start();
            return;
        }
        this.iv_toBoard.animate().cancel();
        this.iv_toBoard.setVisibility(4);
    }

    @Override // com.yftech.libmusic.view.IMusicSongListDialogView
    public void displayPlayListSize(int i) {
        if (isAdded()) {
            this.tv_num.setText(String.format(Locale.getDefault(), "(%d)", Integer.valueOf(i)));
        }
    }

    @Override // com.yftech.libmusic.view.IMusicSongListDialogView
    public void displayCurrentPlayList(int i, List<MediaFileItem> list) {
        LogUtil.d("displayCurrentPlayList:playingIndex=" + i);
        if (this.musicSongListAdapter != null) {
            this.musicSongListAdapter.setNewData(list);
            this.rv.scrollToPosition(i);
            this.musicSongListAdapter.setPlayingIndex(i, false, this.isPlaying);
            if (i >= 0) {
                if (i == 0 || list.size() - i <= 4) {
                    this.rv.getLayoutManager().scrollToPositionWithOffset(i, 0);
                } else if (i == 1) {
                    this.rv.getLayoutManager().scrollToPositionWithOffset(i - 1, 0);
                } else {
                    this.rv.getLayoutManager().scrollToPositionWithOffset(i - 2, 0);
                }
            }
        }
    }

    @Override // com.yftech.libmusic.view.IMusicSongListDialogView
    public void displayMusicPlayPosition(int i) {
        LogUtil.d("displayMusicPlayPosition:position=" + i);
        if (this.musicSongListAdapter != null) {
            int findFirstVisibleItemPosition = this.linearLayoutManager.findFirstVisibleItemPosition();
            if (i > this.linearLayoutManager.findLastVisibleItemPosition() || i < findFirstVisibleItemPosition) {
                this.rv.scrollToPosition(i);
            }
        }
        this.musicSongListAdapter.setPlayingIndex(i, true, this.isPlaying);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.mHandler.hasMessages(10)) {
            this.mHandler.removeMessages(10);
        }
        this.mHandler.sendEmptyMessageDelayed(10, 15000L);
        if (view.getId() == com.yftech.libmusic.R.id.iv_toBoard) {
            if (this.pullUp) {
                this.rv.scrollToPosition(0);
                return;
            } else {
                this.rv.scrollToPosition(this.musicSongListAdapter.getItemCount() - 1);
                return;
            }
        }
        if (view.getId() == com.yftech.libmusic.R.id.iv_close) {
            this.dismissOutOfView = false;
            dismiss();
        }
    }

    public void dismissCustom() {
        LogUtil.d("dismissCustom");
        this.dismissOutOfView = false;
        dismissAllowingStateLoss();
    }
}
