package com.yftech.libradio.model;

import android.app.Activity;
import android.content.Context;
import com.media.common.util.BaseApplication;
import com.media.common.util.LogUtil;
import com.yftech.car.media.radio.CarRadioManager;
import com.yftech.car.media.radio.entity.DataOfRadio;
import com.yftech.libmvpmodule.BasePresenter;
import com.yftech.libmvpmodule.mvp.IMvpView;
import com.yftech.libradio.RadioListActivity;
import com.yftech.libradio.Utils;
import com.yftech.libradio.bean.RadioChannelInfo;
import com.yftech.libradio.model.interfaces.IRadioModel;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes4.dex */
public class RadioModel implements IRadioModel {
    @Override // com.yftech.libradio.model.interfaces.IRadioModel
    public void getSearchList(final int i, BasePresenter<? extends IMvpView> basePresenter, final IRadioModel.OnRadioChannelSearchListLoadListener onRadioChannelSearchListLoadListener) {
        Activity activity = basePresenter.getActivity();
        if (activity != null) {
            BaseApplication application = activity.getApplication();
            if (application instanceof BaseApplication) {
                application.getFixedThreadPool().execute(new Runnable() { // from class: com.yftech.libradio.model.RadioModel.1
                    @Override // java.lang.Runnable
                    public void run() {
                        LogUtil.d("ThreadId:" + Thread.currentThread().getId());
                        DataOfRadio freq = CarRadioManager.getInstance().getFreq();
                        LogUtil.d(RadioListActivity.ARG_PARAM1 + i + " freq:" + freq.toString());
                        List<DataOfRadio> searchList = CarRadioManager.getInstance().getSearchList(i);
                        int i2 = -1;
                        if (searchList != null) {
                            LogUtil.d("searchList size:" + searchList.size());
                            int i3 = 0;
                            while (true) {
                                if (i3 >= searchList.size()) {
                                    break;
                                }
                                if (searchList.get(i3).Freq == freq.Freq) {
                                    i2 = i3;
                                    break;
                                }
                                i3++;
                            }
                        } else {
                            LogUtil.d("searchList is null");
                        }
                        onRadioChannelSearchListLoadListener.onComplete(i2, searchList);
                    }
                });
            }
        }
    }

    @Override // com.yftech.libradio.model.interfaces.IRadioModel
    public void scanSave(int i, BasePresenter<? extends IMvpView> basePresenter, final IRadioModel.OnRadioChannelScanResultLoadListener onRadioChannelScanResultLoadListener) {
        Activity activity = basePresenter.getActivity();
        if (activity != null) {
            BaseApplication application = activity.getApplication();
            if (application instanceof BaseApplication) {
                application.getFixedThreadPool().execute(new Runnable() { // from class: com.yftech.libradio.model.RadioModel.2
                    @Override // java.lang.Runnable
                    public void run() {
                        LogUtil.d("ThreadId:" + Thread.currentThread().getId());
                        LogUtil.d("automatic scan");
                        CarRadioManager.getInstance().scanSave();
                        onRadioChannelScanResultLoadListener.onComplete(true);
                    }
                });
            }
        }
    }

    @Override // com.yftech.libradio.model.interfaces.IRadioModel
    public void getFavors(final int i, BasePresenter<? extends IMvpView> basePresenter, final IRadioModel.OnRadioFavorListLoadListener onRadioFavorListLoadListener) {
        Activity activity = basePresenter.getActivity();
        if (activity != null) {
            BaseApplication application = activity.getApplication();
            if (application instanceof BaseApplication) {
                application.getFixedThreadPool().execute(new Runnable() { // from class: com.yftech.libradio.model.RadioModel.3
                    @Override // java.lang.Runnable
                    public void run() {
                        LogUtil.d("ThreadId:" + Thread.currentThread().getId());
                        DataOfRadio[] favors = CarRadioManager.getInstance().getFavors(i);
                        int i2 = -1;
                        if (favors != null && favors.length > 0) {
                            DataOfRadio freq = CarRadioManager.getInstance().getFreq();
                            LogUtil.d(RadioListActivity.ARG_PARAM1 + i + " freq:" + freq.toString() + " size:" + favors.length);
                            int i3 = 0;
                            while (true) {
                                if (i3 >= favors.length) {
                                    break;
                                }
                                if (favors[i3].getType() == freq.getType() && favors[i3].getFreq() == freq.getFreq()) {
                                    i2 = i3;
                                    break;
                                }
                                i3++;
                            }
                        } else {
                            LogUtil.d("searchList is empty");
                        }
                        ArrayList arrayList = new ArrayList();
                        if (favors != null) {
                            for (DataOfRadio dataOfRadio : favors) {
                                if (dataOfRadio.Freq > 0) {
                                    boolean isFreqValid = CarRadioManager.getInstance().isFreqValid(i, dataOfRadio.Freq);
                                    RadioChannelInfo radioChannelInfo = new RadioChannelInfo(dataOfRadio);
                                    radioChannelInfo.isValid = isFreqValid;
                                    arrayList.add(radioChannelInfo);
                                }
                            }
                        }
                        LogUtil.d("results size:" + arrayList.size() + " index:" + i2);
                        onRadioFavorListLoadListener.onComplete(i2, arrayList);
                    }
                });
            }
        }
    }

