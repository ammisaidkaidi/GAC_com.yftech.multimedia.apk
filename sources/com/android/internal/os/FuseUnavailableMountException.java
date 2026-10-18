package com.android.internal.os;

/* loaded from: /home/user/work/dex/classes3.dex */
public class FuseUnavailableMountException extends Exception {
    public FuseUnavailableMountException(int i) {
        super("AppFuse mount point " + i + " is unavailable");
    }
}
