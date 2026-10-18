package com.yftech.multimedia;

import android.content.res.Configuration;
import android.graphics.Bitmap;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.imagepipeline.core.ImagePipelineConfig;
import com.media.common.util.BaseApplication;
import com.media.common.util.LogUtil;
import com.yftech.libmusic.utils.CarLifeMusicManager;
import com.yftech.libmusic.utils.CarPlayMusicManager;
import org.greenrobot.eventbus.EventBus;

/* loaded from: /home/user/work/dex/classes4.dex */
public class MediaApplication extends BaseApplication {
    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate() {
        super.onCreate();
        LogUtil.d("onCreate");
        Fresco.initialize(this, ImagePipelineConfig.newBuilder(this).setBitmapsConfig(Bitmap.Config.RGB_565).build());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onTerminate() {
        super.onTerminate();
        LogUtil.d("onTerminate");
        CarLifeMusicManager.getInstance().release();
        CarPlayMusicManager.getInstance(this).release();
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        EventBus.getDefault().post(configuration);
    }
}
