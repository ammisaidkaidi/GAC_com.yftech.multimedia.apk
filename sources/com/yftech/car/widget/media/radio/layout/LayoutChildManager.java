package com.yftech.car.widget.media.radio.layout;

import android.os.Handler;
import android.os.Looper;
import android.util.ArrayMap;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import com.yftech.car.media.radio.entity.DataOfRadio;
import com.yftech.car.utils.Loger;
import com.yftech.car.widget.media.entity.SizeCore;
import com.yftech.car.widget.media.manager.RadioManager;
import com.yftech.car.widget.media.radio.RadioDataPlayManager;
import com.yftech.car.widget.media.radio.button.RadioButton;
import com.yftech.car.widget.media.radio.layout.LayoutChildManager;
import com.yftech.car.widget.media.radio.list.RadioDataList;
import com.yftech.car.widget.media.radio.list.RadioDynamicList;
import com.yftech.car.widget.media.radio.list.RadioFixedFavorList;
import com.yftech.car.widget.media.radio.text.RadioDataText;
import com.yftech.car.widget.media.radio.text.RadioText;
import com.yftech.car.widget.media.radio.text.RadioTextView;
import com.yftech.car.widget.media.radio.view.RulerView;
import com.yftech.car.widget.media.recyclerview.widget.RecyclerView;
import com.yftech.car.widget.media.text.VisibilityTextButton;
import com.yftech.car.widget.media.utils.AnimationUtil;
import com.yftech.car.widget.media.view.PlayAnimation;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* loaded from: /home/user/work/dex/classes3.dex */
public class LayoutChildManager {
    private static final String TAG = "LayoutChildManager";
    private RadioManager.CarRadioControlCallback mCarRadioControlCallback;
    private ViewGroup mLayout;
    private RulerView.OnRulerViewScrollListener mOnRulerViewScrollListener;
    private RulerView mRulerView;
    private final List<RadioTextView> mTextViewList = new ArrayList();
    private final List<RadioButton> mButtonList = new ArrayList();
    private final List<RecyclerView> mRecyclerViewList = new ArrayList();
    private final List<PlayAnimation> mPlayAnimationList = new ArrayList();
    private final List<RadioText> mRadioTextList = new ArrayList();
    private final List<VisibilityTextButton> mVisibilityTextButtonList = new ArrayList();
    private final List<RadioDataText> mRadioDataTextList = new ArrayList();
    private final Map<View, SizeCore> mSizeCore = new ArrayMap();
    private boolean isAnimationLoading = false;
    private final Handler mHandler = new Handler(Looper.getMainLooper());
    private final VisibilityTextButton.OnClickVisibilityListener mOnClickVisibilityListener = new AnonymousClass3();

    public void onWindowFocusChanged(boolean z) {
    }

