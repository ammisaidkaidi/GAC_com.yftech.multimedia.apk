package android.hardware;

import android.content.Context;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.view.IRotationWatcher;
import android.view.IWindowManager;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: /home/user/work/dex/classes.dex */
final class LegacySensorManager {
    private static boolean sInitialized;
    private static int sRotation;
    private static IWindowManager sWindowManager;
    private final HashMap<SensorListener, LegacyListener> mLegacyListenersMap = new HashMap<>();
    private final SensorManager mSensorManager;

    public LegacySensorManager(SensorManager sensorManager) {
        this.mSensorManager = sensorManager;
        synchronized (SensorManager.class) {
            if (!sInitialized) {
                sWindowManager = IWindowManager.Stub.asInterface(ServiceManager.getService(Context.WINDOW_SERVICE));
                if (sWindowManager != null) {
                    try {
                        sRotation = sWindowManager.watchRotation(new IRotationWatcher.Stub() { // from class: android.hardware.LegacySensorManager.1
                            public void onRotationChanged(int i) {
                                LegacySensorManager.onRotationChanged(i);
                            }
                        }, 0);
                    } catch (RemoteException unused) {
                    }
                }
            }
        }
    }

    public int getSensors() {
        Iterator<Sensor> it = this.mSensorManager.getFullSensorList().iterator();
        int i = 0;
        while (it.hasNext()) {
            switch (it.next().getType()) {
                case 1:
                    i |= 2;
                    break;
                case 2:
                    i |= 8;
                    break;
                case 3:
                    i |= 129;
                    break;
            }
        }
        return i;
    }

    public boolean registerListener(SensorListener sensorListener, int i, int i2) {
        if (sensorListener == null) {
            return false;
        }
        return registerLegacyListener(4, 7, sensorListener, i, i2) || (registerLegacyListener(1, 3, sensorListener, i, i2) || (registerLegacyListener(128, 3, sensorListener, i, i2) || (registerLegacyListener(8, 2, sensorListener, i, i2) || (registerLegacyListener(2, 1, sensorListener, i, i2)))));
    }

    private boolean registerLegacyListener(int i, int i2, SensorListener sensorListener, int i3, int i4) {
        Sensor defaultSensor;
        boolean registerListener;
        if ((i3 & i) == 0 || (defaultSensor = this.mSensorManager.getDefaultSensor(i2)) == null) {
            return false;
        }
        synchronized (this.mLegacyListenersMap) {
            LegacyListener legacyListener = this.mLegacyListenersMap.get(sensorListener);
            if (legacyListener == null) {
                legacyListener = new LegacyListener(sensorListener);
                this.mLegacyListenersMap.put(sensorListener, legacyListener);
            }
            registerListener = legacyListener.registerSensor(i) ? this.mSensorManager.registerListener(legacyListener, defaultSensor, i4) : true;
        }
        return registerListener;
    }

    public void unregisterListener(SensorListener sensorListener, int i) {
        if (sensorListener == null) {
            return;
        }
        unregisterLegacyListener(2, 1, sensorListener, i);
        unregisterLegacyListener(8, 2, sensorListener, i);
        unregisterLegacyListener(128, 3, sensorListener, i);
        unregisterLegacyListener(1, 3, sensorListener, i);
        unregisterLegacyListener(4, 7, sensorListener, i);
    }

    private void unregisterLegacyListener(int i, int i2, SensorListener sensorListener, int i3) {
        Sensor defaultSensor;
        if ((i3 & i) == 0 || (defaultSensor = this.mSensorManager.getDefaultSensor(i2)) == null) {
            return;
        }
        synchronized (this.mLegacyListenersMap) {
            LegacyListener legacyListener = this.mLegacyListenersMap.get(sensorListener);
            if (legacyListener != null && legacyListener.unregisterSensor(i)) {
                this.mSensorManager.unregisterListener(legacyListener, defaultSensor);
                if (!legacyListener.hasSensors()) {
                    this.mLegacyListenersMap.remove(sensorListener);
                }
            }
        }
    }

    static void onRotationChanged(int i) {
        synchronized (SensorManager.class) {
            sRotation = i;
        }
    }

