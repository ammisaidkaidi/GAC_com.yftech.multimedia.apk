package com.android.internal.util;

import android.os.Message;

/* loaded from: /home/user/work/dex/classes3.dex */
public class State implements IState {
    @Override // com.android.internal.util.IState
    public void enter() {
    }

    @Override // com.android.internal.util.IState
    public void exit() {
    }

    @Override // com.android.internal.util.IState
    public boolean processMessage(Message message) {
        return false;
    }

    @Override // com.android.internal.util.IState
    public String getName() {
        String name = getClass().getName();
        return name.substring(name.lastIndexOf(36) + 1);
    }
}
