package com.yftech.libmedia.player.presenter;

import android.app.Activity;
import com.yftech.car.media.data.entity.MediaFile;
import com.yftech.libmedia.player.model.VideoModel;
import com.yftech.libmedia.player.model.interfaces.IVideoModel;
import com.yftech.libmedia.player.presenter.interfaces.IPlayPresenter;
import com.yftech.libmedia.player.view.IPlayActivityView;
import com.yftech.libmvpmodule.BasePresenter;
import java.util.List;

/* loaded from: /home/user/work/dex/classes4.dex */
public class PlayPresenter extends BasePresenter<IPlayActivityView> implements IPlayPresenter {
    private final VideoModel videoModel;

    public PlayPresenter(Activity activity) {
        super(activity);
        this.videoModel = new VideoModel();
    }

    @Override // com.yftech.libmedia.player.presenter.interfaces.IPlayPresenter
    public void getVideoPlayList(int i, String str) {
        this.videoModel.getVideoPlayList(i, str, this, new IVideoModel.OnVideoPlayListLoadListener() { // from class: com.yftech.libmedia.player.presenter.PlayPresenter.1
            @Override // com.yftech.libmedia.player.model.interfaces.IVideoModel.OnVideoPlayListLoadListener
            public void onComplete(final int i2, final List<MediaFile> list) {
                if (PlayPresenter.this.getActivity() != null) {
                    PlayPresenter.this.getActivity().runOnUiThread(new Runnable() { // from class: com.yftech.libmedia.player.presenter.PlayPresenter.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (PlayPresenter.this.isViewAttach()) {
                                ((IPlayActivityView) PlayPresenter.this.getView()).displayVideoPlayList(i2, list);
                            }
                        }
                    });
                }
            }
        });
    }
}
