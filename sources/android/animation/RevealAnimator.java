package android.animation;

import android.view.RenderNodeAnimator;
import android.view.View;

/* loaded from: /home/user/work/dex/classes.dex */
public class RevealAnimator extends RenderNodeAnimator {
    private View mClipView;

    public RevealAnimator(View view, int i, int i2, float f, float f2) {
        super(i, i2, f, f2);
        this.mClipView = view;
        setTarget(this.mClipView);
    }

    protected void onFinished() {
        this.mClipView.setRevealClip(false, 0.0f, 0.0f, 0.0f);
        super.onFinished();
    }
}
