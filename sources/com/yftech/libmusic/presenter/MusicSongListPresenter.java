package com.yftech.libmusic.presenter;

import android.app.Activity;
import com.yftech.libmusic.model.MusicModel;
import com.yftech.libmusic.model.interfaces.IMusicModel;
import com.yftech.libmusic.presenter.interfaces.IMusicSongListPresenter;
import com.yftech.libmusic.view.IMusicSongListDialogView;
import com.yftech.libmvpmodule.BasePresenter;
import java.util.List;

/* loaded from: /home/user/work/dex/classes4.dex */
public class MusicSongListPresenter extends BasePresenter<IMusicSongListDialogView> implements IMusicSongListPresenter {
    private MusicModel musicModel;

    public MusicSongListPresenter(Activity activity) {
        super(activity);
        this.musicModel = new MusicModel();
    }

    @Override // com.yftech.libmusic.presenter.interfaces.IMusicSongListPresenter
    public void getPlayListSize() {
        this.musicModel.getPlayListSize(this, new IMusicModel.OnPlayListSizeLoadListener() { // from class: com.yftech.libmusic.presenter.-$$Lambda$MusicSongListPresenter$Nd2vsdudnRcwcKMbBaKWxGASeuo
            @Override // com.yftech.libmusic.model.interfaces.IMusicModel.OnPlayListSizeLoadListener
            public final void onComplete(int i) {
                MusicSongListPresenter.lambda$getPlayListSize$1(MusicSongListPresenter.this, i);
            }
        });
    }

    public static /* synthetic */ void lambda$getPlayListSize$1(final MusicSongListPresenter musicSongListPresenter, final int i) {
        if (musicSongListPresenter.getActivity() != null) {
            musicSongListPresenter.getActivity().runOnUiThread(new Runnable() { // from class: com.yftech.libmusic.presenter.-$$Lambda$MusicSongListPresenter$QKSMEqQ1FUT-KpL0o5XeDi7VPs4
                @Override // java.lang.Runnable
                public final void run() {
                    MusicSongListPresenter.lambda$null$0(MusicSongListPresenter.this, i);
                }
            });
        }
    }

    public static /* synthetic */ void lambda$null$0(MusicSongListPresenter musicSongListPresenter, int i) {
        if (musicSongListPresenter.isViewAttach()) {
            ((IMusicSongListDialogView) musicSongListPresenter.getView()).displayPlayListSize(i);
        }
    }

    @Override // com.yftech.libmusic.presenter.interfaces.IMusicSongListPresenter
    public void getCurrentPlayList() {
        this.musicModel.getCurrentPlayList(this, new IMusicModel.OnMusicSongListLoadListener() { // from class: com.yftech.libmusic.presenter.-$$Lambda$MusicSongListPresenter$QN9J9ibzUIHMNCsAl5bjrrMs7ZE
            @Override // com.yftech.libmusic.model.interfaces.IMusicModel.OnMusicSongListLoadListener
            public final void onComplete(int i, List list) {
                MusicSongListPresenter.lambda$getCurrentPlayList$3(MusicSongListPresenter.this, i, list);
            }
        });
    }

    public static /* synthetic */ void lambda$getCurrentPlayList$3(final MusicSongListPresenter musicSongListPresenter, final int i, final List list) {
        if (musicSongListPresenter.getActivity() != null) {
            musicSongListPresenter.getActivity().runOnUiThread(new Runnable() { // from class: com.yftech.libmusic.presenter.-$$Lambda$MusicSongListPresenter$Q-cyI5gUs8e1I3ihvOQ7FvOlUuI
                @Override // java.lang.Runnable
                public final void run() {
                    MusicSongListPresenter.lambda$null$2(MusicSongListPresenter.this, i, list);
                }
            });
        }
    }

    public static /* synthetic */ void lambda$null$2(MusicSongListPresenter musicSongListPresenter, int i, List list) {
        if (musicSongListPresenter.isViewAttach()) {
            ((IMusicSongListDialogView) musicSongListPresenter.getView()).displayCurrentPlayList(i, list);
        }
    }

    @Override // com.yftech.libmusic.presenter.interfaces.IMusicSongListPresenter
    public void getPlayPosition() {
        this.musicModel.getPlayPosition(this, new IMusicModel.OnMusicPlayPositionLoadListener() { // from class: com.yftech.libmusic.presenter.-$$Lambda$MusicSongListPresenter$vo7HqAGJKkTeRsVw8w7QDcQFe70
            @Override // com.yftech.libmusic.model.interfaces.IMusicModel.OnMusicPlayPositionLoadListener
            public final void onComplete(int i) {
                MusicSongListPresenter.lambda$getPlayPosition$5(MusicSongListPresenter.this, i);
            }
        });
    }

    public static /* synthetic */ void lambda$getPlayPosition$5(final MusicSongListPresenter musicSongListPresenter, final int i) {
        if (musicSongListPresenter.getActivity() != null) {
            musicSongListPresenter.getActivity().runOnUiThread(new Runnable() { // from class: com.yftech.libmusic.presenter.-$$Lambda$MusicSongListPresenter$IRodwhLkwxrDCfrwAii1Ejz-mok
                @Override // java.lang.Runnable
                public final void run() {
                    MusicSongListPresenter.lambda$null$4(MusicSongListPresenter.this, i);
                }
            });
        }
    }

    public static /* synthetic */ void lambda$null$4(MusicSongListPresenter musicSongListPresenter, int i) {
        if (musicSongListPresenter.isViewAttach()) {
            ((IMusicSongListDialogView) musicSongListPresenter.getView()).displayMusicPlayPosition(i);
        }
    }
}
