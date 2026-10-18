package com.yftech.libmusic.ui;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;
import com.media.common.event.USBStateEvent;
import com.media.common.ui.widget.FlowLayout;
import com.media.common.util.AudioSettingUtil;
import com.media.common.util.DebugLog;
import com.media.common.util.LogUtil;
import com.media.common.util.SoftHideKeyBoardUtil;
import com.media.common.util.StringUtil;
import com.media.common.util.ToastUtils;
import com.yftech.car.bluetooth.CarBluetoothManager;
import com.yftech.car.bluetooth.callback.CarBluetoothPhoneCallback;
import com.yftech.car.bluetooth.model.PhoneCall;
import com.yftech.car.media.data.entity.MediaFile;
import com.yftech.libmusic.R;
import com.yftech.libmusic.bean.MediaFileItem;
import com.yftech.libmusic.event.BluetoothStateEvent;
import com.yftech.libmusic.event.CarLifeStatusEvent;
import com.yftech.libmusic.event.MusicSourceChangedEvent;
import com.yftech.libmusic.presenter.MusicSearchPresenter;
import com.yftech.libmusic.view.IMusicSearchActivityView;
import com.yftech.libmvpmodule.mvp.BaseMvpActivity;
import java.lang.reflect.Field;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /home/user/work/dex/classes4.dex */
public class MusicSearchFromHardDiskActivity extends BaseMvpActivity<MusicSearchPresenter> implements IMusicSearchActivityView, View.OnClickListener {
    private Fragment currentFragment;
    private EditText et_search;
    private FlowLayout fl_hot;
    private int index;
    private ImageView iv_clear;
    private MusicSearchResultFragment searchResultFragment = null;
    private boolean isPlaySoundOfClicking = true;
    private boolean isResume = true;
    private final int RC_SEARCH = 10;
    private final int RC_KEYBOARD = 20;
    private Handler mHandler = new Handler(Looper.getMainLooper()) { // from class: com.yftech.libmusic.ui.MusicSearchFromHardDiskActivity.1
        @Override // android.os.Handler
        public void handleMessage(@NonNull Message message) {
            if (message.what == 10) {
                MusicSearchFromHardDiskActivity.this.getPresenter().searchMusic(message.obj.toString(), MusicSearchFromHardDiskActivity.this.index);
            } else if (message.what == 20) {
                SoftHideKeyBoardUtil.isShowKeyBoard(MusicSearchFromHardDiskActivity.this.getApplicationContext(), MusicSearchFromHardDiskActivity.this.et_search, true);
            }
        }
    };
    private CarBluetoothPhoneCallback bluetoothPhoneCallback = new CarBluetoothPhoneCallback() { // from class: com.yftech.libmusic.ui.MusicSearchFromHardDiskActivity.2
        public void onBluetoothPhoneCallStateChanged(List<PhoneCall> list) {
            StringBuilder sb = new StringBuilder();
            sb.append("onBluetoothPhoneCallStateChanged:isEmpty=");
            sb.append(list == null || list.isEmpty());
            LogUtil.d(sb.toString());
            if (list == null || list.isEmpty()) {
                return;
            }
            PhoneCall phoneCall = list.get(0);
            LogUtil.d("onBluetoothPhoneCallStateChanged:state=" + phoneCall.getCallState());
            if (phoneCall.getCallState() == 7 && MusicSearchFromHardDiskActivity.this.isDisplaying) {
                boolean hasFocus = MusicSearchFromHardDiskActivity.this.et_search.hasFocus();
                LogUtil.d("onBluetoothPhoneCallStateChanged:hasFocus=" + hasFocus);
                if (hasFocus) {
                    SoftHideKeyBoardUtil.isShowKeyBoard(MusicSearchFromHardDiskActivity.this.getApplicationContext(), MusicSearchFromHardDiskActivity.this.et_search, true);
                }
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.yftech.libmvpmodule.mvp.BaseMvpActivity
    public MusicSearchPresenter createPresenter() {
        return new MusicSearchPresenter(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.yftech.libmvpmodule.mvp.BaseMvpActivity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_music_search_from_hard_disk);
        this.index = getIntent().getIntExtra("index", -1);
        initW();
        EventBus.getDefault().register(this);
        CarBluetoothManager.getInstance().registerBluetoothPhoneCallback(this.bluetoothPhoneCallback, (Handler) null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.yftech.libmvpmodule.mvp.BaseMvpActivity
    public void onResume() {
        super.onResume();
        LogUtil.d("onResume:hasFocus=" + this.et_search.hasFocus());
        this.isResume = true;
        if (!this.et_search.hasFocus()) {
            this.et_search.requestFocus();
        }
        this.mHandler.sendEmptyMessage(20);
    }

    protected void onPause() {
        super.onPause();
        LogUtil.d("onPause");
        if (this.searchResultFragment != null) {
            this.searchResultFragment.setSearchState(3);
        }
        SoftHideKeyBoardUtil.isShowKeyBoard(getApplicationContext(), this.et_search, false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.yftech.libmvpmodule.mvp.BaseMvpActivity
    public void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().unregister(this);
        CarBluetoothManager.getInstance().unregisterBluetoothPhoneCallback(this.bluetoothPhoneCallback);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onUSBStatusChange(USBStateEvent uSBStateEvent) {
        DebugLog.e("onUSBStatusChange:receiveBroadCast");
        if (uSBStateEvent.isUsbExists || this.index != uSBStateEvent.usbIndex) {
            return;
        }
        onBackPressed();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onBluetoothStatusChange(BluetoothStateEvent bluetoothStateEvent) {
        DebugLog.e("onBluetoothStatusChange:receiveBroadCast");
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onCarlifeStatusChange(CarLifeStatusEvent carLifeStatusEvent) {
        DebugLog.e("onCarlifeStatusChange:receiveBroadCast");
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

    public void switchContent(Fragment fragment) {
        FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
        if (this.currentFragment == null) {
            beginTransaction.add(R.id.fl_content, fragment).commit();
        } else if (this.currentFragment != fragment) {
            if (!fragment.isAdded()) {
                beginTransaction.hide(this.currentFragment).add(R.id.fl_content, fragment).commit();
            } else {
                beginTransaction.hide(this.currentFragment).show(fragment).commit();
            }
        }
        this.currentFragment = fragment;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void initW() {
        SoftHideKeyBoardUtil.assistActivity(this);
        this.fl_hot = findViewById(R.id.fl_hot);
        this.et_search = (EditText) findViewById(R.id.et_search);
        this.iv_clear = (ImageView) findViewById(R.id.iv_clear);
        this.iv_clear.setVisibility(4);
        this.iv_clear.setOnClickListener(this);
        disableCopyAndPaste(this.et_search);
        this.et_search.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.yftech.libmusic.ui.MusicSearchFromHardDiskActivity.3
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                LogUtil.d("EditText Button Click, text length=" + MusicSearchFromHardDiskActivity.this.et_search.getText().length() + ",text:" + ((Object) MusicSearchFromHardDiskActivity.this.et_search.getText()));
                if (MusicSearchFromHardDiskActivity.this.et_search.getText().length() <= 0 || MusicSearchFromHardDiskActivity.this.et_search.getText().toString().trim().equals("")) {
                    ToastUtils.showFailMessage(R.string.music_search_empty_tips, 0);
                    return true;
                }
                if (i == 3) {
                    SoftHideKeyBoardUtil.isShowKeyBoard(MusicSearchFromHardDiskActivity.this.getApplicationContext(), MusicSearchFromHardDiskActivity.this.et_search, false);
                    MusicSearchFromHardDiskActivity.this.fl_hot.setVisibility(8);
                    LogUtil.d("searchMusic");
                    if (MusicSearchFromHardDiskActivity.this.searchResultFragment != null) {
                        MusicSearchFromHardDiskActivity.this.searchResultFragment.setSearchState(0);
                    } else {
                        MusicSearchFromHardDiskActivity.this.searchResultFragment = MusicSearchResultFragment.newInstance(0);
                        MusicSearchFromHardDiskActivity.this.switchContent(MusicSearchFromHardDiskActivity.this.searchResultFragment);
                    }
                    Message obtainMessage = MusicSearchFromHardDiskActivity.this.mHandler.obtainMessage(10);
                    obtainMessage.obj = MusicSearchFromHardDiskActivity.this.et_search.getText().toString();
                    MusicSearchFromHardDiskActivity.this.mHandler.sendMessageDelayed(obtainMessage, 800L);
                    MusicSearchFromHardDiskActivity.this.et_search.clearFocus();
                }
                return false;
            }
        });
        this.et_search.addTextChangedListener(new TextWatcher() { // from class: com.yftech.libmusic.ui.MusicSearchFromHardDiskActivity.4
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                MusicSearchFromHardDiskActivity.this.iv_clear.setVisibility(editable.length() > 0 ? 0 : 4);
            }
        });
        this.et_search.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.yftech.libmusic.ui.MusicSearchFromHardDiskActivity.5
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    if (MusicSearchFromHardDiskActivity.this.searchResultFragment != null && MusicSearchFromHardDiskActivity.this.searchResultFragment.isAdded()) {
                        MusicSearchFromHardDiskActivity.this.searchResultFragment.setSearchState(3);
                    }
                    if (!MusicSearchFromHardDiskActivity.this.isPlaySoundOfClicking || MusicSearchFromHardDiskActivity.this.isResume) {
                        MusicSearchFromHardDiskActivity.this.isPlaySoundOfClicking = true;
                    } else {
                        AudioSettingUtil.playSystemClickSoundEffect(MusicSearchFromHardDiskActivity.this.getApplicationContext());
                    }
                    MusicSearchFromHardDiskActivity.this.isResume = false;
                }
            }
        });
        findViewById(R.id.iv_back).setOnClickListener(this);
        findViewById(R.id.tv_cancel).setOnClickListener(this);
    }

    @Override // com.yftech.libmusic.view.IMusicSearchActivityView
    public void displayMusicSearchResult(MediaFile mediaFile, List<MediaFileItem> list, String str) {
        if (this.searchResultFragment.getSearchState() == 3) {
            return;
        }
        if (list == null || list.isEmpty()) {
            this.searchResultFragment.setSearchState(1);
        } else {
            this.searchResultFragment.setSearchState(2, list, mediaFile, str);
        }
    }

    @Override // com.yftech.libmusic.view.IMusicSearchActivityView
    public void displayHotMusicSearchResult(List<String> list) {
        this.fl_hot.setVisibility(0);
        this.fl_hot.removeAllViews();
        if (list != null) {
            for (String str : list) {
                TextView textView = (TextView) LayoutInflater.from(getApplicationContext()).inflate(R.layout.tag_search, (ViewGroup) this.fl_hot, false);
                textView.setText(StringUtil.getHighLightByKeyword(str, this.et_search.getText().toString()));
                textView.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.libmusic.ui.MusicSearchFromHardDiskActivity.6
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        MusicSearchFromHardDiskActivity.this.getPresenter().searchMusic("", MusicSearchFromHardDiskActivity.this.index);
                    }
                });
                ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-2, -2);
                marginLayoutParams.rightMargin = 24;
                marginLayoutParams.topMargin = 15;
                this.fl_hot.addView(textView, marginLayoutParams);
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.iv_clear) {
            this.et_search.setText("");
            if (this.searchResultFragment != null && this.searchResultFragment.isAdded()) {
                this.searchResultFragment.setSearchState(3);
            }
            this.isPlaySoundOfClicking = false;
            this.et_search.requestFocus();
            SoftHideKeyBoardUtil.isShowKeyBoard(getApplicationContext(), this.et_search, true);
            return;
        }
        if (view.getId() == R.id.iv_back || view.getId() == R.id.tv_cancel) {
            onBackPressed();
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void disableCopyAndPaste(final EditText editText) {
        if (editText == null) {
            return;
        }
        try {
            editText.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.yftech.libmusic.ui.MusicSearchFromHardDiskActivity.7
                @Override // android.view.View.OnLongClickListener
                public boolean onLongClick(View view) {
                    return true;
                }
            });
            editText.setLongClickable(false);
            editText.setOnTouchListener(new View.OnTouchListener() { // from class: com.yftech.libmusic.ui.MusicSearchFromHardDiskActivity.8
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    if (motionEvent.getAction() != 0) {
                        return false;
                    }
                    MusicSearchFromHardDiskActivity.this.setInsertionDisabled(editText);
                    return false;
                }
            });
            editText.setCustomSelectionActionModeCallback(new ActionMode.Callback() { // from class: com.yftech.libmusic.ui.MusicSearchFromHardDiskActivity.9
                @Override // android.view.ActionMode.Callback
                public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
                    return false;
                }

                @Override // android.view.ActionMode.Callback
                public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
                    return false;
                }

                @Override // android.view.ActionMode.Callback
                public void onDestroyActionMode(ActionMode actionMode) {
                }

                @Override // android.view.ActionMode.Callback
                public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
                    return false;
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setInsertionDisabled(EditText editText) {
        try {
            Field declaredField = TextView.class.getDeclaredField("mEditor");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(editText);
            Class<?> cls = Class.forName("android.widget.Editor");
            Field declaredField2 = cls.getDeclaredField("mInsertionControllerEnabled");
            declaredField2.setAccessible(true);
            declaredField2.set(obj, false);
            Field declaredField3 = cls.getDeclaredField("mSelectionControllerEnabled");
            declaredField3.setAccessible(true);
            declaredField3.set(obj, false);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
