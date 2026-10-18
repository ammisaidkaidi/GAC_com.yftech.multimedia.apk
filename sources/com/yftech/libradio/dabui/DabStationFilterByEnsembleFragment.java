package com.yftech.libradio.dabui;

import android.os.AsyncTask;
import android.text.TextUtils;
import com.media.common.util.LogUtil;
import com.yftech.libradio.bean.DabChannelInfo;
import com.yftech.libradio.dialog.DabLableDialog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: /home/user/work/dex/classes4.dex */
public class DabStationFilterByEnsembleFragment extends DabStationFilteredListFragment {
    private static final String KEY_SP_DAB_ENSEMBLE_SEL = "com.yf.dab.ensemble.sel";
    private List<String> ensembleLabelStrList = new ArrayList();
    private boolean isSelectedEnsembleContained;
    private DabLableDialog lableDialog;

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

    /* JADX INFO: Access modifiers changed from: private */
    public String getPreferencesData() {
        String string = this.preferences.getString(KEY_SP_DAB_ENSEMBLE_SEL, "");
        if (TextUtils.isEmpty(string) && !this.mDabChannelInfoList.isEmpty()) {
            String labelString = this.mDabChannelInfoList.get(0).getEnsembleLabel().getLabelString();
            if (!TextUtils.isEmpty(labelString)) {
                return labelString;
            }
        }
        return string;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.yftech.libradio.dabui.DabStationFilterByEnsembleFragment$1] */
    @Override // com.yftech.libradio.dabui.DabStationFilteredListFragment
    protected void filterDabChannleList() {
        new AsyncTask<Object, Void, Object>() { // from class: com.yftech.libradio.dabui.DabStationFilterByEnsembleFragment.1
            @Override // android.os.AsyncTask
            protected final Object doInBackground(Object[] objArr) {
                DabStationFilterByEnsembleFragment.this.isSelectedEnsembleContained = false;
                if (!DabStationFilterByEnsembleFragment.this.mDabChannelInfoList.isEmpty()) {
                    DabStationFilterByEnsembleFragment.this.ensembleLabelStrList.clear();
                    final String preferencesData = DabStationFilterByEnsembleFragment.this.getPreferencesData();
                    for (DabChannelInfo dabChannelInfo : DabStationFilterByEnsembleFragment.this.mDabChannelInfoList) {
                        String labelString = dabChannelInfo.getEnsembleLabel() == null ? "" : dabChannelInfo.getEnsembleLabel().getLabelString();
                        if (!DabStationFilterByEnsembleFragment.this.ensembleLabelStrList.contains(labelString)) {
                            DabStationFilterByEnsembleFragment.this.ensembleLabelStrList.add(labelString);
                        }
                        if (!TextUtils.isEmpty(preferencesData) && dabChannelInfo.getEnsembleLabel() != null && dabChannelInfo.getEnsembleLabel().getLabelString().equals(preferencesData)) {
                            LogUtil.d("refreshDabChannelList filterStr:" + preferencesData);
                            DabStationFilterByEnsembleFragment.this.isSelectedEnsembleContained = true;
                        }
                    }
                    ArrayList arrayList = new ArrayList();
                    arrayList.addAll(DabStationFilterByEnsembleFragment.this.mDabChannelInfoList);
                    DabStationFilterByEnsembleFragment.this.filterList(arrayList);
                    DabStationFilterByEnsembleFragment.this.updateLayoutWithData(arrayList);
                    DabStationFilterByEnsembleFragment.this.tvLableName.post(new Runnable() { // from class: com.yftech.libradio.dabui.DabStationFilterByEnsembleFragment.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (DabStationFilterByEnsembleFragment.this.isSelectedEnsembleContained) {
                                DabStationFilterByEnsembleFragment.this.tvLableName.setText(preferencesData);
                            } else {
                                DabStationFilterByEnsembleFragment.this.tvLableName.setText("");
                            }
                        }
                    });
                    return null;
                }
                LogUtil.w("mDabChannelInfoList is empty ---");
                return null;
            }
        }.execute(new Object[0]);
    }

    @Override // com.yftech.libradio.dabui.DabStationFilteredListFragment
    protected String getFilterString() {
        return getPreferencesData();
    }

    @Override // com.yftech.libradio.dabui.DabStationFilteredListFragment
    protected void onLabelButtonCliked() {
        if (this.ensembleLabelStrList.isEmpty()) {
            LogUtil.d("onLabelButtonCliked ensembleLabelStrList is Empty ---");
            return;
        }
        if (this.lableDialog == null) {
            this.lableDialog = new DabLableDialog(getContext());
            this.lableDialog.setLabelListCallback(new DabLableDialog.LabelListCallback() { // from class: com.yftech.libradio.dabui.DabStationFilterByEnsembleFragment.2
                @Override // com.yftech.libradio.dialog.DabLableDialog.LabelListCallback
                public void onItemClicked(int i) {
                    LogUtil.d("on dab label selected, position: " + i + ", pty: " + ((String) DabStationFilterByEnsembleFragment.this.ensembleLabelStrList.get(i)));
                    DabStationFilterByEnsembleFragment.this.preferences.edit().putString(DabStationFilterByEnsembleFragment.KEY_SP_DAB_ENSEMBLE_SEL, (String) DabStationFilterByEnsembleFragment.this.ensembleLabelStrList.get(i)).commit();
                    DabStationFilterByEnsembleFragment.this.tvLableName.setText((CharSequence) DabStationFilterByEnsembleFragment.this.ensembleLabelStrList.get(i));
                    DabStationFilterByEnsembleFragment.this.filterDabChannleList();
                }
            });
        }
        String preferencesData = getPreferencesData();
        this.lableDialog.setTitle(preferencesData);
        this.lableDialog.setLabelList(this.ensembleLabelStrList, preferencesData);
        this.lableDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void filterList(List<DabChannelInfo> list) {
        if (list.size() == 0) {
            return;
        }
        if (!this.isSelectedEnsembleContained) {
            LogUtil.d("filterList selectedEnsemble is not Contained -----");
            return;
        }
        String preferencesData = getPreferencesData();
        LogUtil.d("buildDabChannelInfo filterStr:" + preferencesData);
        if (TextUtils.isEmpty(preferencesData)) {
            return;
        }
        Iterator<DabChannelInfo> it = list.iterator();
        while (it.hasNext()) {
            DabChannelInfo next = it.next();
            if (!(next.getEnsembleLabel() == null ? "" : next.getEnsembleLabel().getLabelString()).equals(preferencesData)) {
                it.remove();
            }
        }
    }
}
