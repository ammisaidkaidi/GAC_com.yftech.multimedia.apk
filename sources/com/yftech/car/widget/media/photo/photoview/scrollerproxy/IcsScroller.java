package com.yftech.car.widget.media.photo.photoview.scrollerproxy;

import android.annotation.TargetApi;
import android.content.Context;

@TargetApi(14)
/* loaded from: /home/user/work/dex/classes3.dex */
public class IcsScroller extends GingerScroller {
    public IcsScroller(Context context) {
        super(context);
    }

    @Override // com.yftech.car.widget.media.photo.photoview.scrollerproxy.GingerScroller, com.yftech.car.widget.media.photo.photoview.scrollerproxy.ScrollerProxy
    public boolean computeScrollOffset() {
        return this.mScroller.computeScrollOffset();
    }
}
