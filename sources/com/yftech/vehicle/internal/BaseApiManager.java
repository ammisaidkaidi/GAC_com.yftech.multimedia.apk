package com.yftech.vehicle.internal;

/* loaded from: /home/user/work/dex/classes4.dex */
public abstract class BaseApiManager {
    public synchronized Number getSignalValue(int i) {
        return CarManager.get().getSignalValue(i);
    }

    public synchronized Number[] getSignalsValue(int[] iArr) {
        return CarManager.get().getSignalsValue(iArr);
    }

    public synchronized byte[] getSignalDataValue(int i) {
        return CarManager.get().getSignalDataValue(i);
    }

    public synchronized boolean setSignalValue(int i, byte b) {
        return CarManager.get().setSignalValue(i, b);
    }

    public synchronized boolean setSignalValue(int i, short s) {
        return CarManager.get().setSignalValue(i, s);
    }

    public synchronized boolean setSignalValue(int i, int i2) {
        return CarManager.get().setSignalValue(i, i2);
    }

    public synchronized boolean setSignalValue(int i, long j) {
        return CarManager.get().setSignalValue(i, j);
    }

    public synchronized boolean setSignalValue(int i, float f) {
        return CarManager.get().setSignalValue(i, f);
    }

    public synchronized boolean setSignalValue(int i, double d) {
        return CarManager.get().setSignalValue(i, d);
    }

    public synchronized boolean setSignalValue(int i, boolean z) {
        return CarManager.get().setSignalValue(i, z);
    }

    public synchronized boolean setSignalValue(int i, byte[] bArr) {
        return CarManager.get().setSignalValue(i, bArr);
    }

    public synchronized void registerReceiver(Object obj) {
        CarManager.get().registerReceiver(obj);
    }

    public synchronized void unregisterReceiver(Object obj) {
        CarManager.get().unregisterReceiver(obj);
    }
}
