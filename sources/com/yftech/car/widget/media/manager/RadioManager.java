package com.yftech.car.widget.media.manager;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.ArrayMap;
import android.util.Log;
import com.yftech.car.media.radio.ICarRadioCallback;
import com.yftech.car.media.radio.ICarRadioClientService;
import com.yftech.car.media.radio.entity.DataOfRadio;
import com.yftech.car.media.radio.rds.entity.RdsInfo;
import java.util.List;

/* loaded from: /home/user/work/dex/classes3.dex */
public class RadioManager {
    private static final String TAG = "RadioManager";
    private static RadioManager mInstance;

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static abstract class CarRadioControlCallback implements OnRadioControlListener {
        @Override // com.yftech.car.widget.media.manager.RadioManager.OnRadioControlListener
        public void onAudioFocusChange(int i) {
        }

        @Override // com.yftech.car.widget.media.manager.RadioManager.OnRadioControlListener
        public void onFavorChange(int i, DataOfRadio dataOfRadio) {
        }

        @Override // com.yftech.car.widget.media.manager.RadioManager.OnRadioControlListener
        public void onFreqChanage(int i, DataOfRadio dataOfRadio, DataOfRadio dataOfRadio2) {
        }

        @Override // com.yftech.car.widget.media.manager.RadioManager.OnRadioControlListener
        public void onFreqChange(DataOfRadio dataOfRadio, DataOfRadio dataOfRadio2) {
        }

        @Override // com.yftech.car.widget.media.manager.RadioManager.OnRadioControlListener
        public void onPlayPause(boolean z) {
        }

        @Override // com.yftech.car.widget.media.manager.RadioManager.OnRadioControlListener
        public void onPlaySignalUpdate(DataOfRadio dataOfRadio, int i) {
        }

        @Override // com.yftech.car.widget.media.manager.RadioManager.OnRadioControlListener
        public void onRadioMute(boolean z) {
        }

        @Override // com.yftech.car.widget.media.manager.RadioManager.OnRadioControlListener
        public void onRdsCommonStatusChange(int i, boolean z) {
        }

        @Override // com.yftech.car.widget.media.manager.RadioManager.OnRadioControlListener
        public void onRdsCommonStringChange(int i, String str) {
        }

        @Override // com.yftech.car.widget.media.manager.RadioManager.OnRadioControlListener
        public void onRdsPiFreqChange(int i, int i2) {
        }

        @Override // com.yftech.car.widget.media.manager.RadioManager.OnRadioControlListener
        public void onRdsPtyStatusChange(int i) {
        }

        @Override // com.yftech.car.widget.media.manager.RadioManager.OnRadioControlListener
        public void onRdsScanStatusChange(RdsInfo rdsInfo) {
        }

        @Override // com.yftech.car.widget.media.manager.RadioManager.OnRadioControlListener
        public void onScanFreqSignal(DataOfRadio dataOfRadio, int i) {
        }

        @Override // com.yftech.car.widget.media.manager.RadioManager.OnRadioControlListener
        public void onSeekStatusChange(int i, int i2, int i3) {
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface InitCallback {
        void onSuccess(boolean z);
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface OnRadioControlListener {
        public static final int SCAN_STATUS_IDLE = 0;
        public static final int SCAN_STATUS_ING = 1;
        public static final int SCAN_TYPE_IDLE = 0;
        public static final int SCAN_TYPE_ING = 3;
        public static final int SCAN_TYPE_SCAN_ALL = 4;
        public static final int SCAN_TYPE_SEEK_DOWN = 2;
        public static final int SCAN_TYPE_SEEK_PLAY = 5;
        public static final int SCAN_TYPE_SEEK_UP = 1;

        void onAudioFocusChange(int i);

        void onFavorChange(int i, DataOfRadio dataOfRadio);

        @Deprecated
        void onFreqChanage(int i, DataOfRadio dataOfRadio, DataOfRadio dataOfRadio2);

        void onFreqChange(DataOfRadio dataOfRadio, DataOfRadio dataOfRadio2);

        void onPlayPause(boolean z);

        void onPlaySignalUpdate(DataOfRadio dataOfRadio, int i);

        void onRadioMute(boolean z);

        void onRdsCommonStatusChange(int i, boolean z);

        void onRdsCommonStringChange(int i, String str);

        void onRdsPiFreqChange(int i, int i2);

        void onRdsPtyStatusChange(int i);

        void onRdsScanStatusChange(RdsInfo rdsInfo);

        void onScanFreqSignal(DataOfRadio dataOfRadio, int i);

        void onSeekStatusChange(int i, int i2, int i3);
    }

    public static RadioManager getInstance() {
        if (mInstance == null) {
            synchronized (RadioManager.class) {
                if (mInstance == null) {
                    mInstance = new RadioManager();
                }
            }
        }
        return mInstance;
    }

    public static void registerRadioControlCallback(OnRadioControlListener onRadioControlListener, Handler handler) {
        if (handler == null) {
            Looper myLooper = Looper.myLooper();
            if (myLooper == null) {
                throw new IllegalArgumentException("No handler given, and current thread has no looper!");
            }
            handler = new Handler(myLooper);
        }
        CarRadioManagerGlobal.access$000().registerCarRadioControlCallback(onRadioControlListener, handler);
    }

    public static void registerRadioControlCallback(OnRadioControlListener onRadioControlListener) {
        Looper myLooper = Looper.myLooper();
        if (myLooper == null) {
            throw new IllegalArgumentException("No handler given, and current thread has no looper!");
        }
        CarRadioManagerGlobal.access$000().registerCarRadioControlCallback(onRadioControlListener, new Handler(myLooper));
    }

    public static void unregisterRadioControlCallback(OnRadioControlListener onRadioControlListener) {
        CarRadioManagerGlobal.access$000().unregisterCarRadioControlCallback(onRadioControlListener);
    }

    public static void registerRadioControlCallback(CarRadioControlCallback carRadioControlCallback, Handler handler) {
        if (handler == null) {
            Looper myLooper = Looper.myLooper();
            if (myLooper == null) {
                throw new IllegalArgumentException("No handler given, and current thread has no looper!");
            }
            handler = new Handler(myLooper);
        }
        CarRadioManagerGlobal.access$000().registerCarRadioControlCallback(carRadioControlCallback, handler);
    }

    public static void registerRadioControlCallback(CarRadioControlCallback carRadioControlCallback) {
        Looper myLooper = Looper.myLooper();
        if (myLooper == null) {
            throw new IllegalArgumentException("No handler given, and current thread has no looper!");
        }
        CarRadioManagerGlobal.access$000().registerCarRadioControlCallback(carRadioControlCallback, new Handler(myLooper));
    }

    public static void unregisterRadioControlCallback(CarRadioControlCallback carRadioControlCallback) {
        CarRadioManagerGlobal.access$000().unregisterCarRadioControlCallback(carRadioControlCallback);
    }

    public int setFreq(int i) {
        return CarRadioManagerGlobal.access$000().setFreq(i, 0);
    }

    public DataOfRadio getFreq() {
        return CarRadioManagerGlobal.access$000().getFreq();
    }

    public DataOfRadio getFreqEx() {
        return CarRadioManagerGlobal.access$000().getFreqEx();
    }

    public int setBand(int i) {
        return CarRadioManagerGlobal.access$000().setBand(i);
    }

    public int getBand() {
        return CarRadioManagerGlobal.access$000().getBand();
    }

    public int seekUp() {
        return CarRadioManagerGlobal.access$000().seekUp();
    }

    public int seekDown() {
        return CarRadioManagerGlobal.access$000().seekDown();
    }

    public void play() {
        CarRadioManagerGlobal.access$000().play();
    }

    public void pause() {
        CarRadioManagerGlobal.access$000().pause();
    }

    public int stop() {
        return CarRadioManagerGlobal.access$000().stop();
    }

    public boolean isFreqValid(int i, int i2) {
        return CarRadioManagerGlobal.access$000().isFreqValid(i, i2);
    }

    public int getMax(int i) {
        return CarRadioManagerGlobal.access$000().getMax(i);
    }

    public int getStep(int i) {
        return CarRadioManagerGlobal.access$000().getStep(i);
    }

    public int getManualStep(int i) {
        return CarRadioManagerGlobal.access$000().getManualStep(i);
    }

    public int getMin(int i) {
        return CarRadioManagerGlobal.access$000().getMin(i);
    }

    public int getDefault(int i) {
        return CarRadioManagerGlobal.access$000().getDefault(i);
    }

    public int stepUp() {
        return CarRadioManagerGlobal.access$000().stepUp();
    }

    public int stepDown() {
        return CarRadioManagerGlobal.access$000().stepDown();
    }

    public void scanSave() {
        CarRadioManagerGlobal.access$000().scanSave();
    }

    public boolean scanSaveEx() {
        return CarRadioManagerGlobal.access$000().scanSave();
    }

    public int getScanStatus() {
        return CarRadioManagerGlobal.access$000().getScanStatus();
    }

    public boolean isScanStatus() {
        return CarRadioManagerGlobal.access$000().getScanStatus() == 1;
    }

    public void exit() {
        CarRadioManagerGlobal.access$000().exit();
    }

    public List<DataOfRadio> getSearchList(int i) {
        return CarRadioManagerGlobal.access$000().getSearchList(i);
    }

    public DataOfRadio[] getFavors(int i) {
        return CarRadioManagerGlobal.access$000().getFavors(i);
    }

    public void scanAllByFreq() {
        CarRadioManagerGlobal.access$000().scanAllByFreq();
    }

    public boolean scanAllByFreqEx() {
        return CarRadioManagerGlobal.access$000().scanAllByFreq();
    }

    public int getScanType() {
        return CarRadioManagerGlobal.access$000().getScanType();
    }

    public int getPlayingIndex() {
        return CarRadioManagerGlobal.access$000().getPlayingIndex();
    }

    public String[] getLocationInfo() {
        return CarRadioManagerGlobal.access$000().getLocationInfo();
    }

    public void setLocationInfo(String str, String str2, String str3) {
        CarRadioManagerGlobal.access$000().setLocationInfo(str, str2, str3);
    }

    public String getRadioName(int i, int i2) {
        return CarRadioManagerGlobal.access$000().getRadioName(i, i2);
    }

    public boolean isFmStero() {
        return CarRadioManagerGlobal.access$000().isFmStero();
    }

    public int getSig(int i) {
        return CarRadioManagerGlobal.access$000().getSig(i);
    }

    public boolean addFavor(DataOfRadio dataOfRadio) {
        return CarRadioManagerGlobal.access$000().addFavor(dataOfRadio, 0, false);
    }

    public boolean addFavor(DataOfRadio dataOfRadio, int i, boolean z) {
        return CarRadioManagerGlobal.access$000().addFavor(dataOfRadio, i, z);
    }

    public boolean removeFavor(DataOfRadio dataOfRadio) {
        return CarRadioManagerGlobal.access$000().removeFavor(dataOfRadio);
    }

    public List<DataOfRadio> getFavorsList(int i) {
        return CarRadioManagerGlobal.access$000().getFavorsList(i);
    }

    public void updateFavorsList(List<DataOfRadio> list, int i) {
        CarRadioManagerGlobal.access$000().updateFavorsList(list, i);
    }

    public boolean updateFavor(int i, int i2, DataOfRadio dataOfRadio) {
        return CarRadioManagerGlobal.access$000().updateFavor(i, i2, dataOfRadio);
    }

    public int getLocateArea() {
        return CarRadioManagerGlobal.access$000().getLocateArea();
    }

    public boolean isFreqFavored(DataOfRadio dataOfRadio) {
        return CarRadioManagerGlobal.access$000().isFreqFavored(dataOfRadio);
    }

    @Deprecated
    public DataOfRadio getFMFreq() {
        return CarRadioManagerGlobal.access$000().getFMFreq();
    }

    @Deprecated
    public DataOfRadio getAMFreq() {
        return CarRadioManagerGlobal.access$000().getAMFreq();
    }

    public void requestAudioFocus() {
        CarRadioManagerGlobal.access$000().requestAudioFocus();
    }

    public boolean isPlaying() {
        return CarRadioManagerGlobal.access$000().isPlaying();
    }

    public boolean setRdsCommonStatusEnable(int i, boolean z) {
        return CarRadioManagerGlobal.access$000().setRdsCommonStatusEnable(i, z);
    }

    public boolean isRdsCommonStatusEnable(int i) {
        return CarRadioManagerGlobal.access$000().isRdsCommonStatusEnable(i);
    }

    public String getRdsPS() {
        return CarRadioManagerGlobal.access$000().getRdsPS();
    }

    public String getRdsRT() {
        return CarRadioManagerGlobal.access$000().getRdsRT();
    }

    public int getRdsPty() {
        return CarRadioManagerGlobal.access$000().getRdsPty();
    }

    public List<RdsInfo> getRdsScanInfoList() {
        return CarRadioManagerGlobal.access$000().getRdsScanInfoList();
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    private static final class CarRadioManagerGlobal implements IBinder.DeathRecipient, Runnable {
        private static final String SERVICE_NAME = "car_media_radio";
        private static final CarRadioManagerGlobal gCarMusicManager = new CarRadioManagerGlobal();
        private static ICarRadioClientService mCarRadioService;
        private Thread mConnectingThread;
        private Context mContext;
        private DataOfRadio mDataOfRadioPlay;
        private InitCallback mInitCallback;
        private final Object mLock = new Object();
        private final ArrayMap<OnRadioControlListener, Handler> mControlCallbackMap = new ArrayMap<>();
        private final IBinder.DeathRecipient mDeathRecipient = new IBinder.DeathRecipient() { // from class: com.yftech.car.widget.media.manager.RadioManager.CarRadioManagerGlobal.1
            @Override // android.os.IBinder.DeathRecipient
            public void binderDied() {
                Log.e(RadioManager.TAG, "binderDied: com.yf.media.radio killing");
                if (CarRadioManagerGlobal.this.mContext != null) {
                    CarRadioManagerGlobal.this.bindService(CarRadioManagerGlobal.this.mContext, CarRadioManagerGlobal.this.mInitCallback);
                } else {
                    CarRadioManagerGlobal.this.connectCarMusicServiceLocked();
                }
            }
        };
        private final ServiceConnection mServiceConnection = new ServiceConnection() { // from class: com.yftech.car.widget.media.manager.RadioManager.CarRadioManagerGlobal.2
            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                synchronized (this) {
                    ICarRadioClientService unused = CarRadioManagerGlobal.mCarRadioService = ICarRadioClientService.Stub.asInterface(iBinder);
                    if (CarRadioManagerGlobal.mCarRadioService != null) {
                        try {
                            iBinder.linkToDeath(CarRadioManagerGlobal.this.mDeathRecipient, 0);
                            CarRadioManagerGlobal.mCarRadioService.registerUiControl(CarRadioManagerGlobal.this.mICarRadioCallback);
                        } catch (RemoteException e) {
                            e.printStackTrace();
                        }
                        if (CarRadioManagerGlobal.this.mInitCallback != null) {
                            CarRadioManagerGlobal.this.mInitCallback.onSuccess(true);
                        }
                    }
                }
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                if (CarRadioManagerGlobal.this.mInitCallback != null) {
                    CarRadioManagerGlobal.this.mInitCallback.onSuccess(false);
                }
            }
        };
        private final ICarRadioCallback.Stub mICarRadioCallback = new ICarRadioCallback.Stub() { // from class: com.yftech.car.widget.media.manager.RadioManager.CarRadioManagerGlobal.3
            /* JADX WARN: Multi-variable type inference failed */
            public IBinder asBinder() {
                return this;
            }

            public void onFreqSignal(int i, DataOfRadio dataOfRadio, int i2) throws RemoteException {
                int size = CarRadioManagerGlobal.this.mControlCallbackMap.size();
                for (int i3 = 0; i3 < size; i3++) {
                    OnRadioControlListener onRadioControlListener = (OnRadioControlListener) CarRadioManagerGlobal.this.mControlCallbackMap.keyAt(i3);
                    if (i == -1) {
                        onRadioControlListener.onPlaySignalUpdate(dataOfRadio, i2);
                    } else {
                        onRadioControlListener.onScanFreqSignal(dataOfRadio, i2);
                    }
                }
            }

            public void onSeekStatusChange(int i, int i2, int i3) throws RemoteException {
                int size = CarRadioManagerGlobal.this.mControlCallbackMap.size();
                for (int i4 = 0; i4 < size; i4++) {
                    ((OnRadioControlListener) CarRadioManagerGlobal.this.mControlCallbackMap.keyAt(i4)).onSeekStatusChange(i, i2, i3);
                }
            }

            public void onFreqChanage(int i, DataOfRadio dataOfRadio, DataOfRadio dataOfRadio2) throws RemoteException {
                CarRadioManagerGlobal.this.mDataOfRadioPlay = dataOfRadio;
                int size = CarRadioManagerGlobal.this.mControlCallbackMap.size();
                for (int i2 = 0; i2 < size; i2++) {
                    OnRadioControlListener onRadioControlListener = (OnRadioControlListener) CarRadioManagerGlobal.this.mControlCallbackMap.keyAt(i2);
                    onRadioControlListener.onFreqChange(dataOfRadio, dataOfRadio2);
                    onRadioControlListener.onFreqChanage(i, dataOfRadio, dataOfRadio2);
                }
            }

            public void onAudioFocusChange(int i) throws RemoteException {
                int size = CarRadioManagerGlobal.this.mControlCallbackMap.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((OnRadioControlListener) CarRadioManagerGlobal.this.mControlCallbackMap.keyAt(i2)).onAudioFocusChange(i);
                }
            }

            public void onFavorChange(int i, DataOfRadio dataOfRadio) throws RemoteException {
                int size = CarRadioManagerGlobal.this.mControlCallbackMap.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((OnRadioControlListener) CarRadioManagerGlobal.this.mControlCallbackMap.keyAt(i2)).onFavorChange(i, dataOfRadio);
                }
            }

            public void onPlayPause(boolean z) throws RemoteException {
                int size = CarRadioManagerGlobal.this.mControlCallbackMap.size();
                for (int i = 0; i < size; i++) {
                    ((OnRadioControlListener) CarRadioManagerGlobal.this.mControlCallbackMap.keyAt(i)).onPlayPause(z);
                }
            }

            public void onRdsCommonStatusChange(int i, boolean z) throws RemoteException {
                int size = CarRadioManagerGlobal.this.mControlCallbackMap.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((OnRadioControlListener) CarRadioManagerGlobal.this.mControlCallbackMap.keyAt(i2)).onRdsCommonStatusChange(i, z);
                }
            }

            public void onRdsCommonStringChange(int i, String str) throws RemoteException {
                int size = CarRadioManagerGlobal.this.mControlCallbackMap.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((OnRadioControlListener) CarRadioManagerGlobal.this.mControlCallbackMap.keyAt(i2)).onRdsCommonStringChange(i, str);
                }
            }

            public void onRdsPtyStatusChange(int i) throws RemoteException {
                int size = CarRadioManagerGlobal.this.mControlCallbackMap.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((OnRadioControlListener) CarRadioManagerGlobal.this.mControlCallbackMap.keyAt(i2)).onRdsPtyStatusChange(i);
                }
            }

