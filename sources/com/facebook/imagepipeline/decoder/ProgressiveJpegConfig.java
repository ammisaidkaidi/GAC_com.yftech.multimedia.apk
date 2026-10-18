package com.facebook.imagepipeline.decoder;

import com.facebook.imagepipeline.image.QualityInfo;

/* loaded from: /home/user/work/dex/classes3.dex */
public interface ProgressiveJpegConfig {
    int getNextScanNumberToDecode(int i);

    QualityInfo getQualityInfo(int i);
}
