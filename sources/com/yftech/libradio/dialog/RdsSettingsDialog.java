package com.yftech.libradio.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.media.common.util.LogUtil;
import com.yftech.car.media.radio.CarRadioManager;
import com.yftech.libradio.R;
import com.yftech.libradio.Utils;
import com.yftech.libradio.widget.RadioSwitcher;
import com.yftech.vehicle.internal.adapter.IAirCondition;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes4.dex */
public class RdsSettingsDialog extends Dialog {
    public static final String ACTION_RDS_SETTINGS = "yf.action.rds.settings";
    public static final boolean DEFUALT_VALUE_PTY = false;
    public static final boolean DEFUALT_VALUE_TP = true;
    public static final String EXTR_KEY_PTY_SHOW = "extr_pty_show";
    public static final String EXTR_KEY_TP_SHOW = "extr_tp_show";
    public static final String SP_KEY_PTY_SHOW = "yf_sp_pty_show";
    public static final String SP_KEY_TP_SHOW = "yf_sp_tp_show";
    private CarRadioManager.CarRadioControlCallback carRadioControlCallback;
    private ImageView ivBack;
    private Context mContext;
    private Handler mHandler;
    private SwitchRvAdapter rvAdapter;
    private RecyclerView rvSwitchList;
    private List<RdsSwitch> switchDataList;

    /* loaded from: /home/user/work/dex/classes4.dex */
    public interface SwitchListCallback {
        void onItemCheckedChanged(int i, boolean z);
    }

