package com.yftech.multimedia.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemProperties;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;
import com.media.common.event.MediaDataCallbackForMusicDataChangedEvent;
import com.media.common.event.MediaDataCallbackForPhotoDataChangedEvent;
import com.media.common.event.MediaDataCallbackForScanStatusChangedEvent;
import com.media.common.event.MediaDataCallbackForVideoDataChangedEvent;
import com.media.common.event.USBIndexSwitchEvent;
import com.media.common.event.USBPushOutInPhotoDisplayingEvent;
import com.media.common.event.USBStateForPhotoAndVideoEvent;
import com.media.common.ui.widget.MyTabSelector;
import com.media.common.ui.widget.TipsDialog;
import com.media.common.util.LogUtil;
import com.media.common.util.MyFragmentManger;
import com.yftech.car.media.data.CarMediaDataManager;
import com.yftech.libgallery.ui.PictureListFragment;
import com.yftech.libgallery.utils.MyPhotoDataManager;
import com.yftech.libmedia.player.utils.MyVideoDataManager;
import com.yftech.libmvpmodule.mvp.BaseMvpFragment;
import com.yftech.libmvpmodule.mvp.BaseMvpPresenter;
import com.yftech.libmvpmodule.utils.SystemUtil;
import com.yftech.multimedia.MainActivity;
import com.yftech.multimedia.R;
import com.yftech.vehicle.internal.adapter.ICarDoor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Stack;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /home/user/work/dex/classes4.dex */
public class MainFragment extends BaseMvpFragment implements MyTabSelector.OnTabClickListener {
    private static final String ARG_PARAM1 = "enableDevices";
    private Fragment currentFragment;
    private TipsDialog dialog;
    private List<Integer> enableDevices;
    private FrameLayout fl_tips;
    private ImageView iv_tips_icon;
    private MyTabSelector selector;
    private TextView tv_tips_content;
    private Handler mHandler = new Handler(Looper.getMainLooper());
    private CarMediaDataManager.OnDataChangeCallback callback = new CarMediaDataManager.OnDataChangeCallback() { // from class: com.yftech.multimedia.ui.MainFragment.2
        public void onScanStatusChange(int i, boolean z) {
            LogUtil.d("onScanStatusChange:index=" + i + " ,isScanner=" + z + ", PhotoFileSize=" + CarMediaDataManager.getInstance().getPhotoFileSize(i) + ", VideoFileSize=" + CarMediaDataManager.getInstance().getVideoFileSize(i));
            EventBus.getDefault().post(new MediaDataCallbackForScanStatusChangedEvent(i, z));
            EventBus.getDefault().post(new MediaDataCallbackForPhotoDataChangedEvent(i));
            EventBus.getDefault().post(new MediaDataCallbackForVideoDataChangedEvent(i));
        }

        public void onVideoDataChange(int i) {
            LogUtil.d("onVideoDataChange:index=" + i);
            EventBus.getDefault().post(new MediaDataCallbackForVideoDataChangedEvent(i));
        }

        public void onPhotoDataChange(int i) {
            LogUtil.d("onPhotoDataChange:index=" + i);
            EventBus.getDefault().post(new MediaDataCallbackForPhotoDataChangedEvent(i));
        }

        public void onMusicDataChange(int i) {
            LogUtil.d("onMusicDataChange:index=" + i);
            EventBus.getDefault().post(new MediaDataCallbackForMusicDataChangedEvent(i));
        }
    };

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    protected BaseMvpPresenter createPresenter() {
        return null;
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    protected View onBindView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_main, viewGroup, false);
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    protected void initView(View view) {
        this.selector = view.findViewById(R.id.selector);
        this.selector.setTabArray(getResources().getStringArray(R.array.usb_tabs));
        this.selector.setCustomStyle(new MyTabSelector.ICustomStyle() { // from class: com.yftech.multimedia.ui.MainFragment.1
            public int getIndexBackgroundResource() {
                return R.mipmap.pv_tab_line_hightlight;
            }

            public int getIndexMode() {
                return 10002;
            }

            public void setIndexLineLayoutParamsExtra(RelativeLayout.LayoutParams layoutParams) {
            }

            public int setTabSelectedStyle(TextView textView, TextView textView2) {
                return 1;
            }

            public void setTabStyle(TextView textView, int i) {
                textView.setTextSize(0, 32.0f);
                textView.setGravity(17);
                textView.setTextColor(ContextCompat.getColorStateList((Context) Objects.requireNonNull(MainFragment.this.getContext()), R.color.device_enable_selector));
                if (MainFragment.this.enableDevices != null) {
                    textView.setEnabled(MainFragment.this.enableDevices.contains(Integer.valueOf(i)));
                } else {
                    textView.setEnabled(false);
                }
            }

            public void setTabLayoutParamsExtra(RelativeLayout.LayoutParams layoutParams, int i) {
                layoutParams.width = ICarDoor.SLIDING_DOOR_CMD_R_SETTING;
                layoutParams.height = 80;
            }

            public int getStartIndex() {
                if (MainFragment.this.enableDevices == null || MainFragment.this.enableDevices.isEmpty()) {
                    return -1;
                }
                Collections.sort(MainFragment.this.enableDevices, new Comparator<Integer>() { // from class: com.yftech.multimedia.ui.MainFragment.1.1
                    @Override // java.util.Comparator
                    public int compare(Integer num, Integer num2) {
                        return num.intValue() - num2.intValue();
                    }
                });
                return ((Integer) MainFragment.this.enableDevices.get(0)).intValue();
            }
        });
        this.selector.setOnTabClickListener(this);
        this.fl_tips = (FrameLayout) view.findViewById(R.id.fl_tips);
        this.iv_tips_icon = (ImageView) view.findViewById(R.id.iv_tips_icon);
        this.tv_tips_content = (TextView) view.findViewById(R.id.tv_tips_content);
        if (this.enableDevices != null && !this.enableDevices.isEmpty()) {
            this.fl_tips.setVisibility(8);
            SubjectFragment newInstance = SubjectFragment.newInstance(this.enableDevices.get(0).intValue());
            MyFragmentManger.getInstance().pushFragment(this.enableDevices.get(0).intValue(), newInstance);
            MyFragmentManger.getInstance().switchContent(newInstance, 2131362168);
            return;
        }
        this.iv_tips_icon.setImageResource(R.mipmap.pv_error_usb_equipment);
        this.tv_tips_content.setText(R.string.usb_devices_error_tips_2);
        this.fl_tips.setVisibility(0);
    }

