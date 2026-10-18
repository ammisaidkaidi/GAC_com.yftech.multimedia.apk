package android.hardware;

/* loaded from: /home/user/work/dex/classes.dex */
public interface SensorEventListener {
    void onAccuracyChanged(Sensor sensor, int i);

    void onSensorChanged(SensorEvent sensorEvent);
}
