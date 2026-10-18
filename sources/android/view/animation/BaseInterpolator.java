package android.view.animation;

/* loaded from: /home/user/work/dex/classes2.dex */
public abstract class BaseInterpolator implements Interpolator {
    private int mChangingConfiguration;

    public int getChangingConfiguration() {
        return this.mChangingConfiguration;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setChangingConfiguration(int i) {
        this.mChangingConfiguration = i;
    }
}
