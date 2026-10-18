package com.yftech.libmusic.dialog.adapter;

import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.alibaba.android.vlayout.LayoutHelper;
import com.alibaba.android.vlayout.layout.LinearLayoutHelper;
import com.chad.library.adapter.base.BaseViewHolder;
import com.media.common.util.LogUtil;
import com.media.common.util.ValueUtil;
import com.yftech.car.bluetooth.CarBluetoothManager;
import com.yftech.car.media.data.CarMediaDataManager;
import com.yftech.libmusic.R;
import com.yftech.libmusic.utils.CarLifeMusicManager;
import com.yftech.libmusic.utils.CarPlayMusicManager;
import com.yftech.libmusic.utils.MediaUtils;
import com.yftech.vehicle.internal.adapter.IHostConfig;
import com.yftech.vehicle.sdk.HostConfig;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: /home/user/work/dex/classes4.dex */
public class MusicSourceAdapter extends DelegateAdapter.Adapter<BaseViewHolder> {
    private Context mContext;
    private OnItemClickListener onItemClickListener;
    private Map<String, Integer> sourceEnableMap;
    private List<Integer> type_Tag_Resource;
    private List<String> types;
    private List<String> types_name;
    private int mPosition = -1;
    private boolean blueToothEnable = false;

    /* loaded from: /home/user/work/dex/classes4.dex */
    public interface OnItemClickListener {
        void onItemClickListener(int i, int i2, String str, String str2);
    }