    public void initView(ViewGroup viewGroup) {
        this.mLayout = viewGroup;
        if (this.mCarRadioControlCallback == null) {
            this.mCarRadioControlCallback = getCarRadioControlCallback();
            RadioManager.registerRadioControlCallback(this.mCarRadioControlCallback, this.mHandler);
            LinkedList linkedList = new LinkedList();
            linkedList.add(viewGroup);
            while (true) {
                if (linkedList.isEmpty()) {
                    break;
                }
                ViewGroup viewGroup2 = (ViewGroup) linkedList.removeFirst();
                for (int i = 0; i < viewGroup2.getChildCount(); i++) {
                    Object childAt = viewGroup2.getChildAt(i);
                    if (childAt instanceof ViewGroup) {
                        if (childAt instanceof RecyclerView) {
                            this.mRecyclerViewList.add((RecyclerView) childAt);
                        } else if (childAt instanceof RadioTextView) {
                            this.mTextViewList.add((RadioTextView) childAt);
                        } else {
                            linkedList.add((ViewGroup) childAt);
                        }
                    } else if (childAt instanceof RadioButton) {
                        this.mButtonList.add((RadioButton) childAt);
                    } else if (childAt instanceof RulerView) {
                        if (this.mRulerView == null) {
                            this.mRulerView = (RulerView) childAt;
                        }
                    } else if (childAt instanceof PlayAnimation) {
                        this.mPlayAnimationList.add((PlayAnimation) childAt);
                    } else if (childAt instanceof RadioText) {
                        this.mRadioTextList.add((RadioText) childAt);
                    } else if (childAt instanceof VisibilityTextButton) {
                        this.mVisibilityTextButtonList.add((VisibilityTextButton) childAt);
                    } else if (childAt instanceof RadioDataText) {
                        this.mRadioDataTextList.add((RadioDataText) childAt);
                    }
                }
            }
            DataOfRadio freq = RadioManager.getInstance().getFreq();
            if (this.mRulerView != null) {
                if (this.mOnRulerViewScrollListener == null) {
                    this.mOnRulerViewScrollListener = getOnRulerViewScrollListener();
                }
                this.mRulerView.setScrollingListener(this.mOnRulerViewScrollListener);
                if (freq.getType() != -1) {
                    this.mRulerView.setCurrentValue(freq);
                }
            }
            Iterator<RadioText> it = this.mRadioTextList.iterator();
            while (it.hasNext()) {
                it.next().setRadioText(freq);
            }
            Iterator<RadioTextView> it2 = this.mTextViewList.iterator();
            while (it2.hasNext()) {
                it2.next().setRadioText(freq);
            }
            boolean isPlaying = RadioManager.getInstance().isPlaying();
            RadioDataPlayManager.getInstance().setPlayFreq(freq);
            RadioDataPlayManager.getInstance().setPlaying(isPlaying);
            Iterator<PlayAnimation> it3 = this.mPlayAnimationList.iterator();
            while (it3.hasNext()) {
                it3.next().setPlay(isPlaying);
            }
            int scanStatus = RadioManager.getInstance().getScanStatus();
            for (RadioButton radioButton : this.mButtonList) {
                if (radioButton.isFunction(6)) {
                    if (radioButton.isRadioScanStatusPause() && scanStatus != 0) {
                        radioButton.setActivatedStatus(false);
                    } else {
                        radioButton.setActivatedStatus(isPlaying);
                    }
                }
            }
            for (final VisibilityTextButton visibilityTextButton : this.mVisibilityTextButtonList) {
                visibilityTextButton.setOnClickVisibilityListener(this.mOnClickVisibilityListener);
                visibilityTextButton.postOnAnimation(new Runnable() { // from class: com.yftech.car.widget.media.radio.layout.-$$Lambda$LayoutChildManager$qcLsOya6OuhrphzrNULNjWwytSo
                    @Override // java.lang.Runnable
                    public final void run() {
                        r1.setVisibilityShow(visibilityTextButton.isMediaDataListShow(LayoutChildManager.this.mLayout));
                    }
                });
            }
            for (RecyclerView recyclerView : this.mRecyclerViewList) {
                if (recyclerView instanceof RadioDataList) {
                    RadioDataList radioDataList = (RadioDataList) recyclerView;
                    radioDataList.setRadioDataTextList(this.mRadioDataTextList);
                    radioDataList.updateList(freq);
                }
            }
        }
        Log.d(TAG, "initView: mTextViewList==" + this.mTextViewList.size() + ",mButtonList==" + this.mButtonList.size());
    }

