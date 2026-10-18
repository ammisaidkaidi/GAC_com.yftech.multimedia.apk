package android.hardware;

/* loaded from: /home/user/work/dex/classes.dex */
public class SensorEvent {
    public int accuracy;
    public Sensor sensor;
    public long timestamp;
    public final float[] values;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SensorEvent(int i) {
        this.values = new float[i];
    }
}
