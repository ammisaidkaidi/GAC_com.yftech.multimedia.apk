package android.graphics.drawable;

/* loaded from: /home/user/work/dex/classes.dex */
public interface Animatable2 extends Animatable {

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class AnimationCallback {
        public void onAnimationEnd(Drawable drawable) {
        }

        public void onAnimationStart(Drawable drawable) {
        }
    }

    void clearAnimationCallbacks();

    void registerAnimationCallback(AnimationCallback animationCallback);

    boolean unregisterAnimationCallback(AnimationCallback animationCallback);
}
