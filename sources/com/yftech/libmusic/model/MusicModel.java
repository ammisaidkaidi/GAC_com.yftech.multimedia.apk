package com.yftech.libmusic.model;

import android.app.Activity;
import android.text.TextUtils;
import com.media.common.util.BaseApplication;
import com.media.common.util.BitmapUtils;
import com.media.common.util.LogUtil;
import com.yftech.car.audio.CarSoundEffectManager;
import com.yftech.car.media.data.CarMediaDataManager;
import com.yftech.car.media.data.entity.MediaFile;
import com.yftech.car.media.data.entity.MediaFolder;
import com.yftech.car.media.music.CarMusicManager;
import com.yftech.libmusic.bean.LyricObject;
import com.yftech.libmusic.bean.MediaFileItem;
import com.yftech.libmusic.bean.MusicListItem;
import com.yftech.libmusic.model.interfaces.IMusicModel;
import com.yftech.libmusic.utils.MediaUtils;
import com.yftech.libmvpmodule.BasePresenter;
import com.yftech.libmvpmodule.mvp.IMvpView;
import com.yftech.vehicle.internal.adapter.ICarDrive;
import com.yftech.vehicle.internal.adapter.ICarSettings;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: /home/user/work/dex/classes4.dex */
public class MusicModel implements IMusicModel {
    private final String[] tempKeyWords = {"有", "有没有", "有何不可", "一路上有你", "有那和一瞬间", "有何不可"};

    @Override // com.yftech.libmusic.model.interfaces.IMusicModel
    public void getMusicFiles(final String str, BasePresenter<? extends IMvpView> basePresenter, final IMusicModel.OnMusicFilesLoadListener onMusicFilesLoadListener) {
        Activity activity = basePresenter.getActivity();
        if (activity != null) {
            BaseApplication application = activity.getApplication();
            if (application instanceof BaseApplication) {
                application.getFixedThreadPool().execute(new Runnable() { // from class: com.yftech.libmusic.model.MusicModel.1
                    @Override // java.lang.Runnable
                    public void run() {
                        int i;
                        if (TextUtils.isEmpty(str) || !str.equals("MUSIC_SOURCE_OF_USB1")) {
                            i = (TextUtils.isEmpty(str) || !str.equals("MUSIC_SOURCE_OF_USB2")) ? -1 : 1;
                        } else {
                            i = 0;
                        }
                        if (i > 0) {
                            onMusicFilesLoadListener.onComplete(CarMediaDataManager.getInstance().getFileMusic(i));
                        } else {
                            onMusicFilesLoadListener.onComplete(null);
                        }
                    }
                });
            }
        }
    }

    @Override // com.yftech.libmusic.model.interfaces.IMusicModel
    public void getMusic(int i, BasePresenter<? extends IMvpView> basePresenter, IMusicModel.OnMusicLoadListener onMusicLoadListener) {
        List<MediaFolder> folderMusic = CarMediaDataManager.getInstance().getFolderMusic(i);
        ArrayList arrayList = new ArrayList();
        for (MediaFolder mediaFolder : folderMusic) {
            if (mediaFolder != null) {
                MusicListItem musicListItem = new MusicListItem();
                if (!TextUtils.isEmpty(mediaFolder.getFolder())) {
                    musicListItem.setDir(true);
                    musicListItem.setTitle(mediaFolder.getFolder());
                    musicListItem.setFoloder(mediaFolder.getFolder());
                    if (mediaFolder.getData() != null) {
                        ArrayList arrayList2 = new ArrayList();
                        Iterator it = mediaFolder.getData().iterator();
                        while (it.hasNext()) {
                            arrayList2.add(new MusicListItem((MediaFile) it.next()));
                        }
                        musicListItem.setData(arrayList2);
                    }
                }
                arrayList.add(musicListItem);
            }
        }
        MediaFile playMusic = CarMusicManager.getInstance().getPlayMusic();
        if (onMusicLoadListener != null) {
            onMusicLoadListener.onComplete(playMusic, arrayList);
        }
    }

    @Override // com.yftech.libmusic.model.interfaces.IMusicModel
    public void getHotMusicByKeyword(String str, BasePresenter<? extends IMvpView> basePresenter, IMusicModel.OnHotMusicLoadListener onHotMusicLoadListener) {
        ArrayList arrayList = new ArrayList();
        if (!TextUtils.isEmpty(str)) {
            for (String str2 : this.tempKeyWords) {
                if (str2.contains(str)) {
                    arrayList.add(str2);
                }
            }
        }
        onHotMusicLoadListener.onComplete(arrayList);
    }

