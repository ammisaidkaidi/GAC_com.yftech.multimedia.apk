package android.view.animation;

import android.content.Context;
import android.util.AttributeSet;
import com.android.internal.view.animation.HasNativeInterpolator;
import com.android.internal.view.animation.NativeInterpolatorFactory;
import com.android.internal.view.animation.NativeInterpolatorFactoryHelper;

@HasNativeInterpolator
/* loaded from: /home/user/work/dex/classes2.dex */
public class BounceInterpolator extends BaseInterpolator implements NativeInterpolatorFactory {
    private static float bounce(float f) {
        return f * f * 8.0f;
    }

    public BounceInterpolator() {
    }

    public BounceInterpolator(Context context, AttributeSet attributeSet) {
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        float f2 = f * 1.1226f;
        if (f2 < 0.3535f) {
            return bounce(f2);
        }
        if (f2 < 0.7408f) {
            return bounce(f2 - 0.54719f) + 0.7f;
        }
        if (f2 < 0.9644f) {
            return bounce(f2 - 0.8526f) + 0.9f;
        }
        return bounce(f2 - 1.0435f) + 0.95f;
    }

    public long createNativeInterpolator() {
        return NativeInterpolatorFactoryHelper.createBounceInterpolator();
    }
}
