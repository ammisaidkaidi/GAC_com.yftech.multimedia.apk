package com.yftech.car.widget.media.radio.list.adapter;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.yftech.car.media.radio.entity.DataOfRadio;
import com.yftech.car.widget.media.R;
import com.yftech.car.widget.media.manager.RadioManager;
import com.yftech.car.widget.media.radio.list.holder.DynamicHolder;
import com.yftech.car.widget.media.recyclerview.widget.RecyclerView;
import com.yftech.car.widget.media.view.PlayAnimation;
import java.util.List;

/* loaded from: /home/user/work/dex/classes3.dex */
public class DynamicAdapter extends RecyclerView.Adapter<DynamicHolder> implements View.OnClickListener, View.OnLongClickListener {
    private static final int ADD_FAVOR = 1;
    public static final int BAND = 2;
    private static final int CLICK_ADD_FAVOR = 1;
    private static final int CLICK_REMOVE_FAVOR = 4;
    public static final int FAVOR_STATUS = 32;
    public static final int FREQ = 1;
    public static final int HERTZ = 4;
    private static final int LONG_CLICK_ADD_FAVOR = 2;
    private static final int LONG_CLICK_REMOVE_FAVOR = 8;
    public static final int NUMBER = 8;
    public static final int PLAY_STATUS = 16;
    private static final int REMOVE_FAVOR = 4;
    private static final int SET_FREQ = 2;
    private static final String TAG = "DynamicAdapter";
    private final Drawable mDrawable;
    private final ColorStateList mItemBandTextColor;
    private final int mItemBandTextSize;
    private final int mItemClickFunction;
    private final int mItemFavorClickFunction;
    public final Drawable mItemFavorDrawable;
    public final Drawable mItemFavorDrawableCollected;
    private final int mItemFavorGravity;
    private final int mItemFavorHeight;
    private final int mItemFavorMargin;
    private final int mItemFavorMarginBottom;
    private final int mItemFavorMarginEnd;
    private final int mItemFavorMarginLeft;
    private final int mItemFavorMarginRight;
    private final int mItemFavorMarginStart;
    private final int mItemFavorMarginTop;
    private final boolean mItemFavorStatus;
    public final String mItemFavorTextCollected;
    private final ColorStateList mItemFavorTextColor;
    public final String mItemFavorTextNo;
    private final int mItemFavorTextSize;
    private final int mItemFavorWidth;
    private final ColorStateList mItemFreqTextColor;
    private final int mItemFreqTextSize;
    private final int mItemGravity;
    private int mItemHeight;
    public String mItemHertzAmText;
    public String mItemHertzFm1Text;
    public String mItemHertzFmText;
    private final ColorStateList mItemHertzTextColor;
    private final int mItemHertzTextSize;
    private final int mItemLongClickFunction;
    private final int mItemMargin;
    private final int mItemMarginBottom;
    private final int mItemMarginEnd;
    private final int mItemMarginLeft;
    private final int mItemMarginRight;
    private final int mItemMarginStart;
    private final int mItemMarginTop;
    private final ColorStateList mItemNumberTextColor;
    private final int mItemNumberTextSize;
    private final Drawable mItemPlayDrawable;
    private final int mItemPlayGravity;
    private final int mItemPlayHeight;
    private final int mItemPlayMargin;
    private final int mItemPlayMarginBottom;
    private final int mItemPlayMarginEnd;
    private final int mItemPlayMarginLeft;
    private final int mItemPlayMarginRight;
    private final int mItemPlayMarginStart;
    private final int mItemPlayMarginTop;
    private final int mItemPlayWidth;
    private final int mItemTextBandItemMarginBottom;
    private final int mItemTextBandItemMarginEnd;
    private final int mItemTextBandItemMarginStart;
    private final int mItemTextBandItemMarginTop;
    private final int mItemTextColor;
    private final int mItemTextFreqItemMarginBottom;
    private final int mItemTextFreqItemMarginEnd;
    private final int mItemTextFreqItemMarginStart;
    private final int mItemTextFreqItemMarginTop;
    private final int mItemTextFunction;
    private final int mItemTextHertzItemMarginBottom;
    private final int mItemTextHertzItemMarginEnd;
    private final int mItemTextHertzItemMarginStart;
    private final int mItemTextHertzItemMarginTop;
    private final int mItemTextNumberItemMarginBottom;
    private final int mItemTextNumberItemMarginEnd;
    private final int mItemTextNumberItemMarginStart;
    private final int mItemTextNumberItemMarginTop;
    private final int mItemTextSize;
    private int mItemWidth;
    private final List<DataOfRadio> mList;
    private final View.OnClickListener mOnFavorClickListener = new View.OnClickListener() { // from class: com.yftech.car.widget.media.radio.list.adapter.DynamicAdapter.1
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DataOfRadio dataOfRadio = (DataOfRadio) view.getTag();
            if (dataOfRadio != null) {
                if (RadioManager.getInstance().isFreqFavored(dataOfRadio)) {
                    if ((DynamicAdapter.this.mItemFavorClickFunction & 4) > 0) {
                        Log.d(DynamicAdapter.TAG, "onClick: remove isFreqFavored==" + RadioManager.getInstance().removeFavor(dataOfRadio));
                        return;
                    }
                    return;
                }
                if ((DynamicAdapter.this.mItemFavorClickFunction & 1) > 0) {
                    Log.d(DynamicAdapter.TAG, "onClick: add isFreqFavored==" + RadioManager.getInstance().addFavor(dataOfRadio));
                }
            }
        }
    };
    private final View.OnLongClickListener mOnFavorLongClickListener = new View.OnLongClickListener() { // from class: com.yftech.car.widget.media.radio.list.adapter.DynamicAdapter.2
        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            DataOfRadio dataOfRadio = (DataOfRadio) view.getTag();
            if (dataOfRadio == null) {
                return false;
            }
            if (RadioManager.getInstance().isFreqFavored(dataOfRadio)) {
                if ((DynamicAdapter.this.mItemFavorClickFunction & 8) <= 0) {
                    return false;
                }
                Log.d(DynamicAdapter.TAG, "onLongClick: remove isFreqFavored==" + RadioManager.getInstance().removeFavor(dataOfRadio));
                return true;
            }
            if ((DynamicAdapter.this.mItemFavorClickFunction & 2) <= 0) {
                return false;
            }
            Log.d(DynamicAdapter.TAG, "onLongClick: add isFreqFavored==" + RadioManager.getInstance().addFavor(dataOfRadio));
            return true;
        }
    };

    public DynamicAdapter(List<DataOfRadio> list, Context context, AttributeSet attributeSet) {
        this.mList = list;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.RadioDynamicList);
        this.mItemFavorWidth = obtainStyledAttributes.getLayoutDimension(R.styleable.RadioDynamicList_item_favor_width, -2);
        this.mItemFavorHeight = obtainStyledAttributes.getLayoutDimension(R.styleable.RadioDynamicList_item_favor_height, -2);
        this.mItemFavorStatus = obtainStyledAttributes.getBoolean(R.styleable.RadioDynamicList_item_favor_status, false);
        this.mItemFavorDrawable = obtainStyledAttributes.getDrawable(R.styleable.RadioDynamicList_item_favor_drawable);
        this.mItemFavorDrawableCollected = obtainStyledAttributes.getDrawable(R.styleable.RadioDynamicList_item_favor_drawable_collected);
        this.mItemFavorTextNo = obtainStyledAttributes.getString(R.styleable.RadioDynamicList_item_favor_text_no);
        this.mItemFavorTextCollected = obtainStyledAttributes.getString(R.styleable.RadioDynamicList_item_favor_text_collected);
        this.mItemFavorTextColor = obtainStyledAttributes.getColorStateList(R.styleable.RadioDynamicList_item_favor_text_color);
        this.mItemFavorTextSize = (int) obtainStyledAttributes.getDimension(R.styleable.RadioDynamicList_item_favor_text_size, 20.0f);
        this.mItemFavorClickFunction = obtainStyledAttributes.getInt(R.styleable.RadioDynamicList_item_favor_click_function, 0);
        this.mItemFavorGravity = obtainStyledAttributes.getInt(R.styleable.RadioDynamicList_item_favor_gravity, 17);
        this.mItemFavorMargin = (int) obtainStyledAttributes.getDimension(R.styleable.RadioDynamicList_item_favor_margin, 0.0f);
        this.mItemFavorMarginLeft = (int) obtainStyledAttributes.getDimension(R.styleable.RadioDynamicList_item_favor_marginLeft, 0.0f);
        this.mItemFavorMarginTop = (int) obtainStyledAttributes.getDimension(R.styleable.RadioDynamicList_item_favor_marginTop, 0.0f);
        this.mItemFavorMarginRight = (int) obtainStyledAttributes.getDimension(R.styleable.RadioDynamicList_item_favor_marginRight, 0.0f);
        this.mItemFavorMarginBottom = (int) obtainStyledAttributes.getDimension(R.styleable.RadioDynamicList_item_favor_marginBottom, 0.0f);
        this.mItemFavorMarginStart = (int) obtainStyledAttributes.getDimension(R.styleable.RadioDynamicList_item_favor_marginStart, 0.0f);
        this.mItemFavorMarginEnd = (int) obtainStyledAttributes.getDimension(R.styleable.RadioDynamicList_item_favor_marginEnd, 0.0f);
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, R.styleable.radio_list);
        this.mItemTextFunction = obtainStyledAttributes2.getInt(R.styleable.radio_list_item_text_function, 1);
        this.mItemBandTextColor = obtainStyledAttributes2.getColorStateList(R.styleable.radio_list_item_band_text_color);
        this.mItemBandTextSize = (int) obtainStyledAttributes2.getDimension(R.styleable.radio_list_item_band_text_size, 20.0f);
        this.mItemFreqTextColor = obtainStyledAttributes2.getColorStateList(R.styleable.radio_list_item_freq_text_color);
        this.mItemFreqTextSize = (int) obtainStyledAttributes2.getDimension(R.styleable.radio_list_item_freq_text_size, 20.0f);
        this.mItemHertzTextColor = obtainStyledAttributes2.getColorStateList(R.styleable.radio_list_item_hertz_text_color);
        this.mItemHertzTextSize = (int) obtainStyledAttributes2.getDimension(R.styleable.radio_list_item_hertz_text_size, 20.0f);
        this.mItemNumberTextColor = obtainStyledAttributes2.getColorStateList(R.styleable.radio_list_item_number_text_color);
        this.mItemNumberTextSize = (int) obtainStyledAttributes2.getDimension(R.styleable.radio_list_item_number_text_size, 20.0f);
        this.mItemTextFreqItemMarginStart = (int) obtainStyledAttributes2.getDimension(R.styleable.radio_list_item_text_freq_item_marginStart, 0.0f);
        this.mItemTextFreqItemMarginTop = (int) obtainStyledAttributes2.getDimension(R.styleable.radio_list_item_text_freq_item_marginTop, 0.0f);
        this.mItemTextFreqItemMarginEnd = (int) obtainStyledAttributes2.getDimension(R.styleable.radio_list_item_text_freq_item_marginEnd, 0.0f);
        this.mItemTextFreqItemMarginBottom = (int) obtainStyledAttributes2.getDimension(R.styleable.radio_list_item_text_freq_item_marginBottom, 0.0f);
        this.mItemTextBandItemMarginStart = (int) obtainStyledAttributes2.getDimension(R.styleable.radio_list_item_text_band_item_marginStart, 0.0f);
        this.mItemTextBandItemMarginTop = (int) obtainStyledAttributes2.getDimension(R.styleable.radio_list_item_text_band_item_marginTop, 0.0f);
        this.mItemTextBandItemMarginEnd = (int) obtainStyledAttributes2.getDimension(R.styleable.radio_list_item_text_band_item_marginEnd, 0.0f);
        this.mItemTextBandItemMarginBottom = (int) obtainStyledAttributes2.getDimension(R.styleable.radio_list_item_text_band_item_marginBottom, 0.0f);
        this.mItemTextHertzItemMarginStart = (int) obtainStyledAttributes2.getDimension(R.styleable.radio_list_item_text_hertz_item_marginStart, 0.0f);
        this.mItemTextHertzItemMarginTop = (int) obtainStyledAttributes2.getDimension(R.styleable.radio_list_item_text_hertz_item_marginTop, 0.0f);
        this.mItemTextHertzItemMarginEnd = (int) obtainStyledAttributes2.getDimension(R.styleable.radio_list_item_text_hertz_item_marginEnd, 0.0f);
        this.mItemTextHertzItemMarginBottom = (int) obtainStyledAttributes2.getDimension(R.styleable.radio_list_item_text_hertz_item_marginBottom, 0.0f);
        this.mItemTextNumberItemMarginStart = (int) obtainStyledAttributes2.getDimension(R.styleable.radio_list_item_text_number_item_marginStart, 0.0f);
        this.mItemTextNumberItemMarginTop = (int) obtainStyledAttributes2.getDimension(R.styleable.radio_list_item_text_number_item_marginTop, 0.0f);
        this.mItemTextNumberItemMarginEnd = (int) obtainStyledAttributes2.getDimension(R.styleable.radio_list_item_text_number_item_marginEnd, 0.0f);
        this.mItemTextNumberItemMarginBottom = (int) obtainStyledAttributes2.getDimension(R.styleable.radio_list_item_text_number_item_marginBottom, 0.0f);
        this.mItemHertzFmText = obtainStyledAttributes2.getString(R.styleable.radio_list_item_hertz_fm_text);
        if (this.mItemHertzFmText == null) {
            this.mItemHertzFmText = context.getString(R.string.hertz_fm);
        }
        this.mItemHertzFm1Text = obtainStyledAttributes2.getString(R.styleable.radio_list_item_hertz_fm1_text);
        if (this.mItemHertzFm1Text == null) {
            this.mItemHertzFm1Text = context.getString(R.string.hertz_fm1);
        }
        this.mItemHertzAmText = obtainStyledAttributes2.getString(R.styleable.radio_list_item_hertz_am_text);
        if (this.mItemHertzAmText == null) {
            this.mItemHertzAmText = context.getString(R.string.hertz_am);
        }
        this.mItemWidth = obtainStyledAttributes2.getLayoutDimension(R.styleable.radio_list_item_width, -2);
        this.mItemHeight = obtainStyledAttributes2.getLayoutDimension(R.styleable.radio_list_item_height, -2);
        this.mItemGravity = obtainStyledAttributes2.getInt(R.styleable.radio_list_item_gravity, 17);
        this.mItemTextColor = obtainStyledAttributes2.getInt(R.styleable.radio_list_item_text_color, -1);
        this.mItemTextSize = (int) obtainStyledAttributes2.getDimension(R.styleable.radio_list_item_text_size, 20.0f);
        this.mItemMargin = (int) obtainStyledAttributes2.getDimension(R.styleable.radio_list_item_margin, 0.0f);
        this.mItemMarginLeft = (int) obtainStyledAttributes2.getDimension(R.styleable.radio_list_item_marginLeft, 0.0f);
        this.mItemMarginTop = (int) obtainStyledAttributes2.getDimension(R.styleable.radio_list_item_marginTop, 0.0f);
        this.mItemMarginRight = (int) obtainStyledAttributes2.getDimension(R.styleable.radio_list_item_marginRight, 0.0f);
        this.mItemMarginBottom = (int) obtainStyledAttributes2.getDimension(R.styleable.radio_list_item_marginBottom, 0.0f);
        this.mItemMarginStart = (int) obtainStyledAttributes2.getDimension(R.styleable.radio_list_item_marginStart, 0.0f);
        this.mItemMarginEnd = (int) obtainStyledAttributes2.getDimension(R.styleable.radio_list_item_marginEnd, 0.0f);
        this.mItemClickFunction = obtainStyledAttributes2.getInt(R.styleable.radio_list_item_click_function, 0);
        this.mItemLongClickFunction = obtainStyledAttributes2.getInt(R.styleable.radio_list_item_long_click_function, 0);
        this.mDrawable = obtainStyledAttributes2.getDrawable(R.styleable.radio_list_item_background);
        this.mItemPlayDrawable = obtainStyledAttributes2.getDrawable(R.styleable.radio_list_item_play_drawable);
        this.mItemPlayWidth = obtainStyledAttributes2.getLayoutDimension(R.styleable.radio_list_item_play_width, -2);
        this.mItemPlayHeight = obtainStyledAttributes2.getLayoutDimension(R.styleable.radio_list_item_play_height, -2);
        this.mItemPlayMargin = (int) obtainStyledAttributes2.getDimension(R.styleable.radio_list_item_play_margin, 0.0f);
        this.mItemPlayMarginLeft = (int) obtainStyledAttributes2.getDimension(R.styleable.radio_list_item_play_marginLeft, 0.0f);
        this.mItemPlayMarginTop = (int) obtainStyledAttributes2.getDimension(R.styleable.radio_list_item_play_marginTop, 0.0f);
        this.mItemPlayMarginRight = (int) obtainStyledAttributes2.getDimension(R.styleable.radio_list_item_play_marginRight, 0.0f);
        this.mItemPlayMarginBottom = (int) obtainStyledAttributes2.getDimension(R.styleable.radio_list_item_play_marginBottom, 0.0f);
        this.mItemPlayMarginStart = (int) obtainStyledAttributes2.getDimension(R.styleable.radio_list_item_play_marginStart, 0.0f);
        this.mItemPlayMarginEnd = (int) obtainStyledAttributes2.getDimension(R.styleable.radio_list_item_play_marginEnd, 0.0f);
        this.mItemPlayGravity = obtainStyledAttributes2.getInt(R.styleable.radio_list_item_play_gravity, 17);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v30, types: [com.yftech.car.widget.media.view.PlayAnimation, android.view.View] */
    @Override // com.yftech.car.widget.media.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public DynamicHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        TextView textView;
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
        int i2 = (this.mItemTextFunction & 1) > 0 ? 1 : 0;
        if ((this.mItemTextFunction & 2) > 0) {
            i2++;
        }
        if ((this.mItemTextFunction & 4) > 0) {
            i2++;
        }
        if ((this.mItemTextFunction & 8) > 0) {
            i2++;
        }
        FrameLayout.LayoutParams layoutParams2 = null;
        if (i2 > 1) {
            LinearLayout linearLayout = new LinearLayout(viewGroup.getContext());
            linearLayout.setOrientation(0);
            frameLayout.addView(linearLayout);
            FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) linearLayout.getLayoutParams();
            layoutParams3.width = -2;
            layoutParams3.height = -2;
            layoutParams3.gravity = this.mItemGravity;
            if ((this.mItemTextFunction & 8) > 0) {
                TextView textView2 = new TextView(viewGroup.getContext());
                textView2.setId(8);
                textView2.setTextColor(this.mItemNumberTextColor);
                textView2.setTextSize(this.mItemNumberTextSize);
                linearLayout.addView(textView2);
                LinearLayout.LayoutParams layoutParams4 = (LinearLayout.LayoutParams) textView2.getLayoutParams();
                layoutParams4.width = -2;
                layoutParams4.height = -2;
                layoutParams4.setMargins(this.mItemTextNumberItemMarginStart, this.mItemTextNumberItemMarginTop, this.mItemTextNumberItemMarginEnd, this.mItemTextNumberItemMarginBottom);
            }
            if ((this.mItemTextFunction & 2) > 0) {
                TextView textView3 = new TextView(viewGroup.getContext());
                textView3.setId(2);
                textView3.setTextColor(this.mItemBandTextColor);
                textView3.setTextSize(this.mItemBandTextSize);
                linearLayout.addView(textView3);
                LinearLayout.LayoutParams layoutParams5 = (LinearLayout.LayoutParams) textView3.getLayoutParams();
                layoutParams5.width = -2;
                layoutParams5.height = -2;
                layoutParams5.setMargins(this.mItemTextBandItemMarginStart, this.mItemTextBandItemMarginTop, this.mItemTextBandItemMarginEnd, this.mItemTextBandItemMarginBottom);
            }
            if ((this.mItemTextFunction & 1) > 0) {
                TextView textView4 = new TextView(viewGroup.getContext());
                textView4.setId(1);
                textView4.setTextColor(this.mItemFreqTextColor);
                textView4.setTextSize(this.mItemFreqTextSize);
                linearLayout.addView(textView4);
                LinearLayout.LayoutParams layoutParams6 = (LinearLayout.LayoutParams) textView4.getLayoutParams();
                layoutParams6.width = -2;
                layoutParams6.height = -2;
                layoutParams6.setMargins(this.mItemTextFreqItemMarginStart, this.mItemTextFreqItemMarginTop, this.mItemTextFreqItemMarginEnd, this.mItemTextFreqItemMarginBottom);
            }
            if ((this.mItemTextFunction & 4) > 0) {
                TextView textView5 = new TextView(viewGroup.getContext());
                textView5.setId(4);
                textView5.setTextColor(this.mItemHertzTextColor);
                textView5.setTextSize(this.mItemHertzTextSize);
                linearLayout.addView(textView5);
                LinearLayout.LayoutParams layoutParams7 = (LinearLayout.LayoutParams) textView5.getLayoutParams();
                layoutParams7.width = -2;
                layoutParams7.height = -2;
                layoutParams7.setMargins(this.mItemTextHertzItemMarginStart, this.mItemTextHertzItemMarginTop, this.mItemTextHertzItemMarginEnd, this.mItemTextHertzItemMarginBottom);
            }
        } else {
            if ((this.mItemTextFunction & 1) > 0) {
                textView = new TextView(viewGroup.getContext());
                textView.setId(1);
                textView.setTextColor(this.mItemFreqTextColor);
                textView.setTextSize(this.mItemFreqTextSize);
            } else {
                textView = null;
            }
            if ((this.mItemTextFunction & 2) > 0) {
                textView = new TextView(viewGroup.getContext());
                textView.setId(2);
                textView.setTextColor(this.mItemBandTextColor);
                textView.setTextSize(this.mItemBandTextSize);
            }
            if ((this.mItemTextFunction & 4) > 0) {
                textView = new TextView(viewGroup.getContext());
                textView.setId(4);
                textView.setTextColor(this.mItemHertzTextColor);
                textView.setTextSize(this.mItemHertzTextSize);
            }
            if (textView != null) {
                frameLayout.addView(textView);
                FrameLayout.LayoutParams layoutParams8 = (FrameLayout.LayoutParams) textView.getLayoutParams();
                layoutParams8.width = -2;
                layoutParams8.height = -2;
                layoutParams8.gravity = this.mItemGravity;
            }
        }
        if ((this.mItemClickFunction & 2) > 0 || (this.mItemClickFunction & 1) > 0 || (this.mItemClickFunction & 4) > 0) {
            frameLayout.setOnClickListener(this);
        }
        if ((this.mItemLongClickFunction & 2) > 0 || (this.mItemLongClickFunction & 1) > 0 || (this.mItemLongClickFunction & 4) > 0) {
            frameLayout.setOnLongClickListener(this);
        }
        if (this.mItemFavorStatus) {
            if (TextUtils.isEmpty(this.mItemFavorTextNo) && TextUtils.isEmpty(this.mItemFavorTextCollected)) {
                if (this.mItemFavorDrawable != null) {
                    ImageView imageView = new ImageView(viewGroup.getContext());
                    imageView.setId(32);
                    imageView.setImageDrawable(this.mItemFavorDrawable);
                    frameLayout.addView(imageView);
                    layoutParams2 = (FrameLayout.LayoutParams) imageView.getLayoutParams();
                    if ((this.mItemFavorClickFunction & 1) > 0 || (this.mItemFavorClickFunction & 4) > 0) {
                        imageView.setOnClickListener(this.mOnFavorClickListener);
                    }
                    if ((this.mItemFavorClickFunction & 2) > 0 || (this.mItemFavorClickFunction & 8) > 0) {
                        imageView.setOnLongClickListener(this.mOnFavorLongClickListener);
                    }
                }
            } else {
                TextView textView6 = new TextView(viewGroup.getContext());
                textView6.setId(32);
                if (this.mItemFavorDrawable != null) {
                    textView6.setBackground(this.mItemFavorDrawable);
                }
                textView6.setTextSize(this.mItemFavorTextSize);
                textView6.setTextColor(this.mItemFavorTextColor);
                frameLayout.addView(textView6);
                layoutParams2 = (FrameLayout.LayoutParams) textView6.getLayoutParams();
                if ((this.mItemFavorClickFunction & 1) > 0 || (this.mItemFavorClickFunction & 4) > 0) {
                    textView6.setOnClickListener(this.mOnFavorClickListener);
                }
                if ((this.mItemFavorClickFunction & 2) > 0 || (this.mItemFavorClickFunction & 8) > 0) {
                    textView6.setOnLongClickListener(this.mOnFavorLongClickListener);
                }
            }
            if (layoutParams2 != null) {
                layoutParams2.width = this.mItemFavorWidth;
                layoutParams2.height = this.mItemFavorHeight;
                layoutParams2.gravity = this.mItemFavorGravity;
                if (this.mItemFavorMarginStart > 0 && this.mItemFavorMarginEnd > 0) {
                    layoutParams2.setMargins(this.mItemFavorMarginStart + this.mItemFavorMargin, this.mItemFavorMarginTop + this.mItemFavorMargin, this.mItemFavorMarginEnd + this.mItemFavorMargin, this.mItemFavorMarginBottom + this.mItemFavorMargin);
                } else if (this.mItemFavorMarginStart > 0) {
                    layoutParams2.setMargins(this.mItemFavorMarginStart + this.mItemFavorMargin, this.mItemFavorMarginTop + this.mItemFavorMargin, this.mItemFavorMarginRight + this.mItemFavorMargin, this.mItemFavorMarginBottom + this.mItemFavorMargin);
                } else if (this.mItemFavorMarginEnd > 0) {
                    layoutParams2.setMargins(this.mItemFavorMarginLeft + this.mItemFavorMargin, this.mItemFavorMarginTop + this.mItemFavorMargin, this.mItemFavorMarginEnd + this.mItemFavorMargin, this.mItemFavorMarginBottom + this.mItemFavorMargin);
                } else {
                    layoutParams2.setMargins(this.mItemFavorMarginLeft + this.mItemFavorMargin, this.mItemFavorMarginTop + this.mItemFavorMargin, this.mItemFavorMarginRight + this.mItemFavorMargin, this.mItemFavorMarginBottom + this.mItemFavorMargin);
                }
            }
        }
        if ((this.mItemTextFunction & 16) > 0 && (this.mItemPlayDrawable instanceof AnimationDrawable)) {
            ?? playAnimation = new PlayAnimation(viewGroup.getContext());
            playAnimation.setId(16);
            playAnimation.setAnimationDrawable((AnimationDrawable) this.mItemPlayDrawable);
            frameLayout.addView(playAnimation);
            FrameLayout.LayoutParams layoutParams9 = (FrameLayout.LayoutParams) playAnimation.getLayoutParams();
            layoutParams9.width = this.mItemPlayWidth;
            layoutParams9.height = this.mItemPlayHeight;
            layoutParams9.gravity = this.mItemPlayGravity;
            if (this.mItemPlayMarginStart > 0 && this.mItemPlayMarginEnd > 0) {
                layoutParams9.setMargins(this.mItemPlayMarginStart + this.mItemPlayMargin, this.mItemPlayMarginTop + this.mItemPlayMargin, this.mItemPlayMarginEnd + this.mItemPlayMargin, this.mItemPlayMarginBottom + this.mItemPlayMargin);
            } else if (this.mItemPlayMarginStart > 0) {
                layoutParams9.setMargins(this.mItemPlayMarginStart + this.mItemPlayMargin, this.mItemPlayMarginTop + this.mItemPlayMargin, this.mItemPlayMarginRight + this.mItemPlayMargin, this.mItemPlayMarginBottom + this.mItemPlayMargin);
            } else if (this.mItemPlayMarginEnd > 0) {
                layoutParams9.setMargins(this.mItemPlayMarginLeft + this.mItemPlayMargin, this.mItemPlayMarginTop + this.mItemPlayMargin, this.mItemPlayMarginEnd + this.mItemPlayMargin, this.mItemPlayMarginBottom + this.mItemPlayMargin);
            } else {
                layoutParams9.setMargins(this.mItemPlayMarginLeft + this.mItemPlayMargin, this.mItemPlayMarginTop + this.mItemPlayMargin, this.mItemPlayMarginRight + this.mItemPlayMargin, this.mItemPlayMarginBottom + this.mItemPlayMargin);
            }
        }
        frameLayout.setClickable(true);
        return new DynamicHolder(this, frameLayout);
    }

    @Override // com.yftech.car.widget.media.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull DynamicHolder dynamicHolder, int i) {
        DataOfRadio dataOfRadio = this.mList.get(i);
        dynamicHolder.setRadio(dataOfRadio, i);
        if ((this.mItemTextFunction & 16) <= 0 || (this.mItemPlayDrawable instanceof AnimationDrawable)) {
            return;
        }
        DataOfRadio freq = RadioManager.getInstance().getFreq();
        dynamicHolder.itemView.setActivated(freq.Freq == dataOfRadio.Freq);
        dynamicHolder.itemView.setSelected(freq.Freq == dataOfRadio.Freq);
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
            } else {
                if ((this.mItemClickFunction & 4) > 0) {
                    Log.d(TAG, "onClick: remove isFreqFavored==" + RadioManager.getInstance().removeFavor(dataOfRadio));
                    return;
                }
                return;
            }
        }
        if ((this.mItemClickFunction & 2) > 0) {
            RadioManager.getInstance().setFreq(dataOfRadio.getFreq());
            return;
        }
        if ((this.mItemClickFunction & 1) > 0) {
            RadioManager.getInstance().addFavor(dataOfRadio);
            return;
        }
        if ((this.mItemClickFunction & 4) > 0) {
            Log.d(TAG, "onClick: remove isFreqFavored==" + RadioManager.getInstance().removeFavor(dataOfRadio));
        }
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        DataOfRadio dataOfRadio = (DataOfRadio) view.getTag();
        if (dataOfRadio.getFreq() == 0) {
            if ((this.mItemLongClickFunction & 1) > 0) {
                DataOfRadio freq = RadioManager.getInstance().getFreq();
                RadioManager.getInstance().updateFavor(freq.getType(), view.getId(), freq);
            } else if ((this.mItemLongClickFunction & 4) > 0) {
                Log.d(TAG, "onClick: remove isFreqFavored==" + RadioManager.getInstance().removeFavor(dataOfRadio));
            }
        } else if ((this.mItemLongClickFunction & 2) > 0) {
            RadioManager.getInstance().setFreq(dataOfRadio.getFreq());
        } else if ((this.mItemLongClickFunction & 1) > 0) {
            RadioManager.getInstance().addFavor(dataOfRadio);
        } else if ((this.mItemLongClickFunction & 4) > 0) {
            Log.d(TAG, "onClick: remove isFreqFavored==" + RadioManager.getInstance().removeFavor(dataOfRadio));
        }
        return true;
    }
}
