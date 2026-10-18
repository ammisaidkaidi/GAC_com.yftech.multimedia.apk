package com.yftech.libradio.dabui;

import android.os.AsyncTask;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.media.common.util.LogUtil;
import com.yftech.libradio.R;
import com.yftech.libradio.Utils;
import com.yftech.libradio.bean.DabChannelInfo;
import com.yftech.libradio.dialog.DabLableDialog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: /home/user/work/dex/classes4.dex */
public class DabStationFilterByPtyFragment extends DabStationFilteredListFragment {
    private static final String KEY_SP_DAB_PTY_SEL = "com.yf.dab.pty.sel";
    private DabLableDialog lableDialog;
    private String[] ptrStringArray;
    private String[] ptyTypes = {"None", "News", "Current Affairs", "Information", "Sports", "Education", "Drama", "Cultrue", "Science", "Varied", "Pop Music", "Rock Music", "Easy Listening", "Light Classical", "Serious Classical", "Other Music", "Weather", "Finance", "Children's Programmes", "Social Affairs", "Religion", "Phone-in", "Travel", "Leisure", "Jazz Music", "Country Music", "National Music", "Oldies Music", "Folk Music", "Documentary", "Test", "Alarm"};

    @Override // com.yftech.libradio.dabui.DabStationFilteredListFragment, com.yftech.libradio.dabui.DabPlayerFragment, com.yftech.libmvpmodule.mvp.BaseMvpFragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        this.ptrStringArray = getResources().getStringArray(R.array.dab_ptys);
    }

    public void onStop() {
        super.onStop();
        if (this.lableDialog != null) {
            this.lableDialog.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.yftech.libradio.dabui.DabStationFilteredListFragment
    public void updateLabelText(DabChannelInfo dabChannelInfo) {
        super.updateLabelText(dabChannelInfo);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.yftech.libradio.dabui.DabStationFilterByPtyFragment$1] */
    @Override // com.yftech.libradio.dabui.DabStationFilteredListFragment
    protected void filterDabChannleList() {
        new AsyncTask<Object, Void, Object>() { // from class: com.yftech.libradio.dabui.DabStationFilterByPtyFragment.1
            @Override // android.os.AsyncTask
            protected final Object doInBackground(Object[] objArr) {
                if (DabStationFilterByPtyFragment.this.mDabChannelInfoList.isEmpty()) {
                    LogUtil.w("mDabChannelInfoList is empty ---");
                    return null;
                }
                ArrayList arrayList = new ArrayList();
                arrayList.addAll(DabStationFilterByPtyFragment.this.mDabChannelInfoList);
                DabStationFilterByPtyFragment.this.filterList(arrayList);
                DabStationFilterByPtyFragment.this.updateLayoutWithData(arrayList);
                return null;
            }
        }.execute(new Object[0]);
    }

    private int getPreferencesData() {
        return this.preferences.getInt(KEY_SP_DAB_PTY_SEL, 0);
    }

    @Override // com.yftech.libradio.dabui.DabStationFilteredListFragment
    protected String getFilterString() {
        int preferencesData = getPreferencesData();
        return (preferencesData < 0 || preferencesData >= this.ptrStringArray.length) ? "" : this.ptrStringArray[preferencesData];
    }

    @Override // com.yftech.libradio.dabui.DabStationFilteredListFragment
    protected void onLabelButtonCliked() {
        int preferencesData = getPreferencesData();
        String str = preferencesData != -1 ? this.ptrStringArray[preferencesData] : "";
        if (this.lableDialog == null) {
            this.lableDialog = new DabLableDialog(getContext());
            this.lableDialog.setLabelListCallback(new DabLableDialog.LabelListCallback() { // from class: com.yftech.libradio.dabui.DabStationFilterByPtyFragment.2
                @Override // com.yftech.libradio.dialog.DabLableDialog.LabelListCallback
                public void onItemClicked(int i) {
                    LogUtil.d("on dab label selecte, position: " + i + ", pty: " + DabStationFilterByPtyFragment.this.ptrStringArray[i]);
                    DabStationFilterByPtyFragment.this.preferences.edit().putInt(DabStationFilterByPtyFragment.KEY_SP_DAB_PTY_SEL, i).commit();
                    DabStationFilterByPtyFragment.this.tvLableName.setText(Utils.convertStationName(DabStationFilterByPtyFragment.this.ptrStringArray[i]));
                    DabStationFilterByPtyFragment.this.filterDabChannleList();
                }
            });
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.ptrStringArray.length; i++) {
            arrayList.add(this.ptrStringArray[i]);
        }
        this.lableDialog.setTitle(str);
        this.lableDialog.setLabelList(arrayList, str);
        this.lableDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void filterList(List<DabChannelInfo> list) {
        if (list.size() == 0) {
            return;
        }
        int preferencesData = getPreferencesData();
        if (preferencesData == -1) {
            LogUtil.d("filterList filterStr is null ---");
            return;
        }
        LogUtil.d("filterList ptySel: " + preferencesData + ", filterStr: " + this.ptrStringArray[preferencesData]);
        Iterator<DabChannelInfo> it = list.iterator();
        while (it.hasNext()) {
            if (it.next().getStatPty() != preferencesData) {
                it.remove();
            }
        }
    }
}
