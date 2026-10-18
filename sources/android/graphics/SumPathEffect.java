package android.graphics;

/* loaded from: /home/user/work/dex/classes.dex */
public class SumPathEffect extends PathEffect {
    private static native long nativeCreate(long j, long j2);

    public SumPathEffect(PathEffect pathEffect, PathEffect pathEffect2) {
        this.native_instance = nativeCreate(pathEffect.native_instance, pathEffect2.native_instance);
    }
}
