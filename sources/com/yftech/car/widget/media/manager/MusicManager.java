package com.yftech.car.widget.media.manager;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.Log;
import com.yftech.car.media.data.descriptor.MemFdInfo;
import com.yftech.car.media.data.descriptor.MemFileDescriptorOpt;
import com.yftech.car.media.data.entity.MediaFile;
import com.yftech.car.media.music.ICarMusicCallback;
import com.yftech.car.media.music.ICarMusicClientService;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes3.dex */
public class MusicManager {
    private static final String TAG = "MusicManager";
    private static MusicManager mInstance;

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static abstract class CarMusicControlCallback implements OnMusicControlListener {
        @Override // com.yftech.car.widget.media.manager.MusicManager.OnMusicControlListener
        public void onChangePlayMode(int i) {
        }

        @Override // com.yftech.car.widget.media.manager.MusicManager.OnMusicControlListener
        public void onChangePlayMusic(MediaFile mediaFile) {
        }

        @Override // com.yftech.car.widget.media.manager.MusicManager.OnMusicControlListener
        public void onChangePlaying(boolean z) {
        }

        @Override // com.yftech.car.widget.media.manager.MusicManager.OnMusicControlListener
        public void onChangeProgress(int i) {
        }

        @Override // com.yftech.car.widget.media.manager.MusicManager.OnMusicControlListener
        public void onCollectChange(int i) {
        }

        @Override // com.yftech.car.widget.media.manager.MusicManager.OnMusicControlListener
        public boolean onPlayError(int i) {
            return false;
        }

        @Override // com.yftech.car.widget.media.manager.MusicManager.OnMusicControlListener
        public void onPlayListChange(int i) {
        }

        @Override // com.yftech.car.widget.media.manager.MusicManager.OnMusicControlListener
        public void onPlayListState(boolean z) {
        }

        @Override // com.yftech.car.widget.media.manager.MusicManager.OnMusicControlListener
        public void onPlaybackParams(float f) {
        }

        @Override // com.yftech.car.widget.media.manager.MusicManager.OnMusicControlListener
        public void onPrepared(int i) {
        }

        @Override // com.yftech.car.widget.media.manager.MusicManager.OnMusicControlListener
        public void onStopPlay(boolean z) {
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class Constant {
        public static final byte ALBUM = 4;
        public static final byte ARTIST = 3;
        public static final byte COLLECT = 0;

        @Deprecated
        public static final byte CURRENT_USB1 = 0;

        @Deprecated
        public static final byte CURRENT_USB2 = 1;

        @Deprecated
        public static final byte CURRENT_USB3 = 2;

        @Deprecated
        public static final byte CURRENT_USB4 = 3;

        @Deprecated
        public static final byte CURRENT_USB5 = 4;

        @Deprecated
        public static final int CYCLE_PLAY = 0;
        public static final byte FOLDER = 1;
        public static final byte GENRE = 5;
        public static final int LIST_LOOP = 0;

        @Deprecated
        public static final byte MUSIC_ALL = 2;
        public static final byte PLAY_LIST = 7;
        public static final int RANDOM_PLAY = 2;
        public static final byte SEARCH = 6;
        public static final int SEQUENCE_PLAY = 3;
        public static final int SINGLE_PLAY = 1;
        public static final byte TITLE = 2;
        public static final String USB_SQLITE = "collect_udisk";
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface InitCallback {
        void onSuccess(boolean z);
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface OnMusicControlListener {
        void onChangePlayMode(int i);

        void onChangePlayMusic(MediaFile mediaFile);

        void onChangePlaying(boolean z);

        void onChangeProgress(int i);

        void onCollectChange(int i);

        boolean onPlayError(int i);

        void onPlayListChange(int i);

        void onPlayListState(boolean z);

        void onPlaybackParams(float f);

        void onPrepared(int i);

        void onStopPlay(boolean z);
    }

    private MusicManager() {
    }

    public static MusicManager getInstance() {
        if (mInstance == null) {
            synchronized (MusicManager.class) {
                if (mInstance == null) {
                    mInstance = new MusicManager();
                }
            }
        }
        return mInstance;
    }

    public void registerMusicControlCallback(OnMusicControlListener onMusicControlListener) {
        CarMusicManagerGlobal.access$000().registerCarMusicControlCallback(onMusicControlListener);
    }

    public void unregisterMusicControlCallback(OnMusicControlListener onMusicControlListener) {
        CarMusicManagerGlobal.access$000().unregisterCarMusicControlCallback(onMusicControlListener);
    }

    public void play() {
        CarMusicManagerGlobal.access$000().play();
    }

    public void pause() {
        CarMusicManagerGlobal.access$000().pause();
    }

    public void switchPlayPause() {
        CarMusicManagerGlobal.access$000().switchPlayPause();
    }

    public void next() {
        CarMusicManagerGlobal.access$000().next();
    }

    public void previous() {
        CarMusicManagerGlobal.access$000().previous();
    }

    public boolean fastForward(int i) {
        return CarMusicManagerGlobal.access$000().fastForward(i);
    }

    public boolean fastBack(int i) {
        return CarMusicManagerGlobal.access$000().fastBack(i);
    }

    public boolean start(String str, String str2, int i) {
        return CarMusicManagerGlobal.access$000().start(str, str2, i);
    }

    public boolean start(MediaFile mediaFile, int i) {
        return CarMusicManagerGlobal.access$000().start(mediaFile, i);
    }

    public void setCurrentUSB(byte b, boolean z) {
        CarMusicManagerGlobal.access$000().setCurrentUSB(b, z);
    }

    public void setPlayProgress(int i) {
        CarMusicManagerGlobal.access$000().setPlayProgress(i);
    }

    public boolean requestPlay(boolean z) {
        return CarMusicManagerGlobal.access$000().requestPlay(z);
    }

    public boolean requestPlay() {
        return CarMusicManagerGlobal.access$000().requestPlay(true);
    }

    public boolean stopPlaying() {
        return CarMusicManagerGlobal.access$000().stopPlaying();
    }

    public int getPlayMode() {
        return CarMusicManagerGlobal.access$000().getPlayMode();
    }

    public void setPlayMode(int i) {
        CarMusicManagerGlobal.access$000().setPlayMode(i);
    }

    public void switchPlayMode() {
        CarMusicManagerGlobal.access$000().switchPlayMode();
    }

    public void addCollectItem(MediaFile mediaFile) {
        CarMusicManagerGlobal.access$000().addCollectItem(mediaFile);
    }

    public void removeCollectItem(MediaFile mediaFile) {
        CarMusicManagerGlobal.access$000().removeCollectItem(mediaFile);
    }

    public boolean isPlaying() {
        return CarMusicManagerGlobal.access$000().isPlaying();
    }

    public int getMusicType() {
        return CarMusicManagerGlobal.access$000().getMusicType();
    }

    @Deprecated
    public int getListTypePosition() {
        return CarMusicManagerGlobal.access$000().getMusicType();
    }

    public int getPlayPosition() {
        return CarMusicManagerGlobal.access$000().getPlayPosition();
    }

    public int getPlayListSize() {
        return CarMusicManagerGlobal.access$000().getPlayListSize();
    }

    public int getCurrentPlayProgress() {
        return CarMusicManagerGlobal.access$000().getCurrentPlayProgress();
    }

    public long getCurrentPlayDuration() {
        return CarMusicManagerGlobal.access$000().getCurrentPlayDuration();
    }

    public MediaFile getPlayMusic() {
        return CarMusicManagerGlobal.access$000().getPlayMusic();
    }

    public List<MediaFile> getCollectMusic(int i) {
        return CarMusicManagerGlobal.access$000().getCollectMusic(i);
    }

    public List<MediaFile> getCurrentPlayList() {
        return CarMusicManagerGlobal.access$000().getCurrentPlayList();
    }

    public List<MediaFile> getPlayList() {
        return CarMusicManagerGlobal.access$000().getPlayList();
    }

    public int[] getRandomList() {
        return CarMusicManagerGlobal.access$000().getRandomList();
    }

    public int getAudioSession() {
        return CarMusicManagerGlobal.access$000().getAudioSession();
    }

    public void setPlaybackParams(float f) {
        CarMusicManagerGlobal.access$000().setPlaybackParams(f);
    }

    public float getPlaybackParams() {
        return CarMusicManagerGlobal.access$000().getPlaybackParams();
    }

    public boolean isPlayList() {
        return CarMusicManagerGlobal.access$000().isPlayList();
    }

    public boolean isCollectMusic(MediaFile mediaFile) {
        if (mediaFile == null || mediaFile.getData() == null) {
            Log.e(TAG, "isCollectMusic: mediaFile is null || mediaFile.getData() is null");
            return false;
        }
        return CarMusicManagerGlobal.access$000().isCollectMusic(mediaFile.getData());
    }

    public boolean isCollectMusic(String str) {
        if (str == null) {
            Log.e(TAG, "isCollectMusic: dataPath is null");
            return false;
        }
        return CarMusicManagerGlobal.access$000().isCollectMusic(str);
    }

    public boolean isDirectoryPlayPath(String str) {
        if (str == null) {
            Log.e(TAG, "isCollectMusic: path is null");
            return false;
        }
        return CarMusicManagerGlobal.access$000().isDirectoryPlayPath(str);
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    private static final class CarMusicManagerGlobal implements IBinder.DeathRecipient, Runnable {
        private static final int FAST_BACK = 7;
        private static final int FAST_FORWARD = 6;
        private static final int NEXT = 4;
        private static final int PAUSE = 2;
        private static final int PLAY = 1;
        private static final int PLAY_PAUSE = 3;
        private static final int PREV = 5;
        private static final String SERVICE_NAME = "car_media_music";
        private static final CarMusicManagerGlobal gCarMusicManager = new CarMusicManagerGlobal();
        private static ICarMusicClientService mCarMusicService;
        private Thread mConnectingThread;
        private Context mContext;
        private InitCallback mInitCallback;
        private MediaFile mPlayFile;
        private final Object mLock = new Object();
        private final List<OnMusicControlListener> mControlCallbackList = new ArrayList();
        private final ServiceConnection mServiceConnection = new ServiceConnection() { // from class: com.yftech.car.widget.media.manager.MusicManager.CarMusicManagerGlobal.1
            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                synchronized (this) {
                    ICarMusicClientService unused = CarMusicManagerGlobal.mCarMusicService = ICarMusicClientService.Stub.asInterface(iBinder);
                    if (CarMusicManagerGlobal.mCarMusicService != null) {
                        try {
                            iBinder.linkToDeath(CarMusicManagerGlobal.this.mDeathRecipient, 0);
                            CarMusicManagerGlobal.mCarMusicService.registerUiControl(CarMusicManagerGlobal.this.mICarMusicCallback);
                        } catch (RemoteException e) {
                            e.printStackTrace();
                        }
                        if (CarMusicManagerGlobal.this.mInitCallback != null) {
                            CarMusicManagerGlobal.this.mInitCallback.onSuccess(true);
                        }
                    }
                }
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                if (CarMusicManagerGlobal.this.mInitCallback != null) {
                    CarMusicManagerGlobal.this.mInitCallback.onSuccess(false);
                }
            }
        };
        private final IBinder.DeathRecipient mDeathRecipient = new IBinder.DeathRecipient() { // from class: com.yftech.car.widget.media.manager.MusicManager.CarMusicManagerGlobal.2
            @Override // android.os.IBinder.DeathRecipient
            public void binderDied() {
                Log.e(MusicManager.TAG, "binderDied: com.yf.media.scanner killing");
                if (CarMusicManagerGlobal.this.mContext != null) {
                    CarMusicManagerGlobal.this.bindService(CarMusicManagerGlobal.this.mContext, CarMusicManagerGlobal.this.mInitCallback);
                } else {
                    CarMusicManagerGlobal.this.connectCarMusicServiceLocked();
                }
            }
        };
        private final ICarMusicCallback.Stub mICarMusicCallback = new ICarMusicCallback.Stub() { // from class: com.yftech.car.widget.media.manager.MusicManager.CarMusicManagerGlobal.3
            /* JADX WARN: Multi-variable type inference failed */
            public IBinder asBinder() {
                return this;
            }

            public void onCurrentPlayMusic(MediaFile mediaFile) throws RemoteException {
                CarMusicManagerGlobal.this.mPlayFile = mediaFile;
                int size = CarMusicManagerGlobal.this.mControlCallbackList.size();
                for (int i = 0; i < size; i++) {
                    ((OnMusicControlListener) CarMusicManagerGlobal.this.mControlCallbackList.get(i)).onChangePlayMusic(mediaFile);
                }
            }

            public void onProgress(int i) throws RemoteException {
                int size = CarMusicManagerGlobal.this.mControlCallbackList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((OnMusicControlListener) CarMusicManagerGlobal.this.mControlCallbackList.get(i2)).onChangeProgress(i);
                }
            }

            public void onPrepared(int i) throws RemoteException {
                int size = CarMusicManagerGlobal.this.mControlCallbackList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((OnMusicControlListener) CarMusicManagerGlobal.this.mControlCallbackList.get(i2)).onPrepared(i);
                }
            }

            public void onPlayMode(int i) throws RemoteException {
                int size = CarMusicManagerGlobal.this.mControlCallbackList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((OnMusicControlListener) CarMusicManagerGlobal.this.mControlCallbackList.get(i2)).onChangePlayMode(i);
                }
            }

            public void onPlayPause(boolean z) throws RemoteException {
                int size = CarMusicManagerGlobal.this.mControlCallbackList.size();
                for (int i = 0; i < size; i++) {
                    ((OnMusicControlListener) CarMusicManagerGlobal.this.mControlCallbackList.get(i)).onChangePlaying(z);
                }
            }

            public void onStopPlay(boolean z) throws RemoteException {
                int size = CarMusicManagerGlobal.this.mControlCallbackList.size();
                for (int i = 0; i < size; i++) {
                    ((OnMusicControlListener) CarMusicManagerGlobal.this.mControlCallbackList.get(i)).onStopPlay(z);
                }
            }

            public void onPlaybackParams(float f) throws RemoteException {
                int size = CarMusicManagerGlobal.this.mControlCallbackList.size();
                for (int i = 0; i < size; i++) {
                    ((OnMusicControlListener) CarMusicManagerGlobal.this.mControlCallbackList.get(i)).onPlaybackParams(f);
                }
            }

            public void onPlayListState(boolean z) throws RemoteException {
                int size = CarMusicManagerGlobal.this.mControlCallbackList.size();
                for (int i = 0; i < size; i++) {
                    ((OnMusicControlListener) CarMusicManagerGlobal.this.mControlCallbackList.get(i)).onPlayListState(z);
                }
            }

            public void onCollectChange(int i) throws RemoteException {
                int size = CarMusicManagerGlobal.this.mControlCallbackList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((OnMusicControlListener) CarMusicManagerGlobal.this.mControlCallbackList.get(i2)).onCollectChange(i);
                }
            }

            public boolean onPlayError(int i) throws RemoteException {
                int size = CarMusicManagerGlobal.this.mControlCallbackList.size();
                boolean z = false;
                for (int i2 = 0; i2 < size; i2++) {
                    if (((OnMusicControlListener) CarMusicManagerGlobal.this.mControlCallbackList.get(i2)).onPlayError(i)) {
                        z = true;
                    }
                }
                return z;
            }

            public void onPlayListChange(int i) throws RemoteException {
                int size = CarMusicManagerGlobal.this.mControlCallbackList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((OnMusicControlListener) CarMusicManagerGlobal.this.mControlCallbackList.get(i2)).onPlayListChange(i);
                }
            }
        };

