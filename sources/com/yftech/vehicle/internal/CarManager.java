package com.yftech.vehicle.internal;

import android.os.IBinder;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.Log;
import com.yftech.vehicle.internal.ICarService;
import com.yftech.vehicle.internal.ISignalCallback;
import com.yftech.vehicle.internal.adapter.ICarBsp;
import com.yftech.vehicle.internal.adapter.ICarDashBoard;
import com.yftech.vehicle.internal.adapter.ICarKey;
import com.yftech.vehicle.internal.adapter.ICarMisc;
import com.yftech.vehicle.internal.project.IProject;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes4.dex */
public class CarManager {
    private static final String SERVICE_NAME = "yfcarservice";
    private static final String TAG = "CarManager";
    private static ICarService mService;
    private static CarManager sMe;
    private SignalCallback mCallback;
    private byte[] mL = new byte[0];
    private IBinder.DeathRecipient mDeathRecipient = new IBinder.DeathRecipient() { // from class: com.yftech.vehicle.internal.CarManager.1
        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            int i = 0;
            if (CarManager.mService != null) {
                CarManager.mService.asBinder().unlinkToDeath(this, 0);
                ICarService unused = CarManager.mService = null;
            }
            while (i <= 2) {
                try {
                    if (CarManager.mService != null) {
                        return;
                    }
                    i++;
                    Thread.sleep(1000L);
                    CarManager.this.getService();
                    StringBuilder sb = new StringBuilder();
                    sb.append("service dead ,mDeathRecipient-> try conn 1000ms-> count =");
                    sb.append(i);
                    sb.append(" mService=");
                    sb.append(CarManager.mService != null ? Integer.valueOf(CarManager.mService.hashCode()) : "null");
                    Log.w(CarManager.TAG, sb.toString());
                    if (CarManager.mService != null) {
                        CarManager.this.newOrRetryRegisterSignalCallback(null);
                    }
                } catch (InterruptedException unused2) {
                    Log.w(CarManager.TAG, "service dead , try conn sleep 1000ms error !");
                    return;
                }
            }
        }
    };
    private Map<Integer, List<SignalReceiverHolder>> mSignalReceivers = new HashMap();

    private CarManager() {
    }

    public static synchronized CarManager get() {
        CarManager carManager;
        synchronized (CarManager.class) {
            if (sMe != null) {
                carManager = sMe;
            } else {
                carManager = new CarManager();
                sMe = carManager;
            }
        }
        return carManager;
    }

    public static synchronized boolean isServiceConnected() {
        boolean z;
        synchronized (CarManager.class) {
            z = mService != null;
        }
        return z;
    }

    public Number getSignalValue(int i) {
        return new CarData(getSignalValueInner(i)).numberValue();
    }

    public Number[] getSignalsValue(int[] iArr) {
        byte[] signalsValueInner = getSignalsValueInner(iArr);
        if (signalsValueInner == null || signalsValueInner.length != iArr.length) {
            return null;
        }
        Number[] numberArr = new Number[signalsValueInner.length];
        CarData carData = new CarData(signalsValueInner);
        for (int i = 0; i < numberArr.length; i++) {
            numberArr[i] = carData.numberValue();
            carData.next();
        }
        return numberArr;
    }

    public byte[] getSignalDataValue(int i) {
        return new CarData(getSignalValueInner(i)).dataValue();
    }

    public boolean setSignalValue(int i, byte b) {
        return setSignalValueInner(i, new CarData(b).getBytes());
    }

    public boolean setSignalValue(int i, short s) {
        return setSignalValueInner(i, new CarData(s).getBytes());
    }

    public boolean setSignalValue(int i, int i2) {
        return setSignalValueInner(i, new CarData(i2).getBytes());
    }

    public boolean setSignalValue(int i, long j) {
        return setSignalValueInner(i, new CarData(j).getBytes());
    }

    public boolean setSignalValue(int i, float f) {
        return setSignalValueInner(i, new CarData(f).getBytes());
    }

    public boolean setSignalValue(int i, double d) {
        return setSignalValueInner(i, new CarData(d).getBytes());
    }

    public boolean setSignalValue(int i, boolean z) {
        return setSignalValue(i, z ? (byte) 1 : (byte) 0);
    }

    public boolean setSignalValue(int i, byte[] bArr) {
        return setSignalValueInner(i, new CarData(bArr, false).getBytes());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void registerReceiver(Object obj) {
        int i;
        int[] iArr;
        Class<?> cls = obj.getClass();
        HashMap hashMap = new HashMap();
        for (Class<?> cls2 = cls; cls2 != null && !isSystemCalss(cls2.getName()); cls2 = cls2.getSuperclass()) {
            Method[] declaredMethods = cls2.getDeclaredMethods();
            int i2 = 0;
            int i3 = 0;
            while (i3 < declaredMethods.length) {
                Method method = declaredMethods[i3];
                SignalReceiver signalReceiver = (SignalReceiver) method.getAnnotation(SignalReceiver.class);
                if (signalReceiver != null) {
                    Class<?>[] parameterTypes = method.getParameterTypes();
                    int signalId = signalReceiver.signalId();
                    int[] signalsIdArray = signalReceiver.signalsIdArray();
                    int i4 = (signalsIdArray == null || signalsIdArray.length <= 0 || signalsIdArray[i2] < 0) ? i2 : 1;
                    if (i4 == 0 && signalId >= 0) {
                        signalsIdArray = new int[1];
                        signalsIdArray[i2] = signalId;
                    }
                    int[] iArr2 = signalsIdArray;
                    if (parameterTypes != null && iArr2 != null && iArr2.length > 0) {
                        if (parameterTypes.length == (i4 != 0 ? 2 : 1)) {
                            Class<?> cls3 = parameterTypes[i4];
                            int i5 = i2;
                            while (i5 < iArr2.length) {
                                int i6 = iArr2[i5];
                                if (i6 == -1) {
                                    i = i5;
                                    iArr = iArr2;
                                } else {
                                    i = i5;
                                    iArr = iArr2;
                                    SignalReceiverHolder signalReceiverHolder = new SignalReceiverHolder(obj, method, cls3, i4, signalReceiver.valueToEnabledState());
                                    List<SignalReceiverHolder> list = this.mSignalReceivers.get(Integer.valueOf(i6));
                                    if (list == null) {
                                        list = new ArrayList<>();
                                    }
                                    if (!list.contains(signalReceiverHolder)) {
                                        list.add(signalReceiverHolder);
                                    }
                                    this.mSignalReceivers.put(Integer.valueOf(i6), list);
                                    List<SignalReceiverHolder> list2 = hashMap.get(Integer.valueOf(i6));
                                    if (list2 == null) {
                                        list2 = new ArrayList<>();
                                    }
                                    if (!list2.contains(signalReceiverHolder)) {
                                        list2.add(signalReceiverHolder);
                                    }
                                    hashMap.put(Integer.valueOf(i6), list2);
                                }
                                i5 = i + 1;
                                iArr2 = iArr;
                            }
                        }
                    }
                }
                i3++;
                i2 = 0;
            }
        }
        newOrRetryRegisterSignalCallback(hashMap);
    }

    public void unregisterReceiver(Object obj) {
        Iterator<List<SignalReceiverHolder>> it = this.mSignalReceivers.values().iterator();
        while (it.hasNext()) {
            List<SignalReceiverHolder> next = it.next();
            if (next != null) {
                ArrayList arrayList = new ArrayList();
                for (SignalReceiverHolder signalReceiverHolder : next) {
                    Object obj2 = signalReceiverHolder.receiver.get();
                    if (isObjectsEqual(obj2, obj) || obj2 == null) {
                        arrayList.add(signalReceiverHolder);
                    }
                }
                next.removeAll(arrayList);
            }
            if (next == null || next.size() == 0) {
                it.remove();
            }
        }
        newOrRetryRegisterSignalCallback(null);
    }

    private byte[] getSignalValueInner(int i) {
        try {
            return getService().getSignalValue(i);
        } catch (Throwable th) {
            Log.w(TAG, "getSignalValue()", th);
            try {
                return getService(true).getSignalValue(i);
            } catch (Throwable unused) {
                Log.e(TAG, "getSignalValue() retry", th);
                return null;
            }
        }
    }

    private byte[] getSignalsValueInner(int[] iArr) {
        try {
            return getService().getSignalsValue(iArr);
        } catch (Throwable th) {
            Log.w(TAG, "getSignalsValue()", th);
            try {
                return getService(true).getSignalsValue(iArr);
            } catch (Throwable unused) {
                Log.e(TAG, "getSignalsValue() retry", th);
                return null;
            }
        }
    }

    private boolean setSignalValueInner(int i, byte[] bArr) {
        try {
            return getService().setSignalValue(i, bArr);
        } catch (Throwable th) {
            Log.w(TAG, "setSignalValue()", th);
            try {
                return getService(true).setSignalValue(i, bArr);
            } catch (Throwable unused) {
                Log.e(TAG, "setSignalValue() retry", th);
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendSignalCallback(int i, Number number) {
        Object valueOf;
        List<SignalReceiverHolder> list = this.mSignalReceivers.get(Integer.valueOf(i));
        int size = list != null ? list.size() : 0;
        for (int i2 = 0; i2 < size; i2++) {
            SignalReceiverHolder signalReceiverHolder = list.get(i2);
            try {
                if (signalReceiverHolder.valueToEnabledState) {
                    valueOf = Boolean.valueOf(number.byteValue() == 1);
                } else if (signalReceiverHolder.valueOfMethod != null) {
                    valueOf = signalReceiverHolder.valueOfMethod.invoke(null, Integer.valueOf(number.intValue()));
                } else {
                    if (!signalReceiverHolder.paramType.equals(Integer.TYPE) && !signalReceiverHolder.paramType.equals(Integer.class)) {
                        if (!signalReceiverHolder.paramType.equals(Byte.TYPE) && !signalReceiverHolder.paramType.equals(Byte.class)) {
                            if (!signalReceiverHolder.paramType.equals(Short.TYPE) && !signalReceiverHolder.paramType.equals(Short.class)) {
                                if (!signalReceiverHolder.paramType.equals(Long.TYPE) && !signalReceiverHolder.paramType.equals(Long.class)) {
                                    if (!signalReceiverHolder.paramType.equals(Float.TYPE) && !signalReceiverHolder.paramType.equals(Float.class)) {
                                        if (!signalReceiverHolder.paramType.equals(Double.TYPE) && !signalReceiverHolder.paramType.equals(Double.class)) {
                                            if (!signalReceiverHolder.paramType.equals(Boolean.TYPE) && !signalReceiverHolder.paramType.equals(Boolean.class)) {
                                                valueOf = number;
                                            }
                                            valueOf = Boolean.valueOf(number.byteValue() == 1);
                                        }
                                        valueOf = Double.valueOf(number.doubleValue());
                                    }
                                    valueOf = Float.valueOf(number.floatValue());
                                }
                                valueOf = Long.valueOf(number.longValue());
                            }
                            valueOf = Short.valueOf(number.shortValue());
                        }
                        valueOf = Byte.valueOf(number.byteValue());
                    }
                    valueOf = Integer.valueOf(number.intValue());
                }
                if (signalReceiverHolder.needSignalId) {
                    signalReceiverHolder.method.invoke(signalReceiverHolder.receiver.get(), Integer.valueOf(i), valueOf);
                } else {
                    signalReceiverHolder.method.invoke(signalReceiverHolder.receiver.get(), valueOf);
                }
            } catch (Throwable th) {
                Log.e(TAG, "sendSignalCallback() for Number error", th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendSignalCallback(int i, byte[] bArr) {
        List<SignalReceiverHolder> list = this.mSignalReceivers.get(Integer.valueOf(i));
        int size = list != null ? list.size() : 0;
        for (int i2 = 0; i2 < size; i2++) {
            SignalReceiverHolder signalReceiverHolder = list.get(i2);
            try {
                Object invoke = signalReceiverHolder.valueOfMethod != null ? signalReceiverHolder.valueOfMethod.invoke(null, bArr) : bArr;
                if (signalReceiverHolder.needSignalId) {
                    signalReceiverHolder.method.invoke(signalReceiverHolder.receiver.get(), Integer.valueOf(i), invoke);
                } else {
                    signalReceiverHolder.method.invoke(signalReceiverHolder.receiver.get(), invoke);
                }
            } catch (Throwable th) {
                Log.e(TAG, "sendSignalCallback() for byte[] error", th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void newOrRetryRegisterSignalCallback(Map<Integer, List<SignalReceiverHolder>> map) {
        int size;
        if (map != null) {
            size = map.size();
        } else {
            size = this.mSignalReceivers.size();
        }
        if (size > 0) {
            int i = 0;
            int[] iArr = new int[size];
            if (map == null) {
                map = this.mSignalReceivers;
            }
            Iterator<Integer> it = map.keySet().iterator();
            while (it.hasNext()) {
                iArr[i] = it.next().intValue();
                i++;
            }
            if (this.mCallback == null) {
                this.mCallback = new SignalCallback();
            }
            registerSignalCallback(this.mCallback, iArr);
            return;
        }
        unregisterSignalCallback(this.mCallback);
    }

    private void registerSignalCallback(ISignalCallback iSignalCallback, int[] iArr) {
        try {
            getService().registerSignalCallback(iSignalCallback, iArr);
            Log.w(TAG, "registerSignalCallback() newOrRetry " + Arrays.toString(iArr) + ", " + iSignalCallback);
        } catch (Throwable th) {
            Log.w(TAG, "registerSignalCallback() newOrRetry ", th);
            try {
                getService(true).registerSignalCallback(iSignalCallback, iArr);
            } catch (Throwable unused) {
                Log.e(TAG, "registerSignalCallback() retry", th);
            }
        }
    }

    private void unregisterSignalCallback(ISignalCallback iSignalCallback) {
        try {
            getService().unregisterSignalCallback(iSignalCallback);
        } catch (Throwable th) {
            Log.w(TAG, "unregisterSignalCallback()", th);
            try {
                getService(true).unregisterSignalCallback(iSignalCallback);
            } catch (Throwable unused) {
                Log.e(TAG, "unregisterSignalCallback() retry", th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ICarService getService() {
        return getService(false);
    }

    private ICarService getService(boolean z) {
        synchronized (this.mL) {
            if (mService == null || z) {
                mService = null;
                IBinder service = ServiceManager.getService(SERVICE_NAME);
                if (service != null) {
                    try {
                        service.linkToDeath(this.mDeathRecipient, 0);
                        mService = ICarService.Stub.asInterface(service);
                    } catch (RemoteException e) {
                        Log.e(TAG, "getService->linkToDeath error, e->" + e.getMessage());
                    }
                }
            }
        }
        return mService;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes4.dex */
    public class SignalCallback extends ISignalCallback.Stub {
        private SignalCallback() {
        }

        @Override // com.yftech.vehicle.internal.ISignalCallback
        public void onValueChanged(int i, byte[] bArr) throws RemoteException {
            StringBuffer stringBuffer = new StringBuffer();
            for (byte b : bArr) {
                stringBuffer.append(Integer.toHexString(b));
                stringBuffer.append(", ");
            }
            CarData carData = new CarData(bArr);
            if (carData.isDataValue()) {
                CarManager.this.sendSignalCallback(i, carData.dataValue());
            } else {
                CarManager.this.sendSignalCallback(i, carData.numberValue());
            }
        }
    }

    private boolean isObjectsEqual(Object obj, Object obj2) {
        return obj != null && obj.equals(obj2);
    }

    private boolean isSystemCalss(String str) {
        return str.startsWith("java.") || str.startsWith("javax.") || str.startsWith("android.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes4.dex */
    public class SignalReceiverHolder {
        Method method;
        boolean needSignalId;
        Class<?> paramType;
        Reference<Object> receiver;
        Method valueOfMethod;
        boolean valueToEnabledState;

        SignalReceiverHolder(Object obj, Method method, Class<?> cls, boolean z, boolean z2) {
            this.receiver = new WeakReference(obj);
            this.method = method;
            this.paramType = cls;
            this.needSignalId = z;
            this.valueToEnabledState = z2;
            if (cls.isEnum() || cls == ICarKey.CarKeyEvent.class || cls == ICarMisc.KeyTestEvent.class || cls == ICarMisc.ErrorCodeInfo.class || cls == ICarMisc.DeviceNode.class || cls == ICarDashBoard.SetItemUnitInfo.class || cls == ICarBsp.DisplayDtc.class || cls == IProject.PersonalMemoryInfo.class) {
                try {
                    try {
                        this.valueOfMethod = cls.getMethod("valueOf", Integer.TYPE);
                    } catch (Throwable th) {
                        Log.e(CarManager.TAG, "SignalReceiverHolder<init> valueOf byte[] error", th);
                    }
                } catch (Throwable unused) {
                    this.valueOfMethod = cls.getMethod("valueOf", byte[].class);
                }
            }
        }

        public int hashCode() {
            return (((this.receiver == null ? 0 : this.receiver.hashCode()) + 31) * 31) + (this.method != null ? this.method.hashCode() : 0);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            SignalReceiverHolder signalReceiverHolder = (SignalReceiverHolder) obj;
            if (this.receiver.get() == null) {
                if (signalReceiverHolder.receiver.get() != null) {
                    return false;
                }
            } else if (!this.receiver.get().equals(signalReceiverHolder.receiver.get())) {
                return false;
            }
            if (this.method == null) {
                if (signalReceiverHolder.method != null) {
                    return false;
                }
            } else if (!this.method.equals(signalReceiverHolder.method)) {
                return false;
            }
            return true;
        }

        public String toString() {
            return "SignalReceiverHolder{receiver=" + this.receiver.getClass().getSimpleName() + ", method=" + this.method.getName() + '}';
        }
    }
}
