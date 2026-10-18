package com.yftech.libmusic.view;

import com.yftech.car.media.data.entity.MediaFile;
import com.yftech.libmusic.bean.MediaFileItem;
import com.yftech.libmvpmodule.mvp.IMvpView;
import java.util.List;

/* loaded from: /home/user/work/dex/classes4.dex */
public interface IMusicSearchActivityView extends IMvpView {
    void displayHotMusicSearchResult(List<String> list);

    void displayMusicSearchResult(MediaFile mediaFile, List<MediaFileItem> list, String str);
}
