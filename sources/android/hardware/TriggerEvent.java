package android.hardware;

/* loaded from: /home/user/work/dex/classes.dex */
public final class TriggerEvent {
    public Sensor sensor;
    public long timestamp;
    public final float[] values;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TriggerEvent(int i) {
        this.values = new float[i];
    }
}
