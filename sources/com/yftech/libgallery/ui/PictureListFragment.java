package com.yftech.libgallery.ui;

import android.content.Intent;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.media.common.entity.QuickMultipleEntity;
import com.media.common.event.MediaDataCallbackForPhotoDataChangedEvent;
import com.media.common.event.USBIndexSwitchEvent;
import com.media.common.ui.widget.TipsExtraDialog;
import com.media.common.util.LogUtil;
import com.media.common.util.MyFragmentManger;
import com.media.common.util.SharedPrefsUtil;
import com.media.common.util.ToastUtils;
import com.yftech.car.media.data.CarMediaDataManager;
import com.yftech.libgallery.R;
import com.yftech.libgallery.event.PictureDeleteResultEvent;
import com.yftech.libgallery.presenter.PictureListPresenter;
import com.yftech.libgallery.ui.adapter.PictureListAdapter;
import com.yftech.libgallery.view.IPictureListActivityView;
import com.yftech.libmvpmodule.mvp.BaseMvpFragment;
import java.util.List;
import javax.annotation.Nullable;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /home/user/work/dex/classes4.dex */
public class PictureListFragment extends BaseMvpFragment<PictureListPresenter> implements IPictureListActivityView, View.OnClickListener {
    private static final String ARG_PARAM1 = "index";
    private TextView btn_cancel;
    private TextView btn_selector;
    private int index;
    private boolean isDeleting = false;
    private TextView pic_usb_name;
    private PictureListAdapter pictureListAdapter;
    private ProgressBar progressBar;
    private RecyclerView rv;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    public PictureListPresenter createPresenter() {
        return new PictureListPresenter(getActivity());
    }

