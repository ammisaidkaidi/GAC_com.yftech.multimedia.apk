package android.os;

import android.os.BatteryStats;
import android.system.OsConstants;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.util.Locale;

/* loaded from: /home/user/work/dex/classes2.dex */
class CommonTimeUtils {
    public static final int ERROR = -1;
    public static final int ERROR_BAD_VALUE = -4;
    public static final int ERROR_DEAD_OBJECT = -7;
    public static final int SUCCESS = 0;
    private String mInterfaceDesc;
    private IBinder mRemote;

    public CommonTimeUtils(IBinder iBinder, String str) {
        this.mRemote = iBinder;
        this.mInterfaceDesc = str;
    }

    public int transactGetInt(int i, int i2) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(this.mInterfaceDesc);
            this.mRemote.transact(i, obtain, obtain2, 0);
            if (obtain2.readInt() == 0) {
                i2 = obtain2.readInt();
            }
            return i2;
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    public int transactSetInt(int i, int i2) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(this.mInterfaceDesc);
            obtain.writeInt(i2);
            this.mRemote.transact(i, obtain, obtain2, 0);
            return obtain2.readInt();
        } catch (RemoteException unused) {
            return -7;
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    public long transactGetLong(int i, long j) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(this.mInterfaceDesc);
            this.mRemote.transact(i, obtain, obtain2, 0);
            if (obtain2.readInt() == 0) {
                j = obtain2.readLong();
            }
            return j;
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    public int transactSetLong(int i, long j) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(this.mInterfaceDesc);
            obtain.writeLong(j);
            this.mRemote.transact(i, obtain, obtain2, 0);
            return obtain2.readInt();
        } catch (RemoteException unused) {
            return -7;
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    public String transactGetString(int i, String str) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(this.mInterfaceDesc);
            this.mRemote.transact(i, obtain, obtain2, 0);
            if (obtain2.readInt() == 0) {
                str = obtain2.readString();
            }
            return str;
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    public int transactSetString(int i, String str) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(this.mInterfaceDesc);
            obtain.writeString(str);
            this.mRemote.transact(i, obtain, obtain2, 0);
            return obtain2.readInt();
        } catch (RemoteException unused) {
            return -7;
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    public InetSocketAddress transactGetSockaddr(int i) throws RemoteException {
        String str;
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(this.mInterfaceDesc);
            int i2 = 0;
            this.mRemote.transact(i, obtain, obtain2, 0);
            InetSocketAddress inetSocketAddress = null;
            if (obtain2.readInt() == 0) {
                int readInt = obtain2.readInt();
                if (OsConstants.AF_INET == readInt) {
                    int readInt2 = obtain2.readInt();
                    int readInt3 = obtain2.readInt();
                    str = String.format(Locale.US, "%d.%d.%d.%d", Integer.valueOf((readInt2 >> 24) & 255), Integer.valueOf((readInt2 >> 16) & 255), Integer.valueOf((readInt2 >> 8) & 255), Integer.valueOf(readInt2 & 255));
                    i2 = readInt3;
                } else if (OsConstants.AF_INET6 == readInt) {
                    int readInt4 = obtain2.readInt();
                    int readInt5 = obtain2.readInt();
                    int readInt6 = obtain2.readInt();
                    int readInt7 = obtain2.readInt();
                    int readInt8 = obtain2.readInt();
                    obtain2.readInt();
                    obtain2.readInt();
                    str = String.format(Locale.US, "[%04X:%04X:%04X:%04X:%04X:%04X:%04X:%04X]", Integer.valueOf((readInt4 >> 16) & 65535), Integer.valueOf(readInt4 & 65535), Integer.valueOf((readInt5 >> 16) & 65535), Integer.valueOf(readInt5 & 65535), Integer.valueOf((readInt6 >> 16) & 65535), Integer.valueOf(readInt6 & 65535), Integer.valueOf((readInt7 >> 16) & 65535), Integer.valueOf(readInt7 & 65535));
                    i2 = readInt8;
                } else {
                    str = null;
                }
                if (str != null) {
                    inetSocketAddress = new InetSocketAddress(str, i2);
                }
            }
            return inetSocketAddress;
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    public int transactSetSockaddr(int i, InetSocketAddress inetSocketAddress) {
        int i2;
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(this.mInterfaceDesc);
            if (inetSocketAddress == null) {
                obtain.writeInt(0);
            } else {
                obtain.writeInt(1);
                InetAddress address = inetSocketAddress.getAddress();
                byte[] address2 = address.getAddress();
                int port = inetSocketAddress.getPort();
                if (address instanceof Inet4Address) {
                    int i3 = ((address2[1] & BatteryStats.HistoryItem.CMD_NULL) << 16) | ((address2[0] & BatteryStats.HistoryItem.CMD_NULL) << 24) | ((address2[2] & BatteryStats.HistoryItem.CMD_NULL) << 8) | (address2[3] & BatteryStats.HistoryItem.CMD_NULL);
                    obtain.writeInt(OsConstants.AF_INET);
                    obtain.writeInt(i3);
                    obtain.writeInt(port);
                } else if (address instanceof Inet6Address) {
                    Inet6Address inet6Address = (Inet6Address) address;
                    obtain.writeInt(OsConstants.AF_INET6);
                    for (int i4 = 0; i4 < 4; i4++) {
                        int i5 = i4 * 4;
                        obtain.writeInt((address2[i5 + 3] & BatteryStats.HistoryItem.CMD_NULL) | ((address2[i5 + 0] & BatteryStats.HistoryItem.CMD_NULL) << 24) | ((address2[i5 + 1] & BatteryStats.HistoryItem.CMD_NULL) << 16) | ((address2[i5 + 2] & BatteryStats.HistoryItem.CMD_NULL) << 8));
                    }
                    obtain.writeInt(port);
                    obtain.writeInt(0);
                    obtain.writeInt(inet6Address.getScopeId());
                } else {
                    obtain2.recycle();
                    obtain.recycle();
                    return -4;
                }
            }
            this.mRemote.transact(i, obtain, obtain2, 0);
            i2 = obtain2.readInt();
        } catch (RemoteException unused) {
            i2 = -7;
        } catch (Throwable th) {
            obtain2.recycle();
            obtain.recycle();
            throw th;
        }
        obtain2.recycle();
        obtain.recycle();
        return i2;
    }
}
