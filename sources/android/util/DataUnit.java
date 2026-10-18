package android.util;

/* loaded from: /home/user/work/dex/classes2.dex */
public enum DataUnit {
    KILOBYTES { // from class: android.util.DataUnit.1
        @Override // android.util.DataUnit
        public long toBytes(long j) {
            return j * 1000;
        }
    },
    MEGABYTES { // from class: android.util.DataUnit.2
        @Override // android.util.DataUnit
        public long toBytes(long j) {
            return j * TimeUtils.NANOS_PER_MS;
        }
    },
    GIGABYTES { // from class: android.util.DataUnit.3
        @Override // android.util.DataUnit
        public long toBytes(long j) {
            return j * 1000000000;
        }
    },
    KIBIBYTES { // from class: android.util.DataUnit.4
        @Override // android.util.DataUnit
        public long toBytes(long j) {
            return j * 1024;
        }
    },
    MEBIBYTES { // from class: android.util.DataUnit.5
        @Override // android.util.DataUnit
        public long toBytes(long j) {
            return j * 1048576;
        }
    },
    GIBIBYTES { // from class: android.util.DataUnit.6
        @Override // android.util.DataUnit
        public long toBytes(long j) {
            return j * 1073741824;
        }
    };

    public long toBytes(long j) {
        throw new AbstractMethodError();
    }
}
