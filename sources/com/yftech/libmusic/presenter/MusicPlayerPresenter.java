package com.yftech.libmusic.presenter;

import android.app.Activity;
import com.yftech.car.media.data.entity.MediaFile;
import com.yftech.libmusic.bean.LyricObject;
import com.yftech.libmusic.model.MusicModel;
import com.yftech.libmusic.model.interfaces.IMusicModel;
import com.yftech.libmusic.presenter.interfaces.IMusicPlayerPresenter;
import com.yftech.libmusic.view.IMusicPlayerFragmentView;
import com.yftech.libmvpmodule.BasePresenter;
import java.util.List;

/* loaded from: /home/user/work/dex/classes4.dex */
public class MusicPlayerPresenter extends BasePresenter<IMusicPlayerFragmentView> implements IMusicPlayerPresenter {
    private MusicModel musicModel;

    public MusicPlayerPresenter(Activity activity) {
        super(activity);
        this.musicModel = new MusicModel();
    }

    @Override // com.yftech.libmusic.presenter.interfaces.IMusicPlayerPresenter
    public void getMusicFiles(String str) {
        this.musicModel.getMusicFiles(str, this, new IMusicModel.OnMusicFilesLoadListener() { // from class: com.yftech.libmusic.presenter.MusicPlayerPresenter.1
            @Override // com.yftech.libmusic.model.interfaces.IMusicModel.OnMusicFilesLoadListener
            public void onComplete(final List<MediaFile> list) {
                if (MusicPlayerPresenter.this.getActivity() != null) {
                    MusicPlayerPresenter.this.getActivity().runOnUiThread(new Runnable() { // from class: com.yftech.libmusic.presenter.MusicPlayerPresenter.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (MusicPlayerPresenter.this.isViewAttach()) {
                                ((IMusicPlayerFragmentView) MusicPlayerPresenter.this.getView()).displayMusicFiles(list);
                            }
                        }
                    });
                }
            }
        });
    }

    @Override // com.yftech.libmusic.presenter.interfaces.IMusicPlayerPresenter
    public void getLyricFromFile(String str, MediaFile mediaFile) {
        this.musicModel.getLyricFromFile(mediaFile, this, new IMusicModel.OnMusicLyricLoadListener() { // from class: com.yftech.libmusic.presenter.MusicPlayerPresenter.2
            @Override // com.yftech.libmusic.model.interfaces.IMusicModel.OnMusicLyricLoadListener
            public void onComplete(final List<LyricObject> list) {
                if (MusicPlayerPresenter.this.getActivity() != null) {
                    MusicPlayerPresenter.this.getActivity().runOnUiThread(new Runnable() { // from class: com.yftech.libmusic.presenter.MusicPlayerPresenter.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (MusicPlayerPresenter.this.isViewAttach()) {
                                ((IMusicPlayerFragmentView) MusicPlayerPresenter.this.getView()).displayMusicLyricPath(list);
                            }
                        }
                    });
                }
            }
        });
    }

    @Override // com.yftech.libmusic.presenter.interfaces.IMusicPlayerPresenter
    public void getThumbDataByPath(final String str) {
        this.musicModel.getThumbDataByPath(str, this, new IMusicModel.OnThumbDataLoadListener() { // from class: com.yftech.libmusic.presenter.MusicPlayerPresenter.3
            @Override // com.yftech.libmusic.model.interfaces.IMusicModel.OnThumbDataLoadListener
            public void onComplete(final byte[] bArr) {
                if (MusicPlayerPresenter.this.getActivity() != null) {
                    MusicPlayerPresenter.this.getActivity().runOnUiThread(new Runnable() { // from class: com.yftech.libmusic.presenter.MusicPlayerPresenter.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (MusicPlayerPresenter.this.isViewAttach()) {
                                ((IMusicPlayerFragmentView) MusicPlayerPresenter.this.getView()).displayThumbDataByPath(str, bArr);
                            }
                        }
                    });
                }
            }
        });
    }
}
