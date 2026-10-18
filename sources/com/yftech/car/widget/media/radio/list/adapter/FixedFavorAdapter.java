package com.yftech.car.widget.media.radio.list.adapter;

import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.yftech.car.media.radio.entity.DataOfRadio;
import com.yftech.car.widget.media.R;
import com.yftech.car.widget.media.manager.RadioManager;
import com.yftech.car.widget.media.radio.list.holder.FixedFavorHolder;
import com.yftech.car.widget.media.recyclerview.widget.RecyclerView;
import java.util.List;

/* loaded from: /home/user/work/dex/classes3.dex */
public class FixedFavorAdapter extends RecyclerView.Adapter<FixedFavorHolder> implements View.OnClickListener, View.OnLongClickListener {
    private static final int FAVOR = 1;
    private static final int SET_FREQ = 2;
    private static final String TAG = "FixedFavorAdapter";
    private final Drawable mDrawable;
    private final int mItemClickFunction;
    private final int mItemGravity;
    private final int mItemHeight;
    private final int mItemLongClickFunction;
    private final int mItemMargin;
    private final int mItemMarginBottom;
    private final int mItemMarginEnd;
    private final int mItemMarginLeft;
    private final int mItemMarginRight;
    private final int mItemMarginStart;
    private final int mItemMarginTop;
    private String mItemNull;
    private final int mItemTextColor;
    private final int mItemTextSize;
    private final int mItemWidth;
    private final List<DataOfRadio> mList;

    public FixedFavorAdapter(List<DataOfRadio> list, TypedArray typedArray) {
        this.mList = list;
        this.mItemWidth = typedArray.getLayoutDimension(R.styleable.radio_list_item_width, -2);
        this.mItemHeight = typedArray.getLayoutDimension(R.styleable.radio_list_item_height, -2);
        this.mItemGravity = typedArray.getInt(R.styleable.radio_list_item_gravity, 17);
        this.mItemTextColor = typedArray.getInt(R.styleable.radio_list_item_text_color, -1);
        this.mItemTextSize = (int) typedArray.getDimension(R.styleable.radio_list_item_text_size, 20.0f);
        this.mItemMargin = (int) typedArray.getDimension(R.styleable.radio_list_item_margin, 0.0f);
        this.mItemMarginLeft = (int) typedArray.getDimension(R.styleable.radio_list_item_marginLeft, 0.0f);
        this.mItemMarginTop = (int) typedArray.getDimension(R.styleable.radio_list_item_marginTop, 0.0f);
        this.mItemMarginRight = (int) typedArray.getDimension(R.styleable.radio_list_item_marginRight, 0.0f);
        this.mItemMarginBottom = (int) typedArray.getDimension(R.styleable.radio_list_item_marginBottom, 0.0f);
        this.mItemMarginStart = (int) typedArray.getDimension(R.styleable.radio_list_item_marginStart, 0.0f);
        this.mItemMarginEnd = (int) typedArray.getDimension(R.styleable.radio_list_item_marginEnd, 0.0f);
        this.mItemClickFunction = typedArray.getInt(R.styleable.radio_list_item_click_function, 2);
        this.mItemLongClickFunction = typedArray.getInt(R.styleable.radio_list_item_long_click_function, 1);
        this.mDrawable = typedArray.getDrawable(R.styleable.radio_list_item_background);
        this.mItemNull = typedArray.getString(R.styleable.radio_list_item_text_null);
        if (this.mItemNull == null) {
            this.mItemNull = "+";
        }
    }

    @Override // com.yftech.car.widget.media.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return this.mList.get(i).getType();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.yftech.car.widget.media.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public FixedFavorHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        FrameLayout frameLayout = new FrameLayout(viewGroup.getContext());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.mItemWidth, this.mItemHeight, this.mItemGravity);
        frameLayout.setLayoutParams(layoutParams);
        if (this.mItemMarginStart > 0 && this.mItemMarginEnd > 0) {
            layoutParams.setMargins(this.mItemMarginStart + this.mItemMargin, this.mItemMarginTop + this.mItemMargin, this.mItemMarginEnd + this.mItemMargin, this.mItemMarginBottom + this.mItemMargin);
        } else if (this.mItemMarginStart > 0) {
            layoutParams.setMargins(this.mItemMarginStart + this.mItemMargin, this.mItemMarginTop + this.mItemMargin, this.mItemMarginRight + this.mItemMargin, this.mItemMarginBottom + this.mItemMargin);
        } else if (this.mItemMarginEnd > 0) {
            layoutParams.setMargins(this.mItemMarginLeft + this.mItemMargin, this.mItemMarginTop + this.mItemMargin, this.mItemMarginEnd + this.mItemMargin, this.mItemMarginBottom + this.mItemMargin);
        } else {
            layoutParams.setMargins(this.mItemMarginLeft + this.mItemMargin, this.mItemMarginTop + this.mItemMargin, this.mItemMarginRight + this.mItemMargin, this.mItemMarginBottom + this.mItemMargin);
        }
        frameLayout.setBackground(this.mDrawable);
        TextView textView = new TextView(viewGroup.getContext());
        frameLayout.addView(textView);
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) textView.getLayoutParams();
        layoutParams2.width = -2;
        layoutParams2.height = -2;
        layoutParams2.gravity = this.mItemGravity;
        textView.setTextColor(this.mItemTextColor);
        textView.setTextSize(this.mItemTextSize);
        frameLayout.setOnClickListener(this);
        frameLayout.setOnLongClickListener(this);
        return new FixedFavorHolder(frameLayout);
    }

    @Override // com.yftech.car.widget.media.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull FixedFavorHolder fixedFavorHolder, int i) {
        fixedFavorHolder.itemView.setId(i);
        fixedFavorHolder.setRadioData(this.mList.get(i), this.mItemNull);
    }

    @Override // com.yftech.car.widget.media.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mList.size();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        DataOfRadio dataOfRadio = (DataOfRadio) view.getTag();
        if (dataOfRadio.getFreq() == 0) {
            if ((this.mItemClickFunction & 1) > 0) {
                DataOfRadio freq = RadioManager.getInstance().getFreq();
                RadioManager.getInstance().updateFavor(freq.getType(), view.getId(), freq);
                return;
            }
            return;
        }
        if ((this.mItemClickFunction & 2) > 0) {
            RadioManager.getInstance().setFreq(dataOfRadio.getFreq());
        } else if ((this.mItemClickFunction & 1) > 0) {
            DataOfRadio freq2 = RadioManager.getInstance().getFreq();
            RadioManager.getInstance().updateFavor(freq2.getType(), view.getId(), freq2);
        }
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        DataOfRadio dataOfRadio = (DataOfRadio) view.getTag();
        if (dataOfRadio.getFreq() == 0) {
            Log.d(TAG, "onLongClick: mItemClickFunction==" + this.mItemClickFunction);
            if ((this.mItemLongClickFunction & 1) > 0) {
                DataOfRadio freq = RadioManager.getInstance().getFreq();
                RadioManager.getInstance().updateFavor(freq.getType(), view.getId(), freq);
            }
        } else if ((this.mItemLongClickFunction & 1) > 0) {
            DataOfRadio freq2 = RadioManager.getInstance().getFreq();
            RadioManager.getInstance().updateFavor(freq2.getType(), view.getId(), freq2);
        } else if ((this.mItemLongClickFunction & 2) > 0) {
            RadioManager.getInstance().setFreq(dataOfRadio.getFreq());
        }
        return true;
    }
}
