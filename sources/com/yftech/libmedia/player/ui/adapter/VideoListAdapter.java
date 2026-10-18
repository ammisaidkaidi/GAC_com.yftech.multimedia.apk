package com.yftech.libmedia.player.ui.adapter;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.Glide;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.media.common.entity.QuickMultipleEntity;
import com.media.common.ui.widget.SyncImageView;
import com.media.common.util.DateUtil;
import com.media.common.util.SharedPrefsUtil;
import com.media.common.util.ValueUtil;
import com.yftech.car.media.data.CarMediaDataManager;
import com.yftech.libmedia.R;
import com.yftech.libmedia.player.bean.MediaFileForDataItem;
import com.yftech.libmedia.player.bean.MediaFileForDateItem;
import com.yftech.libmedia.player.ui.VideoListFragment;
import com.yftech.vehicle.internal.adapter.ICarDrive;
import com.yftech.vehicle.internal.adapter.ICarWindow;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;

/* loaded from: /home/user/work/dex/classes4.dex */
public class VideoListAdapter extends BaseQuickAdapter<QuickMultipleEntity, BaseViewHolder> {
    private VideoListFragment fragment;
    private int index;
    private String lastViewedPath;
    private OnItemClickListener onItemClickListener;
    private OnLastViewedCallback onLastViewedCallback;
    private HashMap<String, Integer> positionByPath;
    private HashMap<String, byte[]> thumbDataByPath;

    /* loaded from: /home/user/work/dex/classes4.dex */
    public interface OnItemClickListener {
        void onItemClick(MediaFileForDataItem mediaFileForDataItem);
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public interface OnLastViewedCallback {
        void onLoadLastViewedPosition(int i);
    }

    public /* bridge */ /* synthetic */ void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i, @NonNull List list) {
        onBindViewHolder((BaseViewHolder) viewHolder, i, (List<Object>) list);
    }

