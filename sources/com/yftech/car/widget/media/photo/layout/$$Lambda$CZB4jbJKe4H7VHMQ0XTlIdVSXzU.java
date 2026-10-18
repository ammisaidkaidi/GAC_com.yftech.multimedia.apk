package com.yftech.car.widget.media.photo.layout;

import com.yftech.car.widget.media.list.MediaDataList;

/* compiled from: lambda */
/* renamed from: com.yftech.car.widget.media.photo.layout.-$$Lambda$CZB4jbJKe4H7VHMQ0XTlIdVSXzU, reason: invalid class name */
/* loaded from: /home/user/work/dex/classes3.dex */
public final /* synthetic */ class $$Lambda$CZB4jbJKe4H7VHMQ0XTlIdVSXzU implements Runnable {
    private final /* synthetic */ MediaDataList f$0;

    public /* synthetic */ $$Lambda$CZB4jbJKe4H7VHMQ0XTlIdVSXzU(MediaDataList mediaDataList) {
        this.f$0 = mediaDataList;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f$0.updateDirectoryList();
    }
}
