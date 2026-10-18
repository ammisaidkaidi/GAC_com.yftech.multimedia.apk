package com.android.internal.view.menu;

import android.widget.ListView;

/* loaded from: /home/user/work/dex/classes3.dex */
public interface ShowableListMenu {
    void dismiss();

    ListView getListView();

    boolean isShowing();

    void show();
}
