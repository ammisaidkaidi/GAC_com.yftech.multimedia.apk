package com.yftech.libradio;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;
import com.media.common.ui.widget.FlowRadioGroup;
import com.media.common.util.LogUtil;
import com.yftech.libmvpmodule.mvp.BaseMvpActivity;
import com.yftech.libmvpmodule.mvp.BaseMvpPresenter;
import com.yftech.libradio.dabui.DabMainFragment;
import com.yftech.libradio.widget.RadioDabChannelSwitch;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /home/user/work/dex/classes4.dex */
public class RadioMainActivity extends BaseMvpActivity implements RadioDabChannelSwitch.OnCheckChangeListener {
    private final String ACTION_SOURCE_WINDOW_START = "radio_window_start";
    private RadioMainFragment amAndFmFragment;
    private Fragment currentFragment;
    private DabMainFragment dabMainFragment;
    private RadioDabChannelSwitch mSwRadio;

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpActivity
    protected BaseMvpPresenter createPresenter() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.yftech.libmvpmodule.mvp.BaseMvpActivity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        LogUtil.d("onCreate()");
        if (Utils.isRadioDABPresent()) {
            setContentView(R.layout.activity_main_radio_dab);
        } else {
            setContentView(R.layout.activity_main_radio);
        }
        this.mSwRadio = (RadioDabChannelSwitch) findViewById(R.id.sw_am_fm_dab);
        this.mSwRadio.setOnCheckChangeListener(this);
        if (bundle != null) {
            this.dabMainFragment = (DabMainFragment) getSupportFragmentManager().findFragmentByTag(DabMainFragment.class.getSimpleName());
            this.amAndFmFragment = (RadioMainFragment) getSupportFragmentManager().findFragmentByTag(RadioMainFragment.class.getSimpleName());
        }
        LogUtil.d("onCreate(),dabMainFragment=" + this.dabMainFragment);
        LogUtil.d("onCreate(),amAndFmFragment=" + this.amAndFmFragment);
        if (this.dabMainFragment == null) {
            this.dabMainFragment = new DabMainFragment();
        }
        if (this.amAndFmFragment == null) {
            this.amAndFmFragment = new RadioMainFragment();
        }
        startAction(getIntent());
        EventBus.getDefault().register(this);
    }

    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        LogUtil.d("onNewIntent()");
        startAction(intent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.yftech.libmvpmodule.mvp.BaseMvpActivity
    public void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().unregister(this);
        LogUtil.d("onDestroy()");
    }

    @Override // com.yftech.libradio.widget.RadioDabChannelSwitch.OnCheckChangeListener
    public void onCheckChange(FlowRadioGroup flowRadioGroup, int i) {
        LogUtil.i("RadioMainActivity->onCheckChange->checkedId=" + i);
        if (R.id.rb_fm == i) {
            if (flowRadioGroup.findViewById(R.id.rb_fm).isPressed()) {
                showFragment(this.amAndFmFragment);
                this.amAndFmFragment.onCheckChange(i);
                return;
            }
            return;
        }
        if (R.id.rb_am == i) {
            if (flowRadioGroup.findViewById(R.id.rb_am).isPressed()) {
                showFragment(this.amAndFmFragment);
                this.amAndFmFragment.onCheckChange(i);
                return;
            }
            return;
        }
        if (R.id.rb_dab == i && flowRadioGroup.findViewById(R.id.rb_dab).isPressed()) {
            showFragment(this.dabMainFragment);
        }
    }

    private void startAction(Intent intent) {
        String action = intent.getAction();
        LogUtil.d("action:" + action + " freq:" + intent.getIntExtra("key.radio.freq", -1));
        if ("com.yftech.intent.action.start.radio".equals(action) || "com.yftech.intent.action.start.radio.am".equals(action) || "com.yftech.intent.action.start.radio.fm".equals(action)) {
            if ("com.yftech.intent.action.start.radio.am".equals(action)) {
                this.mSwRadio.check(R.id.rb_am);
            } else if ("com.yftech.intent.action.start.radio.fm".equals(action)) {
                this.mSwRadio.check(R.id.rb_fm);
            }
            showFragment(this.amAndFmFragment);
            this.amAndFmFragment.startAction(intent);
            return;
        }
        if ("com.yftech.intent.action.start.dabradio".equals(action) && Utils.isRadioDABPresent()) {
            this.mSwRadio.check(R.id.rb_dab);
            showFragment(this.dabMainFragment);
            this.dabMainFragment.startAction(intent);
            return;
        }
        if (Utils.getAudioSourceListener().contains(Utils.LISTENER_DAB) && Utils.isRadioDABPresent()) {
            this.mSwRadio.check(R.id.rb_dab);
            showFragment(this.dabMainFragment);
            this.dabMainFragment.startAction(intent);
        } else if (Utils.isRadioDABPresent() && !Utils.isFMAndAMPresent()) {
            this.mSwRadio.check(R.id.rb_dab);
            showFragment(this.dabMainFragment);
            this.dabMainFragment.startAction(intent);
        } else {
            this.mSwRadio.check(R.id.rb_fm);
            showFragment(this.amAndFmFragment);
            this.amAndFmFragment.startAction(intent);
        }
    }

    private void showFragment(Fragment fragment) {
        if (fragment != this.currentFragment) {
            FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
            if (this.currentFragment == null) {
                if (fragment.equals(this.amAndFmFragment)) {
                    this.currentFragment = this.dabMainFragment;
                } else if (fragment.equals(this.dabMainFragment)) {
                    this.currentFragment = this.amAndFmFragment;
                }
                LogUtil.d("showFragment: showFragment get currentFragment:" + this.currentFragment);
            }
            if (this.currentFragment != null) {
                beginTransaction.hide(this.currentFragment);
            }
            this.currentFragment = fragment;
            if (!fragment.isAdded()) {
                LogUtil.d("showFragment: add:" + fragment);
                beginTransaction.add(R.id.fragment_Layout, fragment, fragment.getClass().getSimpleName()).show(fragment).commit();
                return;
            }
            LogUtil.d("showFragment: show:" + fragment);
            beginTransaction.show(fragment).commit();
        }
    }

    public int getCheckedId() {
        return this.mSwRadio.getCheckedId();
    }

    public boolean isCheckedDab() {
        return getCheckedId() == R.id.rb_dab;
    }

    public void switchFmOrAm(int i) {
        if (this.amAndFmFragment != this.currentFragment) {
            LogUtil.d("switchFmOrAm but not on radio fragment -----");
            return;
        }
        if (i == 2) {
            if (this.mSwRadio.getCheckedId() != R.id.rb_am) {
                this.mSwRadio.check(R.id.rb_am);
            }
        } else {
            if (i != 0 || this.mSwRadio.getCheckedId() == R.id.rb_fm) {
                return;
            }
            this.mSwRadio.check(R.id.rb_fm);
        }
    }

    protected void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        LogUtil.d("onSaveInstanceState");
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onConfigurationChanged(Configuration configuration) {
        LogUtil.d("onConfigurationChanged:event=" + configuration);
        Intent intent = getIntent();
        if (intent != null) {
            intent.setAction("");
            intent.putExtra("key.radio.freq", -1);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.yftech.libmvpmodule.mvp.BaseMvpActivity
    public void onResume() {
        super.onResume();
        EventBus.getDefault().post("radio_window_start");
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMediaSourceWindowChanged(String str) {
        LogUtil.d("onMediaSourceWindowChanged=" + str);
        if ("radio_window_start".equalsIgnoreCase(str)) {
            return;
        }
        try {
            LogUtil.d("onMediaSourceWindowChanged=finish radioActivity");
            finish();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
