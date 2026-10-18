package com.yftech.libmusic.presenter;

import android.app.Activity;
import com.yftech.car.media.data.entity.MediaFile;
import com.yftech.libmusic.bean.MediaFileItem;
import com.yftech.libmusic.model.MusicModel;
import com.yftech.libmusic.model.interfaces.IMusicModel;
import com.yftech.libmusic.presenter.interfaces.IMusicSearchPresenter;
import com.yftech.libmusic.view.IMusicSearchActivityView;
import com.yftech.libmvpmodule.BasePresenter;
import java.util.List;

/* loaded from: /home/user/work/dex/classes4.dex */
public class MusicSearchPresenter extends BasePresenter<IMusicSearchActivityView> implements IMusicSearchPresenter {
    private final MusicModel musicModel;

    public MusicSearchPresenter(Activity activity) {
        super(activity);
        this.musicModel = new MusicModel();
    }

    @Override // com.yftech.libmusic.presenter.interfaces.IMusicSearchPresenter
    public void searchMusic(final String str, int i) {
        this.musicModel.searchMusic(str, i, this, new IMusicModel.OnMusicSearchResultLoadListener() { // from class: com.yftech.libmusic.presenter.MusicSearchPresenter.1
            @Override // com.yftech.libmusic.model.interfaces.IMusicModel.OnMusicSearchResultLoadListener
            public void onComplete(final MediaFile mediaFile, final List<MediaFileItem> list) {
                if (MusicSearchPresenter.this.getActivity() != null) {
                    MusicSearchPresenter.this.getActivity().runOnUiThread(new Runnable() { // from class: com.yftech.libmusic.presenter.MusicSearchPresenter.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (MusicSearchPresenter.this.isViewAttach()) {
                                ((IMusicSearchActivityView) MusicSearchPresenter.this.getView()).displayMusicSearchResult(mediaFile, list, str);
                            }
                        }
                    });
                }
            }
        });
    }

    @Override // com.yftech.libmusic.presenter.interfaces.IMusicSearchPresenter
    public void searchHotMusic(String str) {
        this.musicModel.getHotMusicByKeyword(str, this, new IMusicModel.OnHotMusicLoadListener() { // from class: com.yftech.libmusic.presenter.MusicSearchPresenter.2
            @Override // com.yftech.libmusic.model.interfaces.IMusicModel.OnHotMusicLoadListener
            public void onComplete(final List<String> list) {
                if (MusicSearchPresenter.this.getActivity() != null) {
                    MusicSearchPresenter.this.getActivity().runOnUiThread(new Runnable() { // from class: com.yftech.libmusic.presenter.MusicSearchPresenter.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (MusicSearchPresenter.this.isViewAttach()) {
                                ((IMusicSearchActivityView) MusicSearchPresenter.this.getView()).displayHotMusicSearchResult(list);
                            }
                        }
                    });
                }
            }
        });
    }
}