            public void onRdsScanStatusChange(RdsInfo rdsInfo) throws RemoteException {
                int size = CarRadioManagerGlobal.this.mControlCallbackMap.size();
                for (int i = 0; i < size; i++) {
                    ((OnRadioControlListener) CarRadioManagerGlobal.this.mControlCallbackMap.keyAt(i)).onRdsScanStatusChange(rdsInfo);
                }
            }

            public void onRdsPiFreqChange(int i, int i2) throws RemoteException {
                int size = CarRadioManagerGlobal.this.mControlCallbackMap.size();
                for (int i3 = 0; i3 < size; i3++) {
                    ((OnRadioControlListener) CarRadioManagerGlobal.this.mControlCallbackMap.keyAt(i3)).onRdsPiFreqChange(i, i2);
                }
            }

            public void onRadioMute(boolean z) throws RemoteException {
                int size = CarRadioManagerGlobal.this.mControlCallbackMap.size();
                for (int i = 0; i < size; i++) {
                    ((OnRadioControlListener) CarRadioManagerGlobal.this.mControlCallbackMap.keyAt(i)).onRadioMute(z);
                }
            }
        };

        static /* synthetic */ CarRadioManagerGlobal access$000() {
            return get();
        }

        private CarRadioManagerGlobal() {
        }

        private static CarRadioManagerGlobal get() {
            return gCarMusicManager;
        }

        private ICarRadioClientService getCarMusicService() {
            ICarRadioClientService iCarRadioClientService;
            synchronized (this.mLock) {
                if (!connectCarMusicServiceLocked() || mCarRadioService == null) {
                    Log.e(RadioManager.TAG, "car radio service is unavailable");
                    startReconnectThread();
                }
                iCarRadioClientService = mCarRadioService;
            }
            return iCarRadioClientService;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean connectCarMusicServiceLocked() {
            if (mCarRadioService != null && mCarRadioService.asBinder() != null && mCarRadioService.asBinder().isBinderAlive()) {
                return true;
            }
            IBinder service = ServiceManager.getService(SERVICE_NAME);
            try {
                if (service != null) {
                    service.linkToDeath(this, 0);
                    mCarRadioService = ICarRadioClientService.Stub.asInterface(service);
                    mCarRadioService.registerUiControl(this.mICarRadioCallback);
                    return true;
                }
                Log.e(RadioManager.TAG, "the car radio service not started!connected service fail!");
                return false;
            } catch (RemoteException e) {
                Log.e(RadioManager.TAG, "link to death error!" + e.getMessage());
                e.printStackTrace();
                return false;
            }
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            Log.w(RadioManager.TAG, "binder died,reconnect service car_media_radio after 1000ms!");
            synchronized (this.mLock) {
                if (mCarRadioService == null) {
                    return;
                }
                mCarRadioService = null;
                if (this.mControlCallbackMap.size() > 0) {
                    startReconnectThread();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void bindService(Context context, InitCallback initCallback) {
            this.mInitCallback = initCallback;
            if (mCarRadioService == null || mCarRadioService.asBinder() == null || !mCarRadioService.asBinder().isBinderAlive()) {
                this.mContext = context;
                Intent intent = new Intent("com.yf.radio.service.RadioService");
                intent.setPackage("com.yftech.media");
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
            Log.i(RadioManager.TAG, "connecting service car_media_radio!");
            for (int i = 0; !connectCarMusicServiceLocked() && i < 120; i++) {
                try {
                    Thread.sleep(1000L);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                Log.i(RadioManager.TAG, "reconnecting service car_media_radio!");
                connectCarMusicServiceLocked();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void registerCarRadioControlCallback(OnRadioControlListener onRadioControlListener, Handler handler) {
            if (onRadioControlListener == null) {
                throw new NullPointerException("callback is null,callback Cannot be empty");
            }
            synchronized (this.mLock) {
                int size = this.mControlCallbackMap.size();
                int i = 0;
                while (true) {
                    if (i >= size) {
                        break;
                    }
                    OnRadioControlListener keyAt = this.mControlCallbackMap.keyAt(i);
                    if (keyAt == null) {
                        this.mControlCallbackMap.removeAt(i);
                        registerCarRadioControlCallback(onRadioControlListener, handler);
                        return;
                    } else {
                        if (keyAt == onRadioControlListener) {
                            this.mControlCallbackMap.removeAt(i);
                            break;
                        }
                        i++;
                    }
                }
                if (!connectCarMusicServiceLocked()) {
                    startReconnectThread();
                }
                if (!this.mControlCallbackMap.containsKey(onRadioControlListener)) {
                    this.mControlCallbackMap.put(onRadioControlListener, handler);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void unregisterCarRadioControlCallback(OnRadioControlListener onRadioControlListener) {
            synchronized (this.mLock) {
                if (this.mControlCallbackMap.containsKey(onRadioControlListener)) {
                    this.mControlCallbackMap.remove(onRadioControlListener);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int setFreq(int i, int i2) {
            synchronized (this.mLock) {
                mCarRadioService = getCarMusicService();
                if (mCarRadioService != null) {
                    try {
                        return mCarRadioService.setFreq(i, i2);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                return -1;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public DataOfRadio getFreq() {
            if (this.mDataOfRadioPlay != null) {
                return this.mDataOfRadioPlay;
            }
            synchronized (this.mLock) {
                mCarRadioService = getCarMusicService();
                if (mCarRadioService != null) {
                    try {
                        this.mDataOfRadioPlay = mCarRadioService.getFreq();
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                    if (this.mDataOfRadioPlay != null) {
                        return this.mDataOfRadioPlay;
                    }
                }
                return new DataOfRadio("", 0, -1);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public DataOfRadio getFreqEx() {
            synchronized (this.mLock) {
                mCarRadioService = getCarMusicService();
                if (mCarRadioService != null) {
                    try {
                        return mCarRadioService.getFreq();
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                return new DataOfRadio("", 0, -1);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int setBand(int i) {
            synchronized (this.mLock) {
                mCarRadioService = getCarMusicService();
                if (mCarRadioService != null) {
                    try {
                        return mCarRadioService.setBand(i);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                return -1;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getBand() {
            synchronized (this.mLock) {
                mCarRadioService = getCarMusicService();
                if (mCarRadioService != null) {
                    try {
                        return mCarRadioService.getBand();
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                return -1;
            }
        }

        private int getFavorBand() {
            synchronized (this.mLock) {
                mCarRadioService = getCarMusicService();
                if (mCarRadioService != null) {
                    try {
                        return mCarRadioService.getFavorBand();
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                return 0;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int seekUp() {
            synchronized (this.mLock) {
                mCarRadioService = getCarMusicService();
                if (mCarRadioService != null) {
                    try {
                        return mCarRadioService.seekUp();
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                return -1;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int seekDown() {
            synchronized (this.mLock) {
                mCarRadioService = getCarMusicService();
                if (mCarRadioService != null) {
                    try {
                        return mCarRadioService.seekDown();
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                return -1;
            }
        }

        private void seekPlay() {
            synchronized (this.mLock) {
                mCarRadioService = getCarMusicService();
                if (mCarRadioService != null) {
                    try {
                        mCarRadioService.seekPlay();
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void play() {
            synchronized (this.mLock) {
                mCarRadioService = getCarMusicService();
                if (mCarRadioService != null) {
                    try {
                        mCarRadioService.play();
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void pause() {
            synchronized (this.mLock) {
                mCarRadioService = getCarMusicService();
                if (mCarRadioService != null) {
                    try {
                        mCarRadioService.pause();
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int stop() {
            synchronized (this.mLock) {
                mCarRadioService = getCarMusicService();
                if (mCarRadioService != null) {
                    try {
                        return mCarRadioService.stop();
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                return -1;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isFreqValid(int i, int i2) {
            synchronized (this.mLock) {
                mCarRadioService = getCarMusicService();
                if (mCarRadioService != null) {
                    try {
                        return mCarRadioService.isFreqValid(i, i2);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                return false;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getMax(int i) {
            synchronized (this.mLock) {
                mCarRadioService = getCarMusicService();
                if (mCarRadioService != null) {
                    try {
                        return mCarRadioService.getMax(i);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                return -1;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getStep(int i) {
            synchronized (this.mLock) {
                mCarRadioService = getCarMusicService();
                if (mCarRadioService != null) {
                    try {
                        return mCarRadioService.getStep(i);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                return -1;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getManualStep(int i) {
            synchronized (this.mLock) {
                mCarRadioService = getCarMusicService();
                if (mCarRadioService != null) {
                    try {
                        return mCarRadioService.getManualStep(i);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                return -1;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getMin(int i) {
            synchronized (this.mLock) {
                mCarRadioService = getCarMusicService();
                if (mCarRadioService != null) {
                    try {
                        return mCarRadioService.getMin(i);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                return -1;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getDefault(int i) {
            synchronized (this.mLock) {
                mCarRadioService = getCarMusicService();
                if (mCarRadioService != null) {
                    try {
                        return mCarRadioService.getDefault(i);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                return -1;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int stepUp() {
            synchronized (this.mLock) {
                mCarRadioService = getCarMusicService();
                if (mCarRadioService != null) {
                    try {
                        return mCarRadioService.stepUp();
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                return -1;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int stepDown() {
            synchronized (this.mLock) {
                mCarRadioService = getCarMusicService();
                if (mCarRadioService != null) {
                    try {
                        return mCarRadioService.stepDown();
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                return -1;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean scanSave() {
            synchronized (this.mLock) {
                mCarRadioService = getCarMusicService();
                if (mCarRadioService != null) {
                    try {
                        return mCarRadioService.scanSave();
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                return false;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getScanStatus() {
            synchronized (this.mLock) {
                mCarRadioService = getCarMusicService();
                if (mCarRadioService != null) {
                    try {
                        return mCarRadioService.getScanStatus();
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                return -1;
            }
        }

        private void silent() {
            synchronized (this.mLock) {
                mCarRadioService = getCarMusicService();
                if (mCarRadioService != null) {
                    try {
                        mCarRadioService.slient();
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void exit() {
            synchronized (this.mLock) {
                mCarRadioService = getCarMusicService();
                if (mCarRadioService != null) {
                    try {
                        mCarRadioService.slient();
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean updateFavor(int i, int i2, DataOfRadio dataOfRadio) {
            synchronized (this.mLock) {
                mCarRadioService = getCarMusicService();
                if (mCarRadioService != null) {
                    try {
                        return mCarRadioService.updateFavor(i, i2, dataOfRadio);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                return false;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public List<DataOfRadio> getSearchList(int i) {
            synchronized (this.mLock) {
                mCarRadioService = getCarMusicService();
                if (mCarRadioService != null) {
                    try {
                        return mCarRadioService.getSearchList(i);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public DataOfRadio[] getFavors(int i) {
            synchronized (this.mLock) {
                mCarRadioService = getCarMusicService();
                if (mCarRadioService != null) {
                    try {
                        return mCarRadioService.getFavors(i);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                return null;
            }
        }

        private void scanAll(int i) {
            synchronized (this.mLock) {
                mCarRadioService = getCarMusicService();
                if (mCarRadioService != null) {
                    try {
                        mCarRadioService.scanAll(i);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean scanAllByFreq() {
            synchronized (this.mLock) {
                mCarRadioService = getCarMusicService();
                if (mCarRadioService != null) {
                    try {
                        return mCarRadioService.scanAllByFreq();
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                return false;
            }
        }

        private boolean isFavorsEmpty() {
            synchronized (this.mLock) {
                mCarRadioService = getCarMusicService();
                if (mCarRadioService != null) {
                    try {
                        return mCarRadioService.isFavorsEmpty();
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                return false;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getScanType() {
            synchronized (this.mLock) {
                mCarRadioService = getCarMusicService();
                if (mCarRadioService != null) {
                    try {
                        return mCarRadioService.getScanType();
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                return -1;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getPlayingIndex() {
            synchronized (this.mLock) {
                mCarRadioService = getCarMusicService();
                if (mCarRadioService != null) {
                    try {
                        return mCarRadioService.getPlayingIndex();
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                return -1;
            }
        }

        private void setFavorBand(int i) {
            synchronized (this.mLock) {
                mCarRadioService = getCarMusicService();
                if (mCarRadioService != null) {
                    try {
                        mCarRadioService.setFavorBand(i);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String[] getLocationInfo() {
            synchronized (this.mLock) {
                mCarRadioService = getCarMusicService();
                if (mCarRadioService != null) {
                    try {
                        return mCarRadioService.getLocationInfo();
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setLocationInfo(String str, String str2, String str3) {
            synchronized (this.mLock) {
                mCarRadioService = getCarMusicService();
                if (mCarRadioService != null) {
                    try {
                        mCarRadioService.setLocationInfo(str, str2, str3);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String getRadioName(int i, int i2) {
            synchronized (this.mLock) {
                mCarRadioService = getCarMusicService();
                if (mCarRadioService != null) {
                    try {
                        return mCarRadioService.getRadioName(i, i2);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                return "";
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isFmStero() {
            synchronized (this.mLock) {
                mCarRadioService = getCarMusicService();
                if (mCarRadioService != null) {
                    try {
                        return mCarRadioService.isFmStero();
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                return false;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getSig(int i) {
            synchronized (this.mLock) {
                mCarRadioService = getCarMusicService();
                if (mCarRadioService != null) {
                    try {
                        return mCarRadioService.getSig(i);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                return 0;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean addFavor(DataOfRadio dataOfRadio, int i, boolean z) {
            synchronized (this.mLock) {
                mCarRadioService = getCarMusicService();
                if (mCarRadioService != null) {
                    try {
                        return mCarRadioService.addFavor(dataOfRadio, i, z);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                return false;
            }
        }

        private boolean isFavorFull(DataOfRadio dataOfRadio) {
            synchronized (this.mLock) {
                mCarRadioService = getCarMusicService();
                if (mCarRadioService != null) {
                    try {
                        return mCarRadioService.isFavorFull(dataOfRadio);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                return false;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean removeFavor(DataOfRadio dataOfRadio) {
            synchronized (this.mLock) {
                mCarRadioService = getCarMusicService();
                if (mCarRadioService != null) {
                    try {
                        return mCarRadioService.removeFavor(dataOfRadio);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                return false;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public List<DataOfRadio> getFavorsList(int i) {
            synchronized (this.mLock) {
                mCarRadioService = getCarMusicService();
                if (mCarRadioService != null) {
                    try {
                        return mCarRadioService.getFavorsList(i);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateFavorsList(List<DataOfRadio> list, int i) {
            synchronized (this.mLock) {
                mCarRadioService = getCarMusicService();
                if (mCarRadioService != null) {
                    try {
                        mCarRadioService.updateFavorsList(list, i);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getLocateArea() {
            synchronized (this.mLock) {
                mCarRadioService = getCarMusicService();
                if (mCarRadioService != null) {
                    try {
                        return mCarRadioService.getLocateArea();
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                return 0;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isFreqFavored(DataOfRadio dataOfRadio) {
            synchronized (this.mLock) {
                mCarRadioService = getCarMusicService();
                if (mCarRadioService != null) {
                    try {
                        return mCarRadioService.isFreqFavored(dataOfRadio);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                return false;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public DataOfRadio getFMFreq() {
            synchronized (this.mLock) {
                mCarRadioService = getCarMusicService();
                if (mCarRadioService != null) {
                    try {
                        return mCarRadioService.getFMFreq();
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                return new DataOfRadio("", getDefault(0), 0);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public DataOfRadio getAMFreq() {
            synchronized (this.mLock) {
                mCarRadioService = getCarMusicService();
                if (mCarRadioService != null) {
                    try {
                        return mCarRadioService.getAMFreq();
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                return new DataOfRadio("", getDefault(2), 2);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void requestAudioFocus() {
            synchronized (this.mLock) {
                mCarRadioService = getCarMusicService();
                if (mCarRadioService != null) {
                    try {
                        mCarRadioService.requestAudioFocus();
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isPlaying() {
            mCarRadioService = getCarMusicService();
            if (mCarRadioService == null) {
                return false;
            }
            try {
                return mCarRadioService.isPlaying();
            } catch (RemoteException e) {
                e.printStackTrace();
                return false;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean setRdsCommonStatusEnable(int i, boolean z) {
            synchronized (this.mLock) {
                mCarRadioService = getCarMusicService();
                if (mCarRadioService != null) {
                    try {
                        return mCarRadioService.setRdsCommonStatusEnable(i, z);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                return false;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isRdsCommonStatusEnable(int i) {
            synchronized (this.mLock) {
                mCarRadioService = getCarMusicService();
                if (mCarRadioService != null) {
                    try {
                        return mCarRadioService.isRdsCommonStatusEnable(i);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                return false;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String getRdsPS() {
            synchronized (this.mLock) {
                mCarRadioService = getCarMusicService();
                if (mCarRadioService != null) {
                    try {
                        return mCarRadioService.getRdsPS();
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String getRdsRT() {
            synchronized (this.mLock) {
                mCarRadioService = getCarMusicService();
                if (mCarRadioService != null) {
                    try {
                        return mCarRadioService.getRdsRT();
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getRdsPty() {
            synchronized (this.mLock) {
                mCarRadioService = getCarMusicService();
                if (mCarRadioService != null) {
                    try {
                        return mCarRadioService.getRdsPty();
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                return -1;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public List<RdsInfo> getRdsScanInfoList() {
            synchronized (this.mLock) {
                mCarRadioService = getCarMusicService();
                if (mCarRadioService != null) {
                    try {
                        return mCarRadioService.getRdsScanInfoList();
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                return null;
            }
        }
    }
}
