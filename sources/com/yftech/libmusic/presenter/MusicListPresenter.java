package com.yftech.libmusic.presenter;

import android.app.Activity;
import com.yftech.car.media.data.entity.MediaFile;
import com.yftech.libmusic.bean.MusicListItem;
import com.yftech.libmusic.model.MusicModel;
import com.yftech.libmusic.model.interfaces.IMusicModel;
import com.yftech.libmusic.presenter.interfaces.IMusicListPresenter;
import com.yftech.libmusic.view.IMusicListActivityView;
import com.yftech.libmvpmodule.BasePresenter;
import java.util.List;

/* loaded from: /home/user/work/dex/classes4.dex */
public class MusicListPresenter extends BasePresenter<IMusicListActivityView> implements IMusicListPresenter {
    private final MusicModel videoModel;

    public MusicListPresenter(Activity activity) {
        super(activity);
        this.videoModel = new MusicModel();
    }

    @Override // com.yftech.libmusic.presenter.interfaces.IMusicListPresenter
    public void getMusicListData(int i) {
        this.videoModel.getMusic(i, this, new IMusicModel.OnMusicLoadListener() { // from class: com.yftech.libmusic.presenter.MusicListPresenter.1
            @Override // com.yftech.libmusic.model.interfaces.IMusicModel.OnMusicLoadListener
            public void onComplete(final MediaFile mediaFile, final List<MusicListItem> list) {
                if (MusicListPresenter.this.getActivity() != null) {
                    MusicListPresenter.this.getActivity().runOnUiThread(new Runnable() { // from class: com.yftech.libmusic.presenter.MusicListPresenter.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (MusicListPresenter.this.isViewAttach()) {
                                ((IMusicListActivityView) MusicListPresenter.this.getView()).displayMusicList(mediaFile, list);
                            }
                        }
                    });
                }
            }
        });
    }
}
