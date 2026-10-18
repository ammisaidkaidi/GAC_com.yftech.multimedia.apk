package android.net;

import android.app.AlarmClockInfoProto;
import android.bluetooth.BluetoothHidDevice;
import android.content.ClipDescriptionProto;
import android.media.session.PlaybackState;
import android.net.NetworkStats;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.MathUtils;
import android.util.proto.ProtoOutputStream;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.IndentingPrintWriter;
import java.io.CharArrayWriter;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.ProtocolException;
import java.util.Arrays;
import java.util.Random;
import libcore.util.EmptyArray;

/* loaded from: /home/user/work/dex/classes.dex */
public class NetworkStatsHistory implements Parcelable {
    public static final Parcelable.Creator<NetworkStatsHistory> CREATOR = new Parcelable.Creator<NetworkStatsHistory>() { // from class: android.net.NetworkStatsHistory.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NetworkStatsHistory createFromParcel(Parcel parcel) {
            return new NetworkStatsHistory(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NetworkStatsHistory[] newArray(int i) {
            return new NetworkStatsHistory[i];
        }
    };
    public static final int FIELD_ACTIVE_TIME = 1;
    public static final int FIELD_ALL = -1;
    public static final int FIELD_OPERATIONS = 32;
    public static final int FIELD_RX_BYTES = 2;
    public static final int FIELD_RX_PACKETS = 4;
    public static final int FIELD_TX_BYTES = 8;
    public static final int FIELD_TX_PACKETS = 16;
    private static final int VERSION_ADD_ACTIVE = 3;
    private static final int VERSION_ADD_PACKETS = 2;
    private static final int VERSION_INIT = 1;
    private long[] activeTime;
    private int bucketCount;
    private long bucketDuration;
    private long[] bucketStart;
    private long[] operations;
    private long[] rxBytes;
    private long[] rxPackets;
    private long totalBytes;
    private long[] txBytes;
    private long[] txPackets;

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class Entry {
        public static final long UNKNOWN = -1;
        public long activeTime;
        public long bucketDuration;
        public long bucketStart;
        public long operations;
        public long rxBytes;
        public long rxPackets;
        public long txBytes;
        public long txPackets;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public NetworkStatsHistory(long j) {
        this(j, 10, -1);
    }

    public NetworkStatsHistory(long j, int i) {
        this(j, i, -1);
    }

    public NetworkStatsHistory(long j, int i, int i2) {
        this.bucketDuration = j;
        this.bucketStart = new long[i];
        if ((i2 & 1) != 0) {
            this.activeTime = new long[i];
        }
        if ((i2 & 2) != 0) {
            this.rxBytes = new long[i];
        }
        if ((i2 & 4) != 0) {
            this.rxPackets = new long[i];
        }
        if ((i2 & 8) != 0) {
            this.txBytes = new long[i];
        }
        if ((i2 & 16) != 0) {
            this.txPackets = new long[i];
        }
        if ((i2 & 32) != 0) {
            this.operations = new long[i];
        }
        this.bucketCount = 0;
        this.totalBytes = 0L;
    }

    public NetworkStatsHistory(NetworkStatsHistory networkStatsHistory, long j) {
        this(j, networkStatsHistory.estimateResizeBuckets(j));
        recordEntireHistory(networkStatsHistory);
    }

    public NetworkStatsHistory(Parcel parcel) {
        this.bucketDuration = parcel.readLong();
        this.bucketStart = ParcelUtils.readLongArray(parcel);
        this.activeTime = ParcelUtils.readLongArray(parcel);
        this.rxBytes = ParcelUtils.readLongArray(parcel);
        this.rxPackets = ParcelUtils.readLongArray(parcel);
        this.txBytes = ParcelUtils.readLongArray(parcel);
        this.txPackets = ParcelUtils.readLongArray(parcel);
        this.operations = ParcelUtils.readLongArray(parcel);
        this.bucketCount = this.bucketStart.length;
        this.totalBytes = parcel.readLong();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.bucketDuration);
        ParcelUtils.writeLongArray(parcel, this.bucketStart, this.bucketCount);
        ParcelUtils.writeLongArray(parcel, this.activeTime, this.bucketCount);
        ParcelUtils.writeLongArray(parcel, this.rxBytes, this.bucketCount);
        ParcelUtils.writeLongArray(parcel, this.rxPackets, this.bucketCount);
        ParcelUtils.writeLongArray(parcel, this.txBytes, this.bucketCount);
        ParcelUtils.writeLongArray(parcel, this.txPackets, this.bucketCount);
        ParcelUtils.writeLongArray(parcel, this.operations, this.bucketCount);
        parcel.writeLong(this.totalBytes);
    }

    public NetworkStatsHistory(DataInputStream dataInputStream) throws IOException {
        long[] jArr;
        int readInt = dataInputStream.readInt();
        switch (readInt) {
            case 1:
                this.bucketDuration = dataInputStream.readLong();
                this.bucketStart = DataStreamUtils.readFullLongArray(dataInputStream);
                this.rxBytes = DataStreamUtils.readFullLongArray(dataInputStream);
                this.rxPackets = new long[this.bucketStart.length];
                this.txBytes = DataStreamUtils.readFullLongArray(dataInputStream);
                this.txPackets = new long[this.bucketStart.length];
                this.operations = new long[this.bucketStart.length];
                this.bucketCount = this.bucketStart.length;
                this.totalBytes = ArrayUtils.total(this.rxBytes) + ArrayUtils.total(this.txBytes);
                break;
            case 2:
            case 3:
                this.bucketDuration = dataInputStream.readLong();
                this.bucketStart = DataStreamUtils.readVarLongArray(dataInputStream);
                if (readInt >= 3) {
                    jArr = DataStreamUtils.readVarLongArray(dataInputStream);
                } else {
                    jArr = new long[this.bucketStart.length];
                }
                this.activeTime = jArr;
                this.rxBytes = DataStreamUtils.readVarLongArray(dataInputStream);
                this.rxPackets = DataStreamUtils.readVarLongArray(dataInputStream);
                this.txBytes = DataStreamUtils.readVarLongArray(dataInputStream);
                this.txPackets = DataStreamUtils.readVarLongArray(dataInputStream);
                this.operations = DataStreamUtils.readVarLongArray(dataInputStream);
                this.bucketCount = this.bucketStart.length;
                this.totalBytes = ArrayUtils.total(this.rxBytes) + ArrayUtils.total(this.txBytes);
                break;
            default:
                throw new ProtocolException("unexpected version: " + readInt);
        }
        if (this.bucketStart.length != this.bucketCount || this.rxBytes.length != this.bucketCount || this.rxPackets.length != this.bucketCount || this.txBytes.length != this.bucketCount || this.txPackets.length != this.bucketCount || this.operations.length != this.bucketCount) {
            throw new ProtocolException("Mismatched history lengths");
        }
    }

    public void writeToStream(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeInt(3);
        dataOutputStream.writeLong(this.bucketDuration);
        DataStreamUtils.writeVarLongArray(dataOutputStream, this.bucketStart, this.bucketCount);
        DataStreamUtils.writeVarLongArray(dataOutputStream, this.activeTime, this.bucketCount);
        DataStreamUtils.writeVarLongArray(dataOutputStream, this.rxBytes, this.bucketCount);
        DataStreamUtils.writeVarLongArray(dataOutputStream, this.rxPackets, this.bucketCount);
        DataStreamUtils.writeVarLongArray(dataOutputStream, this.txBytes, this.bucketCount);
        DataStreamUtils.writeVarLongArray(dataOutputStream, this.txPackets, this.bucketCount);
        DataStreamUtils.writeVarLongArray(dataOutputStream, this.operations, this.bucketCount);
    }

    public int size() {
        return this.bucketCount;
    }

    public long getBucketDuration() {
        return this.bucketDuration;
    }

    public long getStart() {
        if (this.bucketCount > 0) {
            return this.bucketStart[0];
        }
        return Long.MAX_VALUE;
    }

    public long getEnd() {
        if (this.bucketCount > 0) {
            return this.bucketStart[this.bucketCount - 1] + this.bucketDuration;
        }
        return Long.MIN_VALUE;
    }

    public long getTotalBytes() {
        return this.totalBytes;
    }

    public int getIndexBefore(long j) {
        int binarySearch = Arrays.binarySearch(this.bucketStart, 0, this.bucketCount, j);
        return MathUtils.constrain(binarySearch < 0 ? (~binarySearch) - 1 : binarySearch - 1, 0, this.bucketCount - 1);
    }

    public int getIndexAfter(long j) {
        int binarySearch = Arrays.binarySearch(this.bucketStart, 0, this.bucketCount, j);
        return MathUtils.constrain(binarySearch < 0 ? ~binarySearch : binarySearch + 1, 0, this.bucketCount - 1);
    }

    public Entry getValues(int i, Entry entry) {
        if (entry == null) {
            entry = new Entry();
        }
        entry.bucketStart = this.bucketStart[i];
        entry.bucketDuration = this.bucketDuration;
        entry.activeTime = getLong(this.activeTime, i, -1L);
        entry.rxBytes = getLong(this.rxBytes, i, -1L);
        entry.rxPackets = getLong(this.rxPackets, i, -1L);
        entry.txBytes = getLong(this.txBytes, i, -1L);
        entry.txPackets = getLong(this.txPackets, i, -1L);
        entry.operations = getLong(this.operations, i, -1L);
        return entry;
    }

    public void setValues(int i, Entry entry) {
        if (this.rxBytes != null) {
            this.totalBytes -= this.rxBytes[i];
        }
        if (this.txBytes != null) {
            this.totalBytes -= this.txBytes[i];
        }
        this.bucketStart[i] = entry.bucketStart;
        setLong(this.activeTime, i, entry.activeTime);
        setLong(this.rxBytes, i, entry.rxBytes);
        setLong(this.rxPackets, i, entry.rxPackets);
        setLong(this.txBytes, i, entry.txBytes);
        setLong(this.txPackets, i, entry.txPackets);
        setLong(this.operations, i, entry.operations);
        if (this.rxBytes != null) {
            this.totalBytes += this.rxBytes[i];
        }
        if (this.txBytes != null) {
            this.totalBytes += this.txBytes[i];
        }
    }

    @Deprecated
    public void recordData(long j, long j2, long j3, long j4) {
        recordData(j, j2, new NetworkStats.Entry(NetworkStats.IFACE_ALL, -1, 0, 0, j3, 0L, j4, 0L, 0L));
    }

    public void recordData(long j, long j2, NetworkStats.Entry entry) {
        long j3;
        int i;
        long j4 = j;
        long j5 = j2;
        long j6 = entry.rxBytes;
        long j7 = entry.rxPackets;
        long j8 = entry.txBytes;
        long j9 = entry.txPackets;
        long j10 = entry.operations;
        if (entry.isNegative()) {
            throw new IllegalArgumentException("tried recording negative data");
        }
        if (entry.isEmpty()) {
            return;
        }
        ensureBuckets(j, j2);
        long j11 = j5 - j4;
        int indexAfter = getIndexAfter(j5);
        long j12 = j10;
        long j13 = j9;
        long j14 = j8;
        long j15 = j7;
        long j16 = j6;
        while (indexAfter >= 0) {
            long j17 = j13;
            long j18 = this.bucketStart[indexAfter];
            int i2 = indexAfter;
            long j19 = this.bucketDuration + j18;
            if (j19 < j4) {
                break;
            }
            if (j18 <= j5) {
                long min = Math.min(j19, j5) - Math.max(j18, j4);
                if (min > 0) {
                    long j20 = (j16 * min) / j11;
                    long j21 = (j15 * min) / j11;
                    long j22 = (j14 * min) / j11;
                    long j23 = j14;
                    long j24 = (j17 * min) / j11;
                    long j25 = (j12 * min) / j11;
                    i = i2;
                    addLong(this.activeTime, i, min);
                    addLong(this.rxBytes, i, j20);
                    j16 -= j20;
                    addLong(this.rxPackets, i, j21);
                    j15 -= j21;
                    addLong(this.txBytes, i, j22);
                    addLong(this.txPackets, i, j24);
                    j13 = j17 - j24;
                    j3 = j23 - j22;
                    addLong(this.operations, i, j25);
                    j12 -= j25;
                    j11 -= min;
                    indexAfter = i - 1;
                    j14 = j3;
                    j4 = j;
                    j5 = j2;
                }
            }
            j3 = j14;
            j13 = j17;
            i = i2;
            indexAfter = i - 1;
            j14 = j3;
            j4 = j;
            j5 = j2;
        }
        this.totalBytes += entry.rxBytes + entry.txBytes;
    }

    public void recordEntireHistory(NetworkStatsHistory networkStatsHistory) {
        recordHistory(networkStatsHistory, Long.MIN_VALUE, Long.MAX_VALUE);
    }

    public void recordHistory(NetworkStatsHistory networkStatsHistory, long j, long j2) {
        NetworkStats.Entry entry;
        NetworkStats.Entry entry2 = r14;
        NetworkStats.Entry entry3 = new NetworkStats.Entry(NetworkStats.IFACE_ALL, -1, 0, 0, 0L, 0L, 0L, 0L, 0L);
        int i = 0;
        while (i < networkStatsHistory.bucketCount) {
            long j3 = networkStatsHistory.bucketStart[i];
            long j4 = networkStatsHistory.bucketDuration + j3;
            if (j3 < j || j4 > j2) {
                entry = entry2;
            } else {
                NetworkStats.Entry entry4 = entry2;
                entry4.rxBytes = getLong(networkStatsHistory.rxBytes, i, 0L);
                entry4.rxPackets = getLong(networkStatsHistory.rxPackets, i, 0L);
                entry4.txBytes = getLong(networkStatsHistory.txBytes, i, 0L);
                entry4.txPackets = getLong(networkStatsHistory.txPackets, i, 0L);
                entry4.operations = getLong(networkStatsHistory.operations, i, 0L);
                entry = entry4;
                recordData(j3, j4, entry4);
            }
            i++;
            entry2 = entry;
        }
    }

    private void ensureBuckets(long j, long j2) {
        long j3 = j - (j % this.bucketDuration);
        long j4 = j2 + ((this.bucketDuration - (j2 % this.bucketDuration)) % this.bucketDuration);
        while (j3 < j4) {
            int binarySearch = Arrays.binarySearch(this.bucketStart, 0, this.bucketCount, j3);
            if (binarySearch < 0) {
                insertBucket(~binarySearch, j3);
            }
            j3 += this.bucketDuration;
        }
    }

    private void insertBucket(int i, long j) {
        if (this.bucketCount >= this.bucketStart.length) {
            int max = (Math.max(this.bucketStart.length, 10) * 3) / 2;
            this.bucketStart = Arrays.copyOf(this.bucketStart, max);
            if (this.activeTime != null) {
                this.activeTime = Arrays.copyOf(this.activeTime, max);
            }
            if (this.rxBytes != null) {
                this.rxBytes = Arrays.copyOf(this.rxBytes, max);
            }
            if (this.rxPackets != null) {
                this.rxPackets = Arrays.copyOf(this.rxPackets, max);
            }
            if (this.txBytes != null) {
                this.txBytes = Arrays.copyOf(this.txBytes, max);
            }
            if (this.txPackets != null) {
                this.txPackets = Arrays.copyOf(this.txPackets, max);
            }
            if (this.operations != null) {
                this.operations = Arrays.copyOf(this.operations, max);
            }
        }
        if (i < this.bucketCount) {
            int i2 = i + 1;
            int i3 = this.bucketCount - i;
            System.arraycopy(this.bucketStart, i, this.bucketStart, i2, i3);
            if (this.activeTime != null) {
                System.arraycopy(this.activeTime, i, this.activeTime, i2, i3);
            }
            if (this.rxBytes != null) {
                System.arraycopy(this.rxBytes, i, this.rxBytes, i2, i3);
            }
            if (this.rxPackets != null) {
                System.arraycopy(this.rxPackets, i, this.rxPackets, i2, i3);
            }
            if (this.txBytes != null) {
                System.arraycopy(this.txBytes, i, this.txBytes, i2, i3);
            }
            if (this.txPackets != null) {
                System.arraycopy(this.txPackets, i, this.txPackets, i2, i3);
            }
            if (this.operations != null) {
                System.arraycopy(this.operations, i, this.operations, i2, i3);
            }
        }
        this.bucketStart[i] = j;
        setLong(this.activeTime, i, 0L);
        setLong(this.rxBytes, i, 0L);
        setLong(this.rxPackets, i, 0L);
        setLong(this.txBytes, i, 0L);
        setLong(this.txPackets, i, 0L);
        setLong(this.operations, i, 0L);
        this.bucketCount++;
    }

    public void clear() {
        this.bucketStart = EmptyArray.LONG;
        if (this.activeTime != null) {
            this.activeTime = EmptyArray.LONG;
        }
        if (this.rxBytes != null) {
            this.rxBytes = EmptyArray.LONG;
        }
        if (this.rxPackets != null) {
            this.rxPackets = EmptyArray.LONG;
        }
        if (this.txBytes != null) {
            this.txBytes = EmptyArray.LONG;
        }
        if (this.txPackets != null) {
            this.txPackets = EmptyArray.LONG;
        }
        if (this.operations != null) {
            this.operations = EmptyArray.LONG;
        }
        this.bucketCount = 0;
        this.totalBytes = 0L;
    }

    @Deprecated
    public void removeBucketsBefore(long j) {
        int i = 0;
        while (i < this.bucketCount && this.bucketStart[i] + this.bucketDuration <= j) {
            i++;
        }
        if (i > 0) {
            int length = this.bucketStart.length;
            this.bucketStart = Arrays.copyOfRange(this.bucketStart, i, length);
            if (this.activeTime != null) {
                this.activeTime = Arrays.copyOfRange(this.activeTime, i, length);
            }
            if (this.rxBytes != null) {
                this.rxBytes = Arrays.copyOfRange(this.rxBytes, i, length);
            }
            if (this.rxPackets != null) {
                this.rxPackets = Arrays.copyOfRange(this.rxPackets, i, length);
            }
            if (this.txBytes != null) {
                this.txBytes = Arrays.copyOfRange(this.txBytes, i, length);
            }
            if (this.txPackets != null) {
                this.txPackets = Arrays.copyOfRange(this.txPackets, i, length);
            }
            if (this.operations != null) {
                this.operations = Arrays.copyOfRange(this.operations, i, length);
            }
            this.bucketCount -= i;
        }
    }

    public Entry getValues(long j, long j2, Entry entry) {
        return getValues(j, j2, Long.MAX_VALUE, entry);
    }

    public Entry getValues(long j, long j2, long j3, Entry entry) {
        long j4;
        long j5 = j;
        Entry entry2 = entry != null ? entry : new Entry();
        entry2.bucketDuration = j2 - j5;
        entry2.bucketStart = j5;
        long j6 = 0;
        entry2.activeTime = this.activeTime != null ? 0L : -1L;
        entry2.rxBytes = this.rxBytes != null ? 0L : -1L;
        entry2.rxPackets = this.rxPackets != null ? 0L : -1L;
        entry2.txBytes = this.txBytes != null ? 0L : -1L;
        entry2.txPackets = this.txPackets != null ? 0L : -1L;
        entry2.operations = this.operations != null ? 0L : -1L;
        int indexAfter = getIndexAfter(j2);
        while (indexAfter >= 0) {
            long j7 = this.bucketStart[indexAfter];
            long j8 = this.bucketDuration + j7;
            if (j8 <= j5) {
                break;
            }
            if (j7 < j2) {
                if (j7 < j3 && j8 > j3) {
                    j4 = this.bucketDuration;
                } else {
                    if (j8 >= j2) {
                        j8 = j2;
                    }
                    if (j7 <= j5) {
                        j7 = j5;
                    }
                    j4 = j8 - j7;
                }
                if (j4 > j6) {
                    if (this.activeTime != null) {
                        entry2.activeTime += (this.activeTime[indexAfter] * j4) / this.bucketDuration;
                    }
                    if (this.rxBytes != null) {
                        entry2.rxBytes += (this.rxBytes[indexAfter] * j4) / this.bucketDuration;
                    }
                    if (this.rxPackets != null) {
                        entry2.rxPackets += (this.rxPackets[indexAfter] * j4) / this.bucketDuration;
                    }
                    if (this.txBytes != null) {
                        entry2.txBytes += (this.txBytes[indexAfter] * j4) / this.bucketDuration;
                    }
                    if (this.txPackets != null) {
                        entry2.txPackets += (this.txPackets[indexAfter] * j4) / this.bucketDuration;
                    }
                    if (this.operations != null) {
                        entry2.operations += (this.operations[indexAfter] * j4) / this.bucketDuration;
                    }
                }
            }
            indexAfter--;
            j5 = j;
            j6 = 0;
        }
        return entry2;
    }

    @Deprecated
    public void generateRandom(long j, long j2, long j3) {
        Random random = new Random();
        float nextFloat = random.nextFloat();
        float f = (float) j3;
        long j4 = f * nextFloat;
        long j5 = f * (1.0f - nextFloat);
        generateRandom(j, j2, j4, j4 / 1024, j5, j5 / 1024, j4 / PlaybackState.ACTION_PLAY_FROM_SEARCH, random);
    }

    @Deprecated
    public void generateRandom(long j, long j2, long j3, long j4, long j5, long j6, long j7, Random random) {
        long j8 = j2;
        ensureBuckets(j, j2);
        NetworkStats.Entry entry = new NetworkStats.Entry(NetworkStats.IFACE_ALL, -1, 0, 0, 0L, 0L, 0L, 0L, 0L);
        long j9 = j3;
        long j10 = j4;
        long j11 = j5;
        long j12 = j6;
        long j13 = j7;
        while (true) {
            if (j9 <= 1024 && j10 <= 128 && j11 <= 1024 && j12 <= 128 && j13 <= 32) {
                return;
            }
            long randomLong = randomLong(random, j, j8);
            long randomLong2 = randomLong(random, 0L, (j8 - randomLong) / 2) + randomLong;
            entry.rxBytes = randomLong(random, 0L, j9);
            entry.rxPackets = randomLong(random, 0L, j10);
            entry.txBytes = randomLong(random, 0L, j11);
            entry.txPackets = randomLong(random, 0L, j12);
            entry.operations = randomLong(random, 0L, j13);
            j9 -= entry.rxBytes;
            j10 -= entry.rxPackets;
            j11 -= entry.txBytes;
            j12 -= entry.txPackets;
            j13 -= entry.operations;
            recordData(randomLong, randomLong2, entry);
            j8 = j2;
        }
    }

    public static long randomLong(Random random, long j, long j2) {
        return ((float) j) + (random.nextFloat() * ((float) (j2 - j)));
    }

    public boolean intersects(long j, long j2) {
        long start = getStart();
        long end = getEnd();
        if (j >= start && j <= end) {
            return true;
        }
        if (j2 >= start && j2 <= end) {
            return true;
        }
        if (start < j || start > j2) {
            return end >= j && end <= j2;
        }
        return true;
    }

    public void dump(IndentingPrintWriter indentingPrintWriter, boolean z) {
        indentingPrintWriter.print("NetworkStatsHistory: bucketDuration=");
        indentingPrintWriter.println(this.bucketDuration / 1000);
        indentingPrintWriter.increaseIndent();
        int max = z ? 0 : Math.max(0, this.bucketCount - 32);
        if (max > 0) {
            indentingPrintWriter.print("(omitting ");
            indentingPrintWriter.print(max);
            indentingPrintWriter.println(" buckets)");
        }
        while (max < this.bucketCount) {
            indentingPrintWriter.print("st=");
            indentingPrintWriter.print(this.bucketStart[max] / 1000);
            if (this.rxBytes != null) {
                indentingPrintWriter.print(" rb=");
                indentingPrintWriter.print(this.rxBytes[max]);
            }
            if (this.rxPackets != null) {
                indentingPrintWriter.print(" rp=");
                indentingPrintWriter.print(this.rxPackets[max]);
            }
            if (this.txBytes != null) {
                indentingPrintWriter.print(" tb=");
                indentingPrintWriter.print(this.txBytes[max]);
            }
            if (this.txPackets != null) {
                indentingPrintWriter.print(" tp=");
                indentingPrintWriter.print(this.txPackets[max]);
            }
            if (this.operations != null) {
                indentingPrintWriter.print(" op=");
                indentingPrintWriter.print(this.operations[max]);
            }
            indentingPrintWriter.println();
            max++;
        }
        indentingPrintWriter.decreaseIndent();
    }

    public void dumpCheckin(PrintWriter printWriter) {
        printWriter.print("d,");
        printWriter.print(this.bucketDuration / 1000);
        printWriter.println();
        for (int i = 0; i < this.bucketCount; i++) {
            printWriter.print("b,");
            printWriter.print(this.bucketStart[i] / 1000);
            printWriter.print(',');
            if (this.rxBytes != null) {
                printWriter.print(this.rxBytes[i]);
            } else {
                printWriter.print("*");
            }
            printWriter.print(',');
            if (this.rxPackets != null) {
                printWriter.print(this.rxPackets[i]);
            } else {
                printWriter.print("*");
            }
            printWriter.print(',');
            if (this.txBytes != null) {
                printWriter.print(this.txBytes[i]);
            } else {
                printWriter.print("*");
            }
            printWriter.print(',');
            if (this.txPackets != null) {
                printWriter.print(this.txPackets[i]);
            } else {
                printWriter.print("*");
            }
            printWriter.print(',');
            if (this.operations != null) {
                printWriter.print(this.operations[i]);
            } else {
                printWriter.print("*");
            }
            printWriter.println();
        }
    }

    public void writeToProto(ProtoOutputStream protoOutputStream, long j) {
        long start = protoOutputStream.start(j);
        protoOutputStream.write(AlarmClockInfoProto.TRIGGER_TIME_MS, this.bucketDuration);
        for (int i = 0; i < this.bucketCount; i++) {
            long start2 = protoOutputStream.start(2246267895810L);
            protoOutputStream.write(AlarmClockInfoProto.TRIGGER_TIME_MS, this.bucketStart[i]);
            writeToProto(protoOutputStream, 1112396529666L, this.rxBytes, i);
            writeToProto(protoOutputStream, 1112396529667L, this.rxPackets, i);
            writeToProto(protoOutputStream, ClipDescriptionProto.TIMESTAMP_MS, this.txBytes, i);
            writeToProto(protoOutputStream, 1112396529669L, this.txPackets, i);
            writeToProto(protoOutputStream, 1112396529670L, this.operations, i);
            protoOutputStream.end(start2);
        }
        protoOutputStream.end(start);
    }

    private static void writeToProto(ProtoOutputStream protoOutputStream, long j, long[] jArr, int i) {
        if (jArr != null) {
            protoOutputStream.write(j, jArr[i]);
        }
    }

    public String toString() {
        CharArrayWriter charArrayWriter = new CharArrayWriter();
        dump(new IndentingPrintWriter(charArrayWriter, "  "), false);
        return charArrayWriter.toString();
    }

    private static long getLong(long[] jArr, int i, long j) {
        return jArr != null ? jArr[i] : j;
    }

    private static void setLong(long[] jArr, int i, long j) {
        if (jArr != null) {
            jArr[i] = j;
        }
    }

    private static void addLong(long[] jArr, int i, long j) {
        if (jArr != null) {
            jArr[i] = jArr[i] + j;
        }
    }

    public int estimateResizeBuckets(long j) {
        return (int) ((size() * getBucketDuration()) / j);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class DataStreamUtils {
        @Deprecated
        public static long[] readFullLongArray(DataInputStream dataInputStream) throws IOException {
            int readInt = dataInputStream.readInt();
            if (readInt < 0) {
                throw new ProtocolException("negative array size");
            }
            long[] jArr = new long[readInt];
            for (int i = 0; i < jArr.length; i++) {
                jArr[i] = dataInputStream.readLong();
            }
            return jArr;
        }

        public static long readVarLong(DataInputStream dataInputStream) throws IOException {
            long j = 0;
            for (int i = 0; i < 64; i += 7) {
                j |= (r3 & Byte.MAX_VALUE) << i;
                if ((dataInputStream.readByte() & BluetoothHidDevice.SUBCLASS1_MOUSE) == 0) {
                    return j;
                }
            }
            throw new ProtocolException("malformed long");
        }

        public static void writeVarLong(DataOutputStream dataOutputStream, long j) throws IOException {
            while (((-128) & j) != 0) {
                dataOutputStream.writeByte((((int) j) & 127) | 128);
                j >>>= 7;
            }
            dataOutputStream.writeByte((int) j);
        }

        public static long[] readVarLongArray(DataInputStream dataInputStream) throws IOException {
            int readInt = dataInputStream.readInt();
            if (readInt == -1) {
                return null;
            }
            if (readInt < 0) {
                throw new ProtocolException("negative array size");
            }
            long[] jArr = new long[readInt];
            for (int i = 0; i < jArr.length; i++) {
                jArr[i] = readVarLong(dataInputStream);
            }
            return jArr;
        }

        public static void writeVarLongArray(DataOutputStream dataOutputStream, long[] jArr, int i) throws IOException {
            if (jArr == null) {
                dataOutputStream.writeInt(-1);
                return;
            }
            if (i > jArr.length) {
                throw new IllegalArgumentException("size larger than length");
            }
            dataOutputStream.writeInt(i);
            for (int i2 = 0; i2 < i; i2++) {
                writeVarLong(dataOutputStream, jArr[i2]);
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class ParcelUtils {
        public static long[] readLongArray(Parcel parcel) {
            int readInt = parcel.readInt();
            if (readInt == -1) {
                return null;
            }
            long[] jArr = new long[readInt];
            for (int i = 0; i < jArr.length; i++) {
                jArr[i] = parcel.readLong();
            }
            return jArr;
        }

        public static void writeLongArray(Parcel parcel, long[] jArr, int i) {
            if (jArr == null) {
                parcel.writeInt(-1);
                return;
            }
            if (i > jArr.length) {
                throw new IllegalArgumentException("size larger than length");
            }
            parcel.writeInt(i);
            for (int i2 = 0; i2 < i; i2++) {
                parcel.writeLong(jArr[i2]);
            }
        }
    }
}