    public void unregister() {
        if (this.mCarRadioControlCallback != null) {
            RadioManager.unregisterRadioControlCallback(this.mCarRadioControlCallback);
            if (this.mRulerView != null) {
                this.mRulerView.setScrollingListener(null);
            }
            this.mTextViewList.clear();
            this.mButtonList.clear();
            this.mRecyclerViewList.clear();
            this.mPlayAnimationList.clear();
            this.mRadioTextList.clear();
            this.mCarRadioControlCallback = null;
            this.mVisibilityTextButtonList.clear();
            this.mLayout = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yftech.car.widget.media.radio.layout.LayoutChildManager$1, reason: invalid class name */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public class AnonymousClass1 extends RadioManager.CarRadioControlCallback {
        AnonymousClass1() {
        }

        @Override // com.yftech.car.widget.media.manager.RadioManager.CarRadioControlCallback, com.yftech.car.widget.media.manager.RadioManager.OnRadioControlListener
        public void onScanFreqSignal(final DataOfRadio dataOfRadio, int i) {
            Log.d(LayoutChildManager.TAG, "onScanFreqSignal: channel==" + dataOfRadio);
            LayoutChildManager.this.mLayout.post(new Runnable() { // from class: com.yftech.car.widget.media.radio.layout.-$$Lambda$LayoutChildManager$1$_cwHwwQ9LNJWvdQhwIh7yaNuyOw
                @Override // java.lang.Runnable
                public final void run() {
                    LayoutChildManager.AnonymousClass1.lambda$onScanFreqSignal$0(LayoutChildManager.AnonymousClass1.this, dataOfRadio);
                }
            });
        }

        public static /* synthetic */ void lambda$onScanFreqSignal$0(AnonymousClass1 anonymousClass1, DataOfRadio dataOfRadio) {
            Iterator it = LayoutChildManager.this.mTextViewList.iterator();
            while (it.hasNext()) {
                ((RadioTextView) it.next()).setRadioText(dataOfRadio);
            }
            Iterator it2 = LayoutChildManager.this.mRadioTextList.iterator();
            while (it2.hasNext()) {
                ((RadioText) it2.next()).setRadioText(dataOfRadio);
            }
            if (LayoutChildManager.this.mRulerView != null) {
                LayoutChildManager.this.mRulerView.setCurrentValue(dataOfRadio);
            }
        }

        @Override // com.yftech.car.widget.media.manager.RadioManager.CarRadioControlCallback, com.yftech.car.widget.media.manager.RadioManager.OnRadioControlListener
        public void onPlaySignalUpdate(DataOfRadio dataOfRadio, int i) {
            super.onPlaySignalUpdate(dataOfRadio, i);
        }

        @Override // com.yftech.car.widget.media.manager.RadioManager.CarRadioControlCallback, com.yftech.car.widget.media.manager.RadioManager.OnRadioControlListener
        public void onSeekStatusChange(final int i, final int i2, final int i3) {
            Log.d(LayoutChildManager.TAG, "onSeekStatusChange: scanType==" + i + ",status==" + i2 + ",operation==" + i3);
            LayoutChildManager.this.mLayout.post(new Runnable() { // from class: com.yftech.car.widget.media.radio.layout.-$$Lambda$LayoutChildManager$1$gcY-e-oPyddgKrukuoGl8cn3LLY
                @Override // java.lang.Runnable
                public final void run() {
                    LayoutChildManager.AnonymousClass1.lambda$onSeekStatusChange$1(LayoutChildManager.AnonymousClass1.this, i2, i3, i);
                }
            });
        }

        public static /* synthetic */ void lambda$onSeekStatusChange$1(AnonymousClass1 anonymousClass1, int i, int i2, int i3) {
            if (i == 0 && i2 == 1) {
                switch (i3) {
                    case 3:
                    case 4:
                        for (RecyclerView recyclerView : LayoutChildManager.this.mRecyclerViewList) {
                            if (recyclerView instanceof RadioDynamicList) {
                                RadioDynamicList radioDynamicList = (RadioDynamicList) recyclerView;
                                if (radioDynamicList.isType(1)) {
                                    Log.d(LayoutChildManager.TAG, "onSeekStatusChange: SCAN_SEARCH_LIST ,scanType==" + i3);
                                    radioDynamicList.updateList(RadioManager.getInstance().getFreq());
                                }
                            } else if (recyclerView instanceof RadioDataList) {
                                RadioDataList radioDataList = (RadioDataList) recyclerView;
                                if (radioDataList.isType(1)) {
                                    radioDataList.updateList(RadioManager.getInstance().getFreq());
                                }
                            }
                        }
                        break;
                }
            }
            for (RadioButton radioButton : LayoutChildManager.this.mButtonList) {
                if (radioButton.isFunction(6) && radioButton.isRadioScanStatusPause()) {
                    if (i != 0) {
                        radioButton.setActivatedStatus(false);
                    } else {
                        radioButton.setActivatedStatus(RadioManager.getInstance().isPlaying());
                    }
                }
            }
        }

        @Override // com.yftech.car.widget.media.manager.RadioManager.CarRadioControlCallback, com.yftech.car.widget.media.manager.RadioManager.OnRadioControlListener
        public void onFreqChange(final DataOfRadio dataOfRadio, DataOfRadio dataOfRadio2) {
            Log.d(LayoutChildManager.TAG, "onFreqChange: newChannel==" + dataOfRadio);
            RadioDataPlayManager.getInstance().setPlayFreq(dataOfRadio);
            LayoutChildManager.this.mLayout.post(new Runnable() { // from class: com.yftech.car.widget.media.radio.layout.-$$Lambda$LayoutChildManager$1$pfFSuDGTseWvT1qrSMArJyN3sKo
                @Override // java.lang.Runnable
                public final void run() {
                    LayoutChildManager.AnonymousClass1.lambda$onFreqChange$2(LayoutChildManager.AnonymousClass1.this, dataOfRadio);
                }
            });
        }

        public static /* synthetic */ void lambda$onFreqChange$2(AnonymousClass1 anonymousClass1, DataOfRadio dataOfRadio) {
            Iterator it = LayoutChildManager.this.mTextViewList.iterator();
            while (it.hasNext()) {
                ((RadioTextView) it.next()).setRadioText(dataOfRadio);
            }
            Iterator it2 = LayoutChildManager.this.mRadioTextList.iterator();
            while (it2.hasNext()) {
                ((RadioText) it2.next()).setRadioText(dataOfRadio);
            }
            for (RadioButton radioButton : LayoutChildManager.this.mButtonList) {
                if (radioButton.isFunction(11)) {
                    radioButton.setActivatedStatus(dataOfRadio.getType() == 0);
                }
                if (radioButton.isFunction(10)) {
                    radioButton.setActivatedStatus(RadioManager.getInstance().isFreqFavored(dataOfRadio));
                }
            }
            if (LayoutChildManager.this.mRulerView != null) {
                LayoutChildManager.this.mRulerView.setCurrentValue(dataOfRadio);
            }
            for (RecyclerView recyclerView : LayoutChildManager.this.mRecyclerViewList) {
                if (recyclerView instanceof RadioFixedFavorList) {
                    ((RadioFixedFavorList) recyclerView).updateFavorsList(dataOfRadio);
                } else if (recyclerView instanceof RadioDynamicList) {
                    ((RadioDynamicList) recyclerView).updateList(dataOfRadio);
                } else if (recyclerView instanceof RadioDataList) {
                    ((RadioDataList) recyclerView).updateList(dataOfRadio);
                }
            }
        }

        @Override // com.yftech.car.widget.media.manager.RadioManager.CarRadioControlCallback, com.yftech.car.widget.media.manager.RadioManager.OnRadioControlListener
        public void onFavorChange(int i, final DataOfRadio dataOfRadio) {
            if (dataOfRadio == null) {
                dataOfRadio = RadioManager.getInstance().getFreq();
            }
            LayoutChildManager.this.mLayout.post(new Runnable() { // from class: com.yftech.car.widget.media.radio.layout.-$$Lambda$LayoutChildManager$1$yzBjPT8SEyS8zmFcroLEJzww39o
                @Override // java.lang.Runnable
                public final void run() {
                    LayoutChildManager.AnonymousClass1.lambda$onFavorChange$3(LayoutChildManager.AnonymousClass1.this, dataOfRadio);
                }
            });
        }

        public static /* synthetic */ void lambda$onFavorChange$3(AnonymousClass1 anonymousClass1, DataOfRadio dataOfRadio) {
            for (RecyclerView recyclerView : LayoutChildManager.this.mRecyclerViewList) {
                if (recyclerView instanceof RadioFixedFavorList) {
                    ((RadioFixedFavorList) recyclerView).updateFavorsList(dataOfRadio);
                } else if (recyclerView instanceof RadioDynamicList) {
                    ((RadioDynamicList) recyclerView).updateList(dataOfRadio);
                } else if (recyclerView instanceof RadioDataList) {
                    ((RadioDataList) recyclerView).notifydatasetchangedList(dataOfRadio);
                }
            }
            for (RadioButton radioButton : LayoutChildManager.this.mButtonList) {
                if (radioButton.isFunction(10)) {
                    radioButton.setActivatedStatus(RadioManager.getInstance().isFreqFavored(RadioManager.getInstance().getFreq()));
                }
            }
        }

        @Override // com.yftech.car.widget.media.manager.RadioManager.CarRadioControlCallback, com.yftech.car.widget.media.manager.RadioManager.OnRadioControlListener
        public void onPlayPause(final boolean z) {
            Loger.d(LayoutChildManager.TAG, " onPlayPause: isPlaying==" + z);
            RadioDataPlayManager.getInstance().setPlaying(z);
            LayoutChildManager.this.mLayout.post(new Runnable() { // from class: com.yftech.car.widget.media.radio.layout.-$$Lambda$LayoutChildManager$1$N6UUpsApxmEgQ9SgDuPMATFEiXM
                @Override // java.lang.Runnable
                public final void run() {
                    LayoutChildManager.AnonymousClass1.lambda$onPlayPause$4(LayoutChildManager.AnonymousClass1.this, z);
                }
            });
        }

        public static /* synthetic */ void lambda$onPlayPause$4(AnonymousClass1 anonymousClass1, boolean z) {
            for (RadioButton radioButton : LayoutChildManager.this.mButtonList) {
                if (radioButton.isFunction(6)) {
                    if (radioButton.isRadioScanStatusPause() && RadioManager.getInstance().getScanStatus() != 0) {
                        radioButton.setActivatedStatus(false);
                    } else {
                        radioButton.setActivatedStatus(z);
                    }
                }
            }
            for (RecyclerView recyclerView : LayoutChildManager.this.mRecyclerViewList) {
                if (recyclerView instanceof RadioFixedFavorList) {
                    ((RadioFixedFavorList) recyclerView).updateFavorsList(null);
                } else if (recyclerView instanceof RadioDynamicList) {
                    ((RadioDynamicList) recyclerView).updateList(null);
                } else if (recyclerView instanceof RadioDataList) {
                    ((RadioDataList) recyclerView).updateList(null);
                }
            }
            Iterator it = LayoutChildManager.this.mPlayAnimationList.iterator();
            while (it.hasNext()) {
                ((PlayAnimation) it.next()).setPlay(z);
            }
        }
    }

    private RadioManager.CarRadioControlCallback getCarRadioControlCallback() {
        return new AnonymousClass1();
    }

    private RulerView.OnRulerViewScrollListener getOnRulerViewScrollListener() {
        return new RulerView.OnRulerViewScrollListener() { // from class: com.yftech.car.widget.media.radio.layout.LayoutChildManager.2
            @Override // com.yftech.car.widget.media.radio.view.RulerView.OnRulerViewScrollListener
            public void onChanged(RulerView rulerView, String str, String str2) {
            }

            @Override // com.yftech.car.widget.media.radio.view.RulerView.OnRulerViewScrollListener
            public void onScrollingStarted(RulerView rulerView) {
            }

            @Override // com.yftech.car.widget.media.radio.view.RulerView.OnRulerViewScrollListener
            public void onScrollingFinished(RulerView rulerView, int i) {
                if (rulerView.mBand == 0) {
                    RadioManager.getInstance().setFreq(i);
                } else if (i >= RadioManager.getInstance().getMin(rulerView.mBand)) {
                    RadioManager.getInstance().setFreq(i);
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void visibilityGone(View view, int i, int i2) {
        float width;
        float y;
        switch (i) {
            case 1:
                SizeCore sizeCore = this.mSizeCore.get(view);
                if (sizeCore != null) {
                    width = sizeCore.childAtCoreX;
                    y = sizeCore.childAtCoreY;
                } else {
                    width = (view.getWidth() / 2.0f) + view.getX();
                    y = view.getY() + (view.getHeight() / 2.0f);
                    SizeCore sizeCore2 = new SizeCore();
                    sizeCore2.childAtCoreX = width;
                    sizeCore2.childAtCoreY = y;
                    this.mSizeCore.put(view, sizeCore2);
                }
                float width2 = this.mLayout.getWidth() / 2.0f;
                float height = this.mLayout.getHeight() / 2.0f;
                if (width < width2 && Math.abs(y - height) < Math.abs(width - width2)) {
                    AnimationUtil.showTranslateAnimation(view, i2, 0.0f, -(view.getWidth() + view.getX()), 0.0f, 0.0f);
                    break;
                } else if (y < height && Math.abs(width2 - width) < Math.abs(y - height)) {
                    AnimationUtil.showTranslateAnimation(view, i2, 0.0f, 0.0f, 0.0f, -(view.getHeight() + view.getY()));
                    break;
                } else if (width2 < width && Math.abs(width - width2) > Math.abs(y - height)) {
                    AnimationUtil.showTranslateAnimation(view, i2, 0.0f, view.getWidth() + (this.mLayout.getWidth() - (view.getX() + view.getWidth())), 0.0f, 0.0f);
                    break;
                } else {
                    AnimationUtil.showTranslateAnimation(view, i2, 0.0f, 0.0f, 0.0f, view.getHeight() + (this.mLayout.getHeight() - (view.getY() + view.getHeight())));
                    break;
                }
                break;
            case 2:
                AnimationUtil.showAlphaAnimation(view, i2, false);
                break;
        }
        view.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void visibilityVisible(View view, int i, int i2) {
        float width;
        float y;
        view.setVisibility(0);
        switch (i) {
            case 1:
                SizeCore sizeCore = this.mSizeCore.get(view);
                if (sizeCore != null) {
                    width = sizeCore.childAtCoreX;
                    y = sizeCore.childAtCoreY;
                } else {
                    width = (view.getWidth() / 2.0f) + view.getX();
                    y = view.getY() + (view.getHeight() / 2.0f);
                    SizeCore sizeCore2 = new SizeCore();
                    sizeCore2.childAtCoreX = width;
                    sizeCore2.childAtCoreY = y;
                    this.mSizeCore.put(view, sizeCore2);
                }
                float width2 = this.mLayout.getWidth() / 2.0f;
                float height = this.mLayout.getHeight() / 2.0f;
                if (width < width2 && Math.abs(y - height) < Math.abs(width - width2)) {
                    AnimationUtil.showTranslateAnimation(view, i2, -(view.getWidth() + view.getX()), 0.0f, 0.0f, 0.0f);
                    return;
                }
                if (y < height && Math.abs(width2 - width) < Math.abs(y - height)) {
                    AnimationUtil.showTranslateAnimation(view, i2, 0.0f, 0.0f, -(view.getHeight() + view.getY()), 0.0f);
                    return;
                }
                if (width2 < width && Math.abs(width - width2) > Math.abs(y - height)) {
                    AnimationUtil.showTranslateAnimation(view, i2, view.getWidth() + (this.mLayout.getWidth() - (view.getX() + view.getWidth())), 0.0f, 0.0f, 0.0f);
                    return;
                } else {
                    AnimationUtil.showTranslateAnimation(view, i2, 0.0f, 0.0f, view.getHeight() + (this.mLayout.getHeight() - (view.getY() + view.getHeight())), 0.0f);
                    return;
                }
            case 2:
                AnimationUtil.showAlphaAnimation(view, i2, true);
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yftech.car.widget.media.radio.layout.LayoutChildManager$3, reason: invalid class name */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public class AnonymousClass3 implements VisibilityTextButton.OnClickVisibilityListener {
        AnonymousClass3() {
        }

        @Override // com.yftech.car.widget.media.text.VisibilityTextButton.OnClickVisibilityListener
        public void onClickVisibility(int[] iArr, int i, int i2, int i3) {
            if (LayoutChildManager.this.mLayout != null) {
                if (LayoutChildManager.this.isAnimationLoading) {
                    Log.e(LayoutChildManager.TAG, "onClickVisibility: Double Click isAnimationLoading is true");
                    return;
                }
                int i4 = i2;
                boolean z = -1;
                for (int i5 : iArr) {
                    if (i5 != -1) {
                        final View findViewById = LayoutChildManager.this.mLayout.findViewById(i5);
                        if (findViewById.getVisibility() != 0) {
                            if ((i & 1) > 0) {
                                if (i4 == -1) {
                                    i4 = 0;
                                }
                                LayoutChildManager.this.isAnimationLoading = true;
                                LayoutChildManager.this.visibilityVisible(findViewById, i4, i3);
                                z = true;
                            }
                        } else if (findViewById.getVisibility() != 8 && (i & 2) > 0) {
                            LayoutChildManager.this.isAnimationLoading = true;
                            if (i4 == -1) {
                                i4 = 0;
                            }
                            LayoutChildManager.this.visibilityGone(findViewById, i4, i3);
                            z = false;
                        }
                        if (LayoutChildManager.this.isAnimationLoading) {
                            if (i4 == 1 || i4 == 2) {
                                LayoutChildManager.this.mLayout.postOnAnimationDelayed(new Runnable() { // from class: com.yftech.car.widget.media.radio.layout.-$$Lambda$LayoutChildManager$3$Y_ze5hTsyycIgwxLHipclusknwQ
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        LayoutChildManager.AnonymousClass3.lambda$onClickVisibility$1(LayoutChildManager.AnonymousClass3.this, findViewById);
                                    }
                                }, i3);
                            } else {
                                LayoutChildManager.this.isAnimationLoading = false;
                            }
                        }
                    }
                }
                Iterator it = LayoutChildManager.this.mVisibilityTextButtonList.iterator();
                while (it.hasNext()) {
                    ((VisibilityTextButton) it.next()).setVisibilityShow(z);
                }
            }
        }

        public static /* synthetic */ void lambda$onClickVisibility$1(final AnonymousClass3 anonymousClass3, View view) {
            view.clearAnimation();
            LayoutChildManager.this.mLayout.postOnAnimationDelayed(new Runnable() { // from class: com.yftech.car.widget.media.radio.layout.-$$Lambda$LayoutChildManager$3$GyWiNWLwQWJfECgZViHY3fIatSU
                @Override // java.lang.Runnable
                public final void run() {
                    LayoutChildManager.this.isAnimationLoading = false;
                }
            }, 100L);
        }

        @Override // com.yftech.car.widget.media.text.VisibilityTextButton.OnClickVisibilityListener
        public void onClickVisibilityVisible(int[] iArr, int i, int i2) {
            if (LayoutChildManager.this.mLayout != null) {
                if (LayoutChildManager.this.isAnimationLoading) {
                    Log.e(LayoutChildManager.TAG, "onClickVisibility: Double Click isAnimationLoading is true");
                    return;
                }
                int i3 = i;
                for (int i4 : iArr) {
                    if (i4 != -1) {
                        final View findViewById = LayoutChildManager.this.mLayout.findViewById(i4);
                        if (findViewById.getVisibility() != 0) {
                            if (i3 == -1) {
                                i3 = 0;
                            }
                            LayoutChildManager.this.isAnimationLoading = true;
                            LayoutChildManager.this.visibilityVisible(findViewById, i3, i2);
                        }
                        if (LayoutChildManager.this.isAnimationLoading) {
                            if (i3 == 1 || i3 == 2) {
                                LayoutChildManager.this.mLayout.postOnAnimationDelayed(new Runnable() { // from class: com.yftech.car.widget.media.radio.layout.-$$Lambda$LayoutChildManager$3$lUzbYVIw878LiFjqSyWrW0U5Vvs
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        LayoutChildManager.AnonymousClass3.lambda$onClickVisibilityVisible$3(LayoutChildManager.AnonymousClass3.this, findViewById);
                                    }
                                }, i2);
                            } else {
                                LayoutChildManager.this.isAnimationLoading = false;
                            }
                        }
                    }
                }
            }
        }

        public static /* synthetic */ void lambda$onClickVisibilityVisible$3(final AnonymousClass3 anonymousClass3, View view) {
            view.clearAnimation();
            LayoutChildManager.this.mLayout.postOnAnimationDelayed(new Runnable() { // from class: com.yftech.car.widget.media.radio.layout.-$$Lambda$LayoutChildManager$3$Ae0XtcmWTt10doKzjdBFbYs-jBI
                @Override // java.lang.Runnable
                public final void run() {
                    LayoutChildManager.this.isAnimationLoading = false;
                }
            }, 100L);
        }

        @Override // com.yftech.car.widget.media.text.VisibilityTextButton.OnClickVisibilityListener
        public void onClickVisibilityGone(int[] iArr, int i, int i2) {
            if (LayoutChildManager.this.mLayout != null) {
                if (LayoutChildManager.this.isAnimationLoading) {
                    Log.e(LayoutChildManager.TAG, "onClickVisibility: Double Click isAnimationLoading is true");
                    return;
                }
                int i3 = i;
                for (int i4 : iArr) {
                    if (i4 != -1) {
                        final View findViewById = LayoutChildManager.this.mLayout.findViewById(i4);
                        if (findViewById.getVisibility() != 8) {
                            LayoutChildManager.this.isAnimationLoading = true;
                            if (i3 == -1) {
                                i3 = 0;
                            }
                            LayoutChildManager.this.visibilityGone(findViewById, i3, i2);
                        }
                        if (LayoutChildManager.this.isAnimationLoading) {
                            if (i3 == 1 || i3 == 2) {
                                LayoutChildManager.this.mLayout.postOnAnimationDelayed(new Runnable() { // from class: com.yftech.car.widget.media.radio.layout.-$$Lambda$LayoutChildManager$3$ChNiGzO1IHoobaeykxi7xZ3BfwA
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        LayoutChildManager.AnonymousClass3.lambda$onClickVisibilityGone$5(LayoutChildManager.AnonymousClass3.this, findViewById);
                                    }
                                }, i2);
                            } else {
                                LayoutChildManager.this.isAnimationLoading = false;
                            }
                        }
                    }
                }
            }
        }

        public static /* synthetic */ void lambda$onClickVisibilityGone$5(final AnonymousClass3 anonymousClass3, View view) {
            view.clearAnimation();
            LayoutChildManager.this.mLayout.postOnAnimationDelayed(new Runnable() { // from class: com.yftech.car.widget.media.radio.layout.-$$Lambda$LayoutChildManager$3$ypa_KO6qn1ZEqIoYbSGeYvk-k7k
                @Override // java.lang.Runnable
                public final void run() {
                    LayoutChildManager.this.isAnimationLoading = false;
                }
            }, 100L);
        }
    }
}
