package com.yftech.libgallery.ui.adapter;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.Target;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.media.common.entity.QuickMultipleEntity;
import com.media.common.util.DateUtil;
import com.media.common.util.LogUtil;
import com.media.common.util.SharedPrefsUtil;
import com.media.common.util.ValueUtil;
import com.yftech.libgallery.R;
import com.yftech.libgallery.bean.MediaFileForDataItem;
import com.yftech.libgallery.bean.MediaFileForDateItem;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

/* loaded from: /home/user/work/dex/classes4.dex */
public class PictureListAdapter extends BaseQuickAdapter<QuickMultipleEntity, BaseViewHolder> {
    private HashSet<String> errorPhoto;
    private int index;
    private boolean isSelectorMode;
    private String lastViewedPath;
    private Context mContext;
    private OnItemClickListener onItemClickListener;
    private OnLastViewedCallback onLastViewedCallback;
    private SparseArray<QuickMultipleEntity> selected;

    /* loaded from: /home/user/work/dex/classes4.dex */
    public interface OnItemClickListener {
        void onItemClickListener(String str);
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public interface OnLastViewedCallback {
        void onLoadLastViewedPosition(int i);
    }

    public /* bridge */ /* synthetic */ void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i, @NonNull List list) {
        onBindViewHolder((BaseViewHolder) viewHolder, i, (List<Object>) list);
    }

