package com.yftech.vehicle.internal;

import com.yftech.vehicle.internal.adapter.ICarDashBoard;
import com.yftech.vehicle.internal.adapter.ICarParking;

/* loaded from: /home/user/work/dex/classes4.dex */
class CarData {
    private final byte DATA_TYPE_BYTE;
    private final byte DATA_TYPE_DATA;
    private final byte DATA_TYPE_DOUBLE;
    private final byte DATA_TYPE_FLOAT;
    private final byte DATA_TYPE_INT;
    private final byte DATA_TYPE_LONG;
    private final byte DATA_TYPE_SHORT;
    private byte[] data;
    private int offset;

    public CarData(byte[] bArr) {
        this(bArr, true);
    }

    public CarData(byte[] bArr, boolean z) {
        this.DATA_TYPE_BYTE = (byte) 31;
        this.DATA_TYPE_SHORT = (byte) 30;
        this.DATA_TYPE_INT = (byte) 28;
        this.DATA_TYPE_LONG = (byte) 24;
        this.DATA_TYPE_FLOAT = (byte) 16;
        this.DATA_TYPE_DOUBLE = (byte) 17;
        this.DATA_TYPE_DATA = (byte) -32;
        this.offset = 0;
        if (z) {
            this.data = bArr;
            return;
        }
        this.data = new byte[bArr.length + 2];
        this.data[0] = -32;
        this.data[1] = (byte) bArr.length;
        System.arraycopy(bArr, 0, this.data, 2, bArr.length);
    }

    public CarData(byte b) {
        this.DATA_TYPE_BYTE = (byte) 31;
        this.DATA_TYPE_SHORT = (byte) 30;
        this.DATA_TYPE_INT = (byte) 28;
        this.DATA_TYPE_LONG = (byte) 24;
        this.DATA_TYPE_FLOAT = (byte) 16;
        this.DATA_TYPE_DOUBLE = (byte) 17;
        this.DATA_TYPE_DATA = (byte) -32;
        this.offset = 0;
        this.data = new byte[2];
        this.data[0] = 31;
        this.data[1] = (byte) (b & ICarDashBoard.BtInfo.STATUS_UNKNOW);
    }

    public CarData(short s) {
        this.DATA_TYPE_BYTE = (byte) 31;
        this.DATA_TYPE_SHORT = (byte) 30;
        this.DATA_TYPE_INT = (byte) 28;
        this.DATA_TYPE_LONG = (byte) 24;
        this.DATA_TYPE_FLOAT = (byte) 16;
        this.DATA_TYPE_DOUBLE = (byte) 17;
        this.DATA_TYPE_DATA = (byte) -32;
        this.offset = 0;
        this.data = new byte[3];
        this.data[0] = 30;
        this.data[1] = (byte) (s & 255);
        this.data[2] = (byte) ((s >> 8) & ICarParking.PARKING_RADAR_ALARM_SETTING);
    }

    public CarData(int i) {
        this.DATA_TYPE_BYTE = (byte) 31;
        this.DATA_TYPE_SHORT = (byte) 30;
        this.DATA_TYPE_INT = (byte) 28;
        this.DATA_TYPE_LONG = (byte) 24;
        this.DATA_TYPE_FLOAT = (byte) 16;
        this.DATA_TYPE_DOUBLE = (byte) 17;
        this.DATA_TYPE_DATA = (byte) -32;
        this.offset = 0;
        this.data = new byte[5];
        this.data[0] = 28;
        this.data[1] = (byte) (i & ICarParking.PARKING_RADAR_ALARM_SETTING);
        this.data[2] = (byte) ((i >> 8) & ICarParking.PARKING_RADAR_ALARM_SETTING);
        this.data[3] = (byte) ((i >> 16) & ICarParking.PARKING_RADAR_ALARM_SETTING);
        this.data[4] = (byte) ((i >> 24) & ICarParking.PARKING_RADAR_ALARM_SETTING);
    }

