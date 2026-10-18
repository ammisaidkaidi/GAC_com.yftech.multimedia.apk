package com.yftech.libradio.dialog;

import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Rect;
import android.os.Bundle;
import android.text.TextPaint;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import com.media.common.util.BaseApplication;
import com.media.common.util.LogUtil;
import com.yftech.libradio.DabLableUtils;
import com.yftech.libradio.R;
import com.yftech.libradio.Utils;
import com.yftech.libradio.widget.AutoLayoutManager;
import com.yftech.vehicle.internal.adapter.ICarWindow;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes4.dex */
public class DabLableDialog extends Dialog {
    public static final String BTN_ACTION = "com.systemui.btn.action";
    public static final int BTN_ETR_HOME = 0;
    public static final String BTN_ETR_KEY = "key";
    private static final int ITEM_WIDTH_1 = 290;
    private static final int ITEM_WIDTH_2 = 598;
    private static final int ITEM_WIDTH_3 = 906;
    private LabelListCallback callback;
    private String currentSelectedLabel;
    private ImageView ivBack;
    private BroadcastReceiver mReceiver;
    private List<String> originalLabelList;
    private List<String> processedLabelList;
    private RecyclerView rvLabelList;
    private TextPaint textPaint;
    private String title;
    private TextView tvTtile;

    /* loaded from: /home/user/work/dex/classes4.dex */
    public interface LabelListCallback {
        void onItemClicked(int i);
    }

