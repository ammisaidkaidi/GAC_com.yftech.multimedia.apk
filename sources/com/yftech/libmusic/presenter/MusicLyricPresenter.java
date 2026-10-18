package com.yftech.libmusic.presenter;

import android.app.Activity;
import com.yftech.car.media.data.entity.MediaFile;
import com.yftech.libmusic.bean.LyricObject;
import com.yftech.libmusic.model.MusicModel;
import com.yftech.libmusic.model.interfaces.IMusicModel;
import com.yftech.libmusic.presenter.interfaces.IMusicLyricPresenter;
import com.yftech.libmusic.view.IMusicLyricFragmentView;
import com.yftech.libmvpmodule.BasePresenter;
import java.util.List;

/* loaded from: /home/user/work/dex/classes4.dex */
public class MusicLyricPresenter extends BasePresenter<IMusicLyricFragmentView> implements IMusicLyricPresenter {
    private MusicModel musicModel;

    public MusicLyricPresenter(Activity activity) {
        super(activity);
        this.musicModel = new MusicModel();
    }

    @Override // com.yftech.libmusic.presenter.interfaces.IMusicLyricPresenter
    public void getLyricFromFile(MediaFile mediaFile) {
        this.musicModel.getLyricFromFile(mediaFile, this, new IMusicModel.OnMusicLyricLoadListener() { // from class: com.yftech.libmusic.presenter.MusicLyricPresenter.1
            @Override // com.yftech.libmusic.model.interfaces.IMusicModel.OnMusicLyricLoadListener
            public void onComplete(final List<LyricObject> list) {
                if (MusicLyricPresenter.this.getActivity() != null) {
                    MusicLyricPresenter.this.getActivity().runOnUiThread(new Runnable() { // from class: com.yftech.libmusic.presenter.MusicLyricPresenter.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (MusicLyricPresenter.this.isViewAttach()) {
                                ((IMusicLyricFragmentView) MusicLyricPresenter.this.getView()).displayMusicLyricPath(list);
                            }
                        }
                    });
                }
            }
        });
    }
}