    @Override // com.yftech.libmusic.model.interfaces.IMusicModel
    public void getPlayListSize(BasePresenter<? extends IMvpView> basePresenter, IMusicModel.OnPlayListSizeLoadListener onPlayListSizeLoadListener) {
        int playListSize = CarMusicManager.getInstance().getPlayListSize();
        if (onPlayListSizeLoadListener != null) {
            onPlayListSizeLoadListener.onComplete(playListSize);
        }
    }

    @Override // com.yftech.libmusic.model.interfaces.IMusicModel
    public void getCurrentPlayList(BasePresenter<? extends IMvpView> basePresenter, IMusicModel.OnMusicSongListLoadListener onMusicSongListLoadListener) {
        ArrayList arrayList = new ArrayList();
        List currentPlayList = CarMusicManager.getInstance().getCurrentPlayList();
        MediaFile playMusic = CarMusicManager.getInstance().getPlayMusic();
        int i = -1;
        if (currentPlayList != null) {
            for (int i2 = 0; i2 < currentPlayList.size(); i2++) {
                MediaFile mediaFile = (MediaFile) currentPlayList.get(i2);
                MediaFileItem mediaFileItem = new MediaFileItem(mediaFile);
                mediaFileItem.setTitle(mediaFile.getTitle());
                mediaFileItem.setArtist(mediaFile.getArtist());
                mediaFileItem.setDuration(mediaFile.getDuration());
                arrayList.add(mediaFileItem);
                if (playMusic != null && !TextUtils.isEmpty(playMusic.getData()) && playMusic.getData().equals(mediaFileItem.getData())) {
                    i = i2;
                }
            }
        }
        if (onMusicSongListLoadListener != null) {
            onMusicSongListLoadListener.onComplete(i, arrayList);
        }
    }

    @Override // com.yftech.libmusic.model.interfaces.IMusicModel
    public void getPlayPosition(BasePresenter<? extends IMvpView> basePresenter, IMusicModel.OnMusicPlayPositionLoadListener onMusicPlayPositionLoadListener) {
        int playPosition = CarMusicManager.getInstance().getPlayPosition();
        if (onMusicPlayPositionLoadListener != null) {
            onMusicPlayPositionLoadListener.onComplete(playPosition);
        }
    }

    @Override // com.yftech.libmusic.model.interfaces.IMusicModel
    public void searchMusic(final String str, final int i, BasePresenter<? extends IMvpView> basePresenter, final IMusicModel.OnMusicSearchResultLoadListener onMusicSearchResultLoadListener) {
        Activity activity = basePresenter.getActivity();
        if (activity != null) {
            BaseApplication application = activity.getApplication();
            if (application instanceof BaseApplication) {
                application.getDataThreadPool().execute(new Runnable() { // from class: com.yftech.libmusic.model.MusicModel.2
                    @Override // java.lang.Runnable
                    public void run() {
                        List findSearchFile = CarMediaDataManager.getInstance().findSearchFile(str, ICarSettings.SCM_NAP_SETTING, i);
                        ArrayList arrayList = new ArrayList();
                        Iterator it = findSearchFile.iterator();
                        while (it.hasNext()) {
                            MediaFileItem mediaFileItem = new MediaFileItem((MediaFile) it.next());
                            mediaFileItem.setDir(false);
                            arrayList.add(mediaFileItem);
                        }
                        MediaFile playMusic = CarMusicManager.getInstance().getPlayMusic();
                        if (onMusicSearchResultLoadListener != null) {
                            onMusicSearchResultLoadListener.onComplete(playMusic, arrayList);
                        }
                    }
                });
            }
        }
    }

