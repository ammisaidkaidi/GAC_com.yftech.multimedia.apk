package android.hardware.radio;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.function.Consumer;

/* loaded from: /home/user/work/dex/classes.dex */
final class Utils {
    private static final String TAG = "BroadcastRadio.utils";

    Utils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void writeStringMap(Parcel parcel, Map<String, String> map) {
        if (map == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            parcel.writeString(entry.getKey());
            parcel.writeString(entry.getValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Map<String, String> readStringMap(Parcel parcel) {
        int readInt = parcel.readInt();
        HashMap hashMap = new HashMap();
        while (true) {
            int i = readInt - 1;
            if (readInt <= 0) {
                return hashMap;
            }
            hashMap.put(parcel.readString(), parcel.readString());
            readInt = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void writeStringIntMap(Parcel parcel, Map<String, Integer> map) {
        if (map == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(map.size());
        for (Map.Entry<String, Integer> entry : map.entrySet()) {
            parcel.writeString(entry.getKey());
            parcel.writeInt(entry.getValue().intValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Map<String, Integer> readStringIntMap(Parcel parcel) {
        int readInt = parcel.readInt();
        HashMap hashMap = new HashMap();
        while (true) {
            int i = readInt - 1;
            if (readInt <= 0) {
                return hashMap;
            }
            hashMap.put(parcel.readString(), Integer.valueOf(parcel.readInt()));
            readInt = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T extends Parcelable> void writeSet(final Parcel parcel, Set<T> set) {
        if (set == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(set.size());
            set.stream().forEach(new Consumer() { // from class: android.hardware.radio.-$$Lambda$Utils$Cu3trYWUZE7O75pNHuKMUbHskAY
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    parcel.writeTypedObject((Parcelable) obj, 0);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> Set<T> createSet(Parcel parcel, Parcelable.Creator<T> creator) {
        int readInt = parcel.readInt();
        HashSet hashSet = new HashSet();
        while (true) {
            int i = readInt - 1;
            if (readInt <= 0) {
                return hashSet;
            }
            hashSet.add(parcel.readTypedObject(creator));
            readInt = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void writeIntSet(final Parcel parcel, Set<Integer> set) {
        if (set == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(set.size());
            set.stream().forEach(new Consumer() { // from class: android.hardware.radio.-$$Lambda$Utils$CpgxAbBJVMfl2IUCmgGvKDeq9_U
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    parcel.writeInt(((Integer) Objects.requireNonNull((Integer) obj)).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Set<Integer> createIntSet(Parcel parcel) {
        return createSet(parcel, new Parcelable.Creator<Integer>() { // from class: android.hardware.radio.Utils.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Integer createFromParcel(Parcel parcel2) {
                return Integer.valueOf(parcel2.readInt());
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Integer[] newArray(int i) {
                return new Integer[i];
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T extends Parcelable> void writeTypedCollection(Parcel parcel, Collection<T> collection) {
        ArrayList arrayList;
        if (collection == null) {
            arrayList = null;
        } else if (collection instanceof ArrayList) {
            arrayList = (ArrayList) collection;
        } else {
            arrayList = new ArrayList(collection);
        }
        parcel.writeTypedList(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void close(ICloseHandle iCloseHandle) {
        try {
            iCloseHandle.close();
        } catch (RemoteException e) {
            e.rethrowFromSystemServer();
        }
    }
}