    public VideoListAdapter(VideoListFragment videoListFragment, int i) {
        super(R.layout.item_video_list_mix);
        this.fragment = videoListFragment;
        this.index = i;
        this.positionByPath = new HashMap<>();
        this.thumbDataByPath = new HashMap<>();
        if (i == 0) {
            this.lastViewedPath = SharedPrefsUtil.getInstance(videoListFragment.getContext()).getString("TAG_VIDEO_VIEWED_LAST_FOR_USB_1", "");
        } else {
            this.lastViewedPath = SharedPrefsUtil.getInstance(videoListFragment.getContext()).getString("TAG_VIDEO_VIEWED_LAST_FOR_USB_2", "");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void convert(BaseViewHolder baseViewHolder, QuickMultipleEntity quickMultipleEntity) {
        Resources resources;
        int i;
        TextView textView = (TextView) baseViewHolder.getView(R.id.tv_tips);
        switch (quickMultipleEntity.getItemType()) {
            case 2:
                if (quickMultipleEntity instanceof MediaFileForDateItem) {
                    baseViewHolder.setGone(R.id.lin_list_item, false).setGone(R.id.tv_item_date, true).setVisible(R.id.tv_tips, false).setText(R.id.tv_item_date, DateUtil.getSimpleTime(ValueUtil.parseLong(((MediaFileForDateItem) quickMultipleEntity).getDate())));
                    return;
                }
                return;
            case 3:
                if (quickMultipleEntity instanceof MediaFileForDataItem) {
                    MediaFileForDataItem mediaFileForDataItem = (MediaFileForDataItem) quickMultipleEntity;
                    baseViewHolder.setGone(R.id.lin_list_item, true).setGone(R.id.tv_item_date, false);
                    SyncImageView view = baseViewHolder.getView(R.id.iv_pic);
                    TextView textView2 = (TextView) baseViewHolder.itemView.findViewById(R.id.tv_name);
                    TextView textView3 = (TextView) baseViewHolder.itemView.findViewById(R.id.tv_duration);
                    if (view != null) {
                        if (mediaFileForDataItem.getDuration() == 0) {
                            Glide.with((Context) Objects.requireNonNull(this.fragment.getContext())).load(Integer.valueOf(R.mipmap.pv_vid_error2)).into(view);
                        } else {
                            textView.setVisibility(8);
                            byte[] bArr = this.thumbDataByPath.get(mediaFileForDataItem.getData());
                            if (bArr == null) {
                                view.setMediaFilePath(1, mediaFileForDataItem.getData(), ICarWindow.WINDOW_ROOF_SHADE_OPEN_OPERTION, ICarDrive.EPS_STYLE);
                            } else if (bArr.length == 10) {
                                view.setImageResource(R.mipmap.pv_vid_error1);
                            } else {
                                Glide.with((Context) Objects.requireNonNull(this.fragment.getContext())).load(bArr).error(R.mipmap.pv_vid_error1).into(view);
                            }
                        }
                        if (view.getOnMediaInformationCallback() == null) {
                            view.setOnMediaInformationCallback(new mOnMediaDataCallbackListener());
                        }
                        if (TextUtils.isEmpty(this.lastViewedPath) || !this.lastViewedPath.equals(mediaFileForDataItem.getData())) {
                            resources = this.mContext.getResources();
                            i = R.color.transparent;
                        } else {
                            resources = this.mContext.getResources();
                            i = R.mipmap.pv_pic_selected_3;
                        }
                        view.setForeground(resources.getDrawable(i));
                    }
                    if (textView2 != null) {
                        textView2.setText(mediaFileForDataItem.getFileName());
                    }
                    if (textView3 != null) {
                        textView3.setText(DateUtil.getTime(mediaFileForDataItem.getDuration()));
                    }
                    baseViewHolder.itemView.setOnClickListener(new mOnItemClickListener(baseViewHolder.getLayoutPosition()));
                    return;
                }
                return;
            default:
                return;
        }
    }

    public void onBindViewHolder(@NonNull BaseViewHolder baseViewHolder, int i, @NonNull List<Object> list) {
        if (list.isEmpty()) {
            super.onBindViewHolder(baseViewHolder, i, list);
            return;
        }
        QuickMultipleEntity quickMultipleEntity = (QuickMultipleEntity) getItem(i);
        if (quickMultipleEntity instanceof MediaFileForDataItem) {
            byte[] bArr = this.thumbDataByPath.get(((MediaFileForDataItem) quickMultipleEntity).getData());
            SyncImageView view = baseViewHolder.getView(R.id.iv_pic);
            if (bArr == null || bArr.length == 10) {
                view.setImageResource(R.mipmap.pv_vid_error1);
            } else {
                Glide.with((Context) Objects.requireNonNull(this.fragment.getContext())).load(bArr).placeholder(R.mipmap.pv_vid_error1).error(R.mipmap.pv_vid_error1).into(view);
            }
        }
    }

    public void setNewData(@Nullable List<QuickMultipleEntity> list) {
        super.setNewData(list);
        if (list != null) {
            int i = -1;
            this.positionByPath.clear();
            for (int i2 = 0; i2 < list.size(); i2++) {
                QuickMultipleEntity quickMultipleEntity = list.get(i2);
                if (quickMultipleEntity.getItemType() == 3 && (quickMultipleEntity instanceof MediaFileForDataItem)) {
                    MediaFileForDataItem mediaFileForDataItem = (MediaFileForDataItem) quickMultipleEntity;
                    this.positionByPath.put(mediaFileForDataItem.getData(), Integer.valueOf(i2));
                    if (!TextUtils.isEmpty(mediaFileForDataItem.getData()) && mediaFileForDataItem.getData().equals(this.lastViewedPath)) {
                        i = i2;
                    }
                }
            }
            if (this.onLastViewedCallback != null) {
                this.onLastViewedCallback.onLoadLastViewedPosition(i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes4.dex */
    public class mOnItemClickListener implements View.OnClickListener {
        private int position;

        public mOnItemClickListener(int i) {
            this.position = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (VideoListAdapter.this.onItemClickListener != null) {
                QuickMultipleEntity quickMultipleEntity = (QuickMultipleEntity) VideoListAdapter.this.getData().get(this.position);
                if (quickMultipleEntity.getItemType() == 3 && (quickMultipleEntity instanceof MediaFileForDataItem)) {
                    VideoListAdapter.this.onItemClickListener.onItemClick((MediaFileForDataItem) quickMultipleEntity);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes4.dex */
    public class mOnMediaDataCallbackListener implements SyncImageView.OnMediaInformationCallback {
        public void onMediaDurationCallback(int i) {
        }

        private mOnMediaDataCallbackListener() {
        }

        public void onMediaImageCallback(String str, byte[] bArr, int i, int i2) {
            VideoListAdapter.this.thumbDataByPath.put(str, bArr);
            Integer num = (Integer) VideoListAdapter.this.positionByPath.get(str);
            int intValue = num != null ? num.intValue() : -1;
            if (intValue < 0 || intValue >= VideoListAdapter.this.getItemCount() || !(((QuickMultipleEntity) VideoListAdapter.this.getItem(intValue)) instanceof MediaFileForDataItem) || CarMediaDataManager.getInstance().isScanner(VideoListAdapter.this.index) || bArr == null) {
                return;
            }
            VideoListAdapter.this.notifyItemChanged(intValue);
        }
    }

    public void setLastViewedPath(String str) {
        this.lastViewedPath = str;
        notifyDataSetChanged();
        List data = getData();
        int i = 0;
        while (true) {
            if (i >= data.size()) {
                i = -1;
                break;
            }
            QuickMultipleEntity quickMultipleEntity = (QuickMultipleEntity) data.get(i);
            if (quickMultipleEntity.getItemType() == 3 && (quickMultipleEntity instanceof MediaFileForDataItem)) {
                MediaFileForDataItem mediaFileForDataItem = (MediaFileForDataItem) quickMultipleEntity;
                if (!TextUtils.isEmpty(mediaFileForDataItem.getData()) && mediaFileForDataItem.getData().equals(str)) {
                    break;
                }
            }
            i++;
        }
        if (this.onLastViewedCallback != null) {
            this.onLastViewedCallback.onLoadLastViewedPosition(i);
        }
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.onItemClickListener = onItemClickListener;
    }

    public void setOnLastViewedCallback(OnLastViewedCallback onLastViewedCallback) {
        this.onLastViewedCallback = onLastViewedCallback;
    }
}
