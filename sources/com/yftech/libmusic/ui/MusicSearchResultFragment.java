package com.yftech.libmusic.ui;

import android.graphics.Rect;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.media.common.util.LogUtil;
import com.yftech.car.media.data.entity.MediaFile;
import com.yftech.car.media.music.CarMusicManager;
import com.yftech.libmusic.R;
import com.yftech.libmusic.bean.MediaFileItem;
import com.yftech.libmusic.ui.adapter.MusicSearchResultAdapter;
import com.yftech.libmvpmodule.mvp.BaseMvpFragment;
import com.yftech.libmvpmodule.mvp.BaseMvpPresenter;
import java.util.List;
import java.util.Locale;

/* loaded from: /home/user/work/dex/classes4.dex */
public class MusicSearchResultFragment extends BaseMvpFragment {
    private static final String ARG_PARAM1 = "searchState";
    private ImageView iv_background;
    private LinearLayout lin_list;
    private LinearLayout lin_search_fail;
    private LinearLayout lin_searching;
    private MusicSearchResultAdapter musicSearchResultAdapter;
    private int searchState;
    private TextView tv_num;
    private boolean isUserSwitch = false;
    private CarMusicManager.CarMusicControlCallback callback = new CarMusicManager.CarMusicControlCallback() { // from class: com.yftech.libmusic.ui.MusicSearchResultFragment.4
        public void onChangePlayMusic(MediaFile mediaFile) {
            LogUtil.d("onChangePlayMusic:musicFile=" + mediaFile.getData());
            if (MusicSearchResultFragment.this.musicSearchResultAdapter == null || MusicSearchResultFragment.this.isUserSwitch) {
                MusicSearchResultFragment.this.isUserSwitch = false;
            } else {
                MusicSearchResultFragment.this.musicSearchResultAdapter.setPlaying(mediaFile.getData(), true);
            }
        }

        public void onChangePlaying(boolean z) {
            LogUtil.d("onChangePlaying:isPlaying=" + z);
            if (MusicSearchResultFragment.this.musicSearchResultAdapter != null) {
                MusicSearchResultFragment.this.musicSearchResultAdapter.setPlaying(MusicSearchResultFragment.this.musicSearchResultAdapter.getPlayingPath(), true);
            }
        }
    };

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    protected BaseMvpPresenter createPresenter() {
        return null;
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    protected View onBindView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_music_search_result, viewGroup, false);
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    protected void initView(View view) {
        this.iv_background = (ImageView) view.findViewById(R.id.iv_background);
        this.lin_searching = (LinearLayout) view.findViewById(R.id.lin_searching);
        this.lin_search_fail = (LinearLayout) view.findViewById(R.id.lin_search_fail);
        this.lin_list = (LinearLayout) view.findViewById(R.id.lin_list);
        this.tv_num = (TextView) view.findViewById(R.id.tv_num);
        setSearchState(this.searchState);
        RecyclerView findViewById = view.findViewById(R.id.rv);
        findViewById.setLayoutManager(new LinearLayoutManager(getContext()));
        findViewById.addItemDecoration(new RecyclerView.ItemDecoration() { // from class: com.yftech.libmusic.ui.MusicSearchResultFragment.1
            public void getItemOffsets(@NonNull Rect rect, @NonNull View view2, @NonNull RecyclerView recyclerView, @NonNull RecyclerView.State state) {
                rect.top = 40;
                if (recyclerView.getChildAdapterPosition(view2) == (recyclerView.getAdapter() == null ? 0 : recyclerView.getAdapter().getItemCount()) - 1) {
                    rect.bottom = 40;
                } else {
                    rect.bottom = 0;
                }
            }
        });
        this.musicSearchResultAdapter = new MusicSearchResultAdapter(getContext());
        this.musicSearchResultAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.yftech.libmusic.ui.MusicSearchResultFragment.2
            public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view2, int i) {
                MediaFileItem mediaFileItem = (MediaFileItem) MusicSearchResultFragment.this.musicSearchResultAdapter.getItem(i);
                if (mediaFileItem != null) {
                    MusicSearchResultFragment.this.isUserSwitch = true;
                    CarMusicManager.getInstance().start("", mediaFileItem.getData(), 2);
                    if (TextUtils.isEmpty(MusicSearchResultFragment.this.musicSearchResultAdapter.getPlayingPath()) || MusicSearchResultFragment.this.musicSearchResultAdapter.getPlayingPath().equals(mediaFileItem.getData())) {
                        return;
                    }
                    MusicSearchResultFragment.this.musicSearchResultAdapter.setPlaying(mediaFileItem.getData(), true);
                }
            }
        });
        this.musicSearchResultAdapter.setOnItemChildClickListener(new BaseQuickAdapter.OnItemChildClickListener() { // from class: com.yftech.libmusic.ui.MusicSearchResultFragment.3
            public void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view2, int i) {
                MediaFileItem mediaFileItem = (MediaFileItem) MusicSearchResultFragment.this.musicSearchResultAdapter.getItem(i);
                if (mediaFileItem != null) {
                    MusicSearchResultFragment.this.isUserSwitch = true;
                    CarMusicManager.getInstance().start("", mediaFileItem.getData(), 2);
                    if (TextUtils.isEmpty(MusicSearchResultFragment.this.musicSearchResultAdapter.getPlayingPath()) || MusicSearchResultFragment.this.musicSearchResultAdapter.getPlayingPath().equals(mediaFileItem.getData())) {
                        return;
                    }
                    MusicSearchResultFragment.this.musicSearchResultAdapter.setPlaying(mediaFileItem.getData(), true);
                }
            }
        });
        findViewById.setAdapter(this.musicSearchResultAdapter);
    }

    public static MusicSearchResultFragment newInstance(int i) {
        MusicSearchResultFragment musicSearchResultFragment = new MusicSearchResultFragment();
        Bundle bundle = new Bundle();
        bundle.putInt(ARG_PARAM1, i);
        musicSearchResultFragment.setArguments(bundle);
        return musicSearchResultFragment;
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.searchState = getArguments().getInt(ARG_PARAM1);
        }
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    public void onResume() {
        super.onResume();
        CarMusicManager.registerMusicControlCallback(this.callback);
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    public void onDestroy() {
        super.onDestroy();
        CarMusicManager.unregisterMusicControlCallback(this.callback);
    }

    public int getSearchState() {
        return this.searchState;
    }

    public void setSearchState(int i) {
        this.searchState = i;
        if (isAdded()) {
            switch (i) {
                case 0:
                    this.iv_background.setVisibility(0);
                    this.lin_searching.setVisibility(0);
                    this.lin_search_fail.setVisibility(8);
                    this.lin_list.setVisibility(8);
                    return;
                case 1:
                    this.iv_background.setVisibility(0);
                    this.lin_searching.setVisibility(8);
                    this.lin_search_fail.setVisibility(0);
                    this.lin_list.setVisibility(8);
                    return;
                case 2:
                    this.iv_background.setVisibility(8);
                    this.lin_searching.setVisibility(8);
                    this.lin_search_fail.setVisibility(8);
                    this.lin_list.setVisibility(0);
                    return;
                default:
                    this.iv_background.setVisibility(8);
                    this.lin_searching.setVisibility(8);
                    this.lin_search_fail.setVisibility(8);
                    this.lin_list.setVisibility(8);
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setSearchState(int i, @NonNull List<MediaFileItem> list, @NonNull MediaFile mediaFile, String str) {
        this.searchState = i;
        switch (i) {
            case 0:
                this.iv_background.setVisibility(0);
                this.lin_searching.setVisibility(0);
                this.lin_search_fail.setVisibility(8);
                this.lin_list.setVisibility(8);
                return;
            case 1:
                this.iv_background.setVisibility(0);
                this.lin_searching.setVisibility(8);
                this.lin_search_fail.setVisibility(0);
                this.lin_list.setVisibility(8);
                return;
            case 2:
                this.iv_background.setVisibility(8);
                this.lin_searching.setVisibility(8);
                this.lin_search_fail.setVisibility(8);
                this.lin_list.setVisibility(0);
                if (this.musicSearchResultAdapter != null) {
                    this.musicSearchResultAdapter.setPlaying(mediaFile.getData(), false);
                    this.musicSearchResultAdapter.setKeyWords(str, false);
                    this.musicSearchResultAdapter.setNewData(list);
                }
                this.tv_num.setText(String.format(Locale.getDefault(), "(%d)", Integer.valueOf(list.size())));
                return;
            default:
                return;
        }
    }
}
