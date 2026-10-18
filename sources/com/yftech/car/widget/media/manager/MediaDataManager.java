package com.yftech.car.widget.media.manager;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.text.TextUtils;
import android.util.Log;
import com.yftech.car.media.data.callbacklibrary.ICarDataChangeCallback;
import com.yftech.car.media.data.callbacklibrary.ICarScanDataClientService;
import com.yftech.car.media.data.descriptor.MemFdInfo;
import com.yftech.car.media.data.descriptor.MemFileDescriptorOpt;
import com.yftech.car.media.data.entity.MediaFile;
import com.yftech.car.media.data.entity.MediaFolder;
import com.yftech.car.media.data.util.ParcelableFile;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes3.dex */
public class MediaDataManager {
    private static final String TAG = "MediaDataManager";
    private static MediaDataManager mInstance;

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class Constant {
        public static final byte ALBUM = 4;
        public static final byte ARTIST = 3;
        public static final byte DIRECTORY = 6;
        public static final int FIND_FLAG_CONTAIN_ALBUM = 32;
        public static final int FIND_FLAG_CONTAIN_ARTIST = 16;
        public static final int FIND_FLAG_CONTAIN_FILE_NAME = 128;
        public static final int FIND_FLAG_CONTAIN_FOLDER_NAME = 256;
        public static final int FIND_FLAG_CONTAIN_GENRE = 64;
        public static final int FIND_FLAG_CONTAIN_TITLE = 512;
        public static final int FIND_FLAG_SEARCH_ALL_USB = 1024;
        public static final int FIND_FLAG_TYPE_IMAGE = 4;
        public static final int FIND_FLAG_TYPE_MUSIC = 1;
        public static final int FIND_FLAG_TYPE_TEXT = 8;
        public static final int FIND_FLAG_TYPE_VIDEO = 2;
        public static final byte FOLDER = 1;
        public static final byte GENRE = 5;
        public static final byte TITLE = 2;
        public static final byte USB1 = 0;
        public static final byte USB2 = 1;
        public static final byte USB3 = 2;
        public static final byte USB4 = 3;
        public static final byte USB5 = 4;
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface CopyFileCode {
        public static final int COPY_SUCCESS = 0;
        public static final int FILEPATH_OR_NEWPATH_EMPTY = -2;
        public static final int FILE_NOT_EXIST = 4;
        public static final int INSUFFICIENT_STORAGE_CAPACITY = 2;
        public static final int MEDIA_FILE_EMPTY = -3;
        public static final int NEW_PATH_CONFIG_NOT_EXIST = 5;
        public static final int NEW_PATH_FILE_EXIST = 6;
        public static final int SERVICE_DISCONNECT = -1;
        public static final int STORAGE_CAPACITY_EXCEEDS_MEDIASIZE = 1;
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface DeleteError {
        public static final int DELETE_FREQUENTLY = 3;
        public static final int FILE_DELETE_FAILED = 1;
        public static final int FILE_NO_EXISTS = 2;
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface InitCallback {
        void onSuccess(boolean z);
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static abstract class OnDataChangeCallback implements OnDataChangeListener {
        @Override // com.yftech.car.widget.media.manager.MediaDataManager.OnDataChangeListener
        public void onCopyFileName(String str, String str2, String str3) {
        }

        @Override // com.yftech.car.widget.media.manager.MediaDataManager.OnDataChangeListener
        public void onCopyFileProgress(long j, long j2) {
        }

        @Override // com.yftech.car.widget.media.manager.MediaDataManager.OnDataChangeListener
        public void onCopyFileStatusChange(boolean z) {
        }

        @Override // com.yftech.car.widget.media.manager.MediaDataManager.OnDataChangeListener
        public void onDeleteError(int i, int i2) {
        }

        @Override // com.yftech.car.widget.media.manager.MediaDataManager.OnDataChangeListener
        public void onDeleteSuccess(int i) {
        }

        @Override // com.yftech.car.widget.media.manager.MediaDataManager.OnDataChangeListener
        public void onMusicDataChange(int i) {
        }

        @Override // com.yftech.car.widget.media.manager.MediaDataManager.OnDataChangeListener
        public void onPhotoDataChange(int i) {
        }

        @Override // com.yftech.car.widget.media.manager.MediaDataManager.OnDataChangeListener
        public void onScanStatusChange(int i, boolean z) {
        }

        @Override // com.yftech.car.widget.media.manager.MediaDataManager.OnDataChangeListener
        public void onTextDataChange(int i) {
        }

        @Override // com.yftech.car.widget.media.manager.MediaDataManager.OnDataChangeListener
        public void onUsbStatusChange(int i, boolean z) {
        }

        @Override // com.yftech.car.widget.media.manager.MediaDataManager.OnDataChangeListener
        public void onVideoDataChange(int i) {
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface OnDataChangeListener {
        void onCopyFileName(String str, String str2, String str3);

        void onCopyFileProgress(long j, long j2);

        void onCopyFileStatusChange(boolean z);

        void onDeleteError(int i, int i2);

        void onDeleteSuccess(int i);

        void onMusicDataChange(int i);

        void onPhotoDataChange(int i);

        void onScanStatusChange(int i, boolean z);

        void onTextDataChange(int i);

        void onUsbStatusChange(int i, boolean z);

        void onVideoDataChange(int i);
    }

    private MediaDataManager() {
    }

    public static MediaDataManager getInstance() {
        if (mInstance == null) {
            synchronized (MediaDataManager.class) {
                if (mInstance == null) {
                    mInstance = new MediaDataManager();
                }
            }
        }
        return mInstance;
    }

    public void registerCarDataControlCallback(OnDataChangeListener onDataChangeListener) {
        CarMediaDataManagerGlobal.access$000().registerCarDataControlCallback(onDataChangeListener);
    }

    public void unregisterCarDataControlCallback(OnDataChangeListener onDataChangeListener) {
        CarMediaDataManagerGlobal.access$000().unregisterCarDataControlCallback(onDataChangeListener);
    }

    public int getUsbIndex(String str) {
        return CarMediaDataManagerGlobal.access$000().getUsbIndex(str);
    }

    public boolean isScanner(int i) {
        return CarMediaDataManagerGlobal.access$000().isScanner(i);
    }

    public boolean isUsbExists(int i) {
        return CarMediaDataManagerGlobal.access$000().isUsbExists(i);
    }

    public int getMusicFileSize(int i) {
        return CarMediaDataManagerGlobal.access$000().getMusicFileSize(i);
    }

    public int getVideoFileSize(int i) {
        return CarMediaDataManagerGlobal.access$000().getVideoFileSize(i);
    }

    public int getPhotoFileSize(int i) {
        return CarMediaDataManagerGlobal.access$000().getPhotoFileSize(i);
    }

    public int getTextFileSize(int i) {
        return CarMediaDataManagerGlobal.access$000().getTextFileSize(i);
    }

    public int getMusicFileExists() {
        return CarMediaDataManagerGlobal.access$000().getMusicFileExists();
    }

    public int getVideoFileExists() {
        return CarMediaDataManagerGlobal.access$000().getVideoFileExists();
    }

    public int getPhotoFileExists() {
        return CarMediaDataManagerGlobal.access$000().getPhotoFileExists();
    }

    public int getTextFileExists() {
        return CarMediaDataManagerGlobal.access$000().getTextFileExists();
    }

    public byte[] getMusicExistsDataIndex() {
        return CarMediaDataManagerGlobal.access$000().getMusicExistsDataIndex();
    }

    public byte[] getVideoExistsDataIndex() {
        return CarMediaDataManagerGlobal.access$000().getVideoExistsDataIndex();
    }

    public byte[] getPhotoExistsDataIndex() {
        return CarMediaDataManagerGlobal.access$000().getPhotoExistsDataIndex();
    }

    public byte[] getTextExistsDataIndex() {
        return CarMediaDataManagerGlobal.access$000().getTextExistsDataIndex();
    }

    public List<String> getExistUdiskList() {
        return CarMediaDataManagerGlobal.access$000().getExistUdiskList();
    }

    public String[] getUdiskList() {
        return CarMediaDataManagerGlobal.access$000().getUdiskList();
    }

    public List<MediaFile> getFileMusic(int i) {
        return CarMediaDataManagerGlobal.access$000().getFileMusics(i);
    }

    public List<MediaFile> getFileMusic(String str) {
        return CarMediaDataManagerGlobal.access$000().getFileMusics(getUsbIndex(str));
    }

    public List<MediaFile> getMusicDirectory(int i) {
        List<MediaFile> musicDirectory = CarMediaDataManagerGlobal.access$000().getMusicDirectory(i);
        if (musicDirectory == null || musicDirectory.size() != 1) {
            return musicDirectory;
        }
        MediaFile mediaFile = musicDirectory.get(0);
        if (mediaFile.getType() != 4) {
            return musicDirectory;
        }
        String folderPath = mediaFile.getFolderPath();
        int i2 = 0;
        for (int i3 = 0; i3 < folderPath.length(); i3++) {
            if (folderPath.charAt(i3) == '/' && (i2 = i2 + 1) > 2) {
                return musicDirectory;
            }
        }
        return i2 == 2 ? getMusicDirectory(folderPath) : musicDirectory;
    }

    public List<MediaFile> getMusicDirectory(String str) {
        return CarMediaDataManagerGlobal.access$000().getMusicDirectoryPath(str);
    }

    public List<MediaFolder> getFolderMusic(int i) {
        return CarMediaDataManagerGlobal.access$000().getFolderMusics(i);
    }

    public List<MediaFolder> getFolderMusic(String str) {
        return CarMediaDataManagerGlobal.access$000().getFolderMusics(getUsbIndex(str));
    }

    public List<MediaFolder> getArtistsMusic(int i) {
        return CarMediaDataManagerGlobal.access$000().getArtistsMusics(i);
    }

    public List<MediaFolder> getArtistsMusic(String str) {
        return CarMediaDataManagerGlobal.access$000().getArtistsMusics(getUsbIndex(str));
    }

    public List<MediaFolder> getAlbumsMusic(int i) {
        return CarMediaDataManagerGlobal.access$000().getAlbumsMusics(i);
    }

    public List<MediaFolder> getAlbumsMusic(String str) {
        return CarMediaDataManagerGlobal.access$000().getAlbumsMusics(getUsbIndex(str));
    }

    public List<MediaFolder> getGenreMusic(int i) {
        return CarMediaDataManagerGlobal.access$000().getGenreMusic(i);
    }

    public List<MediaFolder> getGenreMusic(String str) {
        return CarMediaDataManagerGlobal.access$000().getGenreMusic(getUsbIndex(str));
    }

    public List<MediaFile> findSearchMusicFile(MediaFile mediaFile) {
        return CarMediaDataManagerGlobal.access$000().findSearchMusicFile(mediaFile);
    }

    public List<MediaFile> findSearchFile(String str, int i) {
        return CarMediaDataManagerGlobal.access$000().findSearchFile(str, i, -1);
    }

    public List<MediaFile> findSearchFile(String str, int i, int i2) {
        return CarMediaDataManagerGlobal.access$000().findSearchFile(str, i, i2);
    }

    public List<MediaFile> getFileVideo(int i) {
        return CarMediaDataManagerGlobal.access$000().getFileVideos(i);
    }

    public List<MediaFile> getFileVideo(String str) {
        return CarMediaDataManagerGlobal.access$000().getFileVideos(getUsbIndex(str));
    }

    public List<MediaFile> getVideoDirectory(int i) {
        List<MediaFile> videoDirectory = CarMediaDataManagerGlobal.access$000().getVideoDirectory(i);
        if (videoDirectory == null || videoDirectory.size() != 1) {
            return videoDirectory;
        }
        MediaFile mediaFile = videoDirectory.get(0);
        if (mediaFile.getType() != 4) {
            return videoDirectory;
        }
        String folderPath = mediaFile.getFolderPath();
        int i2 = 0;
        for (int i3 = 0; i3 < folderPath.length(); i3++) {
            if (folderPath.charAt(i3) == '/' && (i2 = i2 + 1) > 2) {
                return videoDirectory;
            }
        }
        return i2 == 2 ? getVideoDirectory(folderPath) : videoDirectory;
    }

    public List<MediaFile> getVideoDirectory(String str) {
        return CarMediaDataManagerGlobal.access$000().getVideoDirectoryPath(str);
    }

    public List<MediaFolder> getFolderVideo(int i) {
        return CarMediaDataManagerGlobal.access$000().getFolderVideos(i);
    }

    public List<MediaFolder> getFolderVideo(String str) {
        return CarMediaDataManagerGlobal.access$000().getFolderVideos(getUsbIndex(str));
    }

    public List<MediaFolder> getArtistsVideo(int i) {
        return CarMediaDataManagerGlobal.access$000().getArtistsVideo(i);
    }

    public List<MediaFolder> getArtistsVideo(String str) {
        return CarMediaDataManagerGlobal.access$000().getArtistsVideo(getUsbIndex(str));
    }

    public List<MediaFile> getFilePhoto(int i) {
        return CarMediaDataManagerGlobal.access$000().getFilePhotos(i);
    }

    public List<MediaFile> getFilePhoto(String str) {
        return CarMediaDataManagerGlobal.access$000().getFilePhotos(getUsbIndex(str));
    }

    public List<MediaFile> getPhotoDirectory(int i) {
        List<MediaFile> photoDirectory = CarMediaDataManagerGlobal.access$000().getPhotoDirectory(i);
        if (photoDirectory == null || photoDirectory.size() != 1) {
            return photoDirectory;
        }
        MediaFile mediaFile = photoDirectory.get(0);
        if (mediaFile.getType() != 4) {
            return photoDirectory;
        }
        String folderPath = mediaFile.getFolderPath();
        int i2 = 0;
        for (int i3 = 0; i3 < folderPath.length(); i3++) {
            if (folderPath.charAt(i3) == '/' && (i2 = i2 + 1) > 2) {
                return photoDirectory;
            }
        }
        return i2 == 2 ? getPhotoDirectory(folderPath) : photoDirectory;
    }

    public List<MediaFile> getPhotoDirectory(String str) {
        return CarMediaDataManagerGlobal.access$000().getPhotoDirectoryPath(str);
    }

    public List<MediaFolder> getFolderPhoto(int i) {
        return CarMediaDataManagerGlobal.access$000().getFolderPhotos(i);
    }

    public List<MediaFolder> getFolderPhoto(String str) {
        return CarMediaDataManagerGlobal.access$000().getFolderPhotos(getUsbIndex(str));
    }

    public List<MediaFolder> getArtistsPhoto(int i) {
        return CarMediaDataManagerGlobal.access$000().getArtistsPhoto(i);
    }

    public List<MediaFolder> getArtistsPhoto(String str) {
        return CarMediaDataManagerGlobal.access$000().getArtistsPhoto(getUsbIndex(str));
    }

    public void deleteMediaFileList(List<MediaFile> list) {
        CarMediaDataManagerGlobal.access$000().deleteMediaFileList(list);
    }

    public MediaFolder getMediaListPage(MediaFile mediaFile, int i, int i2, int i3) {
        return CarMediaDataManagerGlobal.access$000().getMediaListPage(mediaFile, i, i2, i3);
    }

    public int[] saveFileList(List<String> list, String str, long j) {
        return CarMediaDataManagerGlobal.access$000().saveFileList(list, str, j);
    }

    public int[] saveMediaFileList(List<MediaFile> list, String str, long j) {
        return CarMediaDataManagerGlobal.access$000().saveMediaFileList(list, str, j);
    }

    public int saveMediaFile(String str, String str2, long j) {
        return CarMediaDataManagerGlobal.access$000().saveMediaFile(str, str2, j);
    }

    public int saveMediaFile(MediaFile mediaFile, String str, long j) {
        if (mediaFile == null) {
            Log.e(TAG, "saveMediaFile: mediaFile is null");
            return -3;
        }
        return CarMediaDataManagerGlobal.access$000().saveMediaFile(mediaFile.getData(), str, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public static final class CarMediaDataManagerGlobal implements IBinder.DeathRecipient, Runnable {
        private static final String SERVICE_NAME = "car_media_data";
        private static final CarMediaDataManagerGlobal gCarMediaDataManager = new CarMediaDataManagerGlobal();
        private ICarScanDataClientService mCarDataService;
        private Thread mConnectingThread;
        private Context mContext;
        private InitCallback mInitCallback;
        private final Object mLock = new Object();
        private final List<OnDataChangeListener> mControlCallbackMap = new ArrayList();
        private final ServiceConnection mServiceConnection = new ServiceConnection() { // from class: com.yftech.car.widget.media.manager.MediaDataManager.CarMediaDataManagerGlobal.1
            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                synchronized (this) {
                    CarMediaDataManagerGlobal.this.mCarDataService = ICarScanDataClientService.Stub.asInterface(iBinder);
                    if (CarMediaDataManagerGlobal.this.mCarDataService != null) {
                        try {
                            iBinder.linkToDeath(CarMediaDataManagerGlobal.this.mDeathRecipient, 0);
                            CarMediaDataManagerGlobal.this.mCarDataService.registerChangeCallback(CarMediaDataManagerGlobal.this.mICarDataChangeCallback);
                        } catch (RemoteException e) {
                            e.printStackTrace();
                        }
                        if (CarMediaDataManagerGlobal.this.mInitCallback != null) {
                            CarMediaDataManagerGlobal.this.mInitCallback.onSuccess(true);
                        }
                    }
                }
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                if (CarMediaDataManagerGlobal.this.mInitCallback != null) {
                    CarMediaDataManagerGlobal.this.mInitCallback.onSuccess(false);
                }
            }
        };
        private final IBinder.DeathRecipient mDeathRecipient = new IBinder.DeathRecipient() { // from class: com.yftech.car.widget.media.manager.MediaDataManager.CarMediaDataManagerGlobal.2
            @Override // android.os.IBinder.DeathRecipient
            public void binderDied() {
                Log.e(MediaDataManager.TAG, "binderDied: com.yf.media.scanner killing");
                if (CarMediaDataManagerGlobal.this.mContext != null) {
                    CarMediaDataManagerGlobal.this.bindService(CarMediaDataManagerGlobal.this.mContext, CarMediaDataManagerGlobal.this.mInitCallback);
                } else {
                    CarMediaDataManagerGlobal.this.connectCarMusicServiceLocked();
                }
            }
        };
        private final ICarDataChangeCallback.Stub mICarDataChangeCallback = new ICarDataChangeCallback.Stub() { // from class: com.yftech.car.widget.media.manager.MediaDataManager.CarMediaDataManagerGlobal.3
            public void onSearchList(long j, MemFdInfo memFdInfo) throws RemoteException {
            }

            public void onUsbStatusChange(int i, boolean z) throws RemoteException {
                int size = CarMediaDataManagerGlobal.this.mControlCallbackMap.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((OnDataChangeListener) CarMediaDataManagerGlobal.this.mControlCallbackMap.get(i2)).onUsbStatusChange(i, z);
                }
            }

            public void onScanStatusChange(int i, boolean z) throws RemoteException {
                int size = CarMediaDataManagerGlobal.this.mControlCallbackMap.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((OnDataChangeListener) CarMediaDataManagerGlobal.this.mControlCallbackMap.get(i2)).onScanStatusChange(i, z);
                }
            }

            public void onMusicDataChange(int i) throws RemoteException {
                int size = CarMediaDataManagerGlobal.this.mControlCallbackMap.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((OnDataChangeListener) CarMediaDataManagerGlobal.this.mControlCallbackMap.get(i2)).onMusicDataChange(i);
                }
            }

            public void onVideoDataChange(int i) throws RemoteException {
                int size = CarMediaDataManagerGlobal.this.mControlCallbackMap.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((OnDataChangeListener) CarMediaDataManagerGlobal.this.mControlCallbackMap.get(i2)).onVideoDataChange(i);
                }
            }

            public void onPhotoDataChange(int i) throws RemoteException {
                int size = CarMediaDataManagerGlobal.this.mControlCallbackMap.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((OnDataChangeListener) CarMediaDataManagerGlobal.this.mControlCallbackMap.get(i2)).onPhotoDataChange(i);
                }
            }

            public void onTextDataChange(int i) throws RemoteException {
                int size = CarMediaDataManagerGlobal.this.mControlCallbackMap.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((OnDataChangeListener) CarMediaDataManagerGlobal.this.mControlCallbackMap.get(i2)).onTextDataChange(i);
                }
            }

            public void onDeleteFile(int i, int i2) throws RemoteException {
                int size = CarMediaDataManagerGlobal.this.mControlCallbackMap.size();
                for (int i3 = 0; i3 < size; i3++) {
                    OnDataChangeListener onDataChangeListener = (OnDataChangeListener) CarMediaDataManagerGlobal.this.mControlCallbackMap.get(i3);
                    if (i2 == 0) {
                        onDataChangeListener.onDeleteSuccess(i);
                    } else {
                        onDataChangeListener.onDeleteError(i, i2);
                    }
                }
            }

            public void onCopyFileProgress(long j, long j2) throws RemoteException {
                int size = CarMediaDataManagerGlobal.this.mControlCallbackMap.size();
                for (int i = 0; i < size; i++) {
                    ((OnDataChangeListener) CarMediaDataManagerGlobal.this.mControlCallbackMap.get(i)).onCopyFileProgress(j, j2);
                }
            }

            public void onCopyFileStatusChange(boolean z) throws RemoteException {
                int size = CarMediaDataManagerGlobal.this.mControlCallbackMap.size();
                for (int i = 0; i < size; i++) {
                    ((OnDataChangeListener) CarMediaDataManagerGlobal.this.mControlCallbackMap.get(i)).onCopyFileStatusChange(z);
                }
            }

            public void onCopyFileName(String str, String str2, String str3) throws RemoteException {
                int size = CarMediaDataManagerGlobal.this.mControlCallbackMap.size();
                for (int i = 0; i < size; i++) {
                    ((OnDataChangeListener) CarMediaDataManagerGlobal.this.mControlCallbackMap.get(i)).onCopyFileName(str, str2, str3);
                }
            }
        };

        private CarMediaDataManagerGlobal() {
        }

        static /* synthetic */ CarMediaDataManagerGlobal access$000() {
            return get();
        }

        private static CarMediaDataManagerGlobal get() {
            if (gCarMediaDataManager.mCarDataService == null) {
                gCarMediaDataManager.getCarMusicService();
            }
            return gCarMediaDataManager;
        }

        private ICarScanDataClientService getCarMusicService() {
            ICarScanDataClientService iCarScanDataClientService;
            synchronized (this.mLock) {
                if (!connectCarMusicServiceLocked() || this.mCarDataService == null) {
                    Log.e(MediaDataManager.TAG, "car music service is unavailable");
                    startReconnectThread();
                }
                iCarScanDataClientService = this.mCarDataService;
            }
            return iCarScanDataClientService;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void bindService(Context context, InitCallback initCallback) {
            this.mInitCallback = initCallback;
            if (this.mCarDataService == null || this.mCarDataService.asBinder() == null || !this.mCarDataService.asBinder().isBinderAlive()) {
                this.mContext = context;
                Intent intent = new Intent("com.yf.media.scan.MediaScanService");
                intent.setPackage("com.yftech.media");
                context.bindService(intent, this.mServiceConnection, 1);
                return;
            }
            if (this.mInitCallback != null) {
                this.mInitCallback.onSuccess(true);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean connectCarMusicServiceLocked() {
            if (this.mCarDataService != null && this.mCarDataService.asBinder() != null && this.mCarDataService.asBinder().isBinderAlive()) {
                return true;
            }
            IBinder service = ServiceManager.getService(SERVICE_NAME);
            try {
                if (service != null) {
                    service.linkToDeath(this, 0);
                    this.mCarDataService = ICarScanDataClientService.Stub.asInterface(service);
                    this.mCarDataService.registerChangeCallback(this.mICarDataChangeCallback);
                    return true;
                }
                Log.e(MediaDataManager.TAG, "the car media data service not started!connected service fail!");
                return false;
            } catch (RemoteException e) {
                Log.e(MediaDataManager.TAG, "link to death error!" + e.getMessage());
                e.printStackTrace();
                return false;
            }
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            Log.w(MediaDataManager.TAG, "binder died,reconnect service car_media_data after 1000ms!");
            synchronized (this.mLock) {
                if (this.mCarDataService == null) {
                    return;
                }
                this.mCarDataService = null;
                if (this.mControlCallbackMap.size() > 0) {
                    startReconnectThread();
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            Log.i(MediaDataManager.TAG, "connecting service car_media_data!");
            for (int i = 0; !connectCarMusicServiceLocked() && i < 120; i++) {
                try {
                    Thread.sleep(1000L);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                Log.i(MediaDataManager.TAG, "reconnecting service car_media_data!");
                connectCarMusicServiceLocked();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void registerCarDataControlCallback(OnDataChangeListener onDataChangeListener) {
            if (onDataChangeListener == null) {
                throw new NullPointerException("callback is null,callback Cannot be empty");
            }
            synchronized (this.mLock) {
                int size = this.mControlCallbackMap.size();
                int i = 0;
                while (true) {
                    if (i >= size) {
                        break;
                    }
                    OnDataChangeListener onDataChangeListener2 = this.mControlCallbackMap.get(i);
                    if (onDataChangeListener2 == null) {
                        this.mControlCallbackMap.remove(i);
                        registerCarDataControlCallback(onDataChangeListener);
                        return;
                    } else {
                        if (onDataChangeListener2 == onDataChangeListener) {
                            this.mControlCallbackMap.remove(i);
                            break;
                        }
                        i++;
                    }
                }
                if (!connectCarMusicServiceLocked()) {
                    startReconnectThread();
                }
                if (!this.mControlCallbackMap.contains(onDataChangeListener)) {
                    this.mControlCallbackMap.add(onDataChangeListener);
                }
            }
        }

        private void startReconnectThread() {
            if (this.mConnectingThread == null || !this.mConnectingThread.isAlive()) {
                this.mConnectingThread = new Thread(this);
                this.mConnectingThread.start();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void unregisterCarDataControlCallback(OnDataChangeListener onDataChangeListener) {
            synchronized (this.mLock) {
                this.mControlCallbackMap.remove(onDataChangeListener);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getUsbIndex(String str) {
            this.mCarDataService = getCarMusicService();
            if (this.mCarDataService != null) {
                try {
                    return this.mCarDataService.getUsbIndex(str);
                } catch (RemoteException e) {
                    e.printStackTrace();
                    return 0;
                }
            }
            Log.e(MediaDataManager.TAG, "getUsbIndex: the car scanner service not started!!!");
            return 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isScanner(int i) {
            this.mCarDataService = getCarMusicService();
            if (this.mCarDataService != null) {
                try {
                    return this.mCarDataService.isScanner(i);
                } catch (RemoteException e) {
                    e.printStackTrace();
                    return false;
                }
            }
            Log.e(MediaDataManager.TAG, "isScanner: the car scanner service not started!!!");
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isUsbExists(int i) {
            this.mCarDataService = getCarMusicService();
            if (this.mCarDataService != null) {
                try {
                    return this.mCarDataService.isUsbExists(i);
                } catch (RemoteException e) {
                    e.printStackTrace();
                    return false;
                }
            }
            Log.e(MediaDataManager.TAG, "isUsbExists: the car music service not started!!!");
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getMusicFileSize(int i) {
            this.mCarDataService = getCarMusicService();
            if (this.mCarDataService != null) {
                try {
                    return this.mCarDataService.getMusicFileSize(i);
                } catch (RemoteException e) {
                    e.printStackTrace();
                    return 0;
                }
            }
            Log.e(MediaDataManager.TAG, "getMusicFileSize: the car music service not started!!!");
            return 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getVideoFileSize(int i) {
            this.mCarDataService = getCarMusicService();
            if (this.mCarDataService != null) {
                try {
                    return this.mCarDataService.getVideoFileSize(i);
                } catch (RemoteException e) {
                    e.printStackTrace();
                    return 0;
                }
            }
            Log.e(MediaDataManager.TAG, "getVideoFileSize: the car music service not started!!!");
            return 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getPhotoFileSize(int i) {
            this.mCarDataService = getCarMusicService();
            if (this.mCarDataService != null) {
                try {
                    return this.mCarDataService.getPhotoFileSize(i);
                } catch (RemoteException e) {
                    e.printStackTrace();
                    return 0;
                }
            }
            Log.e(MediaDataManager.TAG, "getPhotoFileSize: the car music service not started!!!");
            return 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getTextFileSize(int i) {
            this.mCarDataService = getCarMusicService();
            if (this.mCarDataService != null) {
                try {
                    return this.mCarDataService.getTextFileSize(i);
                } catch (RemoteException e) {
                    e.printStackTrace();
                    return 0;
                }
            }
            Log.e(MediaDataManager.TAG, "getTextFileSize: the car music service not started!!!");
            return 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getMusicFileExists() {
            synchronized (this.mLock) {
                this.mCarDataService = getCarMusicService();
                if (this.mCarDataService != null) {
                    try {
                        return this.mCarDataService.getMusicFileExists();
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                } else {
                    Log.e(MediaDataManager.TAG, "getMusicFileExists: the car music service not started!!!");
                }
                return 0;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getVideoFileExists() {
            synchronized (this.mLock) {
                this.mCarDataService = getCarMusicService();
                if (this.mCarDataService != null) {
                    try {
                        return this.mCarDataService.getVideoFileExists();
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                } else {
                    Log.e(MediaDataManager.TAG, "getVideoFileExists: the car music service not started!!!");
                }
                return 0;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getPhotoFileExists() {
            synchronized (this.mLock) {
                this.mCarDataService = getCarMusicService();
                if (this.mCarDataService != null) {
                    try {
                        return this.mCarDataService.getPhotoFileExists();
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                } else {
                    Log.e(MediaDataManager.TAG, "getPhotoFileExists: the car music service not started!!!");
                }
                return 0;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getTextFileExists() {
            synchronized (this.mLock) {
                this.mCarDataService = getCarMusicService();
                if (this.mCarDataService != null) {
                    try {
                        return this.mCarDataService.getTextFileExists();
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                } else {
                    Log.e(MediaDataManager.TAG, "getTextFileExists: the car music service not started!!!");
                }
                return 0;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public byte[] getMusicExistsDataIndex() {
            this.mCarDataService = getCarMusicService();
            if (this.mCarDataService != null) {
                try {
                    return this.mCarDataService.getMusicExistsDataIndex();
                } catch (RemoteException e) {
                    e.printStackTrace();
                    return null;
                }
            }
            Log.e(MediaDataManager.TAG, "getMusicExistsDataIndex: the car music service not started!!!");
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public byte[] getVideoExistsDataIndex() {
            this.mCarDataService = getCarMusicService();
            if (this.mCarDataService != null) {
                try {
                    return this.mCarDataService.getVideoExistsDataIndex();
                } catch (RemoteException e) {
                    e.printStackTrace();
                    return null;
                }
            }
            Log.e(MediaDataManager.TAG, "getVideoExistsDataIndex: the car music service not started!!!");
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public byte[] getPhotoExistsDataIndex() {
            this.mCarDataService = getCarMusicService();
            if (this.mCarDataService != null) {
                try {
                    return this.mCarDataService.getPhotoExistsDataIndex();
                } catch (RemoteException e) {
                    e.printStackTrace();
                    return null;
                }
            }
            Log.e(MediaDataManager.TAG, "getPhotoExistsDataIndex: the car music service not started!!!");
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public byte[] getTextExistsDataIndex() {
            this.mCarDataService = getCarMusicService();
            if (this.mCarDataService != null) {
                try {
                    return this.mCarDataService.getTextExistsDataIndex();
                } catch (RemoteException e) {
                    e.printStackTrace();
                    return null;
                }
            }
            Log.e(MediaDataManager.TAG, "getTextExistsDataIndex: the car music service not started!!!");
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public List<String> getExistUdiskList() {
            this.mCarDataService = getCarMusicService();
            if (this.mCarDataService != null) {
                try {
                    return this.mCarDataService.getExistUdiskList();
                } catch (RemoteException e) {
                    e.printStackTrace();
                    return null;
                }
            }
            Log.e(MediaDataManager.TAG, "getExistUdiskList: the car music service not started!!!");
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String[] getUdiskList() {
            this.mCarDataService = getCarMusicService();
            if (this.mCarDataService != null) {
                try {
                    return this.mCarDataService.getUdiskList();
                } catch (RemoteException e) {
                    e.printStackTrace();
                    return null;
                }
            }
            Log.e(MediaDataManager.TAG, "getUdiskList: the car music service not started!!!");
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public List<MediaFile> getFileMusics(int i) {
            MemFdInfo fileMusic;
            synchronized (this.mLock) {
                this.mCarDataService = getCarMusicService();
                if (this.mCarDataService != null) {
                    try {
                        fileMusic = this.mCarDataService.getFileMusic(i);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                } else {
                    Log.e(MediaDataManager.TAG, "getFileMusics: the car music service not started!!!");
                }
                fileMusic = null;
            }
            return MemFileDescriptorOpt.readFileParcelableMedia(fileMusic);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public List<MediaFile> getMusicDirectory(int i) {
            MemFdInfo musicDirectory;
            synchronized (this.mLock) {
                this.mCarDataService = getCarMusicService();
                if (this.mCarDataService != null) {
                    try {
                        musicDirectory = this.mCarDataService.getMusicDirectory(i);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                } else {
                    Log.e(MediaDataManager.TAG, "getMusicDirectory: the car music service not started!!!");
                }
                musicDirectory = null;
            }
            return MemFileDescriptorOpt.readFileParcelableMedia(musicDirectory);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public List<MediaFile> getMusicDirectoryPath(String str) {
            MemFdInfo musicDirectoryPath;
            synchronized (this.mLock) {
                this.mCarDataService = getCarMusicService();
                if (this.mCarDataService != null) {
                    try {
                        musicDirectoryPath = this.mCarDataService.getMusicDirectoryPath(str);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                } else {
                    Log.e(MediaDataManager.TAG, "getMusicDirectoryPath: the car music service not started!!!");
                }
                musicDirectoryPath = null;
            }
            return MemFileDescriptorOpt.readFileParcelableMedia(musicDirectoryPath);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public List<MediaFolder> getFolderMusics(int i) {
            MemFdInfo folderMusic;
            synchronized (this.mLock) {
                this.mCarDataService = getCarMusicService();
                if (this.mCarDataService != null) {
                    try {
                        folderMusic = this.mCarDataService.getFolderMusic(i);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                } else {
                    Log.e(MediaDataManager.TAG, "getFolderMusics: the car music service not started!!!");
                }
                folderMusic = null;
            }
            return MemFileDescriptorOpt.readFolderParcelableMedia(folderMusic);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public List<MediaFolder> getArtistsMusics(int i) {
            MemFdInfo artistsMusic;
            synchronized (this.mLock) {
                this.mCarDataService = getCarMusicService();
                if (this.mCarDataService != null) {
                    try {
                        artistsMusic = this.mCarDataService.getArtistsMusic(i);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                } else {
                    Log.e(MediaDataManager.TAG, "getArtistsMusics: the car music service not started!!!");
                }
                artistsMusic = null;
            }
            return MemFileDescriptorOpt.readFolderParcelableMedia(artistsMusic);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public List<MediaFolder> getAlbumsMusics(int i) {
            MemFdInfo albumsMusic;
            synchronized (this.mLock) {
                this.mCarDataService = getCarMusicService();
                if (this.mCarDataService != null) {
                    try {
                        albumsMusic = this.mCarDataService.getAlbumsMusic(i);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                } else {
                    Log.e(MediaDataManager.TAG, "getAlbumsMusics: the car music service not started!!!");
                }
                albumsMusic = null;
            }
            return MemFileDescriptorOpt.readFolderParcelableMedia(albumsMusic);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public List<MediaFolder> getGenreMusic(int i) {
            MemFdInfo genreMusic;
            synchronized (this.mLock) {
                this.mCarDataService = getCarMusicService();
                if (this.mCarDataService != null) {
                    try {
                        genreMusic = this.mCarDataService.getGenreMusic(i);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                } else {
                    Log.e(MediaDataManager.TAG, "getGenreMusic: the car music service not started!!!");
                }
                genreMusic = null;
            }
            return MemFileDescriptorOpt.readFolderParcelableMedia(genreMusic);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public List<MediaFile> findSearchMusicFile(MediaFile mediaFile) {
            MemFdInfo findSearchMusicFile;
            if (this.mCarDataService == null) {
                this.mCarDataService = getCarMusicService();
            }
            if (this.mCarDataService != null) {
                try {
                    findSearchMusicFile = this.mCarDataService.findSearchMusicFile(mediaFile);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
                return MemFileDescriptorOpt.readFileParcelableMedia(findSearchMusicFile);
            }
            Log.e(MediaDataManager.TAG, "findSearchMusicFile: the car music service not started!!!");
            findSearchMusicFile = null;
            return MemFileDescriptorOpt.readFileParcelableMedia(findSearchMusicFile);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public List<MediaFile> findSearchFile(String str, int i, int i2) {
            MemFdInfo findSearchFile;
            if (this.mCarDataService == null) {
                this.mCarDataService = getCarMusicService();
            }
            if (this.mCarDataService != null) {
                try {
                    findSearchFile = this.mCarDataService.findSearchFile(str, i, i2);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
                return MemFileDescriptorOpt.readFileParcelableMedia(findSearchFile);
            }
            Log.e(MediaDataManager.TAG, "findSearchFile: the car music service not started!!!");
            findSearchFile = null;
            return MemFileDescriptorOpt.readFileParcelableMedia(findSearchFile);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public List<MediaFile> getFileVideos(int i) {
            MemFdInfo fileVideo;
            synchronized (this.mLock) {
                this.mCarDataService = getCarMusicService();
                if (this.mCarDataService != null) {
                    try {
                        fileVideo = this.mCarDataService.getFileVideo(i);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                } else {
                    Log.e(MediaDataManager.TAG, "getFileVideos: the car music service not started!!!");
                }
                fileVideo = null;
            }
            return MemFileDescriptorOpt.readFileParcelableMedia(fileVideo);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public List<MediaFile> getVideoDirectory(int i) {
            MemFdInfo videoDirectory;
            synchronized (this.mLock) {
                this.mCarDataService = getCarMusicService();
                if (this.mCarDataService != null) {
                    try {
                        videoDirectory = this.mCarDataService.getVideoDirectory(i);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                } else {
                    Log.e(MediaDataManager.TAG, "getVideoDirectory: the car music service not started!!!");
                }
                videoDirectory = null;
            }
            return MemFileDescriptorOpt.readFileParcelableMedia(videoDirectory);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public List<MediaFile> getVideoDirectoryPath(String str) {
            MemFdInfo videoDirectoryPath;
            synchronized (this.mLock) {
                this.mCarDataService = getCarMusicService();
                if (this.mCarDataService != null) {
                    try {
                        videoDirectoryPath = this.mCarDataService.getVideoDirectoryPath(str);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                } else {
                    Log.e(MediaDataManager.TAG, "getVideoDirectoryPath: the car music service not started!!!");
                }
                videoDirectoryPath = null;
            }
            return MemFileDescriptorOpt.readFileParcelableMedia(videoDirectoryPath);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public List<MediaFolder> getFolderVideos(int i) {
            MemFdInfo folderVideo;
            synchronized (this.mLock) {
                this.mCarDataService = getCarMusicService();
                if (this.mCarDataService != null) {
                    try {
                        folderVideo = this.mCarDataService.getFolderVideo(i);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                } else {
                    Log.e(MediaDataManager.TAG, "getFolderVideos: the car music service not started!!!");
                }
                folderVideo = null;
            }
            return MemFileDescriptorOpt.readFolderParcelableMedia(folderVideo);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public List<MediaFolder> getArtistsVideo(int i) {
            MemFdInfo artistsVideo;
            synchronized (this.mLock) {
                this.mCarDataService = getCarMusicService();
                if (this.mCarDataService != null) {
                    try {
                        artistsVideo = this.mCarDataService.getArtistsVideo(i);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                } else {
                    Log.e(MediaDataManager.TAG, "getArtistsVideo: the car music service not started!!!");
                }
                artistsVideo = null;
            }
            return MemFileDescriptorOpt.readFolderParcelableMedia(artistsVideo);
        }

        private List<MediaFolder> getAlbumsVideo(int i) {
            MemFdInfo albumsVideo;
            synchronized (this.mLock) {
                this.mCarDataService = getCarMusicService();
                if (this.mCarDataService != null) {
                    try {
                        albumsVideo = this.mCarDataService.getAlbumsVideo(i);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                } else {
                    Log.e(MediaDataManager.TAG, "getAlbumsVideo: the car music service not started!!!");
                }
                albumsVideo = null;
            }
            return MemFileDescriptorOpt.readFolderParcelableMedia(albumsVideo);
        }

        private List<MediaFolder> getGenreVideo(int i) {
            MemFdInfo genreVideo;
            synchronized (this.mLock) {
                this.mCarDataService = getCarMusicService();
                if (this.mCarDataService != null) {
                    try {
                        genreVideo = this.mCarDataService.getGenreVideo(i);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                } else {
                    Log.e(MediaDataManager.TAG, "getGenreVideo: the car music service not started!!!");
                }
                genreVideo = null;
            }
            return MemFileDescriptorOpt.readFolderParcelableMedia(genreVideo);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public List<MediaFile> getFilePhotos(int i) {
            MemFdInfo filePhoto;
            synchronized (this.mLock) {
                this.mCarDataService = getCarMusicService();
                if (this.mCarDataService != null) {
                    try {
                        filePhoto = this.mCarDataService.getFilePhoto(i);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                } else {
                    Log.e(MediaDataManager.TAG, "getFilePhotos: the car music service not started!!!");
                }
                filePhoto = null;
            }
            return MemFileDescriptorOpt.readFileParcelableMedia(filePhoto);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public List<MediaFile> getPhotoDirectory(int i) {
            MemFdInfo photoDirectory;
            synchronized (this.mLock) {
                this.mCarDataService = getCarMusicService();
                if (this.mCarDataService != null) {
                    try {
                        photoDirectory = this.mCarDataService.getPhotoDirectory(i);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                } else {
                    Log.e(MediaDataManager.TAG, "getMusicDirectory: the car music service not started!!!");
                }
                photoDirectory = null;
            }
            return MemFileDescriptorOpt.readFileParcelableMedia(photoDirectory);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public List<MediaFile> getPhotoDirectoryPath(String str) {
            MemFdInfo photoDirectoryPath;
            synchronized (this.mLock) {
                this.mCarDataService = getCarMusicService();
                if (this.mCarDataService != null) {
                    try {
                        photoDirectoryPath = this.mCarDataService.getPhotoDirectoryPath(str);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                } else {
                    Log.e(MediaDataManager.TAG, "getMusicDirectoryPath: the car music service not started!!!");
                }
                photoDirectoryPath = null;
            }
            return MemFileDescriptorOpt.readFileParcelableMedia(photoDirectoryPath);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public List<MediaFolder> getFolderPhotos(int i) {
            MemFdInfo folderPhoto;
            synchronized (this.mLock) {
                this.mCarDataService = getCarMusicService();
                if (this.mCarDataService != null) {
                    try {
                        folderPhoto = this.mCarDataService.getFolderPhoto(i);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                } else {
                    Log.e(MediaDataManager.TAG, "getFolderPhotos: the car music service not started!!!");
                }
                folderPhoto = null;
            }
            return MemFileDescriptorOpt.readFolderParcelableMedia(folderPhoto);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public List<MediaFolder> getArtistsPhoto(int i) {
            MemFdInfo artistsPhoto;
            synchronized (this.mLock) {
                this.mCarDataService = getCarMusicService();
                if (this.mCarDataService != null) {
                    try {
                        artistsPhoto = this.mCarDataService.getArtistsPhoto(i);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                } else {
                    Log.e(MediaDataManager.TAG, "getArtistsPhoto: the car music service not started!!!");
                }
                artistsPhoto = null;
            }
            return MemFileDescriptorOpt.readFolderParcelableMedia(artistsPhoto);
        }

        private List<MediaFolder> getAlbumsPhoto(int i) {
            MemFdInfo albumsPhoto;
            synchronized (this.mLock) {
                this.mCarDataService = getCarMusicService();
                if (this.mCarDataService != null) {
                    try {
                        albumsPhoto = this.mCarDataService.getAlbumsPhoto(i);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                } else {
                    Log.e(MediaDataManager.TAG, "getAlbumsPhoto: the car music service not started!!!");
                }
                albumsPhoto = null;
            }
            return MemFileDescriptorOpt.readFolderParcelableMedia(albumsPhoto);
        }

        private List<MediaFolder> getGenrePhoto(int i) {
            MemFdInfo genrePhoto;
            synchronized (this.mLock) {
                this.mCarDataService = getCarMusicService();
                if (this.mCarDataService != null) {
                    try {
                        genrePhoto = this.mCarDataService.getGenrePhoto(i);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                } else {
                    Log.e(MediaDataManager.TAG, "getGenrePhoto: the car music service not started!!!");
                }
                genrePhoto = null;
            }
            return MemFileDescriptorOpt.readFolderParcelableMedia(genrePhoto);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void deleteMediaFileList(List<MediaFile> list) {
            if (list != null && list.size() > 0) {
                MemFdInfo writeMemFile = MemFileDescriptorOpt.writeMemFile(new ParcelableFile(list));
                synchronized (this.mLock) {
                    this.mCarDataService = getCarMusicService();
                    if (this.mCarDataService != null) {
                        try {
                            this.mCarDataService.deleteFileList(writeMemFile);
                        } catch (RemoteException e) {
                            e.printStackTrace();
                        }
                    } else {
                        Log.e(MediaDataManager.TAG, "deleteMediaFileList: the car music service not started!!!");
                    }
                }
                return;
            }
            Log.e(MediaDataManager.TAG, "deleteMediaFileList: list==" + list);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public MediaFolder getMediaListPage(MediaFile mediaFile, int i, int i2, int i3) {
            synchronized (this.mLock) {
                this.mCarDataService = getCarMusicService();
                if (this.mCarDataService != null) {
                    try {
                        return this.mCarDataService.getMediaListPage(mediaFile, i, i2, i3);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                } else {
                    Log.e(MediaDataManager.TAG, "getMediaListPage: the car music service not started!!!");
                }
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int saveMediaFile(String str, String str2, long j) {
            if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                Log.e(MediaDataManager.TAG, "saveMediaFile: error path,filePath==" + str + ",newPath==" + str2);
                return -2;
            }
            this.mCarDataService = getCarMusicService();
            if (this.mCarDataService != null) {
                try {
                    return this.mCarDataService.saveMediaFile(str, str2, j);
                } catch (RemoteException e) {
                    e.printStackTrace();
                    return -1;
                }
            }
            Log.e(MediaDataManager.TAG, "saveMediaFile: getMediaListPage: the car music service not started!!!");
            return -1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int[] saveFileList(List<String> list, String str, long j) {
            if (list == null || list.size() <= 0) {
                return null;
            }
            int[] iArr = new int[2];
            for (int i = 0; i < list.size(); i++) {
                int saveMediaFile = saveMediaFile(list.get(i), str, j);
                if (saveMediaFile != 0) {
                    iArr[0] = saveMediaFile;
                    iArr[1] = i;
                    return iArr;
                }
            }
            iArr[0] = 0;
            iArr[1] = list.size();
            return iArr;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int[] saveMediaFileList(List<MediaFile> list, String str, long j) {
            if (list == null || list.size() <= 0) {
                return null;
            }
            int[] iArr = new int[2];
            for (int i = 0; i < list.size(); i++) {
                MediaFile mediaFile = list.get(i);
                if (mediaFile == null) {
                    iArr[0] = -3;
                    iArr[1] = i;
                    return iArr;
                }
                int saveMediaFile = saveMediaFile(mediaFile.getData(), str, j);
                if (saveMediaFile != 0) {
                    iArr[0] = saveMediaFile;
                    iArr[1] = i;
                    return iArr;
                }
            }
            iArr[0] = 0;
            iArr[1] = list.size();
            return iArr;
        }

        public IBinder asBinder() {
            return this.mCarDataService.asBinder();
        }
    }
}
