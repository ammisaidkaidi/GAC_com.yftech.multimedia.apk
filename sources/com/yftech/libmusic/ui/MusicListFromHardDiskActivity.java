package com.yftech.libmusic.ui;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.media.common.event.USBStateEvent;
import com.media.common.ui.widget.ScrollableTextView;
import com.media.common.util.FastScroller;
import com.media.common.util.LogUtil;
import com.media.common.util.ToastUtils;
import com.yftech.car.media.data.CarMediaDataManager;
import com.yftech.car.media.data.entity.MediaFile;
import com.yftech.car.media.music.CarMusicManager;
import com.yftech.libmusic.R;
import com.yftech.libmusic.bean.MusicListItem;
import com.yftech.libmusic.event.MusicPlayStatusEvent;
import com.yftech.libmusic.event.MusicSourceChangedEvent;
import com.yftech.libmusic.event.MusicSwitchEvent;
import com.yftech.libmusic.presenter.MusicListPresenter;
import com.yftech.libmusic.ui.adapter.MusicListForHardDiskAdapter;
import com.yftech.libmusic.view.IMusicListActivityView;
import com.yftech.libmvpmodule.mvp.BaseMvpActivity;
import java.util.List;
import java.util.Locale;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /home/user/work/dex/classes4.dex */
public class MusicListFromHardDiskActivity extends BaseMvpActivity<MusicListPresenter> implements IMusicListActivityView, View.OnClickListener {
    private TextView btn_playAll;
    private int index;
    private ImageView iv_start;
    private ImageView iv_tag;
    private LinearLayoutManager linearLayoutManager;
    private MusicListForHardDiskAdapter musicListForHardDiskAdapter;
    private RecyclerView rv;
    private TextView tv_actionbar_title;
    private TextView tv_file_name;
    private TextView tv_music_count;
    private ScrollableTextView tv_subtitle;
    private boolean isUserSwitch = false;
    private String indexFolder = null;
    private final int RC_REFRESH = 10;
    private final int RC_TEST = 20;
    private Handler mHandler = new Handler(Looper.getMainLooper()) { // from class: com.yftech.libmusic.ui.MusicListFromHardDiskActivity.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 10) {
                int i = message.arg1;
                String obj = message.obj.toString();
                LogUtil.d("RC_REFRESH:position=" + i + ",path" + obj);
                MusicListFromHardDiskActivity.this.musicListForHardDiskAdapter.notifyItemChanged(i, obj);
                return;
            }
            if (message.what == 20) {
                if (message.arg1 == 0) {
                    CarMusicManager.getInstance().next();
                } else {
                    CarMusicManager.getInstance().previous();
                }
            }
        }
    };
    private BroadcastReceiver testReceiver = new BroadcastReceiver() { // from class: com.yftech.libmusic.ui.MusicListFromHardDiskActivity.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("test".equals(intent.getAction())) {
                int intExtra = intent.getIntExtra("value", 0);
                Message obtainMessage = MusicListFromHardDiskActivity.this.mHandler.obtainMessage(20);
                obtainMessage.arg1 = intExtra;
                MusicListFromHardDiskActivity.this.mHandler.sendMessage(obtainMessage);
            }
        }
    };
    private CarMusicManager.CarMusicControlCallback callback = new CarMusicManager.CarMusicControlCallback() { // from class: com.yftech.libmusic.ui.MusicListFromHardDiskActivity.3
        public void onChangePlayMusic(MediaFile mediaFile) {
            if (MusicListFromHardDiskActivity.this.musicListForHardDiskAdapter == null || MusicListFromHardDiskActivity.this.isUserSwitch) {
                MusicListFromHardDiskActivity.this.isUserSwitch = false;
            } else {
                MusicListFromHardDiskActivity.this.musicListForHardDiskAdapter.setPlaying(mediaFile.getData(), true);
            }
        }

        public void onChangePlaying(boolean z) {
            if (MusicListFromHardDiskActivity.this.musicListForHardDiskAdapter != null) {
                MusicListFromHardDiskActivity.this.musicListForHardDiskAdapter.setPlayStatus(z);
            }
            MusicListFromHardDiskActivity.this.iv_start.setSelected(z);
        }
    };

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.yftech.libmvpmodule.mvp.BaseMvpActivity
    public MusicListPresenter createPresenter() {
        return new MusicListPresenter(this);
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpActivity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_music_list_from_hard_disk);
        initView();
        EventBus.getDefault().register(this);
        registerTestReceiver();
        CarMusicManager.registerMusicControlCallback(this.callback);
        initData();
    }

    private void initData() {
        MediaFile playMusic = CarMusicManager.getInstance().getPlayMusic();
        if (playMusic != null && !TextUtils.isEmpty(playMusic.getData())) {
            int usbIndex = CarMediaDataManager.getInstance().getUsbIndex(playMusic.getData());
            LogUtil.d("usbIndex=" + usbIndex);
            this.index = usbIndex;
        } else {
            this.index = -1;
        }
        LogUtil.d("onResume:index=" + this.index);
        if (this.index >= 0) {
            this.musicListForHardDiskAdapter.setParentList(null);
            this.tv_actionbar_title.setText(getString(this.index == 0 ? R.string.music_source_selection_1 : R.string.music_source_selection_2));
            this.tv_file_name.setText(getString(this.index == 0 ? R.string.music_source_selection_1 : R.string.music_source_selection_2));
            this.tv_subtitle.setContent(" ");
            this.btn_playAll.setVisibility(0);
            this.indexFolder = null;
            getPresenter().getMusicListData(this.index);
            return;
        }
        this.tv_actionbar_title.setText(".");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.yftech.libmvpmodule.mvp.BaseMvpActivity
    public void onResume() {
        super.onResume();
    }

    private void registerTestReceiver() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("test");
        registerReceiver(this.testReceiver, intentFilter);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.yftech.libmvpmodule.mvp.BaseMvpActivity
    public void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().unregister(this);
        CarMusicManager.unregisterMusicControlCallback(this.callback);
        unregisterReceiver(this.testReceiver);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onUSBStatusChange(USBStateEvent uSBStateEvent) {
        LogUtil.d("onUSBStatusChange:receiveBroadCast");
        if (uSBStateEvent.isUsbExists || this.index != uSBStateEvent.usbIndex) {
            return;
        }
        onBackPressed();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void musicSwitch(MusicSwitchEvent musicSwitchEvent) {
        if (TextUtils.isEmpty(this.indexFolder) || this.musicListForHardDiskAdapter == null) {
            return;
        }
        int positionByPath = this.musicListForHardDiskAdapter.getPositionByPath(musicSwitchEvent.mediaFile.getData());
        String data = musicSwitchEvent.mediaFile.getData();
        int findFirstVisibleItemPosition = this.linearLayoutManager.findFirstVisibleItemPosition();
        int findLastVisibleItemPosition = this.linearLayoutManager.findLastVisibleItemPosition();
        LogUtil.d("musicSwitch:firstVisibleItemPosition=" + findFirstVisibleItemPosition + ", lastVisibleItemPosition=" + findLastVisibleItemPosition + ", position=" + positionByPath);
        if (positionByPath <= findFirstVisibleItemPosition || positionByPath >= findLastVisibleItemPosition) {
            this.rv.smoothScrollToPosition(positionByPath);
            if (this.mHandler.hasMessages(10)) {
                this.mHandler.removeMessages(10);
            }
            Message obtainMessage = this.mHandler.obtainMessage(10);
            obtainMessage.arg1 = positionByPath;
            obtainMessage.obj = data;
            this.mHandler.sendMessageDelayed(obtainMessage, 300L);
            return;
        }
        this.musicListForHardDiskAdapter.notifyItemChanged(positionByPath, data);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void musicPlayStatusChanged(MusicPlayStatusEvent musicPlayStatusEvent) {
        LogUtil.d("musicPlayStatusChanged:isPlaying=" + musicPlayStatusEvent.isPlaying);
        if (!this.isDisplaying || TextUtils.isEmpty(this.indexFolder) || this.musicListForHardDiskAdapter == null) {
            return;
        }
        this.musicListForHardDiskAdapter.notifyItemChanged(this.musicListForHardDiskAdapter.getPosition(), this.musicListForHardDiskAdapter.getPlayingPath());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMusicSourceChanged(MusicSourceChangedEvent musicSourceChangedEvent) {
        if ("MUSIC_SOURCE_OF_USB1".equals(musicSourceChangedEvent.music_source) && this.index == 0) {
            return;
        }
        if ("MUSIC_SOURCE_OF_USB2".equals(musicSourceChangedEvent.music_source) && this.index == 1) {
            return;
        }
        onBackPressed();
    }

    private void initView() {
        this.tv_actionbar_title = (TextView) findViewById(R.id.tv_actionbar_title);
        this.tv_actionbar_title.setOnClickListener(this);
        this.tv_subtitle = findViewById(R.id.tv_subtitle);
        this.tv_subtitle.setContent("");
        this.tv_file_name = (TextView) findViewById(R.id.tv_file_name);
        this.tv_music_count = (TextView) findViewById(R.id.tv_music_count);
        findViewById(R.id.iv_back).setOnClickListener(this);
        findViewById(R.id.iv_search).setOnClickListener(this);
        this.btn_playAll = (TextView) findViewById(R.id.btn_playAll);
        this.btn_playAll.setOnClickListener(this);
        this.iv_tag = (ImageView) findViewById(R.id.iv_tag);
        this.iv_tag.setOnClickListener(this);
        this.iv_start = (ImageView) findViewById(R.id.iv_start);
        this.iv_start.setOnClickListener(this);
        this.iv_start.setSelected(CarMusicManager.getInstance().isPlaying());
        this.rv = findViewById(R.id.rv);
        this.linearLayoutManager = new LinearLayoutManager(getApplicationContext());
        this.rv.setLayoutManager(this.linearLayoutManager);
        this.rv.addItemDecoration(new RecyclerView.ItemDecoration() { // from class: com.yftech.libmusic.ui.MusicListFromHardDiskActivity.4
            public void getItemOffsets(@NonNull Rect rect, @NonNull View view, @NonNull RecyclerView recyclerView, @NonNull RecyclerView.State state) {
                rect.bottom = 40;
            }
        });
        StateListDrawable stateListDrawable = (StateListDrawable) ContextCompat.getDrawable(getApplicationContext(), R.drawable.thumb_drawable);
        Drawable drawable = ContextCompat.getDrawable(getApplicationContext(), R.drawable.line_drawable);
        if (stateListDrawable != null && drawable != null) {
            new FastScroller(this.rv, stateListDrawable, drawable, stateListDrawable, drawable, 20, 100, 20);
        }
        this.musicListForHardDiskAdapter = new MusicListForHardDiskAdapter(getApplicationContext());
        this.musicListForHardDiskAdapter.setPlayStatus(CarMusicManager.getInstance().isPlaying());
        this.musicListForHardDiskAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.yftech.libmusic.ui.MusicListFromHardDiskActivity.5
            public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                MusicListItem musicListItem = (MusicListItem) MusicListFromHardDiskActivity.this.musicListForHardDiskAdapter.getItem(i);
                if (musicListItem == null || !musicListItem.isDir()) {
                    if (musicListItem != null) {
                        MusicListFromHardDiskActivity.this.isUserSwitch = true;
                        CarMusicManager.getInstance().start(musicListItem.getFoloder(), musicListItem.getFilePath(), 1);
                        if (!TextUtils.isEmpty(MusicListFromHardDiskActivity.this.musicListForHardDiskAdapter.getPlayingPath()) && !MusicListFromHardDiskActivity.this.musicListForHardDiskAdapter.getPlayingPath().equals(musicListItem.getFilePath())) {
                            MusicListFromHardDiskActivity.this.musicListForHardDiskAdapter.setPlaying(musicListItem.getFilePath(), true);
                        }
                        EventBus.getDefault().post(new MusicSourceChangedEvent(MusicListFromHardDiskActivity.this.index == 0 ? "MUSIC_SOURCE_OF_USB1" : "MUSIC_SOURCE_OF_USB2"));
                        return;
                    }
                    return;
                }
                MusicListFromHardDiskActivity.this.tv_file_name.setText(musicListItem.getTitle());
                MusicListFromHardDiskActivity.this.tv_subtitle.setContent(musicListItem.getTitle());
                MusicListFromHardDiskActivity.this.musicListForHardDiskAdapter.setParentList(MusicListFromHardDiskActivity.this.musicListForHardDiskAdapter.getData());
                MusicListFromHardDiskActivity.this.musicListForHardDiskAdapter.setNewData(musicListItem.getData());
                MusicListFromHardDiskActivity.this.musicListForHardDiskAdapter.setPlaying(MusicListFromHardDiskActivity.this.musicListForHardDiskAdapter.getPlayingPath(), false);
                MusicListFromHardDiskActivity.this.rv.scrollToPosition(MusicListFromHardDiskActivity.this.musicListForHardDiskAdapter.getPosition());
                MusicListFromHardDiskActivity.this.btn_playAll.setVisibility(4);
                if (musicListItem.getData() != null) {
                    MusicListFromHardDiskActivity.this.tv_music_count.setText(String.format(Locale.getDefault(), "(%d)", Integer.valueOf(musicListItem.getData().size())));
                } else {
                    MusicListFromHardDiskActivity.this.tv_music_count.setText(String.format(Locale.getDefault(), "(%d)", 0));
                }
                MusicListFromHardDiskActivity.this.indexFolder = musicListItem.getFoloder();
            }
        });
        this.musicListForHardDiskAdapter.setOnItemChildClickListener(new BaseQuickAdapter.OnItemChildClickListener() { // from class: com.yftech.libmusic.ui.MusicListFromHardDiskActivity.6
            public void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                MusicListItem musicListItem = (MusicListItem) MusicListFromHardDiskActivity.this.musicListForHardDiskAdapter.getItem(i);
                if (musicListItem == null || !musicListItem.isDir()) {
                    if (musicListItem != null) {
                        MusicListFromHardDiskActivity.this.isUserSwitch = true;
                        CarMusicManager.getInstance().start(musicListItem.getFoloder(), musicListItem.getFilePath(), 1);
                        if (!TextUtils.isEmpty(MusicListFromHardDiskActivity.this.musicListForHardDiskAdapter.getPlayingPath()) && !MusicListFromHardDiskActivity.this.musicListForHardDiskAdapter.getPlayingPath().equals(musicListItem.getFilePath())) {
                            MusicListFromHardDiskActivity.this.musicListForHardDiskAdapter.setPlaying(musicListItem.getFilePath(), true);
                        }
                        EventBus.getDefault().post(new MusicSourceChangedEvent(MusicListFromHardDiskActivity.this.index == 0 ? "MUSIC_SOURCE_OF_USB1" : "MUSIC_SOURCE_OF_USB2"));
                        return;
                    }
                    return;
                }
                MusicListFromHardDiskActivity.this.tv_file_name.setText(musicListItem.getTitle());
                MusicListFromHardDiskActivity.this.tv_subtitle.setContent(musicListItem.getTitle());
                MusicListFromHardDiskActivity.this.musicListForHardDiskAdapter.setParentList(MusicListFromHardDiskActivity.this.musicListForHardDiskAdapter.getData());
                MusicListFromHardDiskActivity.this.musicListForHardDiskAdapter.setNewData(musicListItem.getData());
                MusicListFromHardDiskActivity.this.musicListForHardDiskAdapter.setPlaying(MusicListFromHardDiskActivity.this.musicListForHardDiskAdapter.getPlayingPath(), false);
                MusicListFromHardDiskActivity.this.rv.scrollToPosition(MusicListFromHardDiskActivity.this.musicListForHardDiskAdapter.getPosition());
                MusicListFromHardDiskActivity.this.btn_playAll.setVisibility(4);
                if (musicListItem.getData() != null) {
                    MusicListFromHardDiskActivity.this.tv_music_count.setText(String.format(Locale.getDefault(), "(%d)", Integer.valueOf(musicListItem.getData().size())));
                } else {
                    MusicListFromHardDiskActivity.this.tv_music_count.setText(String.format(Locale.getDefault(), "(%d)", 0));
                }
                MusicListFromHardDiskActivity.this.indexFolder = musicListItem.getFoloder();
            }
        });
        this.rv.setAdapter(this.musicListForHardDiskAdapter);
    }

    @Override // com.yftech.libmusic.view.IMusicListActivityView
    public void displayMusicList(MediaFile mediaFile, List<MusicListItem> list) {
        if (list == null || mediaFile == null) {
            return;
        }
        this.musicListForHardDiskAdapter.setPlaying(mediaFile.getData(), false);
        this.musicListForHardDiskAdapter.setNewData(list);
        this.indexFolder = null;
        this.tv_music_count.setText(String.format(Locale.getDefault(), "(%d)", Integer.valueOf(CarMediaDataManager.getInstance().getMusicFileSize(this.index))));
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4 && keyEvent.getRepeatCount() == 0) {
            LogUtil.d("onKeyDown");
            checkParentList();
            return false;
        }
        return super.onKeyDown(i, keyEvent);
    }

    private void checkParentList() {
        List<MusicListItem> parentList = this.musicListForHardDiskAdapter.getParentList();
        if (parentList == null) {
            onBackPressed();
            return;
        }
        this.musicListForHardDiskAdapter.setNewData(parentList);
        this.musicListForHardDiskAdapter.setParentList(null);
        this.tv_file_name.setText(getString(this.index == 0 ? R.string.music_source_selection_1 : R.string.music_source_selection_2));
        this.tv_subtitle.setContent(" ");
        this.btn_playAll.setVisibility(0);
        this.indexFolder = null;
        this.tv_music_count.setText(String.format(Locale.getDefault(), "(%d)", Integer.valueOf(CarMediaDataManager.getInstance().getMusicFileSize(this.index))));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        MediaFile playMusic;
        if (view.getId() == R.id.iv_back || view.getId() == R.id.tv_actionbar_title || view.getId() == R.id.tv_subtitle) {
            checkParentList();
            return;
        }
        if (view.getId() == R.id.iv_search) {
            Intent intent = new Intent((Context) this, (Class<?>) MusicSearchFromHardDiskActivity.class);
            intent.putExtra("index", this.index);
            ContextCompat.startActivity(this, intent, (Bundle) null);
            return;
        }
        int i = 0;
        if (view.getId() == R.id.iv_start || view.getId() == R.id.iv_tag) {
            if (CarMusicManager.getInstance().isPlaying()) {
                CarMusicManager.getInstance().pause();
                return;
            }
            MediaFile playMusic2 = CarMusicManager.getInstance().getPlayMusic();
            String folder = playMusic2.getFolder();
            if (TextUtils.isEmpty(this.indexFolder)) {
                CarMusicManager.getInstance().start(playMusic2, 2);
                return;
            }
            if (this.indexFolder.equals(folder)) {
                CarMusicManager.getInstance().start(playMusic2, 1);
                List data = this.musicListForHardDiskAdapter.getData();
                int i2 = -1;
                if (!data.isEmpty()) {
                    while (true) {
                        if (i >= data.size()) {
                            break;
                        }
                        MusicListItem musicListItem = (MusicListItem) data.get(i);
                        if (!TextUtils.isEmpty(musicListItem.getFilePath()) && musicListItem.getFilePath().equals(playMusic2.getData())) {
                            i2 = i;
                            break;
                        }
                        i++;
                    }
                }
                int findFirstVisibleItemPosition = this.linearLayoutManager.findFirstVisibleItemPosition();
                int findLastVisibleItemPosition = this.linearLayoutManager.findLastVisibleItemPosition();
                if (i2 >= 0) {
                    if (i2 <= findFirstVisibleItemPosition || i2 >= findLastVisibleItemPosition) {
                        this.rv.smoothScrollToPosition(i2);
                        return;
                    }
                    return;
                }
                return;
            }
            List data2 = this.musicListForHardDiskAdapter.getData();
            if (!data2.isEmpty()) {
                MusicListItem musicListItem2 = (MusicListItem) data2.get(0);
                if (!musicListItem2.isDir()) {
                    MediaFile mediaFile = new MediaFile(0);
                    mediaFile.setTitle(musicListItem2.getTitle());
                    mediaFile.setAlbum(musicListItem2.getAlbum());
                    mediaFile.setArtist(musicListItem2.getArtist());
                    mediaFile.setData(musicListItem2.getFilePath());
                    mediaFile.setDuration(musicListItem2.getDuration());
                    CarMusicManager.getInstance().start(mediaFile, 1);
                }
            }
            this.rv.smoothScrollToPosition(0);
            return;
        }
        if (view.getId() != R.id.btn_playAll || (playMusic = CarMusicManager.getInstance().getPlayMusic()) == null || TextUtils.isEmpty(playMusic.getData())) {
            return;
        }
        List fileMusic = CarMediaDataManager.getInstance().getFileMusic(playMusic.getData());
        if (fileMusic.isEmpty()) {
            return;
        }
        CarMusicManager.getInstance().start((MediaFile) fileMusic.get(0), 2);
        if (CarMusicManager.getInstance().getPlayMode() != 0) {
            CarMusicManager.getInstance().setPlayMode(0);
        }
        ToastUtils.showNormalMessage(getString(R.string.music_play_all_tips), 1);
    }
}
