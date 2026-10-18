package com.yftech.libradio.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.media.common.util.LogUtil;
import com.media.common.util.ToastUtils;
import com.yftech.car.media.radio.dab.CarDabRadioManager;
import com.yftech.car.media.radio.dab.entity.EnableAnnounce;
import com.yftech.libradio.R;
import com.yftech.libradio.widget.RadioSwitcher;
import com.yftech.vehicle.internal.adapter.IAirCondition;
import java.util.ArrayList;
import java.util.List;
import javax.microedition.khronos.opengles.GL10;

/* loaded from: /home/user/work/dex/classes4.dex */
public class DabSettingsNoRdsDialog extends Dialog {
    private List<DabSwitch> allDataList;
    private CarDabRadioManager.CarDabRadioControlCallback dabRadioControlCallback;
    private Handler mHandler;
    private SwitchRvAdapter rvAdapter;
    private RecyclerView rvSwitchList;
    private List<DabSwitch> switchDataList;
    private TextView tvBack;

    /* loaded from: /home/user/work/dex/classes4.dex */
    public interface SwitchListCallback {
        void onItemCheckedChanged(int i, boolean z);
    }

    public DabSettingsNoRdsDialog(@NonNull Context context) {
        super(context);
        this.allDataList = new ArrayList();
        this.switchDataList = new ArrayList();
        this.mHandler = new Handler(Looper.getMainLooper());
        this.dabRadioControlCallback = new CarDabRadioManager.CarDabRadioControlCallback() { // from class: com.yftech.libradio.dialog.DabSettingsNoRdsDialog.1
            public void onEnableAnnounceChange(final boolean z, int i) {
                super.onEnableAnnounceChange(z, i);
                LogUtil.d("onEnableAnnounceChange,isNoOff: " + z + " ,annotype: " + Integer.toBinaryString(i));
                DabSettingsNoRdsDialog.this.mHandler.postDelayed(new Runnable() { // from class: com.yftech.libradio.dialog.DabSettingsNoRdsDialog.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ((DabSwitch) DabSettingsNoRdsDialog.this.allDataList.get(0)).setOpen(z);
                        ((DabSwitch) DabSettingsNoRdsDialog.this.switchDataList.get(0)).setOpen(z);
                        if (z) {
                            for (DabSwitch dabSwitch : DabSettingsNoRdsDialog.this.allDataList) {
                                if (dabSwitch instanceof AnnouncementSwitch) {
                                    ((AnnouncementSwitch) dabSwitch).setShow(true);
                                }
                            }
                        } else {
                            for (DabSwitch dabSwitch2 : DabSettingsNoRdsDialog.this.allDataList) {
                                if (dabSwitch2 instanceof AnnouncementSwitch) {
                                    ((AnnouncementSwitch) dabSwitch2).setShow(false);
                                }
                            }
                        }
                        EnableAnnounce enableAnnounce = CarDabRadioManager.getInstance().getEnableAnnounce();
                        ((DabSwitch) DabSettingsNoRdsDialog.this.allDataList.get(1)).setOpen(enableAnnounce.isAnnotype(1));
                        ((DabSwitch) DabSettingsNoRdsDialog.this.allDataList.get(2)).setOpen(enableAnnounce.isAnnotype(2));
                        ((DabSwitch) DabSettingsNoRdsDialog.this.allDataList.get(3)).setOpen(enableAnnounce.isAnnotype(4));
                        ((DabSwitch) DabSettingsNoRdsDialog.this.allDataList.get(4)).setOpen(enableAnnounce.isAnnotype(8));
                        ((DabSwitch) DabSettingsNoRdsDialog.this.allDataList.get(5)).setOpen(enableAnnounce.isAnnotype(16));
                        ((DabSwitch) DabSettingsNoRdsDialog.this.allDataList.get(6)).setOpen(enableAnnounce.isAnnotype(32));
                        ((DabSwitch) DabSettingsNoRdsDialog.this.allDataList.get(7)).setOpen(enableAnnounce.isAnnotype(64));
                        ((DabSwitch) DabSettingsNoRdsDialog.this.allDataList.get(8)).setOpen(enableAnnounce.isAnnotype(128));
                        ((DabSwitch) DabSettingsNoRdsDialog.this.allDataList.get(9)).setOpen(enableAnnounce.isAnnotype(256));
                        ((DabSwitch) DabSettingsNoRdsDialog.this.allDataList.get(10)).setOpen(enableAnnounce.isAnnotype(GL10.GL_NEVER));
                        ((DabSwitch) DabSettingsNoRdsDialog.this.allDataList.get(11)).setOpen(enableAnnounce.isAnnotype(GL10.GL_STENCIL_BUFFER_BIT));
                        DabSettingsNoRdsDialog.this.rvAdapter.setDataList(z ? DabSettingsNoRdsDialog.this.allDataList : DabSettingsNoRdsDialog.this.switchDataList);
                        DabSettingsNoRdsDialog.this.rvAdapter.notifyDataSetChanged();
                    }
                }, 500L);
            }
        };
    }

    public DabSettingsNoRdsDialog(@NonNull Context context, int i) {
        super(context, i);
        this.allDataList = new ArrayList();
        this.switchDataList = new ArrayList();
        this.mHandler = new Handler(Looper.getMainLooper());
        this.dabRadioControlCallback = new CarDabRadioManager.CarDabRadioControlCallback() { // from class: com.yftech.libradio.dialog.DabSettingsNoRdsDialog.1
            public void onEnableAnnounceChange(final boolean z, int i2) {
                super.onEnableAnnounceChange(z, i2);
                LogUtil.d("onEnableAnnounceChange,isNoOff: " + z + " ,annotype: " + Integer.toBinaryString(i2));
                DabSettingsNoRdsDialog.this.mHandler.postDelayed(new Runnable() { // from class: com.yftech.libradio.dialog.DabSettingsNoRdsDialog.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ((DabSwitch) DabSettingsNoRdsDialog.this.allDataList.get(0)).setOpen(z);
                        ((DabSwitch) DabSettingsNoRdsDialog.this.switchDataList.get(0)).setOpen(z);
                        if (z) {
                            for (DabSwitch dabSwitch : DabSettingsNoRdsDialog.this.allDataList) {
                                if (dabSwitch instanceof AnnouncementSwitch) {
                                    ((AnnouncementSwitch) dabSwitch).setShow(true);
                                }
                            }
                        } else {
                            for (DabSwitch dabSwitch2 : DabSettingsNoRdsDialog.this.allDataList) {
                                if (dabSwitch2 instanceof AnnouncementSwitch) {
                                    ((AnnouncementSwitch) dabSwitch2).setShow(false);
                                }
                            }
                        }
                        EnableAnnounce enableAnnounce = CarDabRadioManager.getInstance().getEnableAnnounce();
                        ((DabSwitch) DabSettingsNoRdsDialog.this.allDataList.get(1)).setOpen(enableAnnounce.isAnnotype(1));
                        ((DabSwitch) DabSettingsNoRdsDialog.this.allDataList.get(2)).setOpen(enableAnnounce.isAnnotype(2));
                        ((DabSwitch) DabSettingsNoRdsDialog.this.allDataList.get(3)).setOpen(enableAnnounce.isAnnotype(4));
                        ((DabSwitch) DabSettingsNoRdsDialog.this.allDataList.get(4)).setOpen(enableAnnounce.isAnnotype(8));
                        ((DabSwitch) DabSettingsNoRdsDialog.this.allDataList.get(5)).setOpen(enableAnnounce.isAnnotype(16));
                        ((DabSwitch) DabSettingsNoRdsDialog.this.allDataList.get(6)).setOpen(enableAnnounce.isAnnotype(32));
                        ((DabSwitch) DabSettingsNoRdsDialog.this.allDataList.get(7)).setOpen(enableAnnounce.isAnnotype(64));
                        ((DabSwitch) DabSettingsNoRdsDialog.this.allDataList.get(8)).setOpen(enableAnnounce.isAnnotype(128));
                        ((DabSwitch) DabSettingsNoRdsDialog.this.allDataList.get(9)).setOpen(enableAnnounce.isAnnotype(256));
                        ((DabSwitch) DabSettingsNoRdsDialog.this.allDataList.get(10)).setOpen(enableAnnounce.isAnnotype(GL10.GL_NEVER));
                        ((DabSwitch) DabSettingsNoRdsDialog.this.allDataList.get(11)).setOpen(enableAnnounce.isAnnotype(GL10.GL_STENCIL_BUFFER_BIT));
                        DabSettingsNoRdsDialog.this.rvAdapter.setDataList(z ? DabSettingsNoRdsDialog.this.allDataList : DabSettingsNoRdsDialog.this.switchDataList);
                        DabSettingsNoRdsDialog.this.rvAdapter.notifyDataSetChanged();
                    }
                }, 500L);
            }
        };
    }

    protected DabSettingsNoRdsDialog(@NonNull Context context, boolean z, @Nullable DialogInterface.OnCancelListener onCancelListener) {
        super(context, z, onCancelListener);
        this.allDataList = new ArrayList();
        this.switchDataList = new ArrayList();
        this.mHandler = new Handler(Looper.getMainLooper());
        this.dabRadioControlCallback = new CarDabRadioManager.CarDabRadioControlCallback() { // from class: com.yftech.libradio.dialog.DabSettingsNoRdsDialog.1
            public void onEnableAnnounceChange(final boolean z2, int i2) {
                super.onEnableAnnounceChange(z2, i2);
                LogUtil.d("onEnableAnnounceChange,isNoOff: " + z2 + " ,annotype: " + Integer.toBinaryString(i2));
                DabSettingsNoRdsDialog.this.mHandler.postDelayed(new Runnable() { // from class: com.yftech.libradio.dialog.DabSettingsNoRdsDialog.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ((DabSwitch) DabSettingsNoRdsDialog.this.allDataList.get(0)).setOpen(z2);
                        ((DabSwitch) DabSettingsNoRdsDialog.this.switchDataList.get(0)).setOpen(z2);
                        if (z2) {
                            for (DabSwitch dabSwitch : DabSettingsNoRdsDialog.this.allDataList) {
                                if (dabSwitch instanceof AnnouncementSwitch) {
                                    ((AnnouncementSwitch) dabSwitch).setShow(true);
                                }
                            }
                        } else {
                            for (DabSwitch dabSwitch2 : DabSettingsNoRdsDialog.this.allDataList) {
                                if (dabSwitch2 instanceof AnnouncementSwitch) {
                                    ((AnnouncementSwitch) dabSwitch2).setShow(false);
                                }
                            }
                        }
                        EnableAnnounce enableAnnounce = CarDabRadioManager.getInstance().getEnableAnnounce();
                        ((DabSwitch) DabSettingsNoRdsDialog.this.allDataList.get(1)).setOpen(enableAnnounce.isAnnotype(1));
                        ((DabSwitch) DabSettingsNoRdsDialog.this.allDataList.get(2)).setOpen(enableAnnounce.isAnnotype(2));
                        ((DabSwitch) DabSettingsNoRdsDialog.this.allDataList.get(3)).setOpen(enableAnnounce.isAnnotype(4));
                        ((DabSwitch) DabSettingsNoRdsDialog.this.allDataList.get(4)).setOpen(enableAnnounce.isAnnotype(8));
                        ((DabSwitch) DabSettingsNoRdsDialog.this.allDataList.get(5)).setOpen(enableAnnounce.isAnnotype(16));
                        ((DabSwitch) DabSettingsNoRdsDialog.this.allDataList.get(6)).setOpen(enableAnnounce.isAnnotype(32));
                        ((DabSwitch) DabSettingsNoRdsDialog.this.allDataList.get(7)).setOpen(enableAnnounce.isAnnotype(64));
                        ((DabSwitch) DabSettingsNoRdsDialog.this.allDataList.get(8)).setOpen(enableAnnounce.isAnnotype(128));
                        ((DabSwitch) DabSettingsNoRdsDialog.this.allDataList.get(9)).setOpen(enableAnnounce.isAnnotype(256));
                        ((DabSwitch) DabSettingsNoRdsDialog.this.allDataList.get(10)).setOpen(enableAnnounce.isAnnotype(GL10.GL_NEVER));
                        ((DabSwitch) DabSettingsNoRdsDialog.this.allDataList.get(11)).setOpen(enableAnnounce.isAnnotype(GL10.GL_STENCIL_BUFFER_BIT));
                        DabSettingsNoRdsDialog.this.rvAdapter.setDataList(z2 ? DabSettingsNoRdsDialog.this.allDataList : DabSettingsNoRdsDialog.this.switchDataList);
                        DabSettingsNoRdsDialog.this.rvAdapter.notifyDataSetChanged();
                    }
                }, 500L);
            }
        };
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_dab_settings);
        this.tvBack = (TextView) findViewById(R.id.tv_control);
        this.tvBack.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.libradio.dialog.DabSettingsNoRdsDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DabSettingsNoRdsDialog.this.dismiss();
            }
        });
        this.rvSwitchList = findViewById(R.id.rv_dab_settings_switch_list);
        this.rvSwitchList.setLayoutManager(new LinearLayoutManager(getContext(), 1, false));
        EnableAnnounce enableAnnounce = CarDabRadioManager.getInstance().getEnableAnnounce();
        DabSwitch dabSwitch = new DabSwitch(getContext().getString(R.string.dab_announcement), enableAnnounce.isNoOff());
        this.allDataList.add(dabSwitch);
        this.switchDataList.add(dabSwitch);
        LogUtil.d("onCreate,enableAnnounce isNoOff: " + enableAnnounce.isNoOff() + " ,annotype: " + Integer.toBinaryString(enableAnnounce.getAnnotype()));
        AnnouncementSwitch announcementSwitch = new AnnouncementSwitch(getContext().getString(R.string.dab_announcement1), enableAnnounce.isAnnotype(1), enableAnnounce.isNoOff());
        AnnouncementSwitch announcementSwitch2 = new AnnouncementSwitch(getContext().getString(R.string.dab_announcement2), enableAnnounce.isAnnotype(2), enableAnnounce.isNoOff());
        AnnouncementSwitch announcementSwitch3 = new AnnouncementSwitch(getContext().getString(R.string.dab_announcement3), enableAnnounce.isAnnotype(4), enableAnnounce.isNoOff());
        AnnouncementSwitch announcementSwitch4 = new AnnouncementSwitch(getContext().getString(R.string.dab_announcement4), enableAnnounce.isAnnotype(8), enableAnnounce.isNoOff());
        AnnouncementSwitch announcementSwitch5 = new AnnouncementSwitch(getContext().getString(R.string.dab_announcement5), enableAnnounce.isAnnotype(16), enableAnnounce.isNoOff());
        AnnouncementSwitch announcementSwitch6 = new AnnouncementSwitch(getContext().getString(R.string.dab_announcement6), enableAnnounce.isAnnotype(32), enableAnnounce.isNoOff());
        AnnouncementSwitch announcementSwitch7 = new AnnouncementSwitch(getContext().getString(R.string.dab_announcement7), enableAnnounce.isAnnotype(64), enableAnnounce.isNoOff());
        AnnouncementSwitch announcementSwitch8 = new AnnouncementSwitch(getContext().getString(R.string.dab_announcement8), enableAnnounce.isAnnotype(128), enableAnnounce.isNoOff());
        AnnouncementSwitch announcementSwitch9 = new AnnouncementSwitch(getContext().getString(R.string.dab_announcement9), enableAnnounce.isAnnotype(256), enableAnnounce.isNoOff());
        AnnouncementSwitch announcementSwitch10 = new AnnouncementSwitch(getContext().getString(R.string.dab_announcement10), enableAnnounce.isAnnotype(GL10.GL_NEVER), enableAnnounce.isNoOff());
        AnnouncementSwitch announcementSwitch11 = new AnnouncementSwitch(getContext().getString(R.string.dab_announcement11), enableAnnounce.isAnnotype(GL10.GL_STENCIL_BUFFER_BIT), enableAnnounce.isNoOff());
        this.allDataList.add(announcementSwitch);
        this.allDataList.add(announcementSwitch2);
        this.allDataList.add(announcementSwitch3);
        this.allDataList.add(announcementSwitch4);
        this.allDataList.add(announcementSwitch5);
        this.allDataList.add(announcementSwitch6);
        this.allDataList.add(announcementSwitch7);
        this.allDataList.add(announcementSwitch8);
        this.allDataList.add(announcementSwitch9);
        this.allDataList.add(announcementSwitch10);
        this.allDataList.add(announcementSwitch11);
        this.rvAdapter = new SwitchRvAdapter(new SwitchListCallback() { // from class: com.yftech.libradio.dialog.DabSettingsNoRdsDialog.3
            @Override // com.yftech.libradio.dialog.DabSettingsNoRdsDialog.SwitchListCallback
            public void onItemCheckedChanged(int i, boolean z) {
                EnableAnnounce enableAnnounce2 = CarDabRadioManager.getInstance().getEnableAnnounce();
                switch (i) {
                    case 0:
                        if (z) {
                            if (enableAnnounce2.getAnnotype() == 0) {
                                CarDabRadioManager.getInstance().setEnableAnnounce(true, 1);
                                return;
                            } else {
                                CarDabRadioManager.getInstance().setEnableAnnounce(true, enableAnnounce2.getAnnotype());
                                return;
                            }
                        }
                        CarDabRadioManager.getInstance().setEnableAnnounce(false, enableAnnounce2.getAnnotype());
                        return;
                    case 1:
                        DabSettingsNoRdsDialog.this.turnSubAnnounceSwitch(1, z);
                        return;
                    case 2:
                        DabSettingsNoRdsDialog.this.turnSubAnnounceSwitch(2, z);
                        return;
                    case 3:
                        DabSettingsNoRdsDialog.this.turnSubAnnounceSwitch(4, z);
                        return;
                    case 4:
                        DabSettingsNoRdsDialog.this.turnSubAnnounceSwitch(8, z);
                        return;
                    case 5:
                        DabSettingsNoRdsDialog.this.turnSubAnnounceSwitch(16, z);
                        return;
                    case 6:
                        DabSettingsNoRdsDialog.this.turnSubAnnounceSwitch(32, z);
                        return;
                    case 7:
                        DabSettingsNoRdsDialog.this.turnSubAnnounceSwitch(64, z);
                        return;
                    case 8:
                        DabSettingsNoRdsDialog.this.turnSubAnnounceSwitch(128, z);
                        return;
                    case 9:
                        DabSettingsNoRdsDialog.this.turnSubAnnounceSwitch(256, z);
                        return;
                    case 10:
                        DabSettingsNoRdsDialog.this.turnSubAnnounceSwitch(GL10.GL_NEVER, z);
                        return;
                    case 11:
                        DabSettingsNoRdsDialog.this.turnSubAnnounceSwitch(GL10.GL_STENCIL_BUFFER_BIT, z);
                        return;
                    default:
                        return;
                }
            }
        });
        this.rvAdapter.setDataList(enableAnnounce.isNoOff() ? this.allDataList : this.switchDataList);
        this.rvSwitchList.setAdapter(this.rvAdapter);
    }

    @Override // android.app.Dialog
    protected void onStop() {
        super.onStop();
        CarDabRadioManager.getInstance().unregisterRadioControlCallback(this.dabRadioControlCallback);
    }

    @Override // android.app.Dialog
    public void onStart() {
        super.onStart();
        CarDabRadioManager.getInstance().registerRadioControlCallback(this.dabRadioControlCallback);
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

    /* JADX INFO: Access modifiers changed from: private */
    public void turnSubAnnounceSwitch(int i, boolean z) {
        EnableAnnounce enableAnnounce = CarDabRadioManager.getInstance().getEnableAnnounce();
        if (z) {
            LogUtil.d("turnON AnnounceSwitch,announceTpye: " + Integer.toBinaryString(i) + " ,enableAnnounce annotype: " + Integer.toBinaryString(enableAnnounce.getAnnotype()));
            CarDabRadioManager.getInstance().setEnableAnnounce(enableAnnounce.isNoOff(), enableAnnounce.getAnnotype() | i);
            return;
        }
        LogUtil.d("turnOFF AnnounceSwitch,announceTpye: " + Integer.toBinaryString(i) + " ,enableAnnounce annotype: " + Integer.toBinaryString(enableAnnounce.getAnnotype()));
        int annotype = i ^ enableAnnounce.getAnnotype();
        if (annotype == 0) {
            ToastUtils.showNormalMessage(R.string.announcement_set_tips_least_one_need, 0);
            this.rvAdapter.notifyDataSetChanged();
        } else {
            CarDabRadioManager.getInstance().setEnableAnnounce(enableAnnounce.isNoOff(), annotype);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes4.dex */
    public static class SwitchRvAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
        private static final int VIEW_TYPE_MAIN_ITEM = 1;
        private static final int VIEW_TYPE_SUB_ITEM = 2;
        private List<DabSwitch> dataList = new ArrayList();
        private SwitchListCallback switchListCallback;

        SwitchRvAdapter(SwitchListCallback switchListCallback) {
            this.switchListCallback = switchListCallback;
        }

        public void setDataList(List<DabSwitch> list) {
            this.dataList.clear();
            this.dataList.addAll(list);
        }

        @NonNull
        public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
            if (i == 2) {
                return new AnnouncementViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_dab_announcement_switch, viewGroup, false), new SwitchListCallback() { // from class: com.yftech.libradio.dialog.DabSettingsNoRdsDialog.SwitchRvAdapter.1
                    @Override // com.yftech.libradio.dialog.DabSettingsNoRdsDialog.SwitchListCallback
                    public void onItemCheckedChanged(int i2, boolean z) {
                        if (SwitchRvAdapter.this.switchListCallback != null) {
                            SwitchRvAdapter.this.switchListCallback.onItemCheckedChanged(i2, z);
                        }
                    }
                });
            }
            return new SwitchViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_dab_settings_switch, viewGroup, false), new SwitchListCallback() { // from class: com.yftech.libradio.dialog.DabSettingsNoRdsDialog.SwitchRvAdapter.2
                @Override // com.yftech.libradio.dialog.DabSettingsNoRdsDialog.SwitchListCallback
                public void onItemCheckedChanged(int i2, boolean z) {
                    if (SwitchRvAdapter.this.switchListCallback != null) {
                        SwitchRvAdapter.this.switchListCallback.onItemCheckedChanged(i2, z);
                    }
                }
            });
        }

        public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i) {
            if (viewHolder instanceof SwitchViewHolder) {
                SwitchViewHolder switchViewHolder = (SwitchViewHolder) viewHolder;
                switchViewHolder.position = i;
                switchViewHolder.tvName.setText(this.dataList.get(i).getName());
                if (this.dataList.get(i).isOpen) {
                    switchViewHolder.switcher.setChecked(true);
                    return;
                } else {
                    switchViewHolder.switcher.setChecked(false);
                    return;
                }
            }
            AnnouncementViewHolder announcementViewHolder = (AnnouncementViewHolder) viewHolder;
            announcementViewHolder.position = i;
            announcementViewHolder.tvIndex.setText(i + " ");
            announcementViewHolder.tvName.setText(this.dataList.get(i).getName());
            if (this.dataList.get(i).isOpen) {
                announcementViewHolder.checkBox.setChecked(true);
            } else {
                announcementViewHolder.checkBox.setChecked(false);
            }
        }

        public int getItemCount() {
            return this.dataList.size();
        }

        public int getItemViewType(int i) {
            return this.dataList.get(i) instanceof AnnouncementSwitch ? 2 : 1;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    private static class SwitchViewHolder extends RecyclerView.ViewHolder {
        private SwitchListCallback callback;
        private int position;
        private RadioSwitcher switcher;
        private TextView tvName;

        public SwitchViewHolder(@NonNull View view, final SwitchListCallback switchListCallback) {
            super(view);
            this.callback = switchListCallback;
            this.tvName = (TextView) view.findViewById(R.id.tv_switch_name);
            this.switcher = (RadioSwitcher) view.findViewById(R.id.item_dab_switch);
            this.switcher.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.yftech.libradio.dialog.DabSettingsNoRdsDialog.SwitchViewHolder.1
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

    /* loaded from: /home/user/work/dex/classes4.dex */
    private static class AnnouncementRvAdapter extends RecyclerView.Adapter<AnnouncementViewHolder> {
        private List<DabSwitch> dataList = new ArrayList();
        private SwitchListCallback switchListCallback;

        AnnouncementRvAdapter(SwitchListCallback switchListCallback) {
            this.switchListCallback = switchListCallback;
        }

        public void setDataList(List<DabSwitch> list) {
            this.dataList = list;
        }

        @NonNull
        public AnnouncementViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
            return new AnnouncementViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_dab_announcement_switch, viewGroup, false), new SwitchListCallback() { // from class: com.yftech.libradio.dialog.DabSettingsNoRdsDialog.AnnouncementRvAdapter.1
                @Override // com.yftech.libradio.dialog.DabSettingsNoRdsDialog.SwitchListCallback
                public void onItemCheckedChanged(int i2, boolean z) {
                    if (AnnouncementRvAdapter.this.switchListCallback != null) {
                        AnnouncementRvAdapter.this.switchListCallback.onItemCheckedChanged(i2, z);
                    }
                }
            });
        }

        public void onBindViewHolder(@NonNull AnnouncementViewHolder announcementViewHolder, int i) {
            announcementViewHolder.position = i;
            announcementViewHolder.tvName.setText(this.dataList.get(i).getName());
            if (this.dataList.get(i).isOpen) {
                announcementViewHolder.checkBox.setChecked(true);
            } else {
                announcementViewHolder.checkBox.setChecked(false);
            }
        }

        public int getItemCount() {
            return this.dataList.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes4.dex */
    public static class AnnouncementViewHolder extends RecyclerView.ViewHolder {
        private SwitchListCallback callback;
        private CheckBox checkBox;
        private View itemView;
        private int position;
        private TextView tvIndex;
        private TextView tvName;

        public AnnouncementViewHolder(@NonNull View view, final SwitchListCallback switchListCallback) {
            super(view);
            this.itemView = view;
            this.callback = switchListCallback;
            this.tvIndex = (TextView) view.findViewById(R.id.tv_index);
            this.tvName = (TextView) view.findViewById(R.id.tv_announcement_name);
            this.checkBox = (CheckBox) view.findViewById(R.id.ck_announcement);
            this.checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.yftech.libradio.dialog.DabSettingsNoRdsDialog.AnnouncementViewHolder.1
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                    if (switchListCallback == null || !compoundButton.isPressed()) {
                        return;
                    }
                    switchListCallback.onItemCheckedChanged(AnnouncementViewHolder.this.position, z);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes4.dex */
    public static class DabSwitch {
        private boolean isOpen;
        private String name;

        public DabSwitch(String str, boolean z) {
            LogUtil.d("new DabSwitch name: " + str + " , isOpen: " + z);
            this.name = str;
            this.isOpen = z;
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
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    private class AnnouncementSwitch extends DabSwitch {
        private boolean isShow;

        public AnnouncementSwitch(String str, boolean z, boolean z2) {
            super(str, z);
            this.isShow = z2;
        }

        public boolean isShow() {
            return this.isShow;
        }

        public void setShow(boolean z) {
            this.isShow = z;
        }
    }
}
