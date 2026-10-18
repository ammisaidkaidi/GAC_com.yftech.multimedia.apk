package com.yftech.car.widget.media.video;

import android.media.MediaMetadata;
import android.media.session.MediaSession;
import android.media.session.PlaybackState;
import android.os.Bundle;
import android.os.ResultReceiver;
import com.yftech.car.media.data.entity.MediaFile;
import com.yftech.car.utils.Loger;

/* loaded from: /home/user/work/dex/classes3.dex */
public class MediaSessionManager extends MediaSession.Callback {
    public static final String METADATA_KEY_FOLDER = "android.media.metadata.FOLDER";
    private static final String TAG = "MediaSessionManager";
    private MediaSession mMediaSession;
    private final PlaybackState.Builder mPlaybackStateBuilder = new PlaybackState.Builder();
    private final BaseVideo mVideoPlayer;

    public MediaSessionManager(BaseVideo baseVideo) {
        this.mVideoPlayer = baseVideo;
        this.mPlaybackStateBuilder.setActions(1846L);
    }

    public void setActive(boolean z) {
        Loger.d(TAG, "setActive: isPlay==" + z);
        if (z) {
            if (this.mMediaSession == null) {
                this.mMediaSession = new MediaSession(this.mVideoPlayer.getContext(), VideoPlayer.TAG);
            }
            this.mMediaSession.setCallback(this, this.mVideoPlayer.getHandler());
            if (!this.mMediaSession.isActive()) {
                this.mMediaSession.setActive(true);
            }
            this.mMediaSession.setFlags(3);
            this.mMediaSession.setPlaybackState(this.mPlaybackStateBuilder.setState(0, 0L, 1.0f).build());
            return;
        }
        if (this.mMediaSession != null) {
            this.mMediaSession.setActive(false);
            this.mMediaSession.setCallback(null);
            this.mMediaSession.release();
            this.mMediaSession = null;
        }
    }

    @Override // android.media.session.MediaSession.Callback
    public void onPlayFromSearch(String str, Bundle bundle) {
        Loger.d(TAG, "onPlayFromSearch: query==" + str);
    }

    @Override // android.media.session.MediaSession.Callback
    public void onPrepareFromSearch(String str, Bundle bundle) {
        Loger.d(TAG, "onPrepareFromSearch: query==" + str);
    }

    @Override // android.media.session.MediaSession.Callback
    public void onCustomAction(String str, Bundle bundle) {
        Loger.d(TAG, "onCustomAction: action==" + str);
    }

    @Override // android.media.session.MediaSession.Callback
    public void onCommand(String str, Bundle bundle, ResultReceiver resultReceiver) {
        Loger.d(TAG, "onCommand: command==" + str);
    }

    @Override // android.media.session.MediaSession.Callback
    public void onPlay() {
        Loger.d(TAG, "onPlay: ");
        this.mVideoPlayer.setPlayState(1);
    }

    @Override // android.media.session.MediaSession.Callback
    public void onPause() {
        Loger.d(TAG, "onPause: ");
        this.mVideoPlayer.setPlayState(2);
    }

    @Override // android.media.session.MediaSession.Callback
    public void onStop() {
        Loger.d(TAG, "onStop: ");
        this.mVideoPlayer.setPlayState(2);
    }

    @Override // android.media.session.MediaSession.Callback
    public void onSkipToNext() {
        Loger.d(TAG, "onSkipToNext: ");
        this.mVideoPlayer.setPlayState(4);
    }

    @Override // android.media.session.MediaSession.Callback
    public void onSkipToPrevious() {
        Loger.d(TAG, "onSkipToPrevious: ");
        this.mVideoPlayer.setPlayState(5);
    }

    @Override // android.media.session.MediaSession.Callback
    public void onSeekTo(long j) {
        Loger.d(TAG, "onSeekTo: pos==" + j);
        this.mVideoPlayer.setPlayProgress((int) j);
    }

    @Override // android.media.session.MediaSession.Callback
    public void onRewind() {
        Loger.d(TAG, "onRewind: ");
    }

    @Override // android.media.session.MediaSession.Callback
    public void onFastForward() {
        Loger.d(TAG, "onFastForward: ");
    }

    public void setPlaybackStateCompat(int i, int i2, float f) {
        if (this.mMediaSession != null) {
            this.mMediaSession.setPlaybackState(this.mPlaybackStateBuilder.setState(i, i2, f).build());
        }
    }

    public void updatePlay(MediaFile mediaFile) {
        if (mediaFile == null) {
            Loger.e(TAG, "updatePlay: mediaFile is null");
            return;
        }
        Loger.i(TAG, "getMetadata: current play item=" + mediaFile);
        if (this.mMediaSession != null) {
            long duration = mediaFile.getDuration();
            long id = mediaFile.getId();
            this.mMediaSession.setMetadata(new MediaMetadata.Builder().putLong("android.media.metadata.BT_FOLDER_TYPE", mediaFile.getType()).putString("android.media.metadata.MEDIA_ID", id + "").putString("android.media.metadata.ALBUM", mediaFile.getAlbum()).putString("android.media.metadata.ARTIST", mediaFile.getArtist()).putString("android.media.metadata.GENRE", mediaFile.getGenre()).putString("android.media.metadata.MEDIA_URI", mediaFile.getData()).putLong("android.media.metadata.DURATION", duration).putString("android.media.metadata.TITLE", mediaFile.getTitle()).build());
        }
    }
}
