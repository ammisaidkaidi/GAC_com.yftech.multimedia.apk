package org.apache.http.conn;

import java.io.InterruptedIOException;

@Deprecated
/* loaded from: /home/user/work/dex/classes4.dex */
public class ConnectTimeoutException extends InterruptedIOException {
    private static final long serialVersionUID = -4816682903149535989L;

    public ConnectTimeoutException() {
    }

    public ConnectTimeoutException(String str) {
        super(str);
    }
}