    public CarData(long j) {
        this.DATA_TYPE_BYTE = (byte) 31;
        this.DATA_TYPE_SHORT = (byte) 30;
        this.DATA_TYPE_INT = (byte) 28;
        this.DATA_TYPE_LONG = (byte) 24;
        this.DATA_TYPE_FLOAT = (byte) 16;
        this.DATA_TYPE_DOUBLE = (byte) 17;
        this.DATA_TYPE_DATA = (byte) -32;
        this.offset = 0;
        this.data = new byte[9];
        this.data[0] = 24;
        this.data[1] = (byte) (j & 255);
        this.data[2] = (byte) ((j >> 8) & 255);
        this.data[3] = (byte) ((j >> 16) & 255);
        this.data[4] = (byte) ((j >> 24) & 255);
        this.data[5] = (byte) ((j >> 32) & 255);
        this.data[6] = (byte) ((j >> 40) & 255);
        this.data[7] = (byte) ((j >> 48) & 255);
        this.data[8] = (byte) ((j >> 56) & 255);
    }

    public CarData(float f) {
        this.DATA_TYPE_BYTE = (byte) 31;
        this.DATA_TYPE_SHORT = (byte) 30;
        this.DATA_TYPE_INT = (byte) 28;
        this.DATA_TYPE_LONG = (byte) 24;
        this.DATA_TYPE_FLOAT = (byte) 16;
        this.DATA_TYPE_DOUBLE = (byte) 17;
        this.DATA_TYPE_DATA = (byte) -32;
        this.offset = 0;
        int floatToIntBits = Float.floatToIntBits(f);
        this.data = new byte[5];
        this.data[0] = 16;
        this.data[1] = (byte) (floatToIntBits & ICarParking.PARKING_RADAR_ALARM_SETTING);
        this.data[2] = (byte) ((floatToIntBits >> 8) & ICarParking.PARKING_RADAR_ALARM_SETTING);
        this.data[3] = (byte) ((floatToIntBits >> 16) & ICarParking.PARKING_RADAR_ALARM_SETTING);
        this.data[4] = (byte) ((floatToIntBits >> 24) & ICarParking.PARKING_RADAR_ALARM_SETTING);
    }

    public CarData(double d) {
        this.DATA_TYPE_BYTE = (byte) 31;
        this.DATA_TYPE_SHORT = (byte) 30;
        this.DATA_TYPE_INT = (byte) 28;
        this.DATA_TYPE_LONG = (byte) 24;
        this.DATA_TYPE_FLOAT = (byte) 16;
        this.DATA_TYPE_DOUBLE = (byte) 17;
        this.DATA_TYPE_DATA = (byte) -32;
        this.offset = 0;
        this.data = new byte[9];
        this.data[0] = 17;
        long doubleToLongBits = Double.doubleToLongBits(d);
        this.data[1] = (byte) (doubleToLongBits & 255);
        this.data[2] = (byte) ((doubleToLongBits >> 8) & 255);
        this.data[3] = (byte) ((doubleToLongBits >> 16) & 255);
        this.data[4] = (byte) ((doubleToLongBits >> 24) & 255);
        this.data[5] = (byte) ((doubleToLongBits >> 32) & 255);
        this.data[6] = (byte) ((doubleToLongBits >> 40) & 255);
        this.data[7] = (byte) ((doubleToLongBits >> 48) & 255);
        this.data[8] = (byte) ((doubleToLongBits >> 56) & 255);
    }

    public byte[] getBytes() {
        return this.data;
    }

