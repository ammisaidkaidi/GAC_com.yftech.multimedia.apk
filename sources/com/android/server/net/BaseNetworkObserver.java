package com.android.server.net;

import android.net.INetworkManagementEventObserver;
import android.net.LinkAddress;
import android.net.RouteInfo;

/* loaded from: /home/user/work/dex/classes3.dex */
public class BaseNetworkObserver extends INetworkManagementEventObserver.Stub {
    public void addressRemoved(String str, LinkAddress linkAddress) {
    }

    public void addressUpdated(String str, LinkAddress linkAddress) {
    }

    public void interfaceAdded(String str) {
    }

    public void interfaceClassDataActivityChanged(String str, boolean z, long j) {
    }

    public void interfaceDnsServerInfo(String str, long j, String[] strArr) {
    }

    public void interfaceLinkStateChanged(String str, boolean z) {
    }

    public void interfaceRemoved(String str) {
    }

    public void interfaceStatusChanged(String str, boolean z) {
    }

    public void limitReached(String str, String str2) {
    }

    public void routeRemoved(RouteInfo routeInfo) {
    }

    public void routeUpdated(RouteInfo routeInfo) {
    }
}
