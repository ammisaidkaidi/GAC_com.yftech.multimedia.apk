package com.yftech.libradio.dabui.epg;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.media.common.util.LogUtil;
import com.media.common.util.ToastUtils;
import com.yftech.car.media.radio.dab.CarDabRadioManager;
import com.yftech.car.media.radio.dab.entity.epg.Location;
import com.yftech.car.media.radio.dab.entity.epg.Programme;
import com.yftech.libmvpmodule.mvp.BaseMvpFragment;
import com.yftech.libmvpmodule.mvp.BaseMvpPresenter;
import com.yftech.libradio.R;
import com.yftech.libradio.Utils;
import com.yftech.libradio.dabui.epg.EpgSubcribeConflictDialog;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/* loaded from: /home/user/work/dex/classes4.dex */
public abstract class EpgBaseFragment extends BaseMvpFragment implements View.OnClickListener {
    private static final int MSG_SORT_LIST = 43563;
    private EpgSubcribeConflictDialog conflictDialog;
    private View emptyView;
    private ImageView ivLast;
    private ImageView ivNext;
    private ImageView iv_toBoard;
    private ProgressBar mProgressBar;
    private RecyclerView rvEpgList;
    private TextView tvSelectedDate;
    private List<Programme> mFilterdProgrammeList = new ArrayList();
    protected Calendar currentDate = Calendar.getInstance();
    private Calendar selectedDate = Calendar.getInstance();
    private boolean pullUp = false;
    protected Handler mHanlder = new Handler(Looper.getMainLooper()) { // from class: com.yftech.libradio.dabui.epg.EpgBaseFragment.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == EpgBaseFragment.MSG_SORT_LIST) {
                long epgDateTimeUpdate = CarDabRadioManager.getInstance().getEpgDateTimeUpdate();
                Date date = new Date();
                date.setTime(epgDateTimeUpdate);
                EpgBaseFragment.this.currentDate.setTime(date);
                EpgBaseFragment.this.getProgrammeList(EpgBaseFragment.this.selectedDate);
                EpgBaseFragment.this.mHanlder.removeMessages(EpgBaseFragment.MSG_SORT_LIST);
                EpgBaseFragment.this.mHanlder.sendEmptyMessageDelayed(EpgBaseFragment.MSG_SORT_LIST, 60000L);
            }
        }
    };
    private CarDabRadioManager.CarDabRadioControlCallback callback = new CarDabRadioManager.CarDabRadioControlCallback() { // from class: com.yftech.libradio.dabui.epg.EpgBaseFragment.6
        public void onEpgDataChange() {
            super.onEpgDataChange();
        }

        public void onEpgProgrammeListChange(String str) {
            super.onEpgProgrammeListChange(str);
        }

        public void onEpgDateTimeUpdateChange(int[] iArr, long j) {
            super.onEpgDateTimeUpdateChange(iArr, j);
            Date date = new Date();
            date.setTime(j);
            LogUtil.d("epgTime: " + j + " current time: " + date);
            EpgBaseFragment.this.currentDate.setTime(date);
        }
    };

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    protected BaseMvpPresenter createPresenter() {
        return null;
    }

    abstract void getProgrammeList(Calendar calendar);

    abstract String getTipsForEmptyContent();

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        long epgDateTimeUpdate = CarDabRadioManager.getInstance().getEpgDateTimeUpdate();
        Date date = new Date();
        date.setTime(epgDateTimeUpdate);
        LogUtil.d("epgTime: " + epgDateTimeUpdate + " current time: " + date);
        this.currentDate.setTime(date);
        this.selectedDate.setTime(date);
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    protected View onBindView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_dab_epg_list, viewGroup, false);
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    protected void initView(View view) {
        this.mProgressBar = (ProgressBar) view.findViewById(R.id.pb_list);
        this.rvEpgList = view.findViewById(R.id.rv_dab_epg_list);
        this.emptyView = view.findViewById(R.id.layout_no_content);
        this.ivLast = (ImageView) view.findViewById(R.id.iv_last);
        this.ivNext = (ImageView) view.findViewById(R.id.iv_next);
        this.ivLast.setOnClickListener(this);
        this.ivNext.setOnClickListener(this);
        this.tvSelectedDate = (TextView) view.findViewById(R.id.tv_date_sel);
        ((TextView) view.findViewById(R.id.tv_no_epg_content)).setText(getTipsForEmptyContent());
        EpgListAdapter epgListAdapter = new EpgListAdapter();
        final LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext(), 1, false);
        this.rvEpgList.setLayoutManager(linearLayoutManager);
        this.rvEpgList.setAdapter(epgListAdapter);
        this.iv_toBoard = (ImageView) view.findViewById(R.id.iv_toBoard);
        this.iv_toBoard.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.libradio.dabui.epg.EpgBaseFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (EpgBaseFragment.this.pullUp) {
                    EpgBaseFragment.this.rvEpgList.scrollToPosition(0);
                    return;
                }
                int itemCount = EpgBaseFragment.this.rvEpgList.getAdapter().getItemCount() - 1;
                if (itemCount >= 0) {
                    EpgBaseFragment.this.rvEpgList.scrollToPosition(itemCount);
                }
            }
        });
        this.rvEpgList.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.yftech.libradio.dabui.epg.EpgBaseFragment.3
            public void onScrolled(@NonNull RecyclerView recyclerView, int i, int i2) {
                if (EpgBaseFragment.this.pullUp != (i2 < 0)) {
                    EpgBaseFragment.this.pullUp = i2 < 0;
                }
                EpgBaseFragment.this.pullUp = i2 < 0;
                int findFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition();
                int findLastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition();
                if (findFirstVisibleItemPosition <= 7 || findLastVisibleItemPosition >= EpgBaseFragment.this.rvEpgList.getAdapter().getItemCount() - 1) {
                    EpgBaseFragment.this.setBoardVisible(false);
                } else if (EpgBaseFragment.this.pullUp) {
                    EpgBaseFragment.this.iv_toBoard.setImageResource(R.mipmap.radio_btn_reach_top);
                    EpgBaseFragment.this.setBoardVisible(true);
                } else {
                    EpgBaseFragment.this.iv_toBoard.setImageResource(R.mipmap.radio_btn_reach_bottom);
                    EpgBaseFragment.this.setBoardVisible(true);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setBoardVisible(boolean z) {
        if (z) {
            this.iv_toBoard.animate().cancel();
            this.iv_toBoard.setVisibility(0);
            this.iv_toBoard.setAlpha(1.0f);
            this.iv_toBoard.animate().alpha(0.0f).setStartDelay(4000L).setDuration(1000L).setListener(new AnimatorListenerAdapter() { // from class: com.yftech.libradio.dabui.epg.EpgBaseFragment.4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    EpgBaseFragment.this.iv_toBoard.setVisibility(4);
                }
            }).start();
            return;
        }
        this.iv_toBoard.animate().cancel();
        this.iv_toBoard.setVisibility(4);
    }

    public void onStart() {
        super.onStart();
        CarDabRadioManager.getInstance().registerRadioControlCallback(this.callback);
    }

    public void onStop() {
        super.onStop();
        CarDabRadioManager.getInstance().unregisterRadioControlCallback(this.callback);
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    public void onResume() {
        super.onResume();
        updateDateSelect();
        updateSelectedProgramme();
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    public void onPause() {
        super.onPause();
        this.mHanlder.removeMessages(MSG_SORT_LIST);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onProgrameGot(final List<Programme> list) {
        this.mHanlder.post(new Runnable() { // from class: com.yftech.libradio.dabui.epg.EpgBaseFragment.5
            @Override // java.lang.Runnable
            public void run() {
                EpgBaseFragment.this.mProgressBar.setVisibility(8);
                if (list == null || list.isEmpty()) {
                    EpgBaseFragment.this.rvEpgList.setVisibility(8);
                    EpgBaseFragment.this.emptyView.setVisibility(0);
                    return;
                }
                EpgBaseFragment.this.mFilterdProgrammeList.clear();
                EpgBaseFragment.this.mFilterdProgrammeList.addAll(list);
                EpgBaseFragment.this.rvEpgList.setVisibility(0);
                EpgBaseFragment.this.emptyView.setVisibility(8);
                EpgBaseFragment.this.rvEpgList.getAdapter().notifyDataSetChanged();
                EpgBaseFragment.this.mHanlder.removeMessages(EpgBaseFragment.MSG_SORT_LIST);
                if (EpgBaseFragment.this.currentDate.get(5) == EpgBaseFragment.this.selectedDate.get(5) && EpgBaseFragment.this.currentDate.get(2) == EpgBaseFragment.this.selectedDate.get(2)) {
                    EpgBaseFragment.this.mHanlder.sendEmptyMessageDelayed(EpgBaseFragment.MSG_SORT_LIST, 60000L);
                }
            }
        });
    }

    protected void updateDateSelect() {
        this.tvSelectedDate.setText(new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH).format(this.selectedDate.getTime()));
        if (this.currentDate.get(1) > this.selectedDate.get(1) || this.currentDate.get(2) > this.selectedDate.get(2) || (this.currentDate.get(2) == this.selectedDate.get(2) && this.currentDate.get(5) >= this.selectedDate.get(5))) {
            this.ivLast.setEnabled(false);
        } else {
            this.ivLast.setEnabled(true);
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(this.currentDate.getTime());
        calendar.add(5, 6);
        if (calendar.get(1) == this.selectedDate.get(1) && calendar.get(2) == this.selectedDate.get(2) && calendar.get(5) == this.selectedDate.get(5)) {
            this.ivNext.setEnabled(false);
        } else {
            this.ivNext.setEnabled(true);
        }
    }

    private void updateSelectedProgramme() {
        this.rvEpgList.setVisibility(8);
        this.emptyView.setVisibility(8);
        this.mProgressBar.setVisibility(0);
        this.mHanlder.removeMessages(MSG_SORT_LIST);
        getProgrammeList(this.selectedDate);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.iv_last) {
            this.selectedDate.add(5, -1);
            updateDateSelect();
            this.rvEpgList.setVisibility(8);
            this.emptyView.setVisibility(8);
            this.mProgressBar.setVisibility(0);
            updateSelectedProgramme();
            return;
        }
        if (view.getId() == R.id.iv_next) {
            this.selectedDate.add(5, 1);
            updateDateSelect();
            this.rvEpgList.setVisibility(8);
            this.emptyView.setVisibility(8);
            this.mProgressBar.setVisibility(0);
            updateSelectedProgramme();
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    private class EpgListAdapter extends RecyclerView.Adapter<EpgViewHolder> {
        private EpgListAdapter() {
        }

        @NonNull
        public EpgViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
            return new EpgViewHolder(LayoutInflater.from(EpgBaseFragment.this.getContext()).inflate(R.layout.item_dab_epg_list, viewGroup, false));
        }

        public void onBindViewHolder(@NonNull EpgViewHolder epgViewHolder, int i) {
            epgViewHolder.index = i;
            Programme programme = (Programme) EpgBaseFragment.this.mFilterdProgrammeList.get(i);
            if (programme == null) {
                return;
            }
            String string = EpgBaseFragment.this.getString(R.string.radio_unknown);
            String str = programme.name;
            if (str != null && !TextUtils.isEmpty(str.trim())) {
                string = str.trim();
            }
            epgViewHolder.tvEpgName.setText(string);
            String str2 = ((Location) programme.mLocations.get(0)).time;
            if (!TextUtils.isEmpty(str2)) {
                epgViewHolder.tvEpgTime.setText(str2);
            }
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) epgViewHolder.tvEpgName.getLayoutParams();
            if (EpgUtils.isProgramPlaying(EpgBaseFragment.this.currentDate, programme)) {
                epgViewHolder.ivPlayStatus.setVisibility(0);
                epgViewHolder.ivEpgStatus.setImageResource(R.mipmap.icon_epg_live);
                epgViewHolder.tvEpgName.setTextColor(EpgBaseFragment.this.getContext().getColor(R.color.colorDD9D09));
                layoutParams.setMarginStart(82);
            } else {
                epgViewHolder.tvEpgName.setTextColor(EpgBaseFragment.this.getContext().getColor(R.color.colorFFFFFF));
                epgViewHolder.ivPlayStatus.setVisibility(8);
                if (CarDabRadioManager.getInstance().isEpgProgramme(programme)) {
                    epgViewHolder.ivEpgStatus.setImageResource(R.mipmap.btn_epg_unreserve);
                } else {
                    epgViewHolder.ivEpgStatus.setImageResource(R.mipmap.btn_epg_reserve);
                }
                layoutParams.setMarginStart(32);
            }
            epgViewHolder.imgEpgIcon.setImageResource(R.mipmap.pic_list_tiny_default);
        }

        public int getItemCount() {
            return EpgBaseFragment.this.mFilterdProgrammeList.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes4.dex */
    public class EpgViewHolder extends RecyclerView.ViewHolder {
        private ImageView imgEpgIcon;
        private int index;
        private ImageView ivEpgStatus;
        private ImageView ivPlayStatus;
        private TextView tvEpgName;
        private TextView tvEpgTime;

        public EpgViewHolder(@NonNull View view) {
            super(view);
            this.ivPlayStatus = (ImageView) view.findViewById(R.id.iv_play_status);
            this.tvEpgName = (TextView) view.findViewById(R.id.tv_epg_name);
            this.tvEpgTime = (TextView) view.findViewById(R.id.tv_epg_time);
            this.ivEpgStatus = (ImageView) view.findViewById(R.id.iv_epg_status);
            this.imgEpgIcon = (ImageView) view.findViewById(R.id.iv_epg_icon);
            this.ivEpgStatus.setOnClickListener(new AnonymousClass1(EpgBaseFragment.this));
            view.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.libradio.dabui.epg.EpgBaseFragment.EpgViewHolder.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                }
            });
        }

        /* renamed from: com.yftech.libradio.dabui.epg.EpgBaseFragment$EpgViewHolder$1, reason: invalid class name */
        /* loaded from: /home/user/work/dex/classes4.dex */
        class AnonymousClass1 implements View.OnClickListener {
            final /* synthetic */ EpgBaseFragment val$this$0;

            AnonymousClass1(EpgBaseFragment epgBaseFragment) {
                this.val$this$0 = epgBaseFragment;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (Utils.isQuickClick()) {
                    LogUtil.i("ivEpgStatus quick click");
                    return;
                }
                LogUtil.d("subscribe egp -------");
                Programme programme = (Programme) EpgBaseFragment.this.mFilterdProgrammeList.get(EpgViewHolder.this.index);
                if (programme == null) {
                    LogUtil.w("subscribe egp , programme is null  ------");
                    return;
                }
                if (EpgUtils.isProgramPlaying(EpgBaseFragment.this.currentDate, programme)) {
                    return;
                }
                if (!CarDabRadioManager.getInstance().isEpgProgramme(programme)) {
                    Programme isSubscribeConflict = EpgBaseFragment.this.isSubscribeConflict(programme);
                    if (isSubscribeConflict != null) {
                        if (EpgBaseFragment.this.conflictDialog == null) {
                            EpgBaseFragment.this.conflictDialog = new EpgSubcribeConflictDialog(EpgBaseFragment.this.getContext());
                        }
                        EpgBaseFragment.this.conflictDialog.setConfirmCallBack(new EpgSubcribeConflictDialog.EpgSubcribeConfirmCallBack() { // from class: com.yftech.libradio.dabui.epg.EpgBaseFragment.EpgViewHolder.1.1
                            @Override // com.yftech.libradio.dabui.epg.EpgSubcribeConflictDialog.EpgSubcribeConfirmCallBack
                            public void onCancle() {
                            }

                            @Override // com.yftech.libradio.dabui.epg.EpgSubcribeConflictDialog.EpgSubcribeConfirmCallBack
                            public void onSubcribeSuccess() {
                                ToastUtils.showNormalMessage(R.string.epg_add_subscribe_successful, 1);
                                EpgViewHolder.this.ivEpgStatus.setImageResource(R.mipmap.btn_epg_unreserve);
                                EpgBaseFragment.this.mHanlder.postDelayed(new Runnable() { // from class: com.yftech.libradio.dabui.epg.EpgBaseFragment.EpgViewHolder.1.1.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        EpgBaseFragment.this.rvEpgList.getAdapter().notifyDataSetChanged();
                                    }
                                }, 2000L);
                            }

                            @Override // com.yftech.libradio.dabui.epg.EpgSubcribeConflictDialog.EpgSubcribeConfirmCallBack
                            public void onSubcribeFaile() {
                                ToastUtils.showNormalMessage(R.string.epg_add_subscribe_failure, 1);
                                EpgViewHolder.this.ivEpgStatus.setImageResource(R.mipmap.btn_epg_reserve);
                            }
                        });
                        EpgBaseFragment.this.conflictDialog.setParams(programme, isSubscribeConflict);
                        EpgBaseFragment.this.conflictDialog.show();
                    } else if (CarDabRadioManager.getInstance().addEpgProgramme(programme) > 0) {
                        ToastUtils.showNormalMessage(R.string.epg_add_subscribe_successful, 1);
                        EpgViewHolder.this.ivEpgStatus.setImageResource(R.mipmap.btn_epg_unreserve);
                    } else {
                        ToastUtils.showNormalMessage(R.string.epg_add_subscribe_failure, 1);
                        EpgViewHolder.this.ivEpgStatus.setImageResource(R.mipmap.btn_epg_reserve);
                    }
                } else if (CarDabRadioManager.getInstance().removeEpgProgramme(programme) > 0) {
                    if (EpgBaseFragment.this instanceof EpgSubsCribedProgramFragment) {
                        EpgBaseFragment.this.mFilterdProgrammeList.remove(EpgViewHolder.this.index);
                    }
                    ToastUtils.showNormalMessage(R.string.epg_remove_subscribe_successful, 1);
                    EpgViewHolder.this.ivEpgStatus.setImageResource(R.mipmap.btn_epg_reserve);
                } else {
                    ToastUtils.showNormalMessage(R.string.epg_remove_subscribe_failure, 1);
                    EpgViewHolder.this.ivEpgStatus.setImageResource(R.mipmap.btn_epg_unreserve);
                }
                EpgBaseFragment.this.rvEpgList.getAdapter().notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Programme isSubscribeConflict(Programme programme) {
        if (programme == null) {
            return null;
        }
        Calendar time = EpgUtils.getTime(programme);
        if (time == null) {
            LogUtil.d("programmeTime is null ---");
            return null;
        }
        List<Programme> epgProgrammeList = CarDabRadioManager.getInstance().getEpgProgrammeList();
        if (epgProgrammeList == null || epgProgrammeList.isEmpty()) {
            LogUtil.d("subscribedProgrammeList is empty ---");
            return null;
        }
        for (Programme programme2 : epgProgrammeList) {
            Calendar time2 = EpgUtils.getTime(programme2);
            if (time2 != null && time.get(1) == time2.get(1) && time.get(2) == time2.get(2) && time.get(5) == time2.get(5) && time.get(11) == time2.get(11) && time.get(12) == time2.get(12)) {
                return programme2;
            }
        }
        return null;
    }
}
