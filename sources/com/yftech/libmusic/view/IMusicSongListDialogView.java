package com.yftech.libmusic.view;

import com.yftech.libmusic.bean.MediaFileItem;
import com.yftech.libmvpmodule.mvp.IMvpView;
import java.util.List;

/* loaded from: /home/user/work/dex/classes4.dex */
public interface IMusicSongListDialogView extends IMvpView {
    void displayCurrentPlayList(int i, List<MediaFileItem> list);

    void displayMusicPlayPosition(int i);

    void displayPlayListSize(int i);
}
