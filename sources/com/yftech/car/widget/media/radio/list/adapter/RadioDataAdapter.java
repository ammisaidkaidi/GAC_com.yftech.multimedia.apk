package com.yftech.car.widget.media.radio.list.adapter;

import android.content.res.TypedArray;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import androidx.annotation.NonNull;
import com.yftech.car.media.radio.entity.DataOfRadio;
import com.yftech.car.widget.media.R;
import com.yftech.car.widget.media.manager.RadioManager;
import com.yftech.car.widget.media.radio.list.holder.RadioDataHolder;
import com.yftech.car.widget.media.radio.text.FavorStatus;
import com.yftech.car.widget.media.recyclerview.widget.RecyclerView;
import java.util.Iterator;
import java.util.List;

/* loaded from: /home/user/work/dex/classes3.dex */
public class RadioDataAdapter extends RecyclerView.Adapter<RadioDataHolder> implements View.OnClickListener, View.OnLongClickListener {
    private static final int ADD_FAVOR = 1;
    private static final int CLICK_ADD_FAVOR = 1;
    private static final int CLICK_REMOVE_FAVOR = 4;
    private static final int ENDING = -101;
    private static final int HEAD = -100;
    private static final int LONG_CLICK_ADD_FAVOR = 2;
    private static final int LONG_CLICK_REMOVE_FAVOR = 8;
    private static final int REMOVE_FAVOR = 3;
    private static final int REPLACE_FREQ = 4;
    private static final int SET_FREQ = 2;
    private static final String TAG = "RadioDataAdapter";
    private final int mCollectListEmptyLayoutId;
    private final int mEmptyLayoutId;
    private final int mEndingItemLayoutId;
    private final int mHeadItemLayoutId;
    private final int mItemClickFunction;
    private final int mItemLayoutId;
    private final int mItemLongClickFunction;
    private final List<DataOfRadio> mList;
    public final View.OnClickListener mOnFavorClickListener = new View.OnClickListener() { // from class: com.yftech.car.widget.media.radio.list.adapter.RadioDataAdapter.1
        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DataOfRadio dataOfRadio = (DataOfRadio) view.getTag();
            if (dataOfRadio != null) {
                FavorStatus favorStatus = (FavorStatus) view;
                if (RadioManager.getInstance().isFreqFavored(dataOfRadio)) {
                    if ((favorStatus.getClickFunction() & 2) > 0) {
                        boolean removeFavor = RadioManager.getInstance().removeFavor(dataOfRadio);
                        Log.d(RadioDataAdapter.TAG, "onClick: remove isFreqFavored==" + removeFavor);
                        favorStatus.showRemoveFavor(removeFavor);
                        return;
                    }
                    return;
                }
                if ((favorStatus.getClickFunction() & 1) > 0) {
                    boolean addFavor = RadioManager.getInstance().addFavor(dataOfRadio, favorStatus.getFavorMax(dataOfRadio), favorStatus.isFavorStatusMaxUpdateoldData());
                    Log.d(RadioDataAdapter.TAG, "onClick: add isFreqFavored==" + addFavor);
                    favorStatus.showAddFavor(addFavor);
                }
            }
        }
    };
    private OnItemRadioListener mOnItemRadioListener;
    private String mRadioDataReplaceFavorExists;
    private String mRadioDataReplaceFavorFail;
    private String mRadioDataReplaceFavorSuccess;

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static abstract class OnItemRadioListener {
        public int getListType() {
            return 0;
        }

        public void onItemRadio(DataOfRadio dataOfRadio) {
        }
    }

    public RadioDataAdapter(List<DataOfRadio> list, TypedArray typedArray) {
        this.mList = list;
        this.mHeadItemLayoutId = typedArray.getResourceId(R.styleable.RadioDataList_radio_data_head_item_layout_id, -1);
        this.mItemLayoutId = typedArray.getResourceId(R.styleable.RadioDataList_radio_data_item_layout_id, -1);
        this.mEndingItemLayoutId = typedArray.getResourceId(R.styleable.RadioDataList_radio_data_ending_item_layout_id, -1);
        this.mEmptyLayoutId = typedArray.getResourceId(R.styleable.RadioDataList_radio_data_list_empty_layout_id, -1);
        this.mCollectListEmptyLayoutId = typedArray.getResourceId(R.styleable.RadioDataList_radio_data_collect_list_empty_layout_id, -1);
        this.mItemClickFunction = typedArray.getInt(R.styleable.RadioDataList_radio_item_click_function, 0);
        this.mItemLongClickFunction = typedArray.getInt(R.styleable.RadioDataList_radio_item_long_click_function, 0);
        this.mRadioDataReplaceFavorSuccess = typedArray.getString(R.styleable.RadioDataList_radio_data_replace_favor_success);
        this.mRadioDataReplaceFavorFail = typedArray.getString(R.styleable.RadioDataList_radio_data_replace_favor_fail);
        this.mRadioDataReplaceFavorExists = typedArray.getString(R.styleable.RadioDataList_radio_data_replace_favor_exists);
        Log.d(TAG, "RadioDataAdapter: mItemLongClickFunction==" + this.mItemLongClickFunction);
    }

    @Override // com.yftech.car.widget.media.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        if (this.mHeadItemLayoutId == -1 || i != 0) {
            return (this.mEndingItemLayoutId == -1 || i != this.mList.size() + (-1)) ? i : ENDING;
        }
        return -100;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Removed duplicated region for block: B:11:0x004c  */
    @Override // com.yftech.car.widget.media.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public RadioDataHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        View inflate;
        if (getDataListSize() == 0) {
            Log.e(TAG, "onCreateViewHolder: list is Empty");
            if (this.mOnItemRadioListener != null) {
                if (this.mOnItemRadioListener.getListType() == 2) {
                    if (this.mCollectListEmptyLayoutId != -1) {
                        Log.e(TAG, "onCreateViewHolder: FAVOR_LIST  COLLECT");
                        inflate = LayoutInflater.from(viewGroup.getContext()).inflate(this.mCollectListEmptyLayoutId, viewGroup, false);
                        if (inflate == null) {
                            inflate = new View(viewGroup.getContext());
                        }
                    }
                } else if (this.mEmptyLayoutId != -1) {
                    inflate = LayoutInflater.from(viewGroup.getContext()).inflate(this.mEmptyLayoutId, viewGroup, false);
                    if (inflate == null) {
                    }
                }
            }
            inflate = null;
            if (inflate == null) {
            }
        } else {
            switch (i) {
                case ENDING /* -101 */:
                    inflate = LayoutInflater.from(viewGroup.getContext()).inflate(this.mEndingItemLayoutId, viewGroup, false);
                    break;
                case -100:
                    inflate = LayoutInflater.from(viewGroup.getContext()).inflate(this.mHeadItemLayoutId, viewGroup, false);
                    break;
                default:
                    inflate = LayoutInflater.from(viewGroup.getContext()).inflate(this.mItemLayoutId, viewGroup, false);
                    if (this.mItemClickFunction == 2 || this.mItemClickFunction == 1 || this.mItemClickFunction == 3) {
                        inflate.setOnClickListener(this);
                    }
                    if (this.mItemLongClickFunction == 2 || this.mItemLongClickFunction == 1 || this.mItemLongClickFunction == 3 || this.mItemLongClickFunction == 4) {
                        inflate.setOnLongClickListener(this);
                        break;
                    }
                    break;
            }
        }
        return new RadioDataHolder(inflate, this);
    }

    @Override // com.yftech.car.widget.media.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull RadioDataHolder radioDataHolder, int i) {
        int i2;
        if (this.mList.size() > 0) {
            if (this.mHeadItemLayoutId == -1) {
                i2 = i;
            } else if (i == 0) {
                return;
            } else {
                i2 = i - 1;
            }
            if (this.mEndingItemLayoutId == -1 || i != this.mList.size() - 1) {
                radioDataHolder.setRadioData(this.mList.get(i2), i2);
            }
        }
    }

    @Override // com.yftech.car.widget.media.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        int size = this.mList.size();
        if (size == 0) {
            if (this.mOnItemRadioListener != null) {
                return this.mOnItemRadioListener.getListType() == 2 ? this.mCollectListEmptyLayoutId != -1 ? 1 : 0 : this.mEmptyLayoutId != -1 ? 1 : 0;
            }
            return 0;
        }
        if (this.mHeadItemLayoutId != -1) {
            size++;
        }
        return this.mEndingItemLayoutId != -1 ? size + 1 : size;
    }

    public int getDataListSize() {
        return this.mList.size();
    }

    public void setOnItemRadioListener(OnItemRadioListener onItemRadioListener) {
        this.mOnItemRadioListener = onItemRadioListener;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        DataOfRadio dataOfRadio = (DataOfRadio) view.getTag();
        if (dataOfRadio.getFreq() == 0) {
            if (this.mItemClickFunction == 1) {
                DataOfRadio freq = RadioManager.getInstance().getFreq();
                RadioManager.getInstance().updateFavor(freq.getType(), view.getId(), freq);
                return;
            } else {
                if (this.mItemClickFunction == 3) {
                    Log.d(TAG, "onClick: remove isFreqFavored==" + RadioManager.getInstance().removeFavor(dataOfRadio));
                    return;
                }
                return;
            }
        }
        if (this.mItemClickFunction == 2) {
            RadioManager.getInstance().setFreq(dataOfRadio.getFreq());
            return;
        }
        if (this.mItemClickFunction == 1) {
            RadioManager.getInstance().addFavor(dataOfRadio);
            return;
        }
        if (this.mItemClickFunction == 3) {
            Log.d(TAG, "onClick: remove isFreqFavored==" + RadioManager.getInstance().removeFavor(dataOfRadio));
        }
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        DataOfRadio dataOfRadio = (DataOfRadio) view.getTag();
        if (dataOfRadio.getFreq() == 0) {
            if (this.mItemLongClickFunction == 1) {
                DataOfRadio freq = RadioManager.getInstance().getFreq();
                RadioManager.getInstance().updateFavor(freq.getType(), view.getId(), freq);
            } else if (this.mItemLongClickFunction == 3) {
                Log.d(TAG, "onClick: remove isFreqFavored==" + RadioManager.getInstance().removeFavor(dataOfRadio));
            }
        } else {
            Log.d(TAG, "onLongClick: mItemLongClickFunction==" + this.mItemLongClickFunction);
            if (this.mItemLongClickFunction == 2) {
                RadioManager.getInstance().setFreq(dataOfRadio.getFreq());
            } else if (this.mItemLongClickFunction == 1) {
                RadioManager.getInstance().addFavor(dataOfRadio);
            } else if (this.mItemLongClickFunction == 3) {
                Log.d(TAG, "onClick: remove isFreqFavored==" + RadioManager.getInstance().removeFavor(dataOfRadio));
            } else if (this.mItemLongClickFunction == 4) {
                DataOfRadio freq2 = RadioManager.getInstance().getFreq();
                if (freq2.getFreq() == dataOfRadio.getFreq()) {
                    Log.e(TAG, "onLongClick: The playback freq is the same as the click freq");
                    return true;
                }
                Iterator<DataOfRadio> it = this.mList.iterator();
                while (it.hasNext()) {
                    if (it.next().getFreq() == freq2.getFreq()) {
                        if (this.mRadioDataReplaceFavorExists != null) {
                            Toast.makeText(view.getContext(), this.mRadioDataReplaceFavorExists, 0).show();
                        }
                        return true;
                    }
                }
                if (RadioManager.getInstance().updateFavor(freq2.getType(), view.getId(), freq2)) {
                    if (this.mRadioDataReplaceFavorSuccess != null) {
                        Toast.makeText(view.getContext(), this.mRadioDataReplaceFavorSuccess, 0).show();
                    }
                } else if (this.mRadioDataReplaceFavorFail != null) {
                    Toast.makeText(view.getContext(), this.mRadioDataReplaceFavorFail, 0).show();
                }
            }
        }
        return true;
    }
}
