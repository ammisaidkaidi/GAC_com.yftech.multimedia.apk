package com.yftech.libradio.dialog;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.media.common.util.FastScroller;
import com.media.common.util.LogUtil;
import com.yftech.car.media.radio.CarRadioManager;
import com.yftech.car.media.radio.entity.DataOfRadio;
import com.yftech.libmvpmodule.mvp.BaseDialogFragment;
import com.yftech.libmvpmodule.mvp.BaseMvpDialogFragment;
import com.yftech.libradio.R;
import com.yftech.libradio.Utils;
import com.yftech.libradio.dialog.adapter.RadioSearchChannelAdapter;
import com.yftech.libradio.presenter.RadioSearchChannelPresenter;
import com.yftech.libradio.view.IRadioSearchChannelDialogView;
import com.yftech.vehicle.internal.adapter.ICarDoor;
import java.util.List;
import java.util.Objects;

/* loaded from: /home/user/work/dex/classes4.dex */
public class RadioSearchChannelDialog extends BaseMvpDialogFragment<RadioSearchChannelPresenter> implements IRadioSearchChannelDialogView, View.OnClickListener {
    private static final String ARG_PARAM1 = "band";
    private int band;
    private ImageView iv_toBoard;
    private LinearLayoutManager linearLayoutManager;
    private ProgressBar pb_list;
    private RadioSearchChannelAdapter radioSearchChannelAdapter;
    private RelativeLayout rl_search_fail;
    private RecyclerView rv;
    private boolean pullUp = false;
    private boolean isFirstFlag = false;
    private final CarRadioManager.CarRadioControlCallback mCarRadioControlCallback = new CarRadioManager.CarRadioControlCallback() { // from class: com.yftech.libradio.dialog.RadioSearchChannelDialog.4
        public void onAudioFocusChange(int i) {
        }

        public void onFavorChange(int i, DataOfRadio dataOfRadio) {
        }

        public void onFreqSignal(int i, DataOfRadio dataOfRadio, int i2) {
        }

        public void onSeekStatusChange(int i, int i2, int i3) {
            LogUtil.d("onSeekStatusChange() scanType:" + i + " status:" + i2 + " operation:" + i3);
            if (i == 3 && i2 == 0 && i3 == 1) {
                RadioSearchChannelDialog.this.getPresenter().getSearchList(RadioSearchChannelDialog.this.band);
            }
        }

        public void onFreqChanage(int i, DataOfRadio dataOfRadio, DataOfRadio dataOfRadio2) {
            LogUtil.d("onFreqChanage() newChannel:" + dataOfRadio.toString());
            RadioSearchChannelDialog.this.getPresenter().getSearchList(RadioSearchChannelDialog.this.band);
        }

        public void onPlayPause(boolean z) {
            LogUtil.d("onPlayPause() isPlaying:" + z);
            RadioSearchChannelDialog.this.getPresenter().getSearchList(RadioSearchChannelDialog.this.band);
        }
    };

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.yftech.libmvpmodule.mvp.BaseMvpDialogFragment
    public RadioSearchChannelPresenter createPresenter() {
        return new RadioSearchChannelPresenter(getActivity());
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpDialogFragment
    protected View onBindView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.dialog_radio_search_channel, viewGroup, false);
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpDialogFragment
    protected void initView(View view) {
        view.findViewById(R.id.tv_title).setOnClickListener(this);
        view.findViewById(R.id.iv_search).setOnClickListener(this);
        view.findViewById(R.id.iv_close).setOnClickListener(this);
        this.isFirstFlag = true;
        this.rl_search_fail = (RelativeLayout) view.findViewById(R.id.rl_search_fail);
        this.iv_toBoard = (ImageView) view.findViewById(R.id.iv_toBoard);
        this.iv_toBoard.setOnClickListener(this);
        this.pb_list = (ProgressBar) view.findViewById(R.id.pb_list);
        this.rv = view.findViewById(R.id.rv);
        this.linearLayoutManager = new LinearLayoutManager(getContext());
        this.rv.setLayoutManager(this.linearLayoutManager);
        StateListDrawable stateListDrawable = (StateListDrawable) ContextCompat.getDrawable((Context) Objects.requireNonNull(getContext()), R.drawable.thumb_drawable);
        Drawable drawable = ContextCompat.getDrawable((Context) Objects.requireNonNull(getContext()), R.drawable.line_drawable);
        if (stateListDrawable != null && drawable != null) {
            new FastScroller(this.rv, stateListDrawable, drawable, stateListDrawable, drawable, 20, 100, 20);
        }
        this.rv.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.yftech.libradio.dialog.RadioSearchChannelDialog.1
            public void onScrolled(@NonNull RecyclerView recyclerView, int i, int i2) {
                if (RadioSearchChannelDialog.this.pullUp != (i2 < 0)) {
                    RadioSearchChannelDialog.this.pullUp = i2 < 0;
                }
                RadioSearchChannelDialog.this.pullUp = i2 < 0;
                LogUtil.d("onScrolled:pullUp=" + RadioSearchChannelDialog.this.pullUp);
                int findFirstVisibleItemPosition = RadioSearchChannelDialog.this.linearLayoutManager.findFirstVisibleItemPosition();
                int findLastVisibleItemPosition = RadioSearchChannelDialog.this.linearLayoutManager.findLastVisibleItemPosition();
                LogUtil.d("firstVisibleItemPosition=" + findFirstVisibleItemPosition);
                LogUtil.d("lastVisibleItemPosition=" + findLastVisibleItemPosition);
                if (findFirstVisibleItemPosition <= 9 || findLastVisibleItemPosition >= RadioSearchChannelDialog.this.radioSearchChannelAdapter.getItemCount() - 1) {
                    RadioSearchChannelDialog.this.setBoardVisible(false);
                } else if (RadioSearchChannelDialog.this.pullUp) {
                    RadioSearchChannelDialog.this.iv_toBoard.setImageResource(R.mipmap.radio_btn_reach_top);
                    RadioSearchChannelDialog.this.setBoardVisible(true);
                } else {
                    RadioSearchChannelDialog.this.iv_toBoard.setImageResource(R.mipmap.radio_btn_reach_bottom);
                    RadioSearchChannelDialog.this.setBoardVisible(true);
                }
            }
        });
        this.radioSearchChannelAdapter = new RadioSearchChannelAdapter(getContext());
        this.radioSearchChannelAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.yftech.libradio.dialog.RadioSearchChannelDialog.2
            public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view2, int i) {
                DataOfRadio dataOfRadio;
                if (RadioSearchChannelDialog.this.radioSearchChannelAdapter == null || (dataOfRadio = (DataOfRadio) RadioSearchChannelDialog.this.radioSearchChannelAdapter.getItem(i)) == null) {
                    return;
                }
                CarRadioManager.getInstance().setFreq(dataOfRadio.getFreq(), i);
                RadioSearchChannelDialog.this.radioSearchChannelAdapter.setPlayingIndex(i, true);
            }
        });
        this.rv.setAdapter(this.radioSearchChannelAdapter);
        this.pb_list.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setBoardVisible(boolean z) {
        if (z) {
            this.iv_toBoard.animate().cancel();
            this.iv_toBoard.setVisibility(0);
            this.iv_toBoard.setAlpha(1.0f);
            this.iv_toBoard.animate().alpha(0.0f).setStartDelay(4000L).setDuration(1000L).setListener(new AnimatorListenerAdapter() { // from class: com.yftech.libradio.dialog.RadioSearchChannelDialog.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    RadioSearchChannelDialog.this.iv_toBoard.setVisibility(4);
                }
            }).start();
            return;
        }
        this.iv_toBoard.animate().cancel();
        this.iv_toBoard.setVisibility(4);
    }

    public static RadioSearchChannelDialog newInstance(int i, BaseDialogFragment.OnDestotyListener onDestotyListener) {
        RadioSearchChannelDialog radioSearchChannelDialog = new RadioSearchChannelDialog();
        Bundle bundle = new Bundle();
        bundle.putInt("band", i);
        radioSearchChannelDialog.setArguments(bundle);
        radioSearchChannelDialog.setOnDestotyListener(onDestotyListener);
        return radioSearchChannelDialog;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.band = getArguments().getInt("band");
        }
        LogUtil.d("onCreate() band:" + this.band);
        CarRadioManager.registerRadioControlCallback(this.mCarRadioControlCallback);
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseDialogFragment
    public void onDestroy() {
        super.onDestroy();
        LogUtil.d("onDestroy()");
        CarRadioManager.unregisterRadioControlCallback(this.mCarRadioControlCallback);
    }

    public void onStart() {
        Window window;
        super.onStart();
        LogUtil.d("onStart()");
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null) {
            return;
        }
        window.setBackgroundDrawableResource(android.R.color.transparent);
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.dimAmount = 0.0f;
        attributes.windowAnimations = R.style.DialogRightAnimation;
        attributes.width = 592;
        attributes.height = 688;
        attributes.gravity = 8388659;
        attributes.x = ICarDoor.PSD_DOOR_SPEED_L;
        attributes.y = 62;
        window.setAttributes(attributes);
    }

    public void onResume() {
        super.onResume();
        LogUtil.d("onResume()");
        getPresenter().getSearchList(this.band);
    }

    public void onPause() {
        super.onPause();
        LogUtil.d("onPause()");
    }

    public void onStop() {
        super.onStop();
        LogUtil.d("onStop()");
    }

    @Override // com.yftech.libradio.view.IRadioSearchChannelDialogView
    public void displaySearchList(int i, List<DataOfRadio> list) {
        this.pb_list.setVisibility(8);
        if (list == null || list.isEmpty()) {
            this.rl_search_fail.setVisibility(0);
            this.rv.setVisibility(4);
            return;
        }
        this.rl_search_fail.setVisibility(8);
        this.rv.setVisibility(0);
        if (this.radioSearchChannelAdapter != null) {
            this.radioSearchChannelAdapter.setPlayingIndex(i, false);
            this.radioSearchChannelAdapter.setNewData(list);
            if (i < 0 || !this.isFirstFlag) {
                return;
            }
            this.isFirstFlag = false;
            if (i == 0 || list.size() - i <= 4) {
                this.rv.getLayoutManager().scrollToPositionWithOffset(i, 0);
            } else {
                this.rv.getLayoutManager().scrollToPositionWithOffset(i - 1, 0);
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.iv_close) {
            dismiss();
            return;
        }
        if (view.getId() == R.id.iv_search || view.getId() == R.id.tv_title) {
            if (Utils.isQuickClick()) {
                LogUtil.i("iv_search or tv_title quick click");
                return;
            } else {
                RadioSearchingDialog.newInstance(getString(R.string.radio_channel_search_dialog_search_scanning), this.band).show(getChildFragmentManager(), RadioSearchingDialog.class.getSimpleName());
                return;
            }
        }
        if (view.getId() == R.id.iv_toBoard) {
            if (this.pullUp) {
                this.rv.scrollToPosition(0);
                return;
            }
            int itemCount = this.radioSearchChannelAdapter.getItemCount() - 1;
            if (itemCount >= 0) {
                this.rv.scrollToPosition(itemCount);
            }
        }
    }
}