    public DabLableDialog(@NonNull Context context) {
        super(context);
        this.originalLabelList = new ArrayList();
        this.processedLabelList = new ArrayList();
        this.mReceiver = new BroadcastReceiver() { // from class: com.yftech.libradio.dialog.DabLableDialog.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                if (DabLableDialog.BTN_ACTION.equals(intent.getAction()) && intent.getIntExtra(DabLableDialog.BTN_ETR_KEY, -1) == 0) {
                    DabLableDialog.this.dismiss();
                }
            }
        };
        init();
    }

    public DabLableDialog(@NonNull Context context, int i) {
        super(context, i);
        this.originalLabelList = new ArrayList();
        this.processedLabelList = new ArrayList();
        this.mReceiver = new BroadcastReceiver() { // from class: com.yftech.libradio.dialog.DabLableDialog.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                if (DabLableDialog.BTN_ACTION.equals(intent.getAction()) && intent.getIntExtra(DabLableDialog.BTN_ETR_KEY, -1) == 0) {
                    DabLableDialog.this.dismiss();
                }
            }
        };
        init();
    }

    protected DabLableDialog(@NonNull Context context, boolean z, @Nullable DialogInterface.OnCancelListener onCancelListener) {
        super(context, z, onCancelListener);
        this.originalLabelList = new ArrayList();
        this.processedLabelList = new ArrayList();
        this.mReceiver = new BroadcastReceiver() { // from class: com.yftech.libradio.dialog.DabLableDialog.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                if (DabLableDialog.BTN_ACTION.equals(intent.getAction()) && intent.getIntExtra(DabLableDialog.BTN_ETR_KEY, -1) == 0) {
                    DabLableDialog.this.dismiss();
                }
            }
        };
        init();
    }

    public void setLabelListCallback(LabelListCallback labelListCallback) {
        this.callback = labelListCallback;
    }

    public void setLabelList(List<String> list, String str) {
        this.originalLabelList.clear();
        this.originalLabelList.addAll(list);
        this.processedLabelList.clear();
        this.processedLabelList.addAll(DabLableUtils.processLables(list, this.textPaint));
        this.currentSelectedLabel = str;
        if (this.rvLabelList != null) {
            this.rvLabelList.getAdapter().notifyDataSetChanged();
        }
    }

    public void setTitle(String str) {
        this.title = str;
        if (this.tvTtile != null) {
            this.tvTtile.setText(str);
        }
    }

    private void init() {
        this.textPaint = new TextPaint();
        this.textPaint.setTextSize(24.0f);
        this.textPaint.setTextLocale(BaseApplication.getInstance().getResources().getConfiguration().locale);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_dab_lable_select);
        this.ivBack = (ImageView) findViewById(R.id.iv_back);
        this.tvTtile = (TextView) findViewById(R.id.tv_title_filter_sel);
        this.ivBack.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.libradio.dialog.DabLableDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DabLableDialog.this.dismiss();
            }
        });
        this.rvLabelList = findViewById(R.id.rv_dab_label_list);
        this.rvLabelList.setLayoutManager(new AutoLayoutManager());
        this.rvLabelList.setAdapter(new LabelAdapter());
        this.rvLabelList.addItemDecoration(new RecyclerView.ItemDecoration() { // from class: com.yftech.libradio.dialog.DabLableDialog.3
            public void getItemOffsets(@NonNull Rect rect, @NonNull View view, @NonNull RecyclerView recyclerView, @NonNull RecyclerView.State state) {
                rect.set(6, 6, 6, 6);
            }
        });
    }

    @Override // android.app.Dialog
    public void onStart() {
        super.onStart();
        LogUtil.d("onStart()");
        Window window = getWindow();
        if (window != null) {
            window.setBackgroundDrawableResource(android.R.color.transparent);
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.dimAmount = 0.0f;
            attributes.width = 1010;
            attributes.height = 640;
            attributes.gravity = 8388659;
            attributes.x = ICarWindow.WINDOW_OVERHEAT_STATE_FR;
            attributes.y = 80;
            window.setAttributes(attributes);
        }
        if (this.title != null) {
            this.tvTtile.setText(this.title);
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(BTN_ACTION);
        getContext().registerReceiver(this.mReceiver, intentFilter);
    }

    @Override // android.app.Dialog
    protected void onStop() {
        super.onStop();
        getContext().unregisterReceiver(this.mReceiver);
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    private class LabelAdapter extends RecyclerView.Adapter {
        private LabelAdapter() {
        }

        @NonNull
        public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
            return new LableViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_dab_lable, viewGroup, false));
        }

        public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i) {
            LableViewHolder lableViewHolder = (LableViewHolder) viewHolder;
            String str = (String) DabLableDialog.this.processedLabelList.get(i);
            lableViewHolder.tvLable.setText(Utils.convertStationName(str));
            lableViewHolder.position = i;
            if (DabLableDialog.this.currentSelectedLabel.equals(str)) {
                lableViewHolder.tvLable.setSelected(true);
            } else {
                lableViewHolder.tvLable.setSelected(false);
            }
            ViewGroup.LayoutParams layoutParams = lableViewHolder.tvLable.getLayoutParams();
            float measureText = DabLableDialog.this.textPaint.measureText(str);
            if (measureText <= 272.0f) {
                layoutParams.width = 290;
                layoutParams.height = 62;
            } else if (measureText <= 580.0f) {
                layoutParams.width = DabLableDialog.ITEM_WIDTH_2;
                layoutParams.height = 62;
            } else {
                layoutParams.width = DabLableDialog.ITEM_WIDTH_3;
                layoutParams.height = -2;
            }
            lableViewHolder.tvLable.setLayoutParams(layoutParams);
        }

        public int getItemCount() {
            return DabLableDialog.this.processedLabelList.size();
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    private class LableViewHolder extends RecyclerView.ViewHolder {
        private int position;
        private TextView tvLable;

        public LableViewHolder(@NonNull View view) {
            super(view);
            this.tvLable = (TextView) view.findViewById(R.id.tv_dab_station_label);
            this.tvLable.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.libradio.dialog.DabLableDialog.LableViewHolder.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (DabLableDialog.this.callback != null) {
                        LableViewHolder.this.tvLable.setSelected(true);
                        String str = (String) DabLableDialog.this.processedLabelList.get(LableViewHolder.this.position);
                        if (DabLableDialog.this.currentSelectedLabel == null || !DabLableDialog.this.currentSelectedLabel.equals(str)) {
                            for (int i = 0; i < DabLableDialog.this.originalLabelList.size(); i++) {
                                if (str.equals(DabLableDialog.this.originalLabelList.get(i))) {
                                    DabLableDialog.this.callback.onItemClicked(i);
                                    DabLableDialog.this.dismiss();
                                }
                            }
                        }
                    }
                }
            });
        }
    }
}