    public RdsSettingsDialog(@NonNull Context context) {
        super(context);
        this.switchDataList = new ArrayList();
        this.mHandler = new Handler(Looper.getMainLooper());
        this.carRadioControlCallback = new CarRadioManager.CarRadioControlCallback() { // from class: com.yftech.libradio.dialog.RdsSettingsDialog.1
            public void onRdsCommonStatusChange(final int i, final boolean z) {
                super.onRdsCommonStatusChange(i, z);
                LogUtil.d("type: " + i + " , value: " + z);
                RdsSettingsDialog.this.mHandler.postDelayed(new Runnable() { // from class: com.yftech.libradio.dialog.RdsSettingsDialog.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        switch (i) {
                            case 0:
                                ((RdsSwitch) RdsSettingsDialog.this.switchDataList.get(0)).setOpen(z);
                                ((RdsSwitch) RdsSettingsDialog.this.switchDataList.get(1)).setShow(z);
                                ((RdsSwitch) RdsSettingsDialog.this.switchDataList.get(2)).setShow(z);
                                ((RdsSwitch) RdsSettingsDialog.this.switchDataList.get(3)).setShow(z);
                                ((RdsSwitch) RdsSettingsDialog.this.switchDataList.get(4)).setShow(z);
                                break;
                            case 1:
                                ((RdsSwitch) RdsSettingsDialog.this.switchDataList.get(2)).setOpen(z);
                                break;
                            case 2:
                                ((RdsSwitch) RdsSettingsDialog.this.switchDataList.get(4)).setOpen(z);
                                break;
                        }
                        RdsSettingsDialog.this.rvAdapter.setDataList(RdsSettingsDialog.this.switchDataList);
                        RdsSettingsDialog.this.rvAdapter.notifyDataSetChanged();
                    }
                }, 500L);
            }
        };
        this.mContext = context;
    }

    public RdsSettingsDialog(@NonNull Context context, int i) {
        super(context, i);
        this.switchDataList = new ArrayList();
        this.mHandler = new Handler(Looper.getMainLooper());
        this.carRadioControlCallback = new CarRadioManager.CarRadioControlCallback() { // from class: com.yftech.libradio.dialog.RdsSettingsDialog.1
            public void onRdsCommonStatusChange(final int i2, final boolean z) {
                super.onRdsCommonStatusChange(i2, z);
                LogUtil.d("type: " + i2 + " , value: " + z);
                RdsSettingsDialog.this.mHandler.postDelayed(new Runnable() { // from class: com.yftech.libradio.dialog.RdsSettingsDialog.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        switch (i2) {
                            case 0:
                                ((RdsSwitch) RdsSettingsDialog.this.switchDataList.get(0)).setOpen(z);
                                ((RdsSwitch) RdsSettingsDialog.this.switchDataList.get(1)).setShow(z);
                                ((RdsSwitch) RdsSettingsDialog.this.switchDataList.get(2)).setShow(z);
                                ((RdsSwitch) RdsSettingsDialog.this.switchDataList.get(3)).setShow(z);
                                ((RdsSwitch) RdsSettingsDialog.this.switchDataList.get(4)).setShow(z);
                                break;
                            case 1:
                                ((RdsSwitch) RdsSettingsDialog.this.switchDataList.get(2)).setOpen(z);
                                break;
                            case 2:
                                ((RdsSwitch) RdsSettingsDialog.this.switchDataList.get(4)).setOpen(z);
                                break;
                        }
                        RdsSettingsDialog.this.rvAdapter.setDataList(RdsSettingsDialog.this.switchDataList);
                        RdsSettingsDialog.this.rvAdapter.notifyDataSetChanged();
                    }
                }, 500L);
            }
        };
        this.mContext = context;
    }

    protected RdsSettingsDialog(@NonNull Context context, boolean z, @Nullable DialogInterface.OnCancelListener onCancelListener) {
        super(context, z, onCancelListener);
        this.switchDataList = new ArrayList();
        this.mHandler = new Handler(Looper.getMainLooper());
        this.carRadioControlCallback = new CarRadioManager.CarRadioControlCallback() { // from class: com.yftech.libradio.dialog.RdsSettingsDialog.1
            public void onRdsCommonStatusChange(final int i2, final boolean z2) {
                super.onRdsCommonStatusChange(i2, z2);
                LogUtil.d("type: " + i2 + " , value: " + z2);
                RdsSettingsDialog.this.mHandler.postDelayed(new Runnable() { // from class: com.yftech.libradio.dialog.RdsSettingsDialog.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        switch (i2) {
                            case 0:
                                ((RdsSwitch) RdsSettingsDialog.this.switchDataList.get(0)).setOpen(z2);
                                ((RdsSwitch) RdsSettingsDialog.this.switchDataList.get(1)).setShow(z2);
                                ((RdsSwitch) RdsSettingsDialog.this.switchDataList.get(2)).setShow(z2);
                                ((RdsSwitch) RdsSettingsDialog.this.switchDataList.get(3)).setShow(z2);
                                ((RdsSwitch) RdsSettingsDialog.this.switchDataList.get(4)).setShow(z2);
                                break;
                            case 1:
                                ((RdsSwitch) RdsSettingsDialog.this.switchDataList.get(2)).setOpen(z2);
                                break;
                            case 2:
                                ((RdsSwitch) RdsSettingsDialog.this.switchDataList.get(4)).setOpen(z2);
                                break;
                        }
                        RdsSettingsDialog.this.rvAdapter.setDataList(RdsSettingsDialog.this.switchDataList);
                        RdsSettingsDialog.this.rvAdapter.notifyDataSetChanged();
                    }
                }, 500L);
            }
        };
        this.mContext = context;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_rds_settings);
        findViewById(R.id.tv_control).setOnClickListener(new View.OnClickListener() { // from class: com.yftech.libradio.dialog.RdsSettingsDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                RdsSettingsDialog.this.dismiss();
            }
        });
        this.rvSwitchList = findViewById(R.id.rv_rds_settings_switch_list);
        this.rvSwitchList.setLayoutManager(new LinearLayoutManager(getContext(), 1, false));
        boolean isRdsCommonStatusEnable = CarRadioManager.getInstance().isRdsCommonStatusEnable(0);
        boolean isRdsCommonStatusEnable2 = CarRadioManager.getInstance().isRdsCommonStatusEnable(1);
        boolean isRdsCommonStatusEnable3 = CarRadioManager.getInstance().isRdsCommonStatusEnable(2);
        RdsSwitch rdsSwitch = new RdsSwitch(getContext().getString(R.string.rds_settings_switch), isRdsCommonStatusEnable, true);
        RdsSwitch rdsSwitch2 = new RdsSwitch(getContext().getString(R.string.rds_settings_pty_show), getSharedRadioData(SP_KEY_PTY_SHOW, false), rdsSwitch.isOpen);
        RdsSwitch rdsSwitch3 = new RdsSwitch(getContext().getString(R.string.rds_settings_ta), isRdsCommonStatusEnable2, rdsSwitch.isOpen);
        RdsSwitch rdsSwitch4 = new RdsSwitch(getContext().getString(R.string.rds_settings_tp), getSharedRadioData(SP_KEY_TP_SHOW, true), rdsSwitch.isOpen);
        RdsSwitch rdsSwitch5 = new RdsSwitch(getContext().getString(R.string.rds_settings_af), isRdsCommonStatusEnable3, rdsSwitch.isOpen);
        this.switchDataList.add(rdsSwitch);
        this.switchDataList.add(rdsSwitch2);
        this.switchDataList.add(rdsSwitch3);
        this.switchDataList.add(rdsSwitch4);
        this.switchDataList.add(rdsSwitch5);
        this.rvAdapter = new SwitchRvAdapter(new SwitchListCallback() { // from class: com.yftech.libradio.dialog.RdsSettingsDialog.3
            @Override // com.yftech.libradio.dialog.RdsSettingsDialog.SwitchListCallback
            public void onItemCheckedChanged(int i, boolean z) {
                ((RdsSwitch) RdsSettingsDialog.this.switchDataList.get(i)).setOpen(z);
                if (i != 0) {
                    switch (i) {
                        case 1:
                            RdsSettingsDialog.this.saveSharedRadioData(RdsSettingsDialog.SP_KEY_PTY_SHOW, z);
                            Intent intent = new Intent(RdsSettingsDialog.ACTION_RDS_SETTINGS);
                            intent.putExtra(RdsSettingsDialog.EXTR_KEY_PTY_SHOW, z);
                            RdsSettingsDialog.this.mContext.sendBroadcast(intent);
                            return;
                        case 2:
                            CarRadioManager.getInstance().setRdsCommonStatusEnable(1, z);
                            return;
                        case 3:
                            RdsSettingsDialog.this.saveSharedRadioData(RdsSettingsDialog.SP_KEY_TP_SHOW, z);
                            Intent intent2 = new Intent(RdsSettingsDialog.ACTION_RDS_SETTINGS);
                            intent2.putExtra(RdsSettingsDialog.EXTR_KEY_TP_SHOW, z);
                            RdsSettingsDialog.this.mContext.sendBroadcast(intent2);
                            return;
                        case 4:
                            CarRadioManager.getInstance().setRdsCommonStatusEnable(2, z);
                            return;
                        default:
                            return;
                    }
                }
                CarRadioManager.getInstance().setRdsCommonStatusEnable(0, z);
                ((RdsSwitch) RdsSettingsDialog.this.switchDataList.get(1)).setShow(z);
                ((RdsSwitch) RdsSettingsDialog.this.switchDataList.get(2)).setShow(z);
                ((RdsSwitch) RdsSettingsDialog.this.switchDataList.get(3)).setShow(z);
                ((RdsSwitch) RdsSettingsDialog.this.switchDataList.get(4)).setShow(z);
                RdsSettingsDialog.this.rvSwitchList.getAdapter().notifyDataSetChanged();
            }
        });
        this.rvAdapter.setDataList(this.switchDataList);
        this.rvSwitchList.setAdapter(this.rvAdapter);
    }

    @Override // android.app.Dialog
    protected void onStop() {
        super.onStop();
        CarRadioManager.getInstance();
        CarRadioManager.unregisterRadioControlCallback(this.carRadioControlCallback);
    }

    @Override // android.app.Dialog
    public void onStart() {
        super.onStart();
        CarRadioManager.getInstance();
        CarRadioManager.registerRadioControlCallback(this.carRadioControlCallback);
        LogUtil.d("onStart()");
        Window window = getWindow();
        if (window != null) {
            window.setBackgroundDrawableResource(android.R.color.transparent);
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.dimAmount = 0.0f;
            attributes.width = 1078;
            attributes.height = 678;
            attributes.gravity = 8388659;
            attributes.x = IAirCondition.TEMPERATURE_INC_VD_SETTING;
            attributes.y = 21;
            window.setAttributes(attributes);
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    private static class SwitchRvAdapter extends RecyclerView.Adapter<SwitchViewHolder> {
        private static final int VIEW_TYPE_MAIN_ITEM = 1;
        private static final int VIEW_TYPE_SUB_ITEM = 2;
        private List<RdsSwitch> dataList = new ArrayList();
        private SwitchListCallback switchListCallback;

        SwitchRvAdapter(SwitchListCallback switchListCallback) {
            this.switchListCallback = switchListCallback;
        }

        public void setDataList(List<RdsSwitch> list) {
            this.dataList.clear();
            this.dataList.addAll(list);
        }

        @NonNull
        public SwitchViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
            return new SwitchViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_dab_settings_switch, viewGroup, false), new SwitchListCallback() { // from class: com.yftech.libradio.dialog.RdsSettingsDialog.SwitchRvAdapter.1
                @Override // com.yftech.libradio.dialog.RdsSettingsDialog.SwitchListCallback
                public void onItemCheckedChanged(int i2, boolean z) {
                    if (SwitchRvAdapter.this.switchListCallback != null) {
                        SwitchRvAdapter.this.switchListCallback.onItemCheckedChanged(i2, z);
                    }
                }
            });
        }

        public void onBindViewHolder(@NonNull SwitchViewHolder switchViewHolder, int i) {
            switchViewHolder.position = i;
            if (this.dataList.get(i).isShow) {
                switchViewHolder.itemView.setVisibility(0);
            } else {
                switchViewHolder.itemView.setVisibility(8);
            }
            switchViewHolder.tvName.setText(this.dataList.get(i).getName());
            if (this.dataList.get(i).isOpen) {
                switchViewHolder.switcher.setChecked(true);
            } else {
                switchViewHolder.switcher.setChecked(false);
            }
        }

        public int getItemCount() {
            return this.dataList.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes4.dex */
    public static class SwitchViewHolder extends RecyclerView.ViewHolder {
        private SwitchListCallback callback;
        private View itemView;
        private int position;
        private RadioSwitcher switcher;
        private TextView tvName;

        public SwitchViewHolder(@NonNull View view, final SwitchListCallback switchListCallback) {
            super(view);
            this.itemView = view;
            this.callback = switchListCallback;
            this.tvName = (TextView) view.findViewById(R.id.tv_switch_name);
            this.switcher = (RadioSwitcher) view.findViewById(R.id.item_dab_switch);
            this.switcher.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.yftech.libradio.dialog.RdsSettingsDialog.SwitchViewHolder.1
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                    if (switchListCallback == null || !compoundButton.isPressed()) {
                        return;
                    }
                    switchListCallback.onItemCheckedChanged(SwitchViewHolder.this.position, z);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes4.dex */
    public static class RdsSwitch {
        private boolean isOpen;
        private boolean isShow;
        private String name;

        public RdsSwitch(String str, boolean z, boolean z2) {
            LogUtil.d("new DabSwitch name: " + str + " , isOpen: " + z);
            this.name = str;
            this.isOpen = z;
            this.isShow = z2;
        }

        public boolean isOpen() {
            return this.isOpen;
        }

        public void setOpen(boolean z) {
            this.isOpen = z;
        }

        public String getName() {
            return this.name;
        }

        public void setShow(boolean z) {
            this.isShow = z;
        }
    }

    private boolean getSharedRadioData(String str, boolean z) {
        return getContext().getSharedPreferences(Utils.SHARED_RADIO_DATA_NAME, 0).getBoolean(str, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveSharedRadioData(String str, boolean z) {
        LogUtil.i("saveSharedRadioData() key:" + str + " value:" + z);
        getContext().getSharedPreferences(Utils.SHARED_RADIO_DATA_NAME, 0).edit().putBoolean(str, z).commit();
    }
}