    @Override // com.yftech.libradio.model.interfaces.IRadioModel
    public void setFreqList(final int i, BasePresenter<? extends IMvpView> basePresenter, final IRadioModel.OnFreqListLoadListener onFreqListLoadListener) {
        Activity activity = basePresenter.getActivity();
        if (activity != null) {
            BaseApplication application = activity.getApplication();
            if (application instanceof BaseApplication) {
                final BaseApplication baseApplication = application;
                baseApplication.getFixedThreadPool().execute(new Runnable() { // from class: com.yftech.libradio.model.RadioModel.4
                    @Override // java.lang.Runnable
                    public void run() {
                        LogUtil.d("ThreadId:" + Thread.currentThread().getId());
                        DataOfRadio freq = CarRadioManager.getInstance().getFreq();
                        int i2 = 0;
                        int validRadioValue = i == 0 ? RadioModel.this.getValidRadioValue(baseApplication.getApplicationContext(), CarRadioManager.getInstance().getMax(0), Utils.SHARED_KEY_FM_MAX, Utils.SHARED_KEY_FM_MAX_DEFAULT) : RadioModel.this.getValidRadioValue(baseApplication.getApplicationContext(), CarRadioManager.getInstance().getMax(2), Utils.SHARED_KEY_AM_MAX, Utils.SHARED_KEY_AM_MAX_DEFAULT);
                        int validRadioValue2 = i == 0 ? RadioModel.this.getValidRadioValue(baseApplication.getApplicationContext(), CarRadioManager.getInstance().getMin(0), Utils.SHARED_KEY_FM_MIN, Utils.SHARED_KEY_FM_MIN_DEFAULT) : RadioModel.this.getValidRadioValue(baseApplication.getApplicationContext(), CarRadioManager.getInstance().getMin(2), Utils.SHARED_KEY_AM_MIN, 531);
                        int validRadioValue3 = i == 0 ? RadioModel.this.getValidRadioValue(baseApplication.getApplicationContext(), CarRadioManager.getInstance().getManualStep(0), Utils.SHARED_KEY_FM_STEP, 100) : RadioModel.this.getValidRadioValue(baseApplication.getApplicationContext(), CarRadioManager.getInstance().getManualStep(2), Utils.SHARED_KEY_AM_STEP, 9);
                        LogUtil.d("setFreqList:freqIndex=" + freq.Freq + " band=" + i);
                        LogUtil.d("setFreqList:maxFreq=" + validRadioValue + " minFreq=" + validRadioValue2 + " step=" + validRadioValue3);
                        if (validRadioValue < 0 || validRadioValue2 < 0 || validRadioValue3 < 0) {
                            onFreqListLoadListener.onComplete(null, -1);
                            return;
                        }
                        ArrayList arrayList = new ArrayList();
                        DecimalFormat decimalFormat = new DecimalFormat("0.0");
                        while (validRadioValue2 <= validRadioValue) {
                            if (i == 0) {
                                arrayList.add(decimalFormat.format(validRadioValue2 / 1000.0f));
                            } else {
                                arrayList.add(String.valueOf(validRadioValue2));
                            }
                            if (freq.Freq == validRadioValue2) {
                                i2 = validRadioValue2;
                            }
                            validRadioValue2 += validRadioValue3;
                        }
                        onFreqListLoadListener.onComplete(arrayList, i2);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getValidRadioValue(Context context, int i, String str, int i2) {
        int sharedRadioData = getSharedRadioData(context, str, i2);
        LogUtil.i("getValidRadioValue() curValue:" + i + " shareValue:" + sharedRadioData + " (" + str + "_" + i2 + ")");
        if (i >= 0) {
            if (i != sharedRadioData) {
                saveSharedRadioData(context, str, i);
            }
            return i;
        }
        LogUtil.i("getValidRadioValue() curValue error, use shareValue. shareValue:" + sharedRadioData);
        return sharedRadioData;
    }

    private int getSharedRadioData(Context context, String str, int i) {
        return context.getSharedPreferences(Utils.SHARED_RADIO_DATA_NAME, 0).getInt(str, i);
    }

    private void saveSharedRadioData(Context context, String str, int i) {
        LogUtil.i("saveSharedRadioData() key:" + str + " value:" + i);
        context.getSharedPreferences(Utils.SHARED_RADIO_DATA_NAME, 0).edit().putInt(str, i).commit();
    }
}
