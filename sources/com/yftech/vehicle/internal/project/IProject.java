package com.yftech.vehicle.internal.project;

import com.yftech.vehicle.internal.adapter.IBaseCmd;
import com.yftech.vehicle.internal.adapter.ICarDashBoard;

/* loaded from: /home/user/work/dex/classes4.dex */
public interface IProject extends IBaseCmd {

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum AccountCfg {
        ACCOUNT_1(1),
        ACCOUNT_2(2),
        ACCOUNT_3(3),
        ACCOUNT_4(4),
        ACCOUNT_5(5),
        ACCOUNT_6(6),
        ACCOUNT_7(7),
        ACCOUNT_8(8),
        __UNKNOWN__(-1);

        public final int value;

        AccountCfg(int i) {
            this.value = i;
        }

        public static AccountCfg valueOf(int i) {
            return i == ACCOUNT_1.value ? ACCOUNT_1 : i == ACCOUNT_2.value ? ACCOUNT_2 : i == ACCOUNT_3.value ? ACCOUNT_3 : i == ACCOUNT_4.value ? ACCOUNT_4 : i == ACCOUNT_5.value ? ACCOUNT_5 : i == ACCOUNT_6.value ? ACCOUNT_6 : i == ACCOUNT_7.value ? ACCOUNT_7 : i == ACCOUNT_8.value ? ACCOUNT_8 : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum OpertionObject {
        SEAT_POSITION(1),
        __UNKNOWN__(-1);

        public final int value;

        OpertionObject(int i) {
            this.value = i;
        }

        public static OpertionObject valueOf(int i) {
            return i == SEAT_POSITION.value ? SEAT_POSITION : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum OpertionType {
        MEMORY(0),
        SEARCH(1),
        DELETE(2),
        __UNKNOWN__(-1);

        public final int value;

        OpertionType(int i) {
            this.value = i;
        }

        public static OpertionType valueOf(int i) {
            return i == MEMORY.value ? MEMORY : i == SEARCH.value ? SEARCH : i == DELETE.value ? DELETE : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum DriverSeatPostionCmd {
        SAVE(1),
        RECALL(2),
        __UNKNOWN__(-1);

        public final int value;

        DriverSeatPostionCmd(int i) {
            this.value = i;
        }

        public static DriverSeatPostionCmd valueOf(int i) {
            return i == SAVE.value ? SAVE : i == RECALL.value ? RECALL : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public static class PersonalMemoryInfo {
        public AccountCfg accountCfg;
        public byte currentPuid;
        public OpertionObject opObj;
        public OpertionType opType;
        public byte puid;

        public PersonalMemoryInfo(OpertionType opertionType, AccountCfg accountCfg) {
            this.opObj = OpertionObject.SEAT_POSITION;
            this.opType = OpertionType.__UNKNOWN__;
            this.accountCfg = AccountCfg.__UNKNOWN__;
            this.puid = (byte) 0;
            this.currentPuid = (byte) 0;
            this.opType = opertionType;
            this.accountCfg = accountCfg;
            this.puid = this.puid;
        }

        public PersonalMemoryInfo(OpertionType opertionType, AccountCfg accountCfg, byte b) {
            this.opObj = OpertionObject.SEAT_POSITION;
            this.opType = OpertionType.__UNKNOWN__;
            this.accountCfg = AccountCfg.__UNKNOWN__;
            this.puid = (byte) 0;
            this.currentPuid = (byte) 0;
            this.opType = opertionType;
            this.accountCfg = accountCfg;
            this.puid = b;
        }

        public PersonalMemoryInfo(OpertionType opertionType, AccountCfg accountCfg, byte b, byte b2) {
            this.opObj = OpertionObject.SEAT_POSITION;
            this.opType = OpertionType.__UNKNOWN__;
            this.accountCfg = AccountCfg.__UNKNOWN__;
            this.puid = (byte) 0;
            this.currentPuid = (byte) 0;
            this.opType = opertionType;
            this.accountCfg = accountCfg;
            this.puid = b;
            this.currentPuid = b2;
        }

        public static PersonalMemoryInfo valueOf(byte[] bArr) {
            byte b = bArr[0];
            return new PersonalMemoryInfo(OpertionType.valueOf(bArr[1] & ICarDashBoard.BtInfo.STATUS_UNKNOW), AccountCfg.valueOf(bArr[2] & ICarDashBoard.BtInfo.STATUS_UNKNOW), (byte) (bArr[3] & ICarDashBoard.BtInfo.STATUS_UNKNOW), (byte) (bArr[4] & ICarDashBoard.BtInfo.STATUS_UNKNOW));
        }

        public byte[] parseByte(PersonalMemoryInfo personalMemoryInfo) {
            return new byte[]{-122, 24, (byte) personalMemoryInfo.opObj.value, (byte) personalMemoryInfo.opType.value, (byte) personalMemoryInfo.accountCfg.value};
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public static class CarSeartMemoryInfo {
        public AccountCfg accountCfg;
        public DriverSeatPostionCmd cmd;
        public byte puid;

        public CarSeartMemoryInfo(DriverSeatPostionCmd driverSeatPostionCmd, AccountCfg accountCfg) {
            this.cmd = DriverSeatPostionCmd.__UNKNOWN__;
            this.accountCfg = AccountCfg.__UNKNOWN__;
            this.cmd = driverSeatPostionCmd;
            this.accountCfg = accountCfg;
            this.puid = this.puid;
        }

        public CarSeartMemoryInfo(DriverSeatPostionCmd driverSeatPostionCmd, AccountCfg accountCfg, byte b) {
            this.cmd = DriverSeatPostionCmd.__UNKNOWN__;
            this.accountCfg = AccountCfg.__UNKNOWN__;
            this.cmd = driverSeatPostionCmd;
            this.accountCfg = accountCfg;
            this.puid = b;
        }

        public byte[] parseByte(CarSeartMemoryInfo carSeartMemoryInfo) {
            byte[] bArr = new byte[6];
            bArr[0] = -122;
            bArr[1] = 25;
            bArr[2] = 1;
            if (carSeartMemoryInfo.cmd == DriverSeatPostionCmd.__UNKNOWN__) {
                bArr[3] = 0;
            } else {
                bArr[3] = (byte) carSeartMemoryInfo.cmd.value;
            }
            bArr[4] = (byte) carSeartMemoryInfo.accountCfg.value;
            bArr[5] = 0;
            return bArr;
        }
    }
}