    public PictureListAdapter(Context context, int i) {
        super(R.layout.item_list_mix);
        this.isSelectorMode = false;
        this.mContext = context;
        this.index = i;
        this.selected = new SparseArray<>();
        this.errorPhoto = new HashSet<>();
        if (i == 0) {
            this.lastViewedPath = SharedPrefsUtil.getInstance(context).getString("TAG_PHOTO_VIEWED_LAST_FOR_USB_1", "");
        } else {
            this.lastViewedPath = SharedPrefsUtil.getInstance(context).getString("TAG_PHOTO_VIEWED_LAST_FOR_USB_2", "");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void convert(BaseViewHolder baseViewHolder, QuickMultipleEntity quickMultipleEntity) {
        Resources resources;
        int i;
        baseViewHolder.getView(R.id.v_isSelected).setSelected(this.selected.indexOfKey(baseViewHolder.getLayoutPosition()) >= 0);
        switch (quickMultipleEntity.getItemType()) {
            case 0:
                baseViewHolder.setVisible(R.id.v_isSelected, false);
                if (quickMultipleEntity instanceof MediaFileForDateItem) {
                    baseViewHolder.setGone(R.id.iv_pic, false).setGone(R.id.iv_cover, false).setGone(R.id.tv_item_date, true).setVisible(R.id.tv_tips, false).setText(R.id.tv_item_date, DateUtil.getSimpleTime(ValueUtil.parseLong(((MediaFileForDateItem) quickMultipleEntity).getDate())));
                    baseViewHolder.itemView.setOnClickListener(null);
                    return;
                }
                return;
            case 1:
                baseViewHolder.setVisible(R.id.v_isSelected, this.isSelectorMode);
                if (quickMultipleEntity instanceof MediaFileForDataItem) {
                    baseViewHolder.setGone(R.id.iv_pic, true).setGone(R.id.iv_cover, true).setGone(R.id.tv_item_date, false);
                    ImageView imageView = (ImageView) baseViewHolder.getView(R.id.iv_pic);
                    MediaFileForDataItem mediaFileForDataItem = (MediaFileForDataItem) quickMultipleEntity;
                    if (this.errorPhoto.contains(mediaFileForDataItem.getData())) {
                        Glide.with(this.mContext).load(Integer.valueOf(R.mipmap.pv_pic_error2)).into(imageView);
                    } else {
                        Glide.with(this.mContext).load(mediaFileForDataItem.getData()).error(R.mipmap.pv_pic_error2).listener(new mRequestListener(baseViewHolder.getLayoutPosition())).into(imageView);
                        baseViewHolder.setVisible(R.id.tv_tips, false);
                    }
                    if (TextUtils.isEmpty(this.lastViewedPath) || !this.lastViewedPath.equals(mediaFileForDataItem.getData())) {
                        resources = this.mContext.getResources();
                        i = R.color.transparent;
                    } else {
                        resources = this.mContext.getResources();
                        i = R.mipmap.pv_pic_selected_4;
                    }
                    imageView.setForeground(resources.getDrawable(i));
                    ((ImageView) baseViewHolder.getView(R.id.iv_cover)).setOnClickListener(new mOnItemClickListener(baseViewHolder.getLayoutPosition()));
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
        Object obj = list.get(0);
        if (obj instanceof Boolean) {
            boolean parseBoolean = ValueUtil.parseBoolean(obj.toString());
            LogUtil.d("onBindViewHolder:isSelectorMode_Payload=" + parseBoolean);
            QuickMultipleEntity quickMultipleEntity = (QuickMultipleEntity) getItem(i);
            if (quickMultipleEntity == null || quickMultipleEntity.getItemType() != 1) {
                return;
            }
            View view = baseViewHolder.getView(R.id.v_isSelected);
            view.setVisibility(parseBoolean ? 0 : 4);
            view.setSelected(this.selected.indexOfKey(i) >= 0);
            return;
        }
        if (obj instanceof Integer) {
            LogUtil.d("onBindViewHolder:mPosition=" + ValueUtil.parseInt(obj.toString()));
            MediaFileForDataItem mediaFileForDataItem = (QuickMultipleEntity) getItem(i);
            if (mediaFileForDataItem instanceof MediaFileForDataItem) {
                this.errorPhoto.add(mediaFileForDataItem.getData());
            }
        }
    }

    public void setNewData(@Nullable List<QuickMultipleEntity> list) {
        super.setNewData(list);
        if (list != null) {
            int i = -1;
            int i2 = 0;
            while (true) {
                if (i2 >= list.size()) {
                    break;
                }
                MediaFileForDataItem mediaFileForDataItem = (QuickMultipleEntity) list.get(i2);
                if (mediaFileForDataItem.getItemType() == 1 && (mediaFileForDataItem instanceof MediaFileForDataItem)) {
                    MediaFileForDataItem mediaFileForDataItem2 = mediaFileForDataItem;
                    if (!TextUtils.isEmpty(mediaFileForDataItem2.getData()) && mediaFileForDataItem2.getData().equals(this.lastViewedPath)) {
                        i = i2;
                        break;
                    }
                }
                i2++;
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
            if (!PictureListAdapter.this.isSelectorMode) {
                if (PictureListAdapter.this.onItemClickListener != null) {
                    MediaFileForDataItem mediaFileForDataItem = (QuickMultipleEntity) PictureListAdapter.this.getData().get(this.position);
                    if (mediaFileForDataItem.getItemType() == 1 && (mediaFileForDataItem instanceof MediaFileForDataItem)) {
                        PictureListAdapter.this.onItemClickListener.onItemClickListener(mediaFileForDataItem.getData());
                        return;
                    }
                    return;
                }
                return;
            }
            QuickMultipleEntity quickMultipleEntity = (QuickMultipleEntity) PictureListAdapter.this.getData().get(this.position);
            if (quickMultipleEntity.getItemType() == 1) {
                StringBuilder sb = new StringBuilder();
                sb.append("picture is selected:");
                sb.append(PictureListAdapter.this.selected.indexOfKey(this.position) < 0);
                LogUtil.d(sb.toString());
                if (PictureListAdapter.this.selected.indexOfKey(this.position) < 0) {
                    PictureListAdapter.this.selected.append(this.position, quickMultipleEntity);
                } else {
                    PictureListAdapter.this.selected.remove(this.position);
                }
                PictureListAdapter.this.notifyItemChanged(this.position, Boolean.valueOf(PictureListAdapter.this.selected.indexOfKey(this.position) >= 0));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes4.dex */
    public class mRequestListener implements RequestListener<Drawable> {
        int position;

        public boolean onResourceReady(Drawable drawable, Object obj, Target<Drawable> target, DataSource dataSource, boolean z) {
            return false;
        }

        public /* bridge */ /* synthetic */ boolean onResourceReady(Object obj, Object obj2, Target target, DataSource dataSource, boolean z) {
            return onResourceReady((Drawable) obj, obj2, (Target<Drawable>) target, dataSource, z);
        }

        public mRequestListener(int i) {
            this.position = i;
        }

        public boolean onLoadFailed(@Nullable GlideException glideException, Object obj, Target<Drawable> target, boolean z) {
            PictureListAdapter.this.notifyItemChanged(this.position, Integer.valueOf(this.position));
            return false;
        }
    }

    public boolean isSelectorMode() {
        return this.isSelectorMode;
    }

    public void setSelectorMode(boolean z, boolean z2) {
        this.isSelectorMode = z;
        if (!this.isSelectorMode) {
            this.selected.clear();
        }
        if (z2) {
            notifyItemRangeChanged(0, getItemCount(), Boolean.valueOf(this.isSelectorMode));
        }
    }

    public List<QuickMultipleEntity> getImageSelector() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.selected.size(); i++) {
            arrayList.add(this.selected.get(this.selected.keyAt(i)));
        }
        return arrayList;
    }

    public boolean isSelectedPhoto() {
        return this.selected.size() > 0;
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
            MediaFileForDataItem mediaFileForDataItem = (QuickMultipleEntity) data.get(i);
            if (mediaFileForDataItem.getItemType() == 1 && (mediaFileForDataItem instanceof MediaFileForDataItem)) {
                MediaFileForDataItem mediaFileForDataItem2 = mediaFileForDataItem;
                if (!TextUtils.isEmpty(mediaFileForDataItem2.getData()) && mediaFileForDataItem2.getData().equals(str)) {
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
