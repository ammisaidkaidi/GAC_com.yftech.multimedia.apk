package com.android.internal.os;

import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.os.BatteryStats;
import android.util.SparseArray;
import java.util.List;

/* loaded from: /home/user/work/dex/classes3.dex */
public class SensorPowerCalculator extends PowerCalculator {
    private final double mGpsPower;
    private final List<Sensor> mSensors;

    public SensorPowerCalculator(PowerProfile powerProfile, SensorManager sensorManager, BatteryStats batteryStats, long j, int i) {
        this.mSensors = sensorManager.getSensorList(-1);
        this.mGpsPower = getAverageGpsPower(powerProfile, batteryStats, j, i);
    }

    @Override // com.android.internal.os.PowerCalculator
    public void calculateApp(BatterySipper batterySipper, BatteryStats.Uid uid, long j, long j2, int i) {
        SparseArray sensorStats = uid.getSensorStats();
        int size = sensorStats.size();
        for (int i2 = 0; i2 < size; i2++) {
            BatteryStats.Uid.Sensor sensor = (BatteryStats.Uid.Sensor) sensorStats.valueAt(i2);
            int keyAt = sensorStats.keyAt(i2);
            long totalTimeLocked = sensor.getSensorTime().getTotalTimeLocked(j, i) / 1000;
            if (keyAt == -10000) {
                batterySipper.gpsTimeMs = totalTimeLocked;
                batterySipper.gpsPowerMah = (batterySipper.gpsTimeMs * this.mGpsPower) / 3600000.0d;
            } else {
                int size2 = this.mSensors.size();
                int i3 = 0;
                while (true) {
                    if (i3 < size2) {
                        if (this.mSensors.get(i3).getHandle() == keyAt) {
                            batterySipper.sensorPowerMah += (((float) totalTimeLocked) * r6.getPower()) / 3600000.0f;
                            break;
                        }
                        i3++;
                    }
                }
            }
        }
    }

    private double getAverageGpsPower(PowerProfile powerProfile, BatteryStats batteryStats, long j, int i) {
        double averagePowerOrDefault = powerProfile.getAveragePowerOrDefault(PowerProfile.POWER_GPS_ON, -1.0d);
        if (averagePowerOrDefault != -1.0d) {
            return averagePowerOrDefault;
        }
        long j2 = 0;
        double d = 0.0d;
        for (int i2 = 0; i2 < 2; i2++) {
            long gpsSignalQualityTime = batteryStats.getGpsSignalQualityTime(i2, j, i);
            j2 += gpsSignalQualityTime;
            d += powerProfile.getAveragePower(PowerProfile.POWER_GPS_SIGNAL_QUALITY_BASED, i2) * gpsSignalQualityTime;
        }
        if (j2 != 0) {
            return d / j2;
        }
        return 0.0d;
    }
}