    public /* bridge */ /* synthetic */ void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i, @NonNull List list) {
        onBindViewHolder((BaseViewHolder) viewHolder, i, (List<Object>) list);
    }

    public MusicSourceAdapter(Context context) {
        this.mContext = context;
        boolean isCarplayPresent = HostConfig.isCarplayPresent();
        boolean isCarlifePresent = HostConfig.isCarlifePresent();
        boolean isCarplayCertificate = MediaUtils.isCarplayCertificate();
        IHostConfig.Usb usb = IHostConfig.Usb.ONE;
        LogUtil.i(" USB number :" + usb + "   isCarplayPresent = " + isCarlifePresent + "   isCarlifePresent = " + isCarlifePresent + "   isCarplayCertificate = " + isCarplayCertificate);
        this.types = new ArrayList();
        this.types_name = new ArrayList();
        this.type_Tag_Resource = new ArrayList();
        this.types.add("MUSIC_SOURCE_OF_BLUETOOTH");
        this.types_name.add(context.getResources().getString(R.string.music_source_blueTooth_enable));
        this.type_Tag_Resource.add(Integer.valueOf(R.mipmap.audio_icon_bluetooth_norm));
        if (usb == IHostConfig.Usb.ONE) {
            this.types.add("MUSIC_SOURCE_OF_USB1");
            this.types_name.add(context.getResources().getString(R.string.music_source_selection_1));
            this.type_Tag_Resource.add(Integer.valueOf(R.drawable.music_source_for_usb_selector));
        } else if (usb == IHostConfig.Usb.TWO || usb == IHostConfig.Usb.NOT_PRESENT) {
            this.types.add("MUSIC_SOURCE_OF_USB1");
            this.types.add("MUSIC_SOURCE_OF_USB2");
            this.types_name.add(context.getResources().getString(R.string.music_source_selection_1));
            this.types_name.add(context.getResources().getString(R.string.music_source_selection_2));
            this.type_Tag_Resource.add(Integer.valueOf(R.drawable.music_source_for_usb_selector));
            this.type_Tag_Resource.add(Integer.valueOf(R.drawable.music_source_for_usb_selector));
        }
        if (isCarplayPresent) {
            this.types.add("MUSIC_SOURCE_OF_CARPLAY");
            this.types_name.add(context.getResources().getString(R.string.music_source_selection_carplay));
            this.type_Tag_Resource.add(Integer.valueOf(R.drawable.music_source_for_carplay_selector));
        }
        initEnable();
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0078. Please report as an issue. */
    private void initEnable() {
        this.sourceEnableMap = new HashMap();
        int musicFileExists = CarMediaDataManager.getInstance().getMusicFileExists();
        LogUtil.d("musicFileExists=" + musicFileExists);
        boolean carLifeConnectionStatus = CarLifeMusicManager.getInstance().getCarLifeConnectionStatus();
        LogUtil.d("CarLifeStatus=" + carLifeConnectionStatus);
        int connectStatus = CarPlayMusicManager.getInstance(this.mContext).getConnectStatus();
        LogUtil.d("CarPlayStatus=" + connectStatus);
        for (String str : this.types) {
            char c = 65535;
            switch (str.hashCode()) {
                case 1000199824:
                    if (str.equals("MUSIC_SOURCE_OF_BLUETOOTH")) {
                        c = 0;
                        break;
                    }
                    break;
                case 1536412978:
                    if (str.equals("MUSIC_SOURCE_OF_CARLIFE")) {
                        c = 3;
                        break;
                    }
                    break;
                case 1536534890:
                    if (str.equals("MUSIC_SOURCE_OF_CARPLAY")) {
                        c = 4;
                        break;
                    }
                    break;
                case 1766254091:
                    if (str.equals("MUSIC_SOURCE_OF_USB1")) {
                        c = 1;
                        break;
                    }
                    break;
                case 1766254092:
                    if (str.equals("MUSIC_SOURCE_OF_USB2")) {
                        c = 2;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    this.sourceEnableMap.put(str, 0);
                    break;
                case 1:
                    if (CarMediaDataManager.getInstance().isUsbExists(0)) {
                        if (CarMediaDataManager.getInstance().isScanner(0)) {
                            this.sourceEnableMap.put(str, 1);
                            break;
                        } else {
                            this.sourceEnableMap.put(str, Integer.valueOf((musicFileExists == 1 || musicFileExists == 3) ? 0 : 3));
                            break;
                        }
                    } else {
                        this.sourceEnableMap.put(str, 2);
                        break;
                    }
                case 2:
                    if (CarMediaDataManager.getInstance().isUsbExists(1)) {
                        if (CarMediaDataManager.getInstance().isScanner(1)) {
                            this.sourceEnableMap.put(str, 1);
                            break;
                        } else {
                            this.sourceEnableMap.put(str, Integer.valueOf((musicFileExists == 2 || musicFileExists == 3) ? 0 : 3));
                            break;
                        }
                    } else {
                        this.sourceEnableMap.put(str, 2);
                        break;
                    }
                case 3:
                    this.sourceEnableMap.put(str, Integer.valueOf(carLifeConnectionStatus ? 0 : 2));
                    break;
                case 4:
                    this.sourceEnableMap.put(str, Integer.valueOf(connectStatus != 2 ? 2 : 0));
                    break;
                default:
                    this.sourceEnableMap.put(str, 2);
                    break;
            }
        }
    }

    public int findPositionBySource(String str) {
        for (int i = 0; i < this.types.size(); i++) {
            if (this.types.get(i).equals(str)) {
                return i;
            }
        }
        return -1;
    }

    public void setEnable(String str, int i) {
        this.sourceEnableMap.put(str, Integer.valueOf(i));
        notifyDataSetChanged();
    }

    public int getEnable(String str) {
        Integer num = this.sourceEnableMap.get(str);
        if (num == null) {
            return 2;
        }
        return num.intValue();
    }

    public LayoutHelper onCreateLayoutHelper() {
        return new LinearLayoutHelper();
    }

    @NonNull
    public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        return new BaseViewHolder(LayoutInflater.from(this.mContext).inflate(R.layout.item_music_source, viewGroup, false));
    }

    public void onBindViewHolder(@NonNull BaseViewHolder baseViewHolder, final int i) {
        if (this.types.get(i).equals("MUSIC_SOURCE_OF_BLUETOOTH")) {
            String str = null;
            if (this.blueToothEnable) {
                List remoteDevices = CarBluetoothManager.getInstance().getRemoteDevices();
                if (remoteDevices != null && !remoteDevices.isEmpty()) {
                    str = ((BluetoothDevice) remoteDevices.get(0)).getName();
                }
            } else {
                str = this.mContext.getString(R.string.music_source_blueTooth_disable);
            }
            baseViewHolder.setText(R.id.tv_name, str);
        } else {
            baseViewHolder.setText(R.id.tv_name, this.types_name.get(i % this.types_name.size()));
        }
        ProgressBar progressBar = (ProgressBar) baseViewHolder.getView(R.id.pb_loading);
        View view = baseViewHolder.getView(R.id.iv_selector);
        ImageView imageView = (ImageView) baseViewHolder.getView(R.id.iv_tag);
        baseViewHolder.setImageResource(R.id.iv_tag, this.type_Tag_Resource.get(i % this.type_Tag_Resource.size()).intValue());
        Integer num = this.sourceEnableMap.get(this.types.get(i));
        if (num != null) {
            baseViewHolder.setEnabled(R.id.tv_name, num.intValue() == 0).setEnabled(R.id.iv_tag, num.intValue() == 0);
            if (num.intValue() == 1) {
                progressBar.setVisibility(0);
                imageView.setVisibility(4);
                view.setVisibility(4);
            } else {
                progressBar.setVisibility(4);
                imageView.setVisibility(0);
                view.setVisibility(0);
            }
            baseViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.libmusic.dialog.adapter.MusicSourceAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    Integer num2;
                    if (MusicSourceAdapter.this.onItemClickListener == null || (num2 = (Integer) MusicSourceAdapter.this.sourceEnableMap.get(MusicSourceAdapter.this.types.get(i))) == null) {
                        return;
                    }
                    MusicSourceAdapter.this.onItemClickListener.onItemClickListener(i, num2.intValue(), (String) MusicSourceAdapter.this.types_name.get(i), (String) MusicSourceAdapter.this.types.get(i));
                }
            });
            baseViewHolder.itemView.setBackgroundResource(this.mPosition == i ? R.mipmap.music_source_pic_sel_104px : android.R.color.transparent);
        }
        view.setSelected(this.mPosition == i);
    }

    public void onBindViewHolder(@NonNull BaseViewHolder baseViewHolder, int i, @NonNull List<Object> list) {
        if (list.isEmpty()) {
            onBindViewHolder(baseViewHolder, i);
            return;
        }
        ValueUtil.parseBoolean(list.get(0).toString());
        View view = baseViewHolder.getView(R.id.iv_selector);
        baseViewHolder.itemView.setBackgroundResource(this.mPosition == i ? R.mipmap.music_source_pic_sel_104px : android.R.color.transparent);
        view.setSelected(i == this.mPosition);
    }

    public void setSelection(int i) {
        LogUtil.e("setSelection:position=" + i);
        int i2 = this.mPosition;
        this.mPosition = i;
        notifyItemChanged(i2, false);
        notifyItemChanged(i, true);
    }

    public void setBlueToothEnable(boolean z) {
        this.blueToothEnable = z;
        notifyItemChanged(0);
    }

    public boolean isBlueToothEnable() {
        return this.blueToothEnable;
    }

    public int getSelection() {
        return this.mPosition;
    }

    public String getTypeBySelection() {
        if (this.mPosition < 0 || this.mPosition >= this.types.size()) {
            return null;
        }
        return this.types.get(this.mPosition);
    }

    public int getItemCount() {
        return this.types.size();
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.onItemClickListener = onItemClickListener;
    }
}
