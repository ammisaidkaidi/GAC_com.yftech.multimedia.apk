package android.graphics;

/* loaded from: /home/user/work/dex/classes.dex */
public class CornerPathEffect extends PathEffect {
    private static native long nativeCreate(float f);

    public CornerPathEffect(float f) {
        this.native_instance = nativeCreate(f);
    }
}