    public void setTipsContent(String str, int i) {
        if (TextUtils.isEmpty(str) || i <= 0) {
            this.fl_tips.setVisibility(8);
            return;
        }
        this.fl_tips.setVisibility(0);
        this.tv_tips_content.setText(str);
        this.iv_tips_icon.setImageResource(i);
    }

    public int getTabIndex() {
        return this.selector.getIndex();
    }

    @Deprecated
    public void switchContent(Fragment fragment) {
        FragmentTransaction beginTransaction = getChildFragmentManager().beginTransaction();
        if (this.currentFragment == null) {
            beginTransaction.add(2131362168, fragment).commitNowAllowingStateLoss();
        } else if (this.currentFragment != fragment) {
            if (!fragment.isAdded()) {
                beginTransaction.hide(this.currentFragment).add(2131362168, fragment).commitNowAllowingStateLoss();
            } else {
                beginTransaction.hide(this.currentFragment).show(fragment).commitNowAllowingStateLoss();
            }
        }
        this.currentFragment = fragment;
    }

    public static MainFragment newInstance(ArrayList<Integer> arrayList) {
        MainFragment mainFragment = new MainFragment();
        Bundle bundle = new Bundle();
        bundle.putIntegerArrayList(ARG_PARAM1, arrayList);
        mainFragment.setArguments(bundle);
        return mainFragment;
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.enableDevices = getArguments().getIntegerArrayList(ARG_PARAM1);
        }
        MyFragmentManger.getInstance().init(getChildFragmentManager());
        MyFragmentManger.getInstance().setVideoPlayerLayoutId(R.id.rl_main);
        MyFragmentManger.getInstance().setPhotoLayoutId(R.id.rl_main);
        CarMediaDataManager.getInstance().registerCarDataControlCallback(this.callback);
        EventBus.getDefault().register(this);
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    public void onDestroy() {
        super.onDestroy();
        if (this.dialog != null && this.dialog.isVisible()) {
            this.dialog.dismissAllowingStateLoss();
            this.dialog = null;
        }
        MyFragmentManger.getInstance().release();
        CarMediaDataManager.getInstance().unregisterCarDataControlCallback(this.callback);
        EventBus.getDefault().unregister(this);
        this.mHandler.removeCallbacksAndMessages(null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onUSBStatusChange(USBStateForPhotoAndVideoEvent uSBStateForPhotoAndVideoEvent) {
        LogUtil.d("onUSBStatusChange:event=" + uSBStateForPhotoAndVideoEvent.toString());
        if (!uSBStateForPhotoAndVideoEvent.isUsbExists) {
            MyPhotoDataManager.getInstance().resetData(uSBStateForPhotoAndVideoEvent.usbIndex);
            MyVideoDataManager.getInstance().resetData(uSBStateForPhotoAndVideoEvent.usbIndex);
            if (this.selector.getIndex() == uSBStateForPhotoAndVideoEvent.usbIndex) {
                MainActivity activity = getActivity();
                if (activity instanceof MainActivity) {
                    MainActivity mainActivity = activity;
                    LogUtil.d("onUSBStatusChange:isDisplaying=" + mainActivity.isDisplaying);
                    if (mainActivity.isDisplaying) {
                        SystemProperties.set("com.yftech.multimedia.show_alert_dialog", String.valueOf(true));
                        String string = getString(R.string.current_usb_exited);
                        if (this.dialog == null) {
                            this.dialog = TipsDialog.newInstance(string);
                            this.dialog.setOnConfirmClickListener(new TipsDialog.OnConfirmClickListener() { // from class: com.yftech.multimedia.ui.MainFragment.3
                                public void onConfirm() {
                                    SystemProperties.set("com.yftech.multimedia.show_alert_dialog", String.valueOf(false));
                                }
                            });
                            this.dialog.show(mainActivity.getSupportFragmentManager(), string);
                        } else {
                            this.dialog.setContent(string);
                            if (!this.dialog.isAdded() && !this.dialog.isVisible() && !this.dialog.isRemoving()) {
                                this.dialog.show(mainActivity.getSupportFragmentManager(), string);
                            }
                        }
                        this.mHandler.postDelayed(new Runnable() { // from class: com.yftech.multimedia.ui.MainFragment.4
                            @Override // java.lang.Runnable
                            public void run() {
                                SystemProperties.set("com.yftech.multimedia.show_alert_dialog", String.valueOf(false));
                            }
                        }, 1500L);
                    }
                }
            }
            LogUtil.d("get the usbIndex:" + uSBStateForPhotoAndVideoEvent.usbIndex + ", isUsbExists:" + uSBStateForPhotoAndVideoEvent.isUsbExists);
            Stack fragmentStack = MyFragmentManger.getInstance().getFragmentStack(uSBStateForPhotoAndVideoEvent.usbIndex);
            if (fragmentStack != null && !fragmentStack.isEmpty()) {
                FragmentTransaction beginTransaction = getChildFragmentManager().beginTransaction();
                while (fragmentStack.size() > 0) {
                    beginTransaction.remove((Fragment) fragmentStack.pop());
                }
                beginTransaction.commitAllowingStateLoss();
            }
            MyFragmentManger.getInstance().removeFragmentStack(uSBStateForPhotoAndVideoEvent.usbIndex);
            int i = 0;
            while (true) {
                if (i >= this.enableDevices.size()) {
                    break;
                }
                if (this.enableDevices.get(i).intValue() == uSBStateForPhotoAndVideoEvent.usbIndex) {
                    this.enableDevices.remove(i);
                    break;
                }
                i++;
            }
            LogUtil.d("setTabEnable:index=" + (uSBStateForPhotoAndVideoEvent.usbIndex % this.selector.getTabCount()));
            this.selector.setTabEnable(uSBStateForPhotoAndVideoEvent.usbIndex % this.selector.getTabCount(), false);
            SystemUtil.setSysFullScreen((Activity) Objects.requireNonNull(getActivity()), false);
            if (this.enableDevices.isEmpty()) {
                this.fl_tips.setVisibility(0);
                this.iv_tips_icon.setImageResource(R.mipmap.pv_error_usb_equipment);
                this.tv_tips_content.setText(R.string.usb_devices_error_tips_2);
                return;
            }
            this.selector.setIndexTab(this.enableDevices.get(0).intValue() % this.selector.getTabCount());
            return;
        }
        this.enableDevices.add(Integer.valueOf(uSBStateForPhotoAndVideoEvent.usbIndex % this.selector.getTabCount()));
        this.selector.setTabEnable(uSBStateForPhotoAndVideoEvent.usbIndex % this.selector.getTabCount(), true);
    }

    public void onActivityResult(int i, int i2, @Nullable Intent intent) {
        super.onActivityResult(i, i2, intent);
        SparseArray allFragments = MyFragmentManger.getInstance().getAllFragments();
        if (allFragments != null) {
            for (int i3 = 0; i3 < allFragments.size(); i3++) {
                Stack stack = (Stack) allFragments.valueAt(i3);
                if (stack != null) {
                    Iterator it = stack.iterator();
                    while (it.hasNext()) {
                        ((Fragment) it.next()).onActivityResult(i, i2, intent);
                    }
                }
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onUSBPushOutInPhotoDisplaying(USBPushOutInPhotoDisplayingEvent uSBPushOutInPhotoDisplayingEvent) {
        LogUtil.d("onUSBPushOutInPhotoDisplaying");
        MainActivity activity = getActivity();
        if (activity instanceof MainActivity) {
            MainActivity mainActivity = activity;
            SystemProperties.set("com.yftech.multimedia.show_alert_dialog", String.valueOf(true));
            String string = getString(R.string.current_usb_exited);
            if (this.dialog == null) {
                this.dialog = TipsDialog.newInstance(string);
                this.dialog.setOnConfirmClickListener(new TipsDialog.OnConfirmClickListener() { // from class: com.yftech.multimedia.ui.MainFragment.5
                    public void onConfirm() {
                        SystemProperties.set("com.yftech.multimedia.show_alert_dialog", String.valueOf(false));
                    }
                });
                this.dialog.show(mainActivity.getSupportFragmentManager(), string);
            } else {
                this.dialog.setContent(string);
                if (!this.dialog.isAdded() && !this.dialog.isVisible() && !this.dialog.isRemoving()) {
                    this.dialog.show(mainActivity.getSupportFragmentManager(), string);
                }
            }
            this.mHandler.postDelayed(new Runnable() { // from class: com.yftech.multimedia.ui.MainFragment.6
                @Override // java.lang.Runnable
                public void run() {
                    SystemProperties.set("com.yftech.multimedia.show_alert_dialog", String.valueOf(false));
                }
            }, 1500L);
        }
    }

    public void onTabClick(View view, int i) {
        if (this.enableDevices == null || this.enableDevices.isEmpty() || this.enableDevices.get(i % this.enableDevices.size()) == null) {
            return;
        }
        int i2 = !this.enableDevices.contains(Integer.valueOf(i)) ? -1 : i == 0 ? 0 : 1;
        if (i2 < 0) {
            return;
        }
        LogUtil.d("onTabClick:index=" + i2);
        EventBus.getDefault().post(new USBIndexSwitchEvent(i2));
        Stack fragmentStack = MyFragmentManger.getInstance().getFragmentStack(i2);
        if (fragmentStack == null || fragmentStack.isEmpty()) {
            SubjectFragment newInstance = SubjectFragment.newInstance(i2);
            MyFragmentManger.getInstance().pushFragment(i2, newInstance);
            MyFragmentManger.getInstance().switchContent(newInstance, 2131362168);
        } else {
            Fragment fragment = (Fragment) fragmentStack.peek();
            if (fragment instanceof SubjectFragment) {
                setTipsContent("", 0);
            }
            MyFragmentManger.getInstance().switchContent(fragment, 2131362168);
        }
    }

    public void onBackPress() {
        Stack fragmentStack = MyFragmentManger.getInstance().getFragmentStack(this.selector.getIndex());
        if (fragmentStack == null || fragmentStack.isEmpty()) {
            return;
        }
        Fragment fragment = (Fragment) fragmentStack.pop();
        if (!(fragment instanceof PictureListFragment)) {
            getChildFragmentManager().beginTransaction().remove(fragment).commitAllowingStateLoss();
        }
        if (fragmentStack.isEmpty()) {
            return;
        }
        Fragment fragment2 = (Fragment) fragmentStack.peek();
        if (fragment2 instanceof BaseMvpFragment) {
            BaseMvpFragment baseMvpFragment = (BaseMvpFragment) fragment2;
            baseMvpFragment.onResume();
            baseMvpFragment.onRefreshData();
        } else if (fragment2 != null && fragment2.isAdded()) {
            fragment2.onResume();
        }
        MyFragmentManger.getInstance().switchContent(fragment2, 2131362168);
    }
}
