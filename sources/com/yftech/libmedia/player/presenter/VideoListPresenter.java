package com.yftech.libmedia.player.presenter;

import android.app.Activity;
import com.media.common.entity.QuickMultipleEntity;
import com.yftech.libmedia.player.model.VideoModel;
import com.yftech.libmedia.player.model.interfaces.IVideoModel;
import com.yftech.libmedia.player.presenter.interfaces.IVideoListPresenter;
import com.yftech.libmedia.player.view.IVideoListActivityView;
import com.yftech.libmvpmodule.BasePresenter;
import java.util.List;

/* loaded from: /home/user/work/dex/classes4.dex */
public class VideoListPresenter extends BasePresenter<IVideoListActivityView> implements IVideoListPresenter {
    private final VideoModel videoModel;

    public VideoListPresenter(Activity activity) {
        super(activity);
        this.videoModel = new VideoModel();
    }

    @Override // com.yftech.libmedia.player.presenter.interfaces.IVideoListPresenter
    public void getVideoListData(int i) {
        this.videoModel.getVideo(i, this, new IVideoModel.OnVideoLoadListener() { // from class: com.yftech.libmedia.player.presenter.VideoListPresenter.1
            @Override // com.yftech.libmedia.player.model.interfaces.IVideoModel.OnVideoLoadListener
            public void onComplete(final List<QuickMultipleEntity> list) {
                if (VideoListPresenter.this.getActivity() != null) {
                    VideoListPresenter.this.getActivity().runOnUiThread(new Runnable() { // from class: com.yftech.libmedia.player.presenter.VideoListPresenter.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (VideoListPresenter.this.isViewAttach()) {
                                ((IVideoListActivityView) VideoListPresenter.this.getView()).displayVideoList(list);
                            }
                        }
                    });
                }
            }
        });
    }
}