    static int getRotation() {
        int i;
        synchronized (SensorManager.class) {
            i = sRotation;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class LegacyListener implements SensorEventListener {
        private SensorListener mTarget;
        private float[] mValues = new float[6];
        private final LmsFilter mYawfilter = new LmsFilter();
        private int mSensors = 0;

        private static int getLegacySensorType(int i) {
            if (i == 7) {
                return 4;
            }
            switch (i) {
                case 1:
                    return 2;
                case 2:
                    return 8;
                case 3:
                    return 128;
                default:
                    return 0;
            }
        }

        private static boolean hasOrientationSensor(int i) {
            return (i & 129) != 0;
        }

        LegacyListener(SensorListener sensorListener) {
            this.mTarget = sensorListener;
        }

        boolean registerSensor(int i) {
            if ((this.mSensors & i) != 0) {
                return false;
            }
            boolean hasOrientationSensor = hasOrientationSensor(this.mSensors);
            this.mSensors |= i;
            return (hasOrientationSensor && hasOrientationSensor(i)) ? false : true;
        }

        boolean unregisterSensor(int i) {
            if ((this.mSensors & i) == 0) {
                return false;
            }
            this.mSensors &= ~i;
            return (hasOrientationSensor(i) && hasOrientationSensor(this.mSensors)) ? false : true;
        }

        boolean hasSensors() {
            return this.mSensors != 0;
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i) {
            try {
                this.mTarget.onAccuracyChanged(getLegacySensorType(sensor.getType()), i);
            } catch (AbstractMethodError unused) {
            }
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            float[] fArr = this.mValues;
            fArr[0] = sensorEvent.values[0];
            fArr[1] = sensorEvent.values[1];
            fArr[2] = sensorEvent.values[2];
            int type = sensorEvent.sensor.getType();
            int legacySensorType = getLegacySensorType(type);
            mapSensorDataToWindow(legacySensorType, fArr, LegacySensorManager.getRotation());
            if (type == 3) {
                if ((this.mSensors & 128) != 0) {
                    this.mTarget.onSensorChanged(128, fArr);
                }
                if ((this.mSensors & 1) != 0) {
                    fArr[0] = this.mYawfilter.filter(sensorEvent.timestamp, fArr[0]);
                    this.mTarget.onSensorChanged(1, fArr);
                    return;
                }
                return;
            }
            this.mTarget.onSensorChanged(legacySensorType, fArr);
        }

        private void mapSensorDataToWindow(int i, float[] fArr, int i2) {
            float f = fArr[0];
            float f2 = fArr[1];
            float f3 = fArr[2];
            if (i != 8) {
                if (i != 128) {
                    switch (i) {
                        case 2:
                            f = -f;
                            f2 = -f2;
                            f3 = -f3;
                            break;
                    }
                }
                f3 = -f3;
            } else {
                f = -f;
                f2 = -f2;
            }
            fArr[0] = f;
            fArr[1] = f2;
            fArr[2] = f3;
            fArr[3] = f;
            fArr[4] = f2;
            fArr[5] = f3;
            if ((i2 & 1) != 0) {
                if (i != 8) {
                    if (i != 128) {
                        switch (i) {
                        }
                    }
                    fArr[0] = f + (f < 270.0f ? 90 : -270);
                    fArr[1] = f3;
                    fArr[2] = f2;
                }
                fArr[0] = -f2;
                fArr[1] = f;
                fArr[2] = f3;
            }
            if ((i2 & 2) != 0) {
                float f4 = fArr[0];
                float f5 = fArr[1];
                float f6 = fArr[2];
                if (i != 8) {
                    if (i != 128) {
                        switch (i) {
                            case 1:
                                break;
                            case 2:
                                break;
                            default:
                                return;
                        }
                    }
                    fArr[0] = f4 >= 180.0f ? f4 - 180.0f : f4 + 180.0f;
                    fArr[1] = -f5;
                    fArr[2] = -f6;
                    return;
                }
                fArr[0] = -f4;
                fArr[1] = -f5;
                fArr[2] = f6;
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static final class LmsFilter {
        private static final int COUNT = 12;
        private static final float PREDICTION_RATIO = 0.33333334f;
        private static final float PREDICTION_TIME = 0.08f;
        private static final int SENSORS_RATE_MS = 20;
        private float[] mV = new float[24];
        private long[] mT = new long[24];
        private int mIndex = 12;

        public float filter(long j, float f) {
            float f2 = this.mV[this.mIndex];
            float f3 = f - f2 > 180.0f ? f - 360.0f : f2 - f > 180.0f ? f + 360.0f : f;
            this.mIndex++;
            if (this.mIndex >= 24) {
                this.mIndex = 12;
            }
            this.mV[this.mIndex] = f3;
            this.mT[this.mIndex] = j;
            this.mV[this.mIndex - 12] = f3;
            this.mT[this.mIndex - 12] = j;
            int i = 0;
            float f4 = 0.0f;
            float f5 = 0.0f;
            float f6 = 0.0f;
            float f7 = 0.0f;
            float f8 = 0.0f;
            while (i < 11) {
                int i2 = (this.mIndex - 1) - i;
                float f9 = this.mV[i2];
                int i3 = i2 + 1;
                float f10 = ((float) (((this.mT[i2] / 2) + (this.mT[i3] / 2)) - j)) * 1.0E-9f;
                float f11 = f6;
                float f12 = ((float) (this.mT[i2] - this.mT[i3])) * 1.0E-9f;
                float f13 = f12 * f12;
                f4 += f9 * f13;
                float f14 = f10 * f13;
                f5 += f10 * f14;
                f7 += f9 * f14;
                f8 += f13;
                i++;
                f6 = f11 + f14;
            }
            float f15 = f6;
            float f16 = ((f4 * f5) + (f15 * f7)) / ((f5 * f8) + (f15 * f15));
            float f17 = (f16 + ((((f8 * f16) - f4) / f15) * PREDICTION_TIME)) * 0.0027777778f;
            if ((f17 >= 0.0f ? f17 : -f17) >= 0.5f) {
                f17 = (f17 - ((float) Math.ceil(0.5f + f17))) + 1.0f;
            }
            if (f17 < 0.0f) {
                f17 += 1.0f;
            }
            return f17 * 360.0f;
        }
    }
}