        static /* synthetic */ CarMusicManagerGlobal access$000() {
            return get();
        }

        private CarMusicManagerGlobal() {
        }

        private static CarMusicManagerGlobal get() {
            return gCarMusicManager;
        }

        private ICarMusicClientService getCarMusicService() {
            ICarMusicClientService iCarMusicClientService;
            synchronized (this.mLock) {
                if (!connectCarMusicServiceLocked() || mCarMusicService == null) {
                    Log.e(MusicManager.TAG, "car music service is unavailable");
                    startReconnectThread();
                }
                iCarMusicClientService = mCarMusicService;
            }
            return iCarMusicClientService;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void bindService(Context context, InitCallback initCallback) {
            this.mInitCallback = initCallback;
            if (mCarMusicService == null || mCarMusicService.asBinder() == null || !mCarMusicService.asBinder().isBinderAlive()) {
                this.mContext = context;
                Intent intent = new Intent("com.yf.music.service.MusicService");
                intent.setPackage("com.yftech.media.service");
                context.bindService(intent, this.mServiceConnection, 1);
                return;
            }
            if (this.mInitCallback != null) {
                this.mInitCallback.onSuccess(true);
            }
        }

        private void startReconnectThread() {
            if (this.mConnectingThread == null || !this.mConnectingThread.isAlive()) {
                this.mConnectingThread = new Thread(this);
                this.mConnectingThread.start();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            Log.i(MusicManager.TAG, "connecting service car_media_music!");
            for (int i = 0; !connectCarMusicServiceLocked() && i < 120; i++) {
                try {
                    Thread.sleep(1000L);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                Log.i(MusicManager.TAG, "reconnecting service car_media_music!");
                connectCarMusicServiceLocked();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean connectCarMusicServiceLocked() {
            if (mCarMusicService != null && mCarMusicService.asBinder() != null && mCarMusicService.asBinder().isBinderAlive()) {
                return true;
            }
            IBinder service = ServiceManager.getService(SERVICE_NAME);
            try {
                if (service == null) {
                    Log.e(MusicManager.TAG, "the car music service not started!connected service fail!");
                    return false;
                }
                service.linkToDeath(this, 0);
                mCarMusicService = ICarMusicClientService.Stub.asInterface(service);
                mCarMusicService.registerUiControl(this.mICarMusicCallback);
                return true;
            } catch (RemoteException e) {
                Log.e(MusicManager.TAG, "link to death error!" + e.getMessage());
                e.printStackTrace();
                return false;
            }
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            Log.w(MusicManager.TAG, "binder died,reconnect service car_media_music after 1000ms!");
            synchronized (this.mLock) {
                if (mCarMusicService == null) {
                    return;
                }
                mCarMusicService = null;
                if (this.mControlCallbackList.size() > 0) {
                    startReconnectThread();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void registerCarMusicControlCallback(OnMusicControlListener onMusicControlListener) {
            if (onMusicControlListener == null) {
                throw new NullPointerException("callback is null,callback Cannot be empty");
            }
            synchronized (this.mLock) {
                int size = this.mControlCallbackList.size();
                int i = 0;
                while (true) {
                    if (i >= size) {
                        break;
                    }
                    OnMusicControlListener onMusicControlListener2 = this.mControlCallbackList.get(i);
                    if (onMusicControlListener2 == null) {
                        this.mControlCallbackList.remove(i);
                        registerCarMusicControlCallback(onMusicControlListener);
                        return;
                    } else {
                        if (onMusicControlListener2 == onMusicControlListener) {
                            this.mControlCallbackList.remove(i);
                            break;
                        }
                        i++;
                    }
                }
                if (!connectCarMusicServiceLocked()) {
                    startReconnectThread();
                }
                if (!this.mControlCallbackList.contains(onMusicControlListener)) {
                    this.mControlCallbackList.add(onMusicControlListener);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void unregisterCarMusicControlCallback(OnMusicControlListener onMusicControlListener) {
            synchronized (this.mLock) {
                this.mControlCallbackList.remove(onMusicControlListener);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void play() {
            setPlayStatus(1);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void pause() {
            setPlayStatus(2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void switchPlayPause() {
            setPlayStatus(3);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void next() {
            setPlayStatus(4);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void previous() {
            setPlayStatus(5);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean fastForward(int i) {
            return pressKeyEvent(6, i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean fastBack(int i) {
            return pressKeyEvent(7, i);
        }

        private boolean pressKeyEvent(int i, int i2) {
            synchronized (this.mLock) {
                mCarMusicService = getCarMusicService();
                if (mCarMusicService == null) {
                    Log.e(MusicManager.TAG, "pressKeyEvent: the car music service not started!!!");
                } else {
                    try {
                        return mCarMusicService.pressKeyEvent(i, i2);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                return false;
            }
        }

        private void setPlayStatus(int i) {
            synchronized (this.mLock) {
                mCarMusicService = getCarMusicService();
                if (mCarMusicService == null) {
                    Log.e(MusicManager.TAG, "setPlayStatus: the car music service not started!!!");
                } else {
                    try {
                        mCarMusicService.setPlayStatus(i);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean start(String str, String str2, int i) {
            synchronized (this.mLock) {
                mCarMusicService = getCarMusicService();
                if (mCarMusicService == null) {
                    Log.e(MusicManager.TAG, "start: the car music service not started!!!");
                    return false;
                }
                try {
                    return mCarMusicService.start(str, str2, i);
                } catch (RemoteException e) {
                    e.printStackTrace();
                    return false;
                }
            }
        }

        public boolean start(MediaFile mediaFile, int i) {
            String folder;
            if (i == 1) {
                folder = mediaFile.getFolder();
            } else {
                switch (i) {
                    case 3:
                        folder = mediaFile.getArtist();
                        break;
                    case 4:
                        folder = mediaFile.getAlbum();
                        break;
                    case 5:
                        folder = mediaFile.getGenre();
                        break;
                    default:
                        folder = null;
                        break;
                }
            }
            return start(folder, mediaFile.getData(), i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCurrentUSB(byte b, boolean z) {
            synchronized (this.mLock) {
                mCarMusicService = getCarMusicService();
                if (mCarMusicService == null) {
                    Log.e(MusicManager.TAG, "setCurrentUSB: the car music service not started!!!");
                } else {
                    try {
                        mCarMusicService.setCurrentUSB(b, z);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
            }
        }

        private boolean isAudioFocus() {
            synchronized (this.mLock) {
                mCarMusicService = getCarMusicService();
                if (mCarMusicService == null) {
                    Log.e(MusicManager.TAG, "isAudioFocus: the car music service not started!!!");
                } else {
                    try {
                        return mCarMusicService.isAudioFocus();
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                return false;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPlayProgress(int i) {
            synchronized (this.mLock) {
                mCarMusicService = getCarMusicService();
                if (mCarMusicService == null) {
                    Log.e(MusicManager.TAG, "setPlayProgress: the car music service not started!!!");
                } else {
                    try {
                        mCarMusicService.setPlayProgress(i);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean requestPlay(boolean z) {
            synchronized (this.mLock) {
                mCarMusicService = getCarMusicService();
                if (mCarMusicService == null) {
                    Log.e(MusicManager.TAG, "requestAudiofocus: the car music service not started!!!");
                } else {
                    try {
                        return mCarMusicService.requestPlay(z);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                return false;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean stopPlaying() {
            synchronized (this.mLock) {
                mCarMusicService = getCarMusicService();
                if (mCarMusicService == null) {
                    Log.e(MusicManager.TAG, "stopPlaying: the car music service not started!!!");
                } else {
                    try {
                        return mCarMusicService.stopPlaying(false);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                return false;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getPlayMode() {
            synchronized (this.mLock) {
                mCarMusicService = getCarMusicService();
                if (mCarMusicService == null) {
                    Log.e(MusicManager.TAG, "getPlayMode: the car music service not started!!!");
                } else {
                    try {
                        return mCarMusicService.getPlayMode();
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                return 0;
            }
        }

        private boolean isPrepared() {
            synchronized (this.mLock) {
                mCarMusicService = getCarMusicService();
                if (mCarMusicService == null) {
                    Log.e(MusicManager.TAG, "isPrepared: the car music service not started!!!");
                } else {
                    try {
                        return mCarMusicService.isPrepared();
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                return false;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPlayMode(int i) {
            synchronized (this.mLock) {
                mCarMusicService = getCarMusicService();
                if (mCarMusicService == null) {
                    Log.e(MusicManager.TAG, "setPlayMode: the car music service not started!!!");
                } else {
                    try {
                        mCarMusicService.setPlayMode(i);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void switchPlayMode() {
            synchronized (this.mLock) {
                mCarMusicService = getCarMusicService();
                if (mCarMusicService == null) {
                    Log.e(MusicManager.TAG, "switchPlayMode: the car music service not started!!!");
                } else {
                    try {
                        mCarMusicService.switchPlayMode();
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addCollectItem(MediaFile mediaFile) {
            synchronized (this.mLock) {
                mCarMusicService = getCarMusicService();
                if (mCarMusicService == null) {
                    Log.e(MusicManager.TAG, "addCollectItem: the car music service not started!!!");
                } else {
                    try {
                        mCarMusicService.addCollectItem(mediaFile);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeCollectItem(MediaFile mediaFile) {
            synchronized (this.mLock) {
                mCarMusicService = getCarMusicService();
                if (mCarMusicService == null) {
                    Log.e(MusicManager.TAG, "removeCollectItem: the car music service not started!!!");
                } else {
                    try {
                        mCarMusicService.removeCollectItem(mediaFile);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isPlaying() {
            mCarMusicService = getCarMusicService();
            if (mCarMusicService == null) {
                Log.e(MusicManager.TAG, "isPlaying: the car music service not started!!!");
                return false;
            }
            try {
                return mCarMusicService.isPlaying();
            } catch (RemoteException e) {
                e.printStackTrace();
                return false;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getMusicType() {
            mCarMusicService = getCarMusicService();
            if (mCarMusicService == null) {
                Log.e(MusicManager.TAG, "getMusicType: the car music service not started!!!");
                return -1;
            }
            try {
                return mCarMusicService.getListTypePosition();
            } catch (RemoteException e) {
                e.printStackTrace();
                return -1;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getPlayPosition() {
            mCarMusicService = getCarMusicService();
            if (mCarMusicService == null) {
                Log.e(MusicManager.TAG, "getPlayPosition: the car music service not started!!!");
                return 0;
            }
            try {
                return mCarMusicService.getPlayPosition();
            } catch (RemoteException e) {
                e.printStackTrace();
                return 0;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getPlayListSize() {
            mCarMusicService = getCarMusicService();
            if (mCarMusicService == null) {
                Log.e(MusicManager.TAG, "getPlayListSize: the car music service not started!!!");
                return 0;
            }
            try {
                return mCarMusicService.getPlayListSize();
            } catch (RemoteException e) {
                e.printStackTrace();
                return 0;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getCurrentPlayProgress() {
            mCarMusicService = getCarMusicService();
            if (mCarMusicService == null) {
                Log.e(MusicManager.TAG, "getCurrentPlayProgress: the car music service not started!!!");
                return 0;
            }
            try {
                return mCarMusicService.getProgress();
            } catch (RemoteException e) {
                e.printStackTrace();
                return 0;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long getCurrentPlayDuration() {
            synchronized (this.mLock) {
                mCarMusicService = getCarMusicService();
                if (mCarMusicService == null) {
                    Log.e(MusicManager.TAG, "getCurrentPlayDuration: the car music service not started!!!");
                } else {
                    try {
                        return mCarMusicService.getDuration();
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                return 0L;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public MediaFile getPlayMusic() {
            MediaFile mediaFile;
            if (this.mPlayFile != null) {
                return this.mPlayFile;
            }
            synchronized (this.mLock) {
                mCarMusicService = getCarMusicService();
                if (mCarMusicService == null) {
                    Log.e(MusicManager.TAG, "getPlayMusic: the car music service not started!!!");
                } else {
                    try {
                        this.mPlayFile = mCarMusicService.getCurrentMusicFilePlay();
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                mediaFile = this.mPlayFile;
            }
            return mediaFile;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public List<MediaFile> getCollectMusic(int i) {
            MemFdInfo collectMusic;
            mCarMusicService = getCarMusicService();
            if (mCarMusicService == null) {
                Log.e(MusicManager.TAG, "getCollectMusic: the car music service not started!!!");
            } else {
                try {
                    collectMusic = mCarMusicService.getCollectMusic(i);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
                return MemFileDescriptorOpt.readFileParcelableMedia(collectMusic);
            }
            collectMusic = null;
            return MemFileDescriptorOpt.readFileParcelableMedia(collectMusic);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public List<MediaFile> getCurrentPlayList() {
            List<MediaFile> readFileParcelableMedia;
            synchronized (this.mLock) {
                mCarMusicService = getCarMusicService();
                MemFdInfo memFdInfo = null;
                if (mCarMusicService == null) {
                    Log.e(MusicManager.TAG, "getCurrentPlayList: the car music service not started!!!");
                } else {
                    try {
                        memFdInfo = mCarMusicService.getPlayList();
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                readFileParcelableMedia = MemFileDescriptorOpt.readFileParcelableMedia(memFdInfo);
            }
            return readFileParcelableMedia;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int[] getRandomList() {
            synchronized (this.mLock) {
                mCarMusicService = getCarMusicService();
                if (mCarMusicService == null) {
                    Log.e(MusicManager.TAG, "getRandomList: the car music service not started!!!");
                } else {
                    try {
                        return mCarMusicService.getRandomList();
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public List<MediaFile> getPlayList() {
            int[] randomList;
            List<MediaFile> currentPlayList = getCurrentPlayList();
            if (getPlayMode() != 2 || (randomList = getRandomList()) == null || currentPlayList == null || currentPlayList.size() <= 1) {
                return currentPlayList;
            }
            ArrayList arrayList = new ArrayList();
            for (int i : randomList) {
                if (currentPlayList.size() > i) {
                    arrayList.add(currentPlayList.get(i));
                }
            }
            return arrayList;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getAudioSession() {
            synchronized (this.mLock) {
                mCarMusicService = getCarMusicService();
                if (mCarMusicService == null) {
                    Log.e(MusicManager.TAG, "getAudioSession: the car music service not started!!!");
                } else {
                    try {
                        return mCarMusicService.getAudioSession();
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                return 0;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPlaybackParams(float f) {
            synchronized (this.mLock) {
                mCarMusicService = getCarMusicService();
                if (mCarMusicService == null) {
                    Log.e(MusicManager.TAG, "setPlaybackParams: the car music service not started!!!");
                } else {
                    try {
                        mCarMusicService.setPlaybackParams(f);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float getPlaybackParams() {
            synchronized (this.mLock) {
                mCarMusicService = getCarMusicService();
                if (mCarMusicService == null) {
                    Log.e(MusicManager.TAG, "getPlaybackParams: the car music service not started!!!");
                } else {
                    try {
                        return mCarMusicService.getPlaybackParams();
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                return 1.0f;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isPlayList() {
            mCarMusicService = getCarMusicService();
            if (mCarMusicService == null) {
                Log.e(MusicManager.TAG, "isPlayList: the car music service not started!!!");
                return true;
            }
            try {
                return mCarMusicService.isPlayList();
            } catch (RemoteException e) {
                e.printStackTrace();
                return true;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isCollectMusic(String str) {
            mCarMusicService = getCarMusicService();
            if (mCarMusicService == null) {
                Log.e(MusicManager.TAG, "isCollectMusic: the car music service not started!!!");
                return true;
            }
            try {
                return mCarMusicService.isCollectMusic(str);
            } catch (RemoteException e) {
                e.printStackTrace();
                return true;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isDirectoryPlayPath(String str) {
            mCarMusicService = getCarMusicService();
            if (mCarMusicService == null) {
                Log.e(MusicManager.TAG, "isCollectMusic: the car music service not started!!!");
                return true;
            }
            try {
                return mCarMusicService.isDirectoryPlayPath(str);
            } catch (RemoteException e) {
                e.printStackTrace();
                return true;
            }
        }
    }
}
