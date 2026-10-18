package com.android.internal.widget;

/* loaded from: /home/user/work/dex/classes3.dex */
public abstract class LockSettingsInternal {
    public abstract long addEscrowToken(byte[] bArr, int i);

    public abstract boolean isEscrowTokenActive(long j, int i);

    public abstract boolean removeEscrowToken(long j, int i);

    public abstract boolean setLockCredentialWithToken(String str, int i, long j, byte[] bArr, int i2, int i3);

    public abstract boolean unlockUserWithToken(long j, byte[] bArr, int i);
}