    @Override // com.yftech.libmusic.model.interfaces.IMusicModel
    public void getLyricFromFile(final MediaFile mediaFile, BasePresenter<? extends IMvpView> basePresenter, final IMusicModel.OnMusicLyricLoadListener onMusicLyricLoadListener) {
        Activity activity = basePresenter.getActivity();
        if (activity != null) {
            BaseApplication application = activity.getApplication();
            if (application instanceof BaseApplication) {
                application.getDataThreadPool().execute(new Runnable() { // from class: com.yftech.libmusic.model.MusicModel.3
                    @Override // java.lang.Runnable
                    public void run() {
                        String name;
                        if (mediaFile != null) {
                            if (mediaFile.getData().lastIndexOf("/") == -1) {
                                LogUtil.d("getLyricFromFile:path=");
                                if (onMusicLyricLoadListener != null) {
                                    onMusicLyricLoadListener.onComplete(new ArrayList());
                                    return;
                                }
                                return;
                            }
                            String substring = mediaFile.getData().substring(0, mediaFile.getData().lastIndexOf("/"));
                            File file = new File(mediaFile.getData());
                            if (file.getName().contains(".")) {
                                name = file.getName().substring(0, file.getName().lastIndexOf("."));
                            } else {
                                name = file.getName();
                            }
                            String lyricFromFileExtra = MusicModel.this.getLyricFromFileExtra(substring, name);
                            LogUtil.d("getLyricFromFile:path=" + lyricFromFileExtra);
                            if (!TextUtils.isEmpty(lyricFromFileExtra)) {
                                List<LyricObject> read = MediaUtils.read(lyricFromFileExtra);
                                if (onMusicLyricLoadListener != null) {
                                    onMusicLyricLoadListener.onComplete(read);
                                    return;
                                }
                                return;
                            }
                            if (onMusicLyricLoadListener != null) {
                                onMusicLyricLoadListener.onComplete(new ArrayList());
                            }
                        }
                    }
                });
            }
        }
    }

    @Override // com.yftech.libmusic.model.interfaces.IMusicModel
    public void getEQType(BasePresenter<? extends IMvpView> basePresenter, IMusicModel.OnEQTypeLoadListener onEQTypeLoadListener) {
        if (!CarSoundEffectManager.getInstance().isEQEnable()) {
            CarSoundEffectManager.getInstance().setEQEnable(true);
        }
        int eQType = CarSoundEffectManager.getInstance().getEQType();
        if (onEQTypeLoadListener != null) {
            onEQTypeLoadListener.onComplete(eQType);
        }
    }

    @Override // com.yftech.libmusic.model.interfaces.IMusicModel
    public void getBandCurValue(BasePresenter<? extends IMvpView> basePresenter, IMusicModel.OnBandValueLoadListener onBandValueLoadListener) {
        float[] bandCurValue = CarSoundEffectManager.getInstance().getBandCurValue();
        if (onBandValueLoadListener != null) {
            onBandValueLoadListener.onComplete(bandCurValue);
        }
    }

    @Override // com.yftech.libmusic.model.interfaces.IMusicModel
    public void getBandMaxValue(BasePresenter<? extends IMvpView> basePresenter, IMusicModel.OnBandValueLoadListener onBandValueLoadListener) {
        float[] bandMaxValue = CarSoundEffectManager.getInstance().getBandMaxValue();
        LogUtil.d("getBandMaxValue Result:" + bandMaxValue);
        if (onBandValueLoadListener != null) {
            onBandValueLoadListener.onComplete(bandMaxValue);
        }
    }

    @Override // com.yftech.libmusic.model.interfaces.IMusicModel
    public void getBandMinValue(BasePresenter<? extends IMvpView> basePresenter, IMusicModel.OnBandValueLoadListener onBandValueLoadListener) {
        float[] bandMinValue = CarSoundEffectManager.getInstance().getBandMinValue();
        LogUtil.d("getBandMinValue Result:" + bandMinValue);
        if (onBandValueLoadListener != null) {
            onBandValueLoadListener.onComplete(bandMinValue);
        }
    }

    @Override // com.yftech.libmusic.model.interfaces.IMusicModel
    public void setEQType(int i, BasePresenter<? extends IMvpView> basePresenter, IMusicModel.OnEQTypeSettingResultLoadListener onEQTypeSettingResultLoadListener) {
        if (!CarSoundEffectManager.getInstance().isEQEnable()) {
            CarSoundEffectManager.getInstance().setEQEnable(true);
        }
        boolean eQType = CarSoundEffectManager.getInstance().setEQType(i);
        LogUtil.d("EQType:" + i + " Setting Result:" + eQType);
        if (onEQTypeSettingResultLoadListener != null) {
            onEQTypeSettingResultLoadListener.onComplete(eQType);
        }
    }

