package com.android.internal.telephony;

/* loaded from: /home/user/work/dex/classes3.dex */
public class EncodeException extends Exception {
    public EncodeException() {
    }

    public EncodeException(String str) {
        super(str);
    }

    public EncodeException(char c) {
        super("Unencodable char: '" + c + "'");
    }
}