    public Number numberValue() {
        if (this.data != null && this.data.length - this.offset >= 1) {
            if (this.data[this.offset] == 31) {
                return Byte.valueOf(byteValue());
            }
            if (this.data[this.offset] == 30) {
                return Short.valueOf(shortValue());
            }
            if (this.data[this.offset] == 28) {
                return Integer.valueOf(intValue());
            }
            if (this.data[this.offset] == 24) {
                return Long.valueOf(longValue());
            }
            if (this.data[this.offset] == 16) {
                return Float.valueOf(floatValue());
            }
            if (this.data[this.offset] == 17) {
                return Double.valueOf(doubleValue());
            }
            return -1;
        }
        return -1;
    }

    public boolean isDataValue() {
        if (this.data == null) {
            return false;
        }
        try {
            return this.data[this.offset] == -32;
        } catch (Exception unused) {
            return false;
        }
    }

    public byte[] dataValue() {
        int i;
        if (this.data == null) {
            return new byte[0];
        }
        if (this.data.length - this.offset < 2) {
            return new byte[0];
        }
        if (this.data[this.offset] == -32 && (this.data.length - this.offset) - 1 > (i = this.data[this.offset + 1] & ICarParking.PARKING_RADAR_ALARM_SETTING)) {
            byte[] bArr = new byte[i];
            System.arraycopy(this.data, this.offset + 2, bArr, 0, i);
            return bArr;
        }
        return new byte[0];
    }

    public CarData next() {
        if (this.data == null || this.data.length - this.offset < 1) {
            return null;
        }
        int i = Integer.MAX_VALUE;
        if (this.data[this.offset] == 31) {
            i = 1;
        } else if (this.data[this.offset] == 30) {
            i = 2;
        } else {
            if (this.data[this.offset] != 28) {
                if (this.data[this.offset] != 24) {
                    if (this.data[this.offset] != 16) {
                        if (this.data[this.offset] != 17) {
                            if (this.data[this.offset] == -32 && (this.data.length - this.offset) - 1 > 1) {
                                i = this.data[this.offset + 1] & ICarDashBoard.BtInfo.STATUS_UNKNOW;
                            }
                        }
                    }
                }
                i = 8;
            }
            i = 4;
        }
        this.offset = this.offset + i + 1;
        if (this.data[this.offset] == -32) {
            this.offset++;
        }
        if (this.offset < this.data.length - 1) {
            return this;
        }
        return null;
    }

    private byte byteValue() {
        if (this.data.length - this.offset > 1) {
            return this.data[this.offset + 1];
        }
        return (byte) -1;
    }

    private short shortValue() {
        if (this.data.length - this.offset <= 2) {
            return (short) -1;
        }
        return (short) ((this.data[this.offset + 2] << 8) | (this.data[this.offset + 1] & ICarDashBoard.BtInfo.STATUS_UNKNOW));
    }

    private int intValue() {
        if (this.data.length - this.offset <= 4) {
            return -1;
        }
        return (this.data[this.offset + 4] << 24) | (this.data[this.offset + 1] & ICarDashBoard.BtInfo.STATUS_UNKNOW) | ((this.data[this.offset + 2] & ICarDashBoard.BtInfo.STATUS_UNKNOW) << 8) | ((this.data[this.offset + 3] & ICarDashBoard.BtInfo.STATUS_UNKNOW) << 16);
    }

    private long longValue() {
        if (this.data.length - this.offset <= 8) {
            return -1L;
        }
        return (this.data[this.offset + 8] << 56) | (this.data[this.offset + 1] & 255) | ((this.data[this.offset + 2] & 255) << 8) | ((this.data[this.offset + 3] & 255) << 16) | ((this.data[this.offset + 4] & 255) << 24) | ((this.data[this.offset + 5] & 255) << 32) | ((this.data[this.offset + 6] & 255) << 40) | ((255 & this.data[this.offset + 7]) << 48);
    }

    private float floatValue() {
        if (this.data.length - this.offset > 4) {
            return Float.intBitsToFloat(intValue());
        }
        return -1.0f;
    }

    private double doubleValue() {
        if (this.data.length - this.offset > 8) {
            return Double.longBitsToDouble(longValue());
        }
        return -1.0d;
    }
}