    @Override // com.yftech.libmusic.model.interfaces.IMusicModel
    public void setBandValue(float[] fArr, BasePresenter<? extends IMvpView> basePresenter, IMusicModel.OnBandValueSettingResultLoadListener onBandValueSettingResultLoadListener) {
        if (!CarSoundEffectManager.getInstance().isEQEnable()) {
            CarSoundEffectManager.getInstance().setEQEnable(true);
        }
        boolean bandValue = CarSoundEffectManager.getInstance().setBandValue(fArr);
        LogUtil.d("EQ Band Value Setting Result:" + bandValue);
        if (onBandValueSettingResultLoadListener != null) {
            onBandValueSettingResultLoadListener.onComplete(bandValue);
        }
    }

    @Override // com.yftech.libmusic.model.interfaces.IMusicModel
    public void getThumbDataByPath(final String str, BasePresenter<? extends IMvpView> basePresenter, final IMusicModel.OnThumbDataLoadListener onThumbDataLoadListener) {
        Activity activity = basePresenter.getActivity();
        if (activity != null) {
            BaseApplication application = activity.getApplication();
            if (application instanceof BaseApplication) {
                application.getFixedThreadPool().execute(new Runnable() { // from class: com.yftech.libmusic.model.MusicModel.4
                    @Override // java.lang.Runnable
                    public void run() {
                        byte[] bitmapByte = BitmapUtils.getBitmapByte(CarMusicManager.getInstance().getMusicAlbumBitmap(str, ICarDrive.GAS_PEDAL_LEVEL, ICarDrive.GAS_PEDAL_LEVEL));
                        if (onThumbDataLoadListener != null) {
                            onThumbDataLoadListener.onComplete(bitmapByte);
                        }
                    }
                });
            }
        }
    }

    @Override // com.yftech.libmusic.model.interfaces.IMusicModel
    public void setDTSType(int i, BasePresenter<? extends IMvpView> basePresenter, IMusicModel.OnsetDTSTypeSettingResultLoadListener onsetDTSTypeSettingResultLoadListener) {
        if (!CarSoundEffectManager.getInstance().isDTSEnable()) {
            CarSoundEffectManager.getInstance().setDTSEnable(true);
        }
        boolean dTSType = CarSoundEffectManager.getInstance().setDTSType(i);
        LogUtil.d("DTS Value Setting Result:" + dTSType);
        if (onsetDTSTypeSettingResultLoadListener != null) {
            onsetDTSTypeSettingResultLoadListener.onComplete(dTSType);
        }
    }

    private String getLyricFromFile(String str, String str2) {
        File[] listFiles;
        String str3;
        File file = new File(str);
        if (!file.isDirectory() || (listFiles = file.listFiles()) == null) {
            return null;
        }
        String str4 = null;
        for (File file2 : listFiles) {
            if (file2.isDirectory()) {
                str4 = getLyricFromFile(file2.getAbsolutePath(), str2);
                if (!TextUtils.isEmpty(str4)) {
                    break;
                }
            } else {
                if (file2.getName().contains(".")) {
                    String substring = file2.getName().substring(file2.getName().lastIndexOf(".") + 1);
                    if (!TextUtils.isEmpty(substring) && substring.toLowerCase().contains("lrc")) {
                        str3 = file2.getName().substring(0, file2.getName().lastIndexOf("."));
                        if (!TextUtils.isEmpty(str2) && str2.equals(str3)) {
                            return file2.getAbsolutePath();
                        }
                    }
                }
                str3 = null;
                if (!TextUtils.isEmpty(str2)) {
                    return file2.getAbsolutePath();
                }
                continue;
            }
        }
        return str4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getLyricFromFileExtra(String str, String str2) {
        File[] listFiles;
        String str3;
        File file = new File(str);
        if (!file.isDirectory() || (listFiles = file.listFiles()) == null) {
            return null;
        }
        for (File file2 : listFiles) {
            if (!file2.isDirectory()) {
                if (!file2.getName().isEmpty() && file2.getName().length() > 1 && file2.getName().contains(".")) {
                    String substring = file2.getName().substring(file2.getName().lastIndexOf(".") + 1);
                    if (!TextUtils.isEmpty(substring) && substring.toLowerCase().contains("lrc")) {
                        str3 = file2.getName().substring(0, file2.getName().lastIndexOf("."));
                        if (!TextUtils.isEmpty(str2) && str2.equals(str3)) {
                            return file2.getAbsolutePath();
                        }
                    }
                }
                str3 = null;
                if (!TextUtils.isEmpty(str2)) {
                    return file2.getAbsolutePath();
                }
                continue;
            }
        }
        return null;
    }
}