    public static PictureListFragment newInstance(int i) {
        PictureListFragment pictureListFragment = new PictureListFragment();
        Bundle bundle = new Bundle();
        bundle.putInt(ARG_PARAM1, i);
        pictureListFragment.setArguments(bundle);
        return pictureListFragment;
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.index = getArguments().getInt(ARG_PARAM1);
        }
        EventBus.getDefault().register(this);
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    public void onRefreshData() {
        String string;
        LogUtil.d("PictureListFragment:onRefreshData");
        if (this.pictureListAdapter != null) {
            if (this.index == 0) {
                string = SharedPrefsUtil.getInstance(getContext()).getString("TAG_PHOTO_VIEWED_LAST_FOR_USB_1", "");
            } else {
                string = SharedPrefsUtil.getInstance(getContext()).getString("TAG_PHOTO_VIEWED_LAST_FOR_USB_2", "");
            }
            LogUtil.d("PictureListFragment:lastViewedPath=" + string);
            this.pictureListAdapter.setLastViewedPath(string);
        }
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    public void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().unregister(this);
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    protected View onBindView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_picture_list, viewGroup, false);
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    protected void initView(View view) {
        this.pic_usb_name = (TextView) view.findViewById(R.id.pic_usb_title);
        if (this.index >= 0) {
            this.pic_usb_name.setText(getString(this.index == 0 ? R.string.music_source_selection_1 : R.string.music_source_selection_2));
        } else {
            this.pic_usb_name.setText("USB");
        }
        this.pic_usb_name.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.libgallery.ui.PictureListFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (PictureListFragment.this.pictureListAdapter != null && PictureListFragment.this.pictureListAdapter.isSelectorMode()) {
                    PictureListFragment.this.btn_cancel.setVisibility(4);
                    PictureListFragment.this.btn_selector.setText(R.string.common_select);
                    PictureListFragment.this.pictureListAdapter.setSelectorMode(false, true);
                }
                if (PictureListFragment.this.getActivity() != null) {
                    PictureListFragment.this.getActivity().onBackPressed();
                }
            }
        });
        this.btn_selector = (TextView) view.findViewById(R.id.btn_selector);
        this.btn_cancel = (TextView) view.findViewById(R.id.btn_cancel);
        this.btn_selector.setVisibility(4);
        this.btn_selector.setOnClickListener(null);
        this.btn_cancel.setOnClickListener(this);
        this.progressBar = (ProgressBar) view.findViewById(R.id.progressBar);
        this.progressBar.setVisibility(0);
        this.rv = view.findViewById(R.id.rv);
        this.rv.addItemDecoration(new RecyclerView.ItemDecoration() { // from class: com.yftech.libgallery.ui.PictureListFragment.2
            public void getItemOffsets(@NonNull Rect rect, @NonNull View view2, @NonNull RecyclerView recyclerView, @NonNull RecyclerView.State state) {
                rect.top = 6;
                rect.bottom = 6;
            }
        });
        this.pictureListAdapter = new PictureListAdapter(getContext(), this.index);
        this.pictureListAdapter.setOnItemClickListener(new PictureListAdapter.OnItemClickListener() { // from class: com.yftech.libgallery.ui.PictureListFragment.3
            @Override // com.yftech.libgallery.ui.adapter.PictureListAdapter.OnItemClickListener
            public void onItemClickListener(String str) {
                BrowseImageFragment newInstance = BrowseImageFragment.newInstance(str, PictureListFragment.this.index);
                MyFragmentManger.getInstance().pushFragment(PictureListFragment.this.index, newInstance);
                MyFragmentManger.getInstance().switchContent(newInstance, MyFragmentManger.getInstance().getPhotoLayoutId());
            }
        });
        this.pictureListAdapter.setOnLastViewedCallback(new PictureListAdapter.OnLastViewedCallback() { // from class: com.yftech.libgallery.ui.PictureListFragment.4
            @Override // com.yftech.libgallery.ui.adapter.PictureListAdapter.OnLastViewedCallback
            public void onLoadLastViewedPosition(int i) {
                if (i >= 0) {
                    PictureListFragment.this.rv.scrollToPosition(i);
                }
            }
        });
        this.rv.setAdapter(this.pictureListAdapter);
        GridLayoutManager gridLayoutManager = new GridLayoutManager(getContext(), 7);
        gridLayoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: com.yftech.libgallery.ui.PictureListFragment.5
            public int getSpanSize(int i) {
                if (PictureListFragment.this.pictureListAdapter == null) {
                    return 2;
                }
                QuickMultipleEntity quickMultipleEntity = (QuickMultipleEntity) PictureListFragment.this.pictureListAdapter.getItem(i);
                if (quickMultipleEntity == null || quickMultipleEntity.getItemType() != 0) {
                    return (quickMultipleEntity == null || quickMultipleEntity.getItemType() != 1) ? 2 : 1;
                }
                return 7;
            }
        });
        this.rv.setLayoutManager(gridLayoutManager);
        getPictureData();
    }

    private void getPictureData() {
        this.progressBar.setVisibility(0);
        getPresenter().getPictureListData(this.index);
    }

    private void getPictureDataAfterDeleting() {
        this.progressBar.setVisibility(0);
        getPresenter().getPictureDataAfterDeleting(this.index);
    }

    public void onActivityResult(int i, int i2, @Nullable Intent intent) {
        String string;
        if (i == 1000) {
            if (this.index == 0) {
                string = SharedPrefsUtil.getInstance(getContext()).getString("TAG_PHOTO_VIEWED_LAST_FOR_USB_1", "");
            } else {
                string = SharedPrefsUtil.getInstance(getContext()).getString("TAG_PHOTO_VIEWED_LAST_FOR_USB_2", "");
            }
            if (this.pictureListAdapter != null) {
                this.pictureListAdapter.setLastViewedPath(string);
            }
        }
    }

    @Override // com.yftech.libgallery.view.IPictureListActivityView
    public void displayPictureList(List<QuickMultipleEntity> list) {
        LogUtil.d("displayPictureList:listSize=" + list.size());
        if (!CarMediaDataManager.getInstance().isScanner(this.index)) {
            this.progressBar.setVisibility(8);
        }
        if (this.pictureListAdapter != null) {
            this.pictureListAdapter.setNewData(list);
        }
    }

    @Override // com.yftech.libgallery.view.IPictureListActivityView
    public void displayPictureListAfterDeleting(List<QuickMultipleEntity> list) {
        LogUtil.d("displayPictureListAfterDeleting:listSize=" + list.size());
        this.progressBar.setVisibility(8);
        if (list.isEmpty()) {
            if (getActivity() != null) {
                getActivity().onBackPressed();
            }
        } else if (this.pictureListAdapter != null) {
            this.pictureListAdapter.setNewData(list);
        }
    }

    @Override // com.yftech.libgallery.view.IPictureListActivityView
    public void displayPictureDeleteResult(boolean z) {
        if (this.pictureListAdapter != null) {
            this.pictureListAdapter.setSelectorMode(false, true);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.btn_selector) {
            if (!this.pictureListAdapter.isSelectorMode()) {
                this.btn_cancel.setVisibility(0);
                this.btn_selector.setText(R.string.common_confirm);
                if (this.pictureListAdapter != null) {
                    this.pictureListAdapter.setSelectorMode(true, true);
                    return;
                }
                return;
            }
            if (!this.pictureListAdapter.isSelectedPhoto()) {
                ToastUtils.showNormalMessage(getString(R.string.select_image_delete), 0);
                return;
            }
            TipsExtraDialog newInstance = TipsExtraDialog.newInstance(getString(R.string.sure_to_del_select_pic));
            newInstance.setOnButtonClickListener(new TipsExtraDialog.OnButtonClickListener() { // from class: com.yftech.libgallery.ui.PictureListFragment.6
                public void onConfirm() {
                    PictureListFragment.this.btn_cancel.setVisibility(4);
                    PictureListFragment.this.btn_selector.setText(R.string.common_select);
                    PictureListFragment.this.progressBar.setVisibility(0);
                    if (PictureListFragment.this.pictureListAdapter != null) {
                        PictureListFragment.this.isDeleting = true;
                        PictureListFragment.this.getPresenter().deletePicture(PictureListFragment.this.pictureListAdapter.getImageSelector());
                    }
                }

                public void onCancel() {
                    PictureListFragment.this.btn_cancel.setVisibility(4);
                    PictureListFragment.this.btn_selector.setText(R.string.common_select);
                    if (PictureListFragment.this.pictureListAdapter != null) {
                        PictureListFragment.this.pictureListAdapter.setSelectorMode(false, true);
                    }
                }
            });
            newInstance.show(getChildFragmentManager(), TipsExtraDialog.class.getSimpleName());
            return;
        }
        if (view.getId() == R.id.btn_cancel) {
            this.btn_cancel.setVisibility(4);
            this.btn_selector.setText(R.string.common_select);
            if (this.pictureListAdapter != null) {
                this.pictureListAdapter.setSelectorMode(false, true);
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onPhotoDataChange(MediaDataCallbackForPhotoDataChangedEvent mediaDataCallbackForPhotoDataChangedEvent) {
        LogUtil.d("onPhotoDataChange:index=" + mediaDataCallbackForPhotoDataChangedEvent.usbIndex);
        if (isAdded() && mediaDataCallbackForPhotoDataChangedEvent.usbIndex == this.index) {
            getPictureData();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onPhotoDeleteResult(PictureDeleteResultEvent pictureDeleteResultEvent) {
        LogUtil.d("onPhotoDeleteResult");
        if (this.isDeleting) {
            if (this.pictureListAdapter != null) {
                this.pictureListAdapter.setSelectorMode(false, true);
            }
            if (pictureDeleteResultEvent.isSuccessful) {
                getPictureDataAfterDeleting();
            } else {
                ToastUtils.showFailMessage(getString(R.string.del_pic_failed), 1);
            }
            this.isDeleting = false;
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onUSBIndexSwitch(USBIndexSwitchEvent uSBIndexSwitchEvent) {
        if (uSBIndexSwitchEvent.index == this.index || this.pictureListAdapter == null || !this.pictureListAdapter.isSelectorMode()) {
            return;
        }
        this.btn_cancel.setVisibility(4);
        this.btn_selector.setText(R.string.common_select);
        this.pictureListAdapter.setSelectorMode(false, true);
    }
}
