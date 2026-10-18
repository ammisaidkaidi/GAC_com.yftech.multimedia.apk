package com.android.server.connectivity.metrics.nano;

import com.android.framework.protobuf.nano.CodedInputByteBufferNano;
import com.android.framework.protobuf.nano.CodedOutputByteBufferNano;
import com.android.framework.protobuf.nano.InternalNano;
import com.android.framework.protobuf.nano.InvalidProtocolBufferNanoException;
import com.android.framework.protobuf.nano.MessageNano;
import com.android.framework.protobuf.nano.WireFormatNano;
import java.io.IOException;

/* loaded from: /home/user/work/dex/classes3.dex */
public interface IpConnectivityLogClass {
    public static final int BLUETOOTH = 1;
    public static final int CELLULAR = 2;
    public static final int ETHERNET = 3;
    public static final int LOWPAN = 9;
    public static final int MULTIPLE = 6;
    public static final int NONE = 5;
    public static final int UNKNOWN = 0;
    public static final int WIFI = 4;
    public static final int WIFI_NAN = 8;
    public static final int WIFI_P2P = 7;

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static final class NetworkId extends MessageNano {
        private static volatile NetworkId[] _emptyArray;
        public int networkId;

        public static NetworkId[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new NetworkId[0];
                    }
                }
            }
            return _emptyArray;
        }

        public NetworkId() {
            clear();
        }

        public NetworkId clear() {
            this.networkId = 0;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            if (this.networkId != 0) {
                codedOutputByteBufferNano.writeInt32(1, this.networkId);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            return this.networkId != 0 ? computeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(1, this.networkId) : computeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public NetworkId mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    return this;
                }
                if (readTag != 8) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        return this;
                    }
                } else {
                    this.networkId = codedInputByteBufferNano.readInt32();
                }
            }
        }

        public static NetworkId parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
            return (NetworkId) MessageNano.mergeFrom(new NetworkId(), bArr);
        }

        public static NetworkId parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            return new NetworkId().mergeFrom(codedInputByteBufferNano);
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static final class Pair extends MessageNano {
        private static volatile Pair[] _emptyArray;
        public int key;
        public int value;

        public static Pair[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new Pair[0];
                    }
                }
            }
            return _emptyArray;
        }

        public Pair() {
            clear();
        }

        public Pair clear() {
            this.key = 0;
            this.value = 0;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            if (this.key != 0) {
                codedOutputByteBufferNano.writeInt32(1, this.key);
            }
            if (this.value != 0) {
                codedOutputByteBufferNano.writeInt32(2, this.value);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (this.key != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, this.key);
            }
            return this.value != 0 ? computeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(2, this.value) : computeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public Pair mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    return this;
                }
                if (readTag == 8) {
                    this.key = codedInputByteBufferNano.readInt32();
                } else if (readTag != 16) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        return this;
                    }
                } else {
                    this.value = codedInputByteBufferNano.readInt32();
                }
            }
        }

        public static Pair parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
            return (Pair) MessageNano.mergeFrom(new Pair(), bArr);
        }

        public static Pair parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            return new Pair().mergeFrom(codedInputByteBufferNano);
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static final class DefaultNetworkEvent extends MessageNano {
        public static final int DISCONNECT = 3;
        public static final int DUAL = 3;
        public static final int INVALIDATION = 2;
        public static final int IPV4 = 1;
        public static final int IPV6 = 2;
        public static final int NONE = 0;
        public static final int OUTSCORED = 1;
        public static final int UNKNOWN = 0;
        private static volatile DefaultNetworkEvent[] _emptyArray;
        public long defaultNetworkDurationMs;
        public long finalScore;
        public long initialScore;
        public int ipSupport;
        public NetworkId networkId;
        public long noDefaultNetworkDurationMs;
        public int previousDefaultNetworkLinkLayer;
        public NetworkId previousNetworkId;
        public int previousNetworkIpSupport;
        public int[] transportTypes;
        public long validationDurationMs;

        public static DefaultNetworkEvent[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new DefaultNetworkEvent[0];
                    }
                }
            }
            return _emptyArray;
        }

        public DefaultNetworkEvent() {
            clear();
        }

        public DefaultNetworkEvent clear() {
            this.defaultNetworkDurationMs = 0L;
            this.validationDurationMs = 0L;
            this.initialScore = 0L;
            this.finalScore = 0L;
            this.ipSupport = 0;
            this.previousDefaultNetworkLinkLayer = 0;
            this.networkId = null;
            this.previousNetworkId = null;
            this.previousNetworkIpSupport = 0;
            this.transportTypes = WireFormatNano.EMPTY_INT_ARRAY;
            this.noDefaultNetworkDurationMs = 0L;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            if (this.networkId != null) {
                codedOutputByteBufferNano.writeMessage(1, this.networkId);
            }
            if (this.previousNetworkId != null) {
                codedOutputByteBufferNano.writeMessage(2, this.previousNetworkId);
            }
            if (this.previousNetworkIpSupport != 0) {
                codedOutputByteBufferNano.writeInt32(3, this.previousNetworkIpSupport);
            }
            if (this.transportTypes != null && this.transportTypes.length > 0) {
                for (int i = 0; i < this.transportTypes.length; i++) {
                    codedOutputByteBufferNano.writeInt32(4, this.transportTypes[i]);
                }
            }
            if (this.defaultNetworkDurationMs != 0) {
                codedOutputByteBufferNano.writeInt64(5, this.defaultNetworkDurationMs);
            }
            if (this.noDefaultNetworkDurationMs != 0) {
                codedOutputByteBufferNano.writeInt64(6, this.noDefaultNetworkDurationMs);
            }
            if (this.initialScore != 0) {
                codedOutputByteBufferNano.writeInt64(7, this.initialScore);
            }
            if (this.finalScore != 0) {
                codedOutputByteBufferNano.writeInt64(8, this.finalScore);
            }
            if (this.ipSupport != 0) {
                codedOutputByteBufferNano.writeInt32(9, this.ipSupport);
            }
            if (this.previousDefaultNetworkLinkLayer != 0) {
                codedOutputByteBufferNano.writeInt32(10, this.previousDefaultNetworkLinkLayer);
            }
            if (this.validationDurationMs != 0) {
                codedOutputByteBufferNano.writeInt64(11, this.validationDurationMs);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (this.networkId != null) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, this.networkId);
            }
            if (this.previousNetworkId != null) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, this.previousNetworkId);
            }
            if (this.previousNetworkIpSupport != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(3, this.previousNetworkIpSupport);
            }
            if (this.transportTypes != null && this.transportTypes.length > 0) {
                int i = 0;
                for (int i2 = 0; i2 < this.transportTypes.length; i2++) {
                    i += CodedOutputByteBufferNano.computeInt32SizeNoTag(this.transportTypes[i2]);
                }
                computeSerializedSize = computeSerializedSize + i + (this.transportTypes.length * 1);
            }
            if (this.defaultNetworkDurationMs != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(5, this.defaultNetworkDurationMs);
            }
            if (this.noDefaultNetworkDurationMs != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(6, this.noDefaultNetworkDurationMs);
            }
            if (this.initialScore != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(7, this.initialScore);
            }
            if (this.finalScore != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(8, this.finalScore);
            }
            if (this.ipSupport != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(9, this.ipSupport);
            }
            if (this.previousDefaultNetworkLinkLayer != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(10, this.previousDefaultNetworkLinkLayer);
            }
            return this.validationDurationMs != 0 ? computeSerializedSize + CodedOutputByteBufferNano.computeInt64Size(11, this.validationDurationMs) : computeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public DefaultNetworkEvent mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                switch (readTag) {
                    case 0:
                        return this;
                    case 10:
                        if (this.networkId == null) {
                            this.networkId = new NetworkId();
                        }
                        codedInputByteBufferNano.readMessage(this.networkId);
                        break;
                    case 18:
                        if (this.previousNetworkId == null) {
                            this.previousNetworkId = new NetworkId();
                        }
                        codedInputByteBufferNano.readMessage(this.previousNetworkId);
                        break;
                    case 24:
                        int readInt32 = codedInputByteBufferNano.readInt32();
                        switch (readInt32) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                                this.previousNetworkIpSupport = readInt32;
                                break;
                        }
                    case 32:
                        int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 32);
                        int length = this.transportTypes == null ? 0 : this.transportTypes.length;
                        int[] iArr = new int[repeatedFieldArrayLength + length];
                        if (length != 0) {
                            System.arraycopy(this.transportTypes, 0, iArr, 0, length);
                        }
                        while (length < iArr.length - 1) {
                            iArr[length] = codedInputByteBufferNano.readInt32();
                            codedInputByteBufferNano.readTag();
                            length++;
                        }
                        iArr[length] = codedInputByteBufferNano.readInt32();
                        this.transportTypes = iArr;
                        break;
                    case 34:
                        int pushLimit = codedInputByteBufferNano.pushLimit(codedInputByteBufferNano.readRawVarint32());
                        int position = codedInputByteBufferNano.getPosition();
                        int i = 0;
                        while (codedInputByteBufferNano.getBytesUntilLimit() > 0) {
                            codedInputByteBufferNano.readInt32();
                            i++;
                        }
                        codedInputByteBufferNano.rewindToPosition(position);
                        int length2 = this.transportTypes == null ? 0 : this.transportTypes.length;
                        int[] iArr2 = new int[i + length2];
                        if (length2 != 0) {
                            System.arraycopy(this.transportTypes, 0, iArr2, 0, length2);
                        }
                        while (length2 < iArr2.length) {
                            iArr2[length2] = codedInputByteBufferNano.readInt32();
                            length2++;
                        }
                        this.transportTypes = iArr2;
                        codedInputByteBufferNano.popLimit(pushLimit);
                        break;
                    case 40:
                        this.defaultNetworkDurationMs = codedInputByteBufferNano.readInt64();
                        break;
                    case 48:
                        this.noDefaultNetworkDurationMs = codedInputByteBufferNano.readInt64();
                        break;
                    case 56:
                        this.initialScore = codedInputByteBufferNano.readInt64();
                        break;
                    case 64:
                        this.finalScore = codedInputByteBufferNano.readInt64();
                        break;
                    case 72:
                        int readInt322 = codedInputByteBufferNano.readInt32();
                        switch (readInt322) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                                this.ipSupport = readInt322;
                                break;
                        }
                    case 80:
                        int readInt323 = codedInputByteBufferNano.readInt32();
                        switch (readInt323) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                            case 7:
                            case 8:
                            case 9:
                                this.previousDefaultNetworkLinkLayer = readInt323;
                                break;
                        }
                    case 88:
                        this.validationDurationMs = codedInputByteBufferNano.readInt64();
                        break;
                    default:
                        if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                            return this;
                        }
                        break;
                }
            }
        }

        public static DefaultNetworkEvent parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
            return (DefaultNetworkEvent) MessageNano.mergeFrom(new DefaultNetworkEvent(), bArr);
        }

        public static DefaultNetworkEvent parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            return new DefaultNetworkEvent().mergeFrom(codedInputByteBufferNano);
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static final class IpReachabilityEvent extends MessageNano {
        private static volatile IpReachabilityEvent[] _emptyArray;
        public int eventType;
        public String ifName;

        public static IpReachabilityEvent[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new IpReachabilityEvent[0];
                    }
                }
            }
            return _emptyArray;
        }

        public IpReachabilityEvent() {
            clear();
        }

        public IpReachabilityEvent clear() {
            this.ifName = "";
            this.eventType = 0;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            if (!this.ifName.equals("")) {
                codedOutputByteBufferNano.writeString(1, this.ifName);
            }
            if (this.eventType != 0) {
                codedOutputByteBufferNano.writeInt32(2, this.eventType);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (!this.ifName.equals("")) {
                computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(1, this.ifName);
            }
            return this.eventType != 0 ? computeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(2, this.eventType) : computeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public IpReachabilityEvent mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    return this;
                }
                if (readTag == 10) {
                    this.ifName = codedInputByteBufferNano.readString();
                } else if (readTag != 16) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        return this;
                    }
                } else {
                    this.eventType = codedInputByteBufferNano.readInt32();
                }
            }
        }

        public static IpReachabilityEvent parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
            return (IpReachabilityEvent) MessageNano.mergeFrom(new IpReachabilityEvent(), bArr);
        }

        public static IpReachabilityEvent parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            return new IpReachabilityEvent().mergeFrom(codedInputByteBufferNano);
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static final class NetworkEvent extends MessageNano {
        private static volatile NetworkEvent[] _emptyArray;
        public int eventType;
        public int latencyMs;
        public NetworkId networkId;

        public static NetworkEvent[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new NetworkEvent[0];
                    }
                }
            }
            return _emptyArray;
        }

        public NetworkEvent() {
            clear();
        }

        public NetworkEvent clear() {
            this.networkId = null;
            this.eventType = 0;
            this.latencyMs = 0;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            if (this.networkId != null) {
                codedOutputByteBufferNano.writeMessage(1, this.networkId);
            }
            if (this.eventType != 0) {
                codedOutputByteBufferNano.writeInt32(2, this.eventType);
            }
            if (this.latencyMs != 0) {
                codedOutputByteBufferNano.writeInt32(3, this.latencyMs);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (this.networkId != null) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, this.networkId);
            }
            if (this.eventType != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(2, this.eventType);
            }
            return this.latencyMs != 0 ? computeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(3, this.latencyMs) : computeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public NetworkEvent mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    return this;
                }
                if (readTag == 10) {
                    if (this.networkId == null) {
                        this.networkId = new NetworkId();
                    }
                    codedInputByteBufferNano.readMessage(this.networkId);
                } else if (readTag == 16) {
                    this.eventType = codedInputByteBufferNano.readInt32();
                } else if (readTag != 24) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        return this;
                    }
                } else {
                    this.latencyMs = codedInputByteBufferNano.readInt32();
                }
            }
        }

        public static NetworkEvent parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
            return (NetworkEvent) MessageNano.mergeFrom(new NetworkEvent(), bArr);
        }

        public static NetworkEvent parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            return new NetworkEvent().mergeFrom(codedInputByteBufferNano);
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static final class ValidationProbeEvent extends MessageNano {
        private static volatile ValidationProbeEvent[] _emptyArray;
        public int latencyMs;
        public NetworkId networkId;
        public int probeResult;
        public int probeType;

        public static ValidationProbeEvent[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new ValidationProbeEvent[0];
                    }
                }
            }
            return _emptyArray;
        }

        public ValidationProbeEvent() {
            clear();
        }

        public ValidationProbeEvent clear() {
            this.networkId = null;
            this.latencyMs = 0;
            this.probeType = 0;
            this.probeResult = 0;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            if (this.networkId != null) {
                codedOutputByteBufferNano.writeMessage(1, this.networkId);
            }
            if (this.latencyMs != 0) {
                codedOutputByteBufferNano.writeInt32(2, this.latencyMs);
            }
            if (this.probeType != 0) {
                codedOutputByteBufferNano.writeInt32(3, this.probeType);
            }
            if (this.probeResult != 0) {
                codedOutputByteBufferNano.writeInt32(4, this.probeResult);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (this.networkId != null) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, this.networkId);
            }
            if (this.latencyMs != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(2, this.latencyMs);
            }
            if (this.probeType != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(3, this.probeType);
            }
            return this.probeResult != 0 ? computeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(4, this.probeResult) : computeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public ValidationProbeEvent mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    return this;
                }
                if (readTag == 10) {
                    if (this.networkId == null) {
                        this.networkId = new NetworkId();
                    }
                    codedInputByteBufferNano.readMessage(this.networkId);
                } else if (readTag == 16) {
                    this.latencyMs = codedInputByteBufferNano.readInt32();
                } else if (readTag == 24) {
                    this.probeType = codedInputByteBufferNano.readInt32();
                } else if (readTag != 32) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        return this;
                    }
                } else {
                    this.probeResult = codedInputByteBufferNano.readInt32();
                }
            }
        }

        public static ValidationProbeEvent parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
            return (ValidationProbeEvent) MessageNano.mergeFrom(new ValidationProbeEvent(), bArr);
        }

        public static ValidationProbeEvent parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            return new ValidationProbeEvent().mergeFrom(codedInputByteBufferNano);
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static final class DNSLookupBatch extends MessageNano {
        private static volatile DNSLookupBatch[] _emptyArray;
        public int[] eventTypes;
        public long getaddrinfoErrorCount;
        public Pair[] getaddrinfoErrors;
        public long getaddrinfoQueryCount;
        public long gethostbynameErrorCount;
        public Pair[] gethostbynameErrors;
        public long gethostbynameQueryCount;
        public int[] latenciesMs;
        public NetworkId networkId;
        public int[] returnCodes;

        public static DNSLookupBatch[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new DNSLookupBatch[0];
                    }
                }
            }
            return _emptyArray;
        }

        public DNSLookupBatch() {
            clear();
        }

        public DNSLookupBatch clear() {
            this.latenciesMs = WireFormatNano.EMPTY_INT_ARRAY;
            this.getaddrinfoQueryCount = 0L;
            this.gethostbynameQueryCount = 0L;
            this.getaddrinfoErrorCount = 0L;
            this.gethostbynameErrorCount = 0L;
            this.getaddrinfoErrors = Pair.emptyArray();
            this.gethostbynameErrors = Pair.emptyArray();
            this.networkId = null;
            this.eventTypes = WireFormatNano.EMPTY_INT_ARRAY;
            this.returnCodes = WireFormatNano.EMPTY_INT_ARRAY;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            if (this.networkId != null) {
                codedOutputByteBufferNano.writeMessage(1, this.networkId);
            }
            if (this.eventTypes != null && this.eventTypes.length > 0) {
                for (int i = 0; i < this.eventTypes.length; i++) {
                    codedOutputByteBufferNano.writeInt32(2, this.eventTypes[i]);
                }
            }
            if (this.returnCodes != null && this.returnCodes.length > 0) {
                for (int i2 = 0; i2 < this.returnCodes.length; i2++) {
                    codedOutputByteBufferNano.writeInt32(3, this.returnCodes[i2]);
                }
            }
            if (this.latenciesMs != null && this.latenciesMs.length > 0) {
                for (int i3 = 0; i3 < this.latenciesMs.length; i3++) {
                    codedOutputByteBufferNano.writeInt32(4, this.latenciesMs[i3]);
                }
            }
            if (this.getaddrinfoQueryCount != 0) {
                codedOutputByteBufferNano.writeInt64(5, this.getaddrinfoQueryCount);
            }
            if (this.gethostbynameQueryCount != 0) {
                codedOutputByteBufferNano.writeInt64(6, this.gethostbynameQueryCount);
            }
            if (this.getaddrinfoErrorCount != 0) {
                codedOutputByteBufferNano.writeInt64(7, this.getaddrinfoErrorCount);
            }
            if (this.gethostbynameErrorCount != 0) {
                codedOutputByteBufferNano.writeInt64(8, this.gethostbynameErrorCount);
            }
            if (this.getaddrinfoErrors != null && this.getaddrinfoErrors.length > 0) {
                for (int i4 = 0; i4 < this.getaddrinfoErrors.length; i4++) {
                    Pair pair = this.getaddrinfoErrors[i4];
                    if (pair != null) {
                        codedOutputByteBufferNano.writeMessage(9, pair);
                    }
                }
            }
            if (this.gethostbynameErrors != null && this.gethostbynameErrors.length > 0) {
                for (int i5 = 0; i5 < this.gethostbynameErrors.length; i5++) {
                    Pair pair2 = this.gethostbynameErrors[i5];
                    if (pair2 != null) {
                        codedOutputByteBufferNano.writeMessage(10, pair2);
                    }
                }
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (this.networkId != null) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, this.networkId);
            }
            if (this.eventTypes != null && this.eventTypes.length > 0) {
                int i = 0;
                for (int i2 = 0; i2 < this.eventTypes.length; i2++) {
                    i += CodedOutputByteBufferNano.computeInt32SizeNoTag(this.eventTypes[i2]);
                }
                computeSerializedSize = computeSerializedSize + i + (this.eventTypes.length * 1);
            }
            if (this.returnCodes != null && this.returnCodes.length > 0) {
                int i3 = 0;
                for (int i4 = 0; i4 < this.returnCodes.length; i4++) {
                    i3 += CodedOutputByteBufferNano.computeInt32SizeNoTag(this.returnCodes[i4]);
                }
                computeSerializedSize = computeSerializedSize + i3 + (this.returnCodes.length * 1);
            }
            if (this.latenciesMs != null && this.latenciesMs.length > 0) {
                int i5 = 0;
                for (int i6 = 0; i6 < this.latenciesMs.length; i6++) {
                    i5 += CodedOutputByteBufferNano.computeInt32SizeNoTag(this.latenciesMs[i6]);
                }
                computeSerializedSize = computeSerializedSize + i5 + (this.latenciesMs.length * 1);
            }
            if (this.getaddrinfoQueryCount != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(5, this.getaddrinfoQueryCount);
            }
            if (this.gethostbynameQueryCount != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(6, this.gethostbynameQueryCount);
            }
            if (this.getaddrinfoErrorCount != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(7, this.getaddrinfoErrorCount);
            }
            if (this.gethostbynameErrorCount != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(8, this.gethostbynameErrorCount);
            }
            if (this.getaddrinfoErrors != null && this.getaddrinfoErrors.length > 0) {
                int i7 = computeSerializedSize;
                for (int i8 = 0; i8 < this.getaddrinfoErrors.length; i8++) {
                    Pair pair = this.getaddrinfoErrors[i8];
                    if (pair != null) {
                        i7 += CodedOutputByteBufferNano.computeMessageSize(9, pair);
                    }
                }
                computeSerializedSize = i7;
            }
            if (this.gethostbynameErrors != null && this.gethostbynameErrors.length > 0) {
                for (int i9 = 0; i9 < this.gethostbynameErrors.length; i9++) {
                    Pair pair2 = this.gethostbynameErrors[i9];
                    if (pair2 != null) {
                        computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(10, pair2);
                    }
                }
            }
            return computeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public DNSLookupBatch mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                switch (readTag) {
                    case 0:
                        return this;
                    case 10:
                        if (this.networkId == null) {
                            this.networkId = new NetworkId();
                        }
                        codedInputByteBufferNano.readMessage(this.networkId);
                        break;
                    case 16:
                        int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 16);
                        int length = this.eventTypes == null ? 0 : this.eventTypes.length;
                        int[] iArr = new int[repeatedFieldArrayLength + length];
                        if (length != 0) {
                            System.arraycopy(this.eventTypes, 0, iArr, 0, length);
                        }
                        while (length < iArr.length - 1) {
                            iArr[length] = codedInputByteBufferNano.readInt32();
                            codedInputByteBufferNano.readTag();
                            length++;
                        }
                        iArr[length] = codedInputByteBufferNano.readInt32();
                        this.eventTypes = iArr;
                        break;
                    case 18:
                        int pushLimit = codedInputByteBufferNano.pushLimit(codedInputByteBufferNano.readRawVarint32());
                        int position = codedInputByteBufferNano.getPosition();
                        int i = 0;
                        while (codedInputByteBufferNano.getBytesUntilLimit() > 0) {
                            codedInputByteBufferNano.readInt32();
                            i++;
                        }
                        codedInputByteBufferNano.rewindToPosition(position);
                        int length2 = this.eventTypes == null ? 0 : this.eventTypes.length;
                        int[] iArr2 = new int[i + length2];
                        if (length2 != 0) {
                            System.arraycopy(this.eventTypes, 0, iArr2, 0, length2);
                        }
                        while (length2 < iArr2.length) {
                            iArr2[length2] = codedInputByteBufferNano.readInt32();
                            length2++;
                        }
                        this.eventTypes = iArr2;
                        codedInputByteBufferNano.popLimit(pushLimit);
                        break;
                    case 24:
                        int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 24);
                        int length3 = this.returnCodes == null ? 0 : this.returnCodes.length;
                        int[] iArr3 = new int[repeatedFieldArrayLength2 + length3];
                        if (length3 != 0) {
                            System.arraycopy(this.returnCodes, 0, iArr3, 0, length3);
                        }
                        while (length3 < iArr3.length - 1) {
                            iArr3[length3] = codedInputByteBufferNano.readInt32();
                            codedInputByteBufferNano.readTag();
                            length3++;
                        }
                        iArr3[length3] = codedInputByteBufferNano.readInt32();
                        this.returnCodes = iArr3;
                        break;
                    case 26:
                        int pushLimit2 = codedInputByteBufferNano.pushLimit(codedInputByteBufferNano.readRawVarint32());
                        int position2 = codedInputByteBufferNano.getPosition();
                        int i2 = 0;
                        while (codedInputByteBufferNano.getBytesUntilLimit() > 0) {
                            codedInputByteBufferNano.readInt32();
                            i2++;
                        }
                        codedInputByteBufferNano.rewindToPosition(position2);
                        int length4 = this.returnCodes == null ? 0 : this.returnCodes.length;
                        int[] iArr4 = new int[i2 + length4];
                        if (length4 != 0) {
                            System.arraycopy(this.returnCodes, 0, iArr4, 0, length4);
                        }
                        while (length4 < iArr4.length) {
                            iArr4[length4] = codedInputByteBufferNano.readInt32();
                            length4++;
                        }
                        this.returnCodes = iArr4;
                        codedInputByteBufferNano.popLimit(pushLimit2);
                        break;
                    case 32:
                        int repeatedFieldArrayLength3 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 32);
                        int length5 = this.latenciesMs == null ? 0 : this.latenciesMs.length;
                        int[] iArr5 = new int[repeatedFieldArrayLength3 + length5];
                        if (length5 != 0) {
                            System.arraycopy(this.latenciesMs, 0, iArr5, 0, length5);
                        }
                        while (length5 < iArr5.length - 1) {
                            iArr5[length5] = codedInputByteBufferNano.readInt32();
                            codedInputByteBufferNano.readTag();
                            length5++;
                        }
                        iArr5[length5] = codedInputByteBufferNano.readInt32();
                        this.latenciesMs = iArr5;
                        break;
                    case 34:
                        int pushLimit3 = codedInputByteBufferNano.pushLimit(codedInputByteBufferNano.readRawVarint32());
                        int position3 = codedInputByteBufferNano.getPosition();
                        int i3 = 0;
                        while (codedInputByteBufferNano.getBytesUntilLimit() > 0) {
                            codedInputByteBufferNano.readInt32();
                            i3++;
                        }
                        codedInputByteBufferNano.rewindToPosition(position3);
                        int length6 = this.latenciesMs == null ? 0 : this.latenciesMs.length;
                        int[] iArr6 = new int[i3 + length6];
                        if (length6 != 0) {
                            System.arraycopy(this.latenciesMs, 0, iArr6, 0, length6);
                        }
                        while (length6 < iArr6.length) {
                            iArr6[length6] = codedInputByteBufferNano.readInt32();
                            length6++;
                        }
                        this.latenciesMs = iArr6;
                        codedInputByteBufferNano.popLimit(pushLimit3);
                        break;
                    case 40:
                        this.getaddrinfoQueryCount = codedInputByteBufferNano.readInt64();
                        break;
                    case 48:
                        this.gethostbynameQueryCount = codedInputByteBufferNano.readInt64();
                        break;
                    case 56:
                        this.getaddrinfoErrorCount = codedInputByteBufferNano.readInt64();
                        break;
                    case 64:
                        this.gethostbynameErrorCount = codedInputByteBufferNano.readInt64();
                        break;
                    case 74:
                        int repeatedFieldArrayLength4 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 74);
                        int length7 = this.getaddrinfoErrors == null ? 0 : this.getaddrinfoErrors.length;
                        Pair[] pairArr = new Pair[repeatedFieldArrayLength4 + length7];
                        if (length7 != 0) {
                            System.arraycopy(this.getaddrinfoErrors, 0, pairArr, 0, length7);
                        }
                        while (length7 < pairArr.length - 1) {
                            pairArr[length7] = new Pair();
                            codedInputByteBufferNano.readMessage(pairArr[length7]);
                            codedInputByteBufferNano.readTag();
                            length7++;
                        }
                        pairArr[length7] = new Pair();
                        codedInputByteBufferNano.readMessage(pairArr[length7]);
                        this.getaddrinfoErrors = pairArr;
                        break;
                    case 82:
                        int repeatedFieldArrayLength5 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 82);
                        int length8 = this.gethostbynameErrors == null ? 0 : this.gethostbynameErrors.length;
                        Pair[] pairArr2 = new Pair[repeatedFieldArrayLength5 + length8];
                        if (length8 != 0) {
                            System.arraycopy(this.gethostbynameErrors, 0, pairArr2, 0, length8);
                        }
                        while (length8 < pairArr2.length - 1) {
                            pairArr2[length8] = new Pair();
                            codedInputByteBufferNano.readMessage(pairArr2[length8]);
                            codedInputByteBufferNano.readTag();
                            length8++;
                        }
                        pairArr2[length8] = new Pair();
                        codedInputByteBufferNano.readMessage(pairArr2[length8]);
                        this.gethostbynameErrors = pairArr2;
                        break;
                    default:
                        if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                            return this;
                        }
                        break;
                }
            }
        }

        public static DNSLookupBatch parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
            return (DNSLookupBatch) MessageNano.mergeFrom(new DNSLookupBatch(), bArr);
        }

        public static DNSLookupBatch parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            return new DNSLookupBatch().mergeFrom(codedInputByteBufferNano);
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static final class DNSLatencies extends MessageNano {
        private static volatile DNSLatencies[] _emptyArray;
        public int aCount;
        public int aaaaCount;
        public int[] latenciesMs;
        public int queryCount;
        public int returnCode;
        public int type;

        public static DNSLatencies[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new DNSLatencies[0];
                    }
                }
            }
            return _emptyArray;
        }

        public DNSLatencies() {
            clear();
        }

        public DNSLatencies clear() {
            this.type = 0;
            this.returnCode = 0;
            this.queryCount = 0;
            this.aCount = 0;
            this.aaaaCount = 0;
            this.latenciesMs = WireFormatNano.EMPTY_INT_ARRAY;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            if (this.type != 0) {
                codedOutputByteBufferNano.writeInt32(1, this.type);
            }
            if (this.returnCode != 0) {
                codedOutputByteBufferNano.writeInt32(2, this.returnCode);
            }
            if (this.queryCount != 0) {
                codedOutputByteBufferNano.writeInt32(3, this.queryCount);
            }
            if (this.aCount != 0) {
                codedOutputByteBufferNano.writeInt32(4, this.aCount);
            }
            if (this.aaaaCount != 0) {
                codedOutputByteBufferNano.writeInt32(5, this.aaaaCount);
            }
            if (this.latenciesMs != null && this.latenciesMs.length > 0) {
                for (int i = 0; i < this.latenciesMs.length; i++) {
                    codedOutputByteBufferNano.writeInt32(6, this.latenciesMs[i]);
                }
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (this.type != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, this.type);
            }
            if (this.returnCode != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(2, this.returnCode);
            }
            if (this.queryCount != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(3, this.queryCount);
            }
            if (this.aCount != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(4, this.aCount);
            }
            if (this.aaaaCount != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(5, this.aaaaCount);
            }
            if (this.latenciesMs == null || this.latenciesMs.length <= 0) {
                return computeSerializedSize;
            }
            int i = 0;
            for (int i2 = 0; i2 < this.latenciesMs.length; i2++) {
                i += CodedOutputByteBufferNano.computeInt32SizeNoTag(this.latenciesMs[i2]);
            }
            return computeSerializedSize + i + (this.latenciesMs.length * 1);
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public DNSLatencies mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    return this;
                }
                if (readTag == 8) {
                    this.type = codedInputByteBufferNano.readInt32();
                } else if (readTag == 16) {
                    this.returnCode = codedInputByteBufferNano.readInt32();
                } else if (readTag == 24) {
                    this.queryCount = codedInputByteBufferNano.readInt32();
                } else if (readTag == 32) {
                    this.aCount = codedInputByteBufferNano.readInt32();
                } else if (readTag == 40) {
                    this.aaaaCount = codedInputByteBufferNano.readInt32();
                } else if (readTag == 48) {
                    int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 48);
                    int length = this.latenciesMs == null ? 0 : this.latenciesMs.length;
                    int[] iArr = new int[repeatedFieldArrayLength + length];
                    if (length != 0) {
                        System.arraycopy(this.latenciesMs, 0, iArr, 0, length);
                    }
                    while (length < iArr.length - 1) {
                        iArr[length] = codedInputByteBufferNano.readInt32();
                        codedInputByteBufferNano.readTag();
                        length++;
                    }
                    iArr[length] = codedInputByteBufferNano.readInt32();
                    this.latenciesMs = iArr;
                } else if (readTag != 50) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        return this;
                    }
                } else {
                    int pushLimit = codedInputByteBufferNano.pushLimit(codedInputByteBufferNano.readRawVarint32());
                    int position = codedInputByteBufferNano.getPosition();
                    int i = 0;
                    while (codedInputByteBufferNano.getBytesUntilLimit() > 0) {
                        codedInputByteBufferNano.readInt32();
                        i++;
                    }
                    codedInputByteBufferNano.rewindToPosition(position);
                    int length2 = this.latenciesMs == null ? 0 : this.latenciesMs.length;
                    int[] iArr2 = new int[i + length2];
                    if (length2 != 0) {
                        System.arraycopy(this.latenciesMs, 0, iArr2, 0, length2);
                    }
                    while (length2 < iArr2.length) {
                        iArr2[length2] = codedInputByteBufferNano.readInt32();
                        length2++;
                    }
                    this.latenciesMs = iArr2;
                    codedInputByteBufferNano.popLimit(pushLimit);
                }
            }
        }

        public static DNSLatencies parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
            return (DNSLatencies) MessageNano.mergeFrom(new DNSLatencies(), bArr);
        }

        public static DNSLatencies parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            return new DNSLatencies().mergeFrom(codedInputByteBufferNano);
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static final class ConnectStatistics extends MessageNano {
        private static volatile ConnectStatistics[] _emptyArray;
        public int connectBlockingCount;
        public int connectCount;
        public Pair[] errnosCounters;
        public int ipv6AddrCount;
        public int[] latenciesMs;
        public int[] nonBlockingLatenciesMs;

        public static ConnectStatistics[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new ConnectStatistics[0];
                    }
                }
            }
            return _emptyArray;
        }

        public ConnectStatistics() {
            clear();
        }

        public ConnectStatistics clear() {
            this.connectCount = 0;
            this.connectBlockingCount = 0;
            this.ipv6AddrCount = 0;
            this.latenciesMs = WireFormatNano.EMPTY_INT_ARRAY;
            this.nonBlockingLatenciesMs = WireFormatNano.EMPTY_INT_ARRAY;
            this.errnosCounters = Pair.emptyArray();
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            if (this.connectCount != 0) {
                codedOutputByteBufferNano.writeInt32(1, this.connectCount);
            }
            if (this.ipv6AddrCount != 0) {
                codedOutputByteBufferNano.writeInt32(2, this.ipv6AddrCount);
            }
            if (this.latenciesMs != null && this.latenciesMs.length > 0) {
                for (int i = 0; i < this.latenciesMs.length; i++) {
                    codedOutputByteBufferNano.writeInt32(3, this.latenciesMs[i]);
                }
            }
            if (this.errnosCounters != null && this.errnosCounters.length > 0) {
                for (int i2 = 0; i2 < this.errnosCounters.length; i2++) {
                    Pair pair = this.errnosCounters[i2];
                    if (pair != null) {
                        codedOutputByteBufferNano.writeMessage(4, pair);
                    }
                }
            }
            if (this.connectBlockingCount != 0) {
                codedOutputByteBufferNano.writeInt32(5, this.connectBlockingCount);
            }
            if (this.nonBlockingLatenciesMs != null && this.nonBlockingLatenciesMs.length > 0) {
                for (int i3 = 0; i3 < this.nonBlockingLatenciesMs.length; i3++) {
                    codedOutputByteBufferNano.writeInt32(6, this.nonBlockingLatenciesMs[i3]);
                }
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (this.connectCount != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, this.connectCount);
            }
            if (this.ipv6AddrCount != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(2, this.ipv6AddrCount);
            }
            if (this.latenciesMs != null && this.latenciesMs.length > 0) {
                int i = 0;
                for (int i2 = 0; i2 < this.latenciesMs.length; i2++) {
                    i += CodedOutputByteBufferNano.computeInt32SizeNoTag(this.latenciesMs[i2]);
                }
                computeSerializedSize = computeSerializedSize + i + (this.latenciesMs.length * 1);
            }
            if (this.errnosCounters != null && this.errnosCounters.length > 0) {
                int i3 = computeSerializedSize;
                for (int i4 = 0; i4 < this.errnosCounters.length; i4++) {
                    Pair pair = this.errnosCounters[i4];
                    if (pair != null) {
                        i3 += CodedOutputByteBufferNano.computeMessageSize(4, pair);
                    }
                }
                computeSerializedSize = i3;
            }
            if (this.connectBlockingCount != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(5, this.connectBlockingCount);
            }
            if (this.nonBlockingLatenciesMs == null || this.nonBlockingLatenciesMs.length <= 0) {
                return computeSerializedSize;
            }
            int i5 = 0;
            for (int i6 = 0; i6 < this.nonBlockingLatenciesMs.length; i6++) {
                i5 += CodedOutputByteBufferNano.computeInt32SizeNoTag(this.nonBlockingLatenciesMs[i6]);
            }
            return computeSerializedSize + i5 + (this.nonBlockingLatenciesMs.length * 1);
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public ConnectStatistics mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    return this;
                }
                if (readTag == 8) {
                    this.connectCount = codedInputByteBufferNano.readInt32();
                } else if (readTag == 16) {
                    this.ipv6AddrCount = codedInputByteBufferNano.readInt32();
                } else if (readTag == 24) {
                    int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 24);
                    int length = this.latenciesMs == null ? 0 : this.latenciesMs.length;
                    int[] iArr = new int[repeatedFieldArrayLength + length];
                    if (length != 0) {
                        System.arraycopy(this.latenciesMs, 0, iArr, 0, length);
                    }
                    while (length < iArr.length - 1) {
                        iArr[length] = codedInputByteBufferNano.readInt32();
                        codedInputByteBufferNano.readTag();
                        length++;
                    }
                    iArr[length] = codedInputByteBufferNano.readInt32();
                    this.latenciesMs = iArr;
                } else if (readTag == 26) {
                    int pushLimit = codedInputByteBufferNano.pushLimit(codedInputByteBufferNano.readRawVarint32());
                    int position = codedInputByteBufferNano.getPosition();
                    int i = 0;
                    while (codedInputByteBufferNano.getBytesUntilLimit() > 0) {
                        codedInputByteBufferNano.readInt32();
                        i++;
                    }
                    codedInputByteBufferNano.rewindToPosition(position);
                    int length2 = this.latenciesMs == null ? 0 : this.latenciesMs.length;
                    int[] iArr2 = new int[i + length2];
                    if (length2 != 0) {
                        System.arraycopy(this.latenciesMs, 0, iArr2, 0, length2);
                    }
                    while (length2 < iArr2.length) {
                        iArr2[length2] = codedInputByteBufferNano.readInt32();
                        length2++;
                    }
                    this.latenciesMs = iArr2;
                    codedInputByteBufferNano.popLimit(pushLimit);
                } else if (readTag == 34) {
                    int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 34);
                    int length3 = this.errnosCounters == null ? 0 : this.errnosCounters.length;
                    Pair[] pairArr = new Pair[repeatedFieldArrayLength2 + length3];
                    if (length3 != 0) {
                        System.arraycopy(this.errnosCounters, 0, pairArr, 0, length3);
                    }
                    while (length3 < pairArr.length - 1) {
                        pairArr[length3] = new Pair();
                        codedInputByteBufferNano.readMessage(pairArr[length3]);
                        codedInputByteBufferNano.readTag();
                        length3++;
                    }
                    pairArr[length3] = new Pair();
                    codedInputByteBufferNano.readMessage(pairArr[length3]);
                    this.errnosCounters = pairArr;
                } else if (readTag == 40) {
                    this.connectBlockingCount = codedInputByteBufferNano.readInt32();
                } else if (readTag == 48) {
                    int repeatedFieldArrayLength3 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 48);
                    int length4 = this.nonBlockingLatenciesMs == null ? 0 : this.nonBlockingLatenciesMs.length;
                    int[] iArr3 = new int[repeatedFieldArrayLength3 + length4];
                    if (length4 != 0) {
                        System.arraycopy(this.nonBlockingLatenciesMs, 0, iArr3, 0, length4);
                    }
                    while (length4 < iArr3.length - 1) {
                        iArr3[length4] = codedInputByteBufferNano.readInt32();
                        codedInputByteBufferNano.readTag();
                        length4++;
                    }
                    iArr3[length4] = codedInputByteBufferNano.readInt32();
                    this.nonBlockingLatenciesMs = iArr3;
                } else if (readTag != 50) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        return this;
                    }
                } else {
                    int pushLimit2 = codedInputByteBufferNano.pushLimit(codedInputByteBufferNano.readRawVarint32());
                    int position2 = codedInputByteBufferNano.getPosition();
                    int i2 = 0;
                    while (codedInputByteBufferNano.getBytesUntilLimit() > 0) {
                        codedInputByteBufferNano.readInt32();
                        i2++;
                    }
                    codedInputByteBufferNano.rewindToPosition(position2);
                    int length5 = this.nonBlockingLatenciesMs == null ? 0 : this.nonBlockingLatenciesMs.length;
                    int[] iArr4 = new int[i2 + length5];
                    if (length5 != 0) {
                        System.arraycopy(this.nonBlockingLatenciesMs, 0, iArr4, 0, length5);
                    }
                    while (length5 < iArr4.length) {
                        iArr4[length5] = codedInputByteBufferNano.readInt32();
                        length5++;
                    }
                    this.nonBlockingLatenciesMs = iArr4;
                    codedInputByteBufferNano.popLimit(pushLimit2);
                }
            }
        }

        public static ConnectStatistics parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
            return (ConnectStatistics) MessageNano.mergeFrom(new ConnectStatistics(), bArr);
        }

        public static ConnectStatistics parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            return new ConnectStatistics().mergeFrom(codedInputByteBufferNano);
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static final class DHCPEvent extends MessageNano {
        public static final int ERROR_CODE_FIELD_NUMBER = 3;
        public static final int STATE_TRANSITION_FIELD_NUMBER = 2;
        private static volatile DHCPEvent[] _emptyArray;
        public int durationMs;
        public String ifName;
        private int valueCase_ = 0;
        private Object value_;

        public int getValueCase() {
            return this.valueCase_;
        }

        public DHCPEvent clearValue() {
            this.valueCase_ = 0;
            this.value_ = null;
            return this;
        }

        public static DHCPEvent[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new DHCPEvent[0];
                    }
                }
            }
            return _emptyArray;
        }

        public boolean hasStateTransition() {
            return this.valueCase_ == 2;
        }

        public String getStateTransition() {
            return this.valueCase_ == 2 ? (String) this.value_ : "";
        }

        public DHCPEvent setStateTransition(String str) {
            this.valueCase_ = 2;
            this.value_ = str;
            return this;
        }

        public boolean hasErrorCode() {
            return this.valueCase_ == 3;
        }

        public int getErrorCode() {
            if (this.valueCase_ == 3) {
                return ((Integer) this.value_).intValue();
            }
            return 0;
        }

        public DHCPEvent setErrorCode(int i) {
            this.valueCase_ = 3;
            this.value_ = Integer.valueOf(i);
            return this;
        }

        public DHCPEvent() {
            clear();
        }

        public DHCPEvent clear() {
            this.ifName = "";
            this.durationMs = 0;
            clearValue();
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            if (!this.ifName.equals("")) {
                codedOutputByteBufferNano.writeString(1, this.ifName);
            }
            if (this.valueCase_ == 2) {
                codedOutputByteBufferNano.writeString(2, (String) this.value_);
            }
            if (this.valueCase_ == 3) {
                codedOutputByteBufferNano.writeInt32(3, ((Integer) this.value_).intValue());
            }
            if (this.durationMs != 0) {
                codedOutputByteBufferNano.writeInt32(4, this.durationMs);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (!this.ifName.equals("")) {
                computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(1, this.ifName);
            }
            if (this.valueCase_ == 2) {
                computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(2, (String) this.value_);
            }
            if (this.valueCase_ == 3) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(3, ((Integer) this.value_).intValue());
            }
            return this.durationMs != 0 ? computeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(4, this.durationMs) : computeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public DHCPEvent mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    return this;
                }
                if (readTag == 10) {
                    this.ifName = codedInputByteBufferNano.readString();
                } else if (readTag == 18) {
                    this.value_ = codedInputByteBufferNano.readString();
                    this.valueCase_ = 2;
                } else if (readTag == 24) {
                    this.value_ = Integer.valueOf(codedInputByteBufferNano.readInt32());
                    this.valueCase_ = 3;
                } else if (readTag != 32) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        return this;
                    }
                } else {
                    this.durationMs = codedInputByteBufferNano.readInt32();
                }
            }
        }

        public static DHCPEvent parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
            return (DHCPEvent) MessageNano.mergeFrom(new DHCPEvent(), bArr);
        }

        public static DHCPEvent parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            return new DHCPEvent().mergeFrom(codedInputByteBufferNano);
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static final class ApfProgramEvent extends MessageNano {
        private static volatile ApfProgramEvent[] _emptyArray;
        public int currentRas;
        public boolean dropMulticast;
        public long effectiveLifetime;
        public int filteredRas;
        public boolean hasIpv4Addr;
        public long lifetime;
        public int programLength;

        public static ApfProgramEvent[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new ApfProgramEvent[0];
                    }
                }
            }
            return _emptyArray;
        }

        public ApfProgramEvent() {
            clear();
        }

        public ApfProgramEvent clear() {
            this.lifetime = 0L;
            this.effectiveLifetime = 0L;
            this.filteredRas = 0;
            this.currentRas = 0;
            this.programLength = 0;
            this.dropMulticast = false;
            this.hasIpv4Addr = false;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            if (this.lifetime != 0) {
                codedOutputByteBufferNano.writeInt64(1, this.lifetime);
            }
            if (this.filteredRas != 0) {
                codedOutputByteBufferNano.writeInt32(2, this.filteredRas);
            }
            if (this.currentRas != 0) {
                codedOutputByteBufferNano.writeInt32(3, this.currentRas);
            }
            if (this.programLength != 0) {
                codedOutputByteBufferNano.writeInt32(4, this.programLength);
            }
            if (this.dropMulticast) {
                codedOutputByteBufferNano.writeBool(5, this.dropMulticast);
            }
            if (this.hasIpv4Addr) {
                codedOutputByteBufferNano.writeBool(6, this.hasIpv4Addr);
            }
            if (this.effectiveLifetime != 0) {
                codedOutputByteBufferNano.writeInt64(7, this.effectiveLifetime);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (this.lifetime != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(1, this.lifetime);
            }
            if (this.filteredRas != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(2, this.filteredRas);
            }
            if (this.currentRas != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(3, this.currentRas);
            }
            if (this.programLength != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(4, this.programLength);
            }
            if (this.dropMulticast) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(5, this.dropMulticast);
            }
            if (this.hasIpv4Addr) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(6, this.hasIpv4Addr);
            }
            return this.effectiveLifetime != 0 ? computeSerializedSize + CodedOutputByteBufferNano.computeInt64Size(7, this.effectiveLifetime) : computeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public ApfProgramEvent mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    return this;
                }
                if (readTag == 8) {
                    this.lifetime = codedInputByteBufferNano.readInt64();
                } else if (readTag == 16) {
                    this.filteredRas = codedInputByteBufferNano.readInt32();
                } else if (readTag == 24) {
                    this.currentRas = codedInputByteBufferNano.readInt32();
                } else if (readTag == 32) {
                    this.programLength = codedInputByteBufferNano.readInt32();
                } else if (readTag == 40) {
                    this.dropMulticast = codedInputByteBufferNano.readBool();
                } else if (readTag == 48) {
                    this.hasIpv4Addr = codedInputByteBufferNano.readBool();
                } else if (readTag != 56) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        return this;
                    }
                } else {
                    this.effectiveLifetime = codedInputByteBufferNano.readInt64();
                }
            }
        }

        public static ApfProgramEvent parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
            return (ApfProgramEvent) MessageNano.mergeFrom(new ApfProgramEvent(), bArr);
        }

        public static ApfProgramEvent parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            return new ApfProgramEvent().mergeFrom(codedInputByteBufferNano);
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static final class ApfStatistics extends MessageNano {
        private static volatile ApfStatistics[] _emptyArray;
        public int droppedRas;
        public long durationMs;
        public Pair[] hardwareCounters;
        public int matchingRas;
        public int maxProgramSize;
        public int parseErrors;
        public int programUpdates;
        public int programUpdatesAll;
        public int programUpdatesAllowingMulticast;
        public int receivedRas;
        public int totalPacketDropped;
        public int totalPacketProcessed;
        public int zeroLifetimeRas;

        public static ApfStatistics[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new ApfStatistics[0];
                    }
                }
            }
            return _emptyArray;
        }

        public ApfStatistics() {
            clear();
        }

        public ApfStatistics clear() {
            this.durationMs = 0L;
            this.receivedRas = 0;
            this.matchingRas = 0;
            this.droppedRas = 0;
            this.zeroLifetimeRas = 0;
            this.parseErrors = 0;
            this.programUpdates = 0;
            this.maxProgramSize = 0;
            this.programUpdatesAll = 0;
            this.programUpdatesAllowingMulticast = 0;
            this.totalPacketProcessed = 0;
            this.totalPacketDropped = 0;
            this.hardwareCounters = Pair.emptyArray();
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            if (this.durationMs != 0) {
                codedOutputByteBufferNano.writeInt64(1, this.durationMs);
            }
            if (this.receivedRas != 0) {
                codedOutputByteBufferNano.writeInt32(2, this.receivedRas);
            }
            if (this.matchingRas != 0) {
                codedOutputByteBufferNano.writeInt32(3, this.matchingRas);
            }
            if (this.droppedRas != 0) {
                codedOutputByteBufferNano.writeInt32(5, this.droppedRas);
            }
            if (this.zeroLifetimeRas != 0) {
                codedOutputByteBufferNano.writeInt32(6, this.zeroLifetimeRas);
            }
            if (this.parseErrors != 0) {
                codedOutputByteBufferNano.writeInt32(7, this.parseErrors);
            }
            if (this.programUpdates != 0) {
                codedOutputByteBufferNano.writeInt32(8, this.programUpdates);
            }
            if (this.maxProgramSize != 0) {
                codedOutputByteBufferNano.writeInt32(9, this.maxProgramSize);
            }
            if (this.programUpdatesAll != 0) {
                codedOutputByteBufferNano.writeInt32(10, this.programUpdatesAll);
            }
            if (this.programUpdatesAllowingMulticast != 0) {
                codedOutputByteBufferNano.writeInt32(11, this.programUpdatesAllowingMulticast);
            }
            if (this.totalPacketProcessed != 0) {
                codedOutputByteBufferNano.writeInt32(12, this.totalPacketProcessed);
            }
            if (this.totalPacketDropped != 0) {
                codedOutputByteBufferNano.writeInt32(13, this.totalPacketDropped);
            }
            if (this.hardwareCounters != null && this.hardwareCounters.length > 0) {
                for (int i = 0; i < this.hardwareCounters.length; i++) {
                    Pair pair = this.hardwareCounters[i];
                    if (pair != null) {
                        codedOutputByteBufferNano.writeMessage(14, pair);
                    }
                }
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (this.durationMs != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(1, this.durationMs);
            }
            if (this.receivedRas != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(2, this.receivedRas);
            }
            if (this.matchingRas != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(3, this.matchingRas);
            }
            if (this.droppedRas != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(5, this.droppedRas);
            }
            if (this.zeroLifetimeRas != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(6, this.zeroLifetimeRas);
            }
            if (this.parseErrors != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(7, this.parseErrors);
            }
            if (this.programUpdates != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(8, this.programUpdates);
            }
            if (this.maxProgramSize != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(9, this.maxProgramSize);
            }
            if (this.programUpdatesAll != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(10, this.programUpdatesAll);
            }
            if (this.programUpdatesAllowingMulticast != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(11, this.programUpdatesAllowingMulticast);
            }
            if (this.totalPacketProcessed != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(12, this.totalPacketProcessed);
            }
            if (this.totalPacketDropped != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(13, this.totalPacketDropped);
            }
            if (this.hardwareCounters != null && this.hardwareCounters.length > 0) {
                for (int i = 0; i < this.hardwareCounters.length; i++) {
                    Pair pair = this.hardwareCounters[i];
                    if (pair != null) {
                        computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(14, pair);
                    }
                }
            }
            return computeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public ApfStatistics mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                switch (readTag) {
                    case 0:
                        return this;
                    case 8:
                        this.durationMs = codedInputByteBufferNano.readInt64();
                        break;
                    case 16:
                        this.receivedRas = codedInputByteBufferNano.readInt32();
                        break;
                    case 24:
                        this.matchingRas = codedInputByteBufferNano.readInt32();
                        break;
                    case 40:
                        this.droppedRas = codedInputByteBufferNano.readInt32();
                        break;
                    case 48:
                        this.zeroLifetimeRas = codedInputByteBufferNano.readInt32();
                        break;
                    case 56:
                        this.parseErrors = codedInputByteBufferNano.readInt32();
                        break;
                    case 64:
                        this.programUpdates = codedInputByteBufferNano.readInt32();
                        break;
                    case 72:
                        this.maxProgramSize = codedInputByteBufferNano.readInt32();
                        break;
                    case 80:
                        this.programUpdatesAll = codedInputByteBufferNano.readInt32();
                        break;
                    case 88:
                        this.programUpdatesAllowingMulticast = codedInputByteBufferNano.readInt32();
                        break;
                    case 96:
                        this.totalPacketProcessed = codedInputByteBufferNano.readInt32();
                        break;
                    case 104:
                        this.totalPacketDropped = codedInputByteBufferNano.readInt32();
                        break;
                    case 114:
                        int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 114);
                        int length = this.hardwareCounters == null ? 0 : this.hardwareCounters.length;
                        Pair[] pairArr = new Pair[repeatedFieldArrayLength + length];
                        if (length != 0) {
                            System.arraycopy(this.hardwareCounters, 0, pairArr, 0, length);
                        }
                        while (length < pairArr.length - 1) {
                            pairArr[length] = new Pair();
                            codedInputByteBufferNano.readMessage(pairArr[length]);
                            codedInputByteBufferNano.readTag();
                            length++;
                        }
                        pairArr[length] = new Pair();
                        codedInputByteBufferNano.readMessage(pairArr[length]);
                        this.hardwareCounters = pairArr;
                        break;
                    default:
                        if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                            return this;
                        }
                        break;
                }
            }
        }

        public static ApfStatistics parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
            return (ApfStatistics) MessageNano.mergeFrom(new ApfStatistics(), bArr);
        }

        public static ApfStatistics parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            return new ApfStatistics().mergeFrom(codedInputByteBufferNano);
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static final class RaEvent extends MessageNano {
        private static volatile RaEvent[] _emptyArray;
        public long dnsslLifetime;
        public long prefixPreferredLifetime;
        public long prefixValidLifetime;
        public long rdnssLifetime;
        public long routeInfoLifetime;
        public long routerLifetime;

        public static RaEvent[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new RaEvent[0];
                    }
                }
            }
            return _emptyArray;
        }

        public RaEvent() {
            clear();
        }

        public RaEvent clear() {
            this.routerLifetime = 0L;
            this.prefixValidLifetime = 0L;
            this.prefixPreferredLifetime = 0L;
            this.routeInfoLifetime = 0L;
            this.rdnssLifetime = 0L;
            this.dnsslLifetime = 0L;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            if (this.routerLifetime != 0) {
                codedOutputByteBufferNano.writeInt64(1, this.routerLifetime);
            }
            if (this.prefixValidLifetime != 0) {
                codedOutputByteBufferNano.writeInt64(2, this.prefixValidLifetime);
            }
            if (this.prefixPreferredLifetime != 0) {
                codedOutputByteBufferNano.writeInt64(3, this.prefixPreferredLifetime);
            }
            if (this.routeInfoLifetime != 0) {
                codedOutputByteBufferNano.writeInt64(4, this.routeInfoLifetime);
            }
            if (this.rdnssLifetime != 0) {
                codedOutputByteBufferNano.writeInt64(5, this.rdnssLifetime);
            }
            if (this.dnsslLifetime != 0) {
                codedOutputByteBufferNano.writeInt64(6, this.dnsslLifetime);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (this.routerLifetime != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(1, this.routerLifetime);
            }
            if (this.prefixValidLifetime != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(2, this.prefixValidLifetime);
            }
            if (this.prefixPreferredLifetime != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(3, this.prefixPreferredLifetime);
            }
            if (this.routeInfoLifetime != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(4, this.routeInfoLifetime);
            }
            if (this.rdnssLifetime != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(5, this.rdnssLifetime);
            }
            return this.dnsslLifetime != 0 ? computeSerializedSize + CodedOutputByteBufferNano.computeInt64Size(6, this.dnsslLifetime) : computeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public RaEvent mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    return this;
                }
                if (readTag == 8) {
                    this.routerLifetime = codedInputByteBufferNano.readInt64();
                } else if (readTag == 16) {
                    this.prefixValidLifetime = codedInputByteBufferNano.readInt64();
                } else if (readTag == 24) {
                    this.prefixPreferredLifetime = codedInputByteBufferNano.readInt64();
                } else if (readTag == 32) {
                    this.routeInfoLifetime = codedInputByteBufferNano.readInt64();
                } else if (readTag == 40) {
                    this.rdnssLifetime = codedInputByteBufferNano.readInt64();
                } else if (readTag != 48) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        return this;
                    }
                } else {
                    this.dnsslLifetime = codedInputByteBufferNano.readInt64();
                }
            }
        }

        public static RaEvent parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
            return (RaEvent) MessageNano.mergeFrom(new RaEvent(), bArr);
        }

        public static RaEvent parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            return new RaEvent().mergeFrom(codedInputByteBufferNano);
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static final class IpProvisioningEvent extends MessageNano {
        private static volatile IpProvisioningEvent[] _emptyArray;
        public int eventType;
        public String ifName;
        public int latencyMs;

        public static IpProvisioningEvent[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new IpProvisioningEvent[0];
                    }
                }
            }
            return _emptyArray;
        }

        public IpProvisioningEvent() {
            clear();
        }

        public IpProvisioningEvent clear() {
            this.ifName = "";
            this.eventType = 0;
            this.latencyMs = 0;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            if (!this.ifName.equals("")) {
                codedOutputByteBufferNano.writeString(1, this.ifName);
            }
            if (this.eventType != 0) {
                codedOutputByteBufferNano.writeInt32(2, this.eventType);
            }
            if (this.latencyMs != 0) {
                codedOutputByteBufferNano.writeInt32(3, this.latencyMs);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (!this.ifName.equals("")) {
                computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(1, this.ifName);
            }
            if (this.eventType != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(2, this.eventType);
            }
            return this.latencyMs != 0 ? computeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(3, this.latencyMs) : computeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public IpProvisioningEvent mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    return this;
                }
                if (readTag == 10) {
                    this.ifName = codedInputByteBufferNano.readString();
                } else if (readTag == 16) {
                    this.eventType = codedInputByteBufferNano.readInt32();
                } else if (readTag != 24) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        return this;
                    }
                } else {
                    this.latencyMs = codedInputByteBufferNano.readInt32();
                }
            }
        }

        public static IpProvisioningEvent parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
            return (IpProvisioningEvent) MessageNano.mergeFrom(new IpProvisioningEvent(), bArr);
        }

        public static IpProvisioningEvent parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            return new IpProvisioningEvent().mergeFrom(codedInputByteBufferNano);
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static final class NetworkStats extends MessageNano {
        private static volatile NetworkStats[] _emptyArray;
        public long durationMs;
        public boolean everValidated;
        public int ipSupport;
        public int noConnectivityReports;
        public boolean portalFound;
        public int validationAttempts;
        public Pair[] validationEvents;
        public Pair[] validationStates;

        public static NetworkStats[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new NetworkStats[0];
                    }
                }
            }
            return _emptyArray;
        }

        public NetworkStats() {
            clear();
        }

        public NetworkStats clear() {
            this.durationMs = 0L;
            this.ipSupport = 0;
            this.everValidated = false;
            this.portalFound = false;
            this.noConnectivityReports = 0;
            this.validationAttempts = 0;
            this.validationEvents = Pair.emptyArray();
            this.validationStates = Pair.emptyArray();
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            if (this.durationMs != 0) {
                codedOutputByteBufferNano.writeInt64(1, this.durationMs);
            }
            if (this.ipSupport != 0) {
                codedOutputByteBufferNano.writeInt32(2, this.ipSupport);
            }
            if (this.everValidated) {
                codedOutputByteBufferNano.writeBool(3, this.everValidated);
            }
            if (this.portalFound) {
                codedOutputByteBufferNano.writeBool(4, this.portalFound);
            }
            if (this.noConnectivityReports != 0) {
                codedOutputByteBufferNano.writeInt32(5, this.noConnectivityReports);
            }
            if (this.validationAttempts != 0) {
                codedOutputByteBufferNano.writeInt32(6, this.validationAttempts);
            }
            if (this.validationEvents != null && this.validationEvents.length > 0) {
                for (int i = 0; i < this.validationEvents.length; i++) {
                    Pair pair = this.validationEvents[i];
                    if (pair != null) {
                        codedOutputByteBufferNano.writeMessage(7, pair);
                    }
                }
            }
            if (this.validationStates != null && this.validationStates.length > 0) {
                for (int i2 = 0; i2 < this.validationStates.length; i2++) {
                    Pair pair2 = this.validationStates[i2];
                    if (pair2 != null) {
                        codedOutputByteBufferNano.writeMessage(8, pair2);
                    }
                }
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (this.durationMs != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(1, this.durationMs);
            }
            if (this.ipSupport != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(2, this.ipSupport);
            }
            if (this.everValidated) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(3, this.everValidated);
            }
            if (this.portalFound) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(4, this.portalFound);
            }
            if (this.noConnectivityReports != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(5, this.noConnectivityReports);
            }
            if (this.validationAttempts != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(6, this.validationAttempts);
            }
            if (this.validationEvents != null && this.validationEvents.length > 0) {
                int i = computeSerializedSize;
                for (int i2 = 0; i2 < this.validationEvents.length; i2++) {
                    Pair pair = this.validationEvents[i2];
                    if (pair != null) {
                        i += CodedOutputByteBufferNano.computeMessageSize(7, pair);
                    }
                }
                computeSerializedSize = i;
            }
            if (this.validationStates != null && this.validationStates.length > 0) {
                for (int i3 = 0; i3 < this.validationStates.length; i3++) {
                    Pair pair2 = this.validationStates[i3];
                    if (pair2 != null) {
                        computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(8, pair2);
                    }
                }
            }
            return computeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public NetworkStats mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    return this;
                }
                if (readTag == 8) {
                    this.durationMs = codedInputByteBufferNano.readInt64();
                } else if (readTag == 16) {
                    int readInt32 = codedInputByteBufferNano.readInt32();
                    switch (readInt32) {
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                            this.ipSupport = readInt32;
                            break;
                    }
                } else if (readTag == 24) {
                    this.everValidated = codedInputByteBufferNano.readBool();
                } else if (readTag == 32) {
                    this.portalFound = codedInputByteBufferNano.readBool();
                } else if (readTag == 40) {
                    this.noConnectivityReports = codedInputByteBufferNano.readInt32();
                } else if (readTag == 48) {
                    this.validationAttempts = codedInputByteBufferNano.readInt32();
                } else if (readTag == 58) {
                    int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 58);
                    int length = this.validationEvents == null ? 0 : this.validationEvents.length;
                    Pair[] pairArr = new Pair[repeatedFieldArrayLength + length];
                    if (length != 0) {
                        System.arraycopy(this.validationEvents, 0, pairArr, 0, length);
                    }
                    while (length < pairArr.length - 1) {
                        pairArr[length] = new Pair();
                        codedInputByteBufferNano.readMessage(pairArr[length]);
                        codedInputByteBufferNano.readTag();
                        length++;
                    }
                    pairArr[length] = new Pair();
                    codedInputByteBufferNano.readMessage(pairArr[length]);
                    this.validationEvents = pairArr;
                } else if (readTag != 66) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        return this;
                    }
                } else {
                    int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 66);
                    int length2 = this.validationStates == null ? 0 : this.validationStates.length;
                    Pair[] pairArr2 = new Pair[repeatedFieldArrayLength2 + length2];
                    if (length2 != 0) {
                        System.arraycopy(this.validationStates, 0, pairArr2, 0, length2);
                    }
                    while (length2 < pairArr2.length - 1) {
                        pairArr2[length2] = new Pair();
                        codedInputByteBufferNano.readMessage(pairArr2[length2]);
                        codedInputByteBufferNano.readTag();
                        length2++;
                    }
                    pairArr2[length2] = new Pair();
                    codedInputByteBufferNano.readMessage(pairArr2[length2]);
                    this.validationStates = pairArr2;
                }
            }
        }

        public static NetworkStats parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
            return (NetworkStats) MessageNano.mergeFrom(new NetworkStats(), bArr);
        }

        public static NetworkStats parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            return new NetworkStats().mergeFrom(codedInputByteBufferNano);
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static final class WakeupStats extends MessageNano {
        private static volatile WakeupStats[] _emptyArray;
        public long applicationWakeups;
        public long durationSec;
        public Pair[] ethertypeCounts;
        public Pair[] ipNextHeaderCounts;
        public long l2BroadcastCount;
        public long l2MulticastCount;
        public long l2UnicastCount;
        public long noUidWakeups;
        public long nonApplicationWakeups;
        public long rootWakeups;
        public long systemWakeups;
        public long totalWakeups;

        public static WakeupStats[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new WakeupStats[0];
                    }
                }
            }
            return _emptyArray;
        }

        public WakeupStats() {
            clear();
        }

        public WakeupStats clear() {
            this.durationSec = 0L;
            this.totalWakeups = 0L;
            this.rootWakeups = 0L;
            this.systemWakeups = 0L;
            this.applicationWakeups = 0L;
            this.nonApplicationWakeups = 0L;
            this.noUidWakeups = 0L;
            this.ethertypeCounts = Pair.emptyArray();
            this.ipNextHeaderCounts = Pair.emptyArray();
            this.l2UnicastCount = 0L;
            this.l2MulticastCount = 0L;
            this.l2BroadcastCount = 0L;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            if (this.durationSec != 0) {
                codedOutputByteBufferNano.writeInt64(1, this.durationSec);
            }
            if (this.totalWakeups != 0) {
                codedOutputByteBufferNano.writeInt64(2, this.totalWakeups);
            }
            if (this.rootWakeups != 0) {
                codedOutputByteBufferNano.writeInt64(3, this.rootWakeups);
            }
            if (this.systemWakeups != 0) {
                codedOutputByteBufferNano.writeInt64(4, this.systemWakeups);
            }
            if (this.applicationWakeups != 0) {
                codedOutputByteBufferNano.writeInt64(5, this.applicationWakeups);
            }
            if (this.nonApplicationWakeups != 0) {
                codedOutputByteBufferNano.writeInt64(6, this.nonApplicationWakeups);
            }
            if (this.noUidWakeups != 0) {
                codedOutputByteBufferNano.writeInt64(7, this.noUidWakeups);
            }
            if (this.ethertypeCounts != null && this.ethertypeCounts.length > 0) {
                for (int i = 0; i < this.ethertypeCounts.length; i++) {
                    Pair pair = this.ethertypeCounts[i];
                    if (pair != null) {
                        codedOutputByteBufferNano.writeMessage(8, pair);
                    }
                }
            }
            if (this.ipNextHeaderCounts != null && this.ipNextHeaderCounts.length > 0) {
                for (int i2 = 0; i2 < this.ipNextHeaderCounts.length; i2++) {
                    Pair pair2 = this.ipNextHeaderCounts[i2];
                    if (pair2 != null) {
                        codedOutputByteBufferNano.writeMessage(9, pair2);
                    }
                }
            }
            if (this.l2UnicastCount != 0) {
                codedOutputByteBufferNano.writeInt64(10, this.l2UnicastCount);
            }
            if (this.l2MulticastCount != 0) {
                codedOutputByteBufferNano.writeInt64(11, this.l2MulticastCount);
            }
            if (this.l2BroadcastCount != 0) {
                codedOutputByteBufferNano.writeInt64(12, this.l2BroadcastCount);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (this.durationSec != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(1, this.durationSec);
            }
            if (this.totalWakeups != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(2, this.totalWakeups);
            }
            if (this.rootWakeups != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(3, this.rootWakeups);
            }
            if (this.systemWakeups != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(4, this.systemWakeups);
            }
            if (this.applicationWakeups != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(5, this.applicationWakeups);
            }
            if (this.nonApplicationWakeups != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(6, this.nonApplicationWakeups);
            }
            if (this.noUidWakeups != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(7, this.noUidWakeups);
            }
            if (this.ethertypeCounts != null && this.ethertypeCounts.length > 0) {
                int i = computeSerializedSize;
                for (int i2 = 0; i2 < this.ethertypeCounts.length; i2++) {
                    Pair pair = this.ethertypeCounts[i2];
                    if (pair != null) {
                        i += CodedOutputByteBufferNano.computeMessageSize(8, pair);
                    }
                }
                computeSerializedSize = i;
            }
            if (this.ipNextHeaderCounts != null && this.ipNextHeaderCounts.length > 0) {
                for (int i3 = 0; i3 < this.ipNextHeaderCounts.length; i3++) {
                    Pair pair2 = this.ipNextHeaderCounts[i3];
                    if (pair2 != null) {
                        computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(9, pair2);
                    }
                }
            }
            if (this.l2UnicastCount != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(10, this.l2UnicastCount);
            }
            if (this.l2MulticastCount != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(11, this.l2MulticastCount);
            }
            return this.l2BroadcastCount != 0 ? computeSerializedSize + CodedOutputByteBufferNano.computeInt64Size(12, this.l2BroadcastCount) : computeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public WakeupStats mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                switch (readTag) {
                    case 0:
                        return this;
                    case 8:
                        this.durationSec = codedInputByteBufferNano.readInt64();
                        break;
                    case 16:
                        this.totalWakeups = codedInputByteBufferNano.readInt64();
                        break;
                    case 24:
                        this.rootWakeups = codedInputByteBufferNano.readInt64();
                        break;
                    case 32:
                        this.systemWakeups = codedInputByteBufferNano.readInt64();
                        break;
                    case 40:
                        this.applicationWakeups = codedInputByteBufferNano.readInt64();
                        break;
                    case 48:
                        this.nonApplicationWakeups = codedInputByteBufferNano.readInt64();
                        break;
                    case 56:
                        this.noUidWakeups = codedInputByteBufferNano.readInt64();
                        break;
                    case 66:
                        int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 66);
                        int length = this.ethertypeCounts == null ? 0 : this.ethertypeCounts.length;
                        Pair[] pairArr = new Pair[repeatedFieldArrayLength + length];
                        if (length != 0) {
                            System.arraycopy(this.ethertypeCounts, 0, pairArr, 0, length);
                        }
                        while (length < pairArr.length - 1) {
                            pairArr[length] = new Pair();
                            codedInputByteBufferNano.readMessage(pairArr[length]);
                            codedInputByteBufferNano.readTag();
                            length++;
                        }
                        pairArr[length] = new Pair();
                        codedInputByteBufferNano.readMessage(pairArr[length]);
                        this.ethertypeCounts = pairArr;
                        break;
                    case 74:
                        int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 74);
                        int length2 = this.ipNextHeaderCounts == null ? 0 : this.ipNextHeaderCounts.length;
                        Pair[] pairArr2 = new Pair[repeatedFieldArrayLength2 + length2];
                        if (length2 != 0) {
                            System.arraycopy(this.ipNextHeaderCounts, 0, pairArr2, 0, length2);
                        }
                        while (length2 < pairArr2.length - 1) {
                            pairArr2[length2] = new Pair();
                            codedInputByteBufferNano.readMessage(pairArr2[length2]);
                            codedInputByteBufferNano.readTag();
                            length2++;
                        }
                        pairArr2[length2] = new Pair();
                        codedInputByteBufferNano.readMessage(pairArr2[length2]);
                        this.ipNextHeaderCounts = pairArr2;
                        break;
                    case 80:
                        this.l2UnicastCount = codedInputByteBufferNano.readInt64();
                        break;
                    case 88:
                        this.l2MulticastCount = codedInputByteBufferNano.readInt64();
                        break;
                    case 96:
                        this.l2BroadcastCount = codedInputByteBufferNano.readInt64();
                        break;
                    default:
                        if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                            return this;
                        }
                        break;
                }
            }
        }

        public static WakeupStats parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
            return (WakeupStats) MessageNano.mergeFrom(new WakeupStats(), bArr);
        }

        public static WakeupStats parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            return new WakeupStats().mergeFrom(codedInputByteBufferNano);
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static final class IpConnectivityEvent extends MessageNano {
        public static final int APF_PROGRAM_EVENT_FIELD_NUMBER = 9;
        public static final int APF_STATISTICS_FIELD_NUMBER = 10;
        public static final int CONNECT_STATISTICS_FIELD_NUMBER = 14;
        public static final int DEFAULT_NETWORK_EVENT_FIELD_NUMBER = 2;
        public static final int DHCP_EVENT_FIELD_NUMBER = 6;
        public static final int DNS_LATENCIES_FIELD_NUMBER = 13;
        public static final int DNS_LOOKUP_BATCH_FIELD_NUMBER = 5;
        public static final int IP_PROVISIONING_EVENT_FIELD_NUMBER = 7;
        public static final int IP_REACHABILITY_EVENT_FIELD_NUMBER = 3;
        public static final int NETWORK_EVENT_FIELD_NUMBER = 4;
        public static final int NETWORK_STATS_FIELD_NUMBER = 19;
        public static final int RA_EVENT_FIELD_NUMBER = 11;
        public static final int VALIDATION_PROBE_EVENT_FIELD_NUMBER = 8;
        public static final int WAKEUP_STATS_FIELD_NUMBER = 20;
        private static volatile IpConnectivityEvent[] _emptyArray;
        private int eventCase_ = 0;
        private Object event_;
        public String ifName;
        public int linkLayer;
        public int networkId;
        public long timeMs;
        public long transports;

        public int getEventCase() {
            return this.eventCase_;
        }

        public IpConnectivityEvent clearEvent() {
            this.eventCase_ = 0;
            this.event_ = null;
            return this;
        }

        public static IpConnectivityEvent[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new IpConnectivityEvent[0];
                    }
                }
            }
            return _emptyArray;
        }

        public boolean hasDefaultNetworkEvent() {
            return this.eventCase_ == 2;
        }

        public DefaultNetworkEvent getDefaultNetworkEvent() {
            if (this.eventCase_ == 2) {
                return (DefaultNetworkEvent) this.event_;
            }
            return null;
        }

        public IpConnectivityEvent setDefaultNetworkEvent(DefaultNetworkEvent defaultNetworkEvent) {
            if (defaultNetworkEvent == null) {
                throw new NullPointerException();
            }
            this.eventCase_ = 2;
            this.event_ = defaultNetworkEvent;
            return this;
        }

        public boolean hasIpReachabilityEvent() {
            return this.eventCase_ == 3;
        }

        public IpReachabilityEvent getIpReachabilityEvent() {
            if (this.eventCase_ == 3) {
                return (IpReachabilityEvent) this.event_;
            }
            return null;
        }

        public IpConnectivityEvent setIpReachabilityEvent(IpReachabilityEvent ipReachabilityEvent) {
            if (ipReachabilityEvent == null) {
                throw new NullPointerException();
            }
            this.eventCase_ = 3;
            this.event_ = ipReachabilityEvent;
            return this;
        }

        public boolean hasNetworkEvent() {
            return this.eventCase_ == 4;
        }

        public NetworkEvent getNetworkEvent() {
            if (this.eventCase_ == 4) {
                return (NetworkEvent) this.event_;
            }
            return null;
        }

        public IpConnectivityEvent setNetworkEvent(NetworkEvent networkEvent) {
            if (networkEvent == null) {
                throw new NullPointerException();
            }
            this.eventCase_ = 4;
            this.event_ = networkEvent;
            return this;
        }

        public boolean hasDnsLookupBatch() {
            return this.eventCase_ == 5;
        }

        public DNSLookupBatch getDnsLookupBatch() {
            if (this.eventCase_ == 5) {
                return (DNSLookupBatch) this.event_;
            }
            return null;
        }

        public IpConnectivityEvent setDnsLookupBatch(DNSLookupBatch dNSLookupBatch) {
            if (dNSLookupBatch == null) {
                throw new NullPointerException();
            }
            this.eventCase_ = 5;
            this.event_ = dNSLookupBatch;
            return this;
        }

        public boolean hasDnsLatencies() {
            return this.eventCase_ == 13;
        }

        public DNSLatencies getDnsLatencies() {
            if (this.eventCase_ == 13) {
                return (DNSLatencies) this.event_;
            }
            return null;
        }

        public IpConnectivityEvent setDnsLatencies(DNSLatencies dNSLatencies) {
            if (dNSLatencies == null) {
                throw new NullPointerException();
            }
            this.eventCase_ = 13;
            this.event_ = dNSLatencies;
            return this;
        }

        public boolean hasConnectStatistics() {
            return this.eventCase_ == 14;
        }

        public ConnectStatistics getConnectStatistics() {
            if (this.eventCase_ == 14) {
                return (ConnectStatistics) this.event_;
            }
            return null;
        }

        public IpConnectivityEvent setConnectStatistics(ConnectStatistics connectStatistics) {
            if (connectStatistics == null) {
                throw new NullPointerException();
            }
            this.eventCase_ = 14;
            this.event_ = connectStatistics;
            return this;
        }

        public boolean hasDhcpEvent() {
            return this.eventCase_ == 6;
        }

        public DHCPEvent getDhcpEvent() {
            if (this.eventCase_ == 6) {
                return (DHCPEvent) this.event_;
            }
            return null;
        }

        public IpConnectivityEvent setDhcpEvent(DHCPEvent dHCPEvent) {
            if (dHCPEvent == null) {
                throw new NullPointerException();
            }
            this.eventCase_ = 6;
            this.event_ = dHCPEvent;
            return this;
        }

        public boolean hasIpProvisioningEvent() {
            return this.eventCase_ == 7;
        }

        public IpProvisioningEvent getIpProvisioningEvent() {
            if (this.eventCase_ == 7) {
                return (IpProvisioningEvent) this.event_;
            }
            return null;
        }

        public IpConnectivityEvent setIpProvisioningEvent(IpProvisioningEvent ipProvisioningEvent) {
            if (ipProvisioningEvent == null) {
                throw new NullPointerException();
            }
            this.eventCase_ = 7;
            this.event_ = ipProvisioningEvent;
            return this;
        }

        public boolean hasValidationProbeEvent() {
            return this.eventCase_ == 8;
        }

        public ValidationProbeEvent getValidationProbeEvent() {
            if (this.eventCase_ == 8) {
                return (ValidationProbeEvent) this.event_;
            }
            return null;
        }

        public IpConnectivityEvent setValidationProbeEvent(ValidationProbeEvent validationProbeEvent) {
            if (validationProbeEvent == null) {
                throw new NullPointerException();
            }
            this.eventCase_ = 8;
            this.event_ = validationProbeEvent;
            return this;
        }

        public boolean hasApfProgramEvent() {
            return this.eventCase_ == 9;
        }

        public ApfProgramEvent getApfProgramEvent() {
            if (this.eventCase_ == 9) {
                return (ApfProgramEvent) this.event_;
            }
            return null;
        }

        public IpConnectivityEvent setApfProgramEvent(ApfProgramEvent apfProgramEvent) {
            if (apfProgramEvent == null) {
                throw new NullPointerException();
            }
            this.eventCase_ = 9;
            this.event_ = apfProgramEvent;
            return this;
        }

        public boolean hasApfStatistics() {
            return this.eventCase_ == 10;
        }

        public ApfStatistics getApfStatistics() {
            if (this.eventCase_ == 10) {
                return (ApfStatistics) this.event_;
            }
            return null;
        }

        public IpConnectivityEvent setApfStatistics(ApfStatistics apfStatistics) {
            if (apfStatistics == null) {
                throw new NullPointerException();
            }
            this.eventCase_ = 10;
            this.event_ = apfStatistics;
            return this;
        }

        public boolean hasRaEvent() {
            return this.eventCase_ == 11;
        }

        public RaEvent getRaEvent() {
            if (this.eventCase_ == 11) {
                return (RaEvent) this.event_;
            }
            return null;
        }

        public IpConnectivityEvent setRaEvent(RaEvent raEvent) {
            if (raEvent == null) {
                throw new NullPointerException();
            }
            this.eventCase_ = 11;
            this.event_ = raEvent;
            return this;
        }

        public boolean hasNetworkStats() {
            return this.eventCase_ == 19;
        }

        public NetworkStats getNetworkStats() {
            if (this.eventCase_ == 19) {
                return (NetworkStats) this.event_;
            }
            return null;
        }

        public IpConnectivityEvent setNetworkStats(NetworkStats networkStats) {
            if (networkStats == null) {
                throw new NullPointerException();
            }
            this.eventCase_ = 19;
            this.event_ = networkStats;
            return this;
        }

        public boolean hasWakeupStats() {
            return this.eventCase_ == 20;
        }

        public WakeupStats getWakeupStats() {
            if (this.eventCase_ == 20) {
                return (WakeupStats) this.event_;
            }
            return null;
        }

        public IpConnectivityEvent setWakeupStats(WakeupStats wakeupStats) {
            if (wakeupStats == null) {
                throw new NullPointerException();
            }
            this.eventCase_ = 20;
            this.event_ = wakeupStats;
            return this;
        }

        public IpConnectivityEvent() {
            clear();
        }

        public IpConnectivityEvent clear() {
            this.timeMs = 0L;
            this.linkLayer = 0;
            this.networkId = 0;
            this.ifName = "";
            this.transports = 0L;
            clearEvent();
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            if (this.timeMs != 0) {
                codedOutputByteBufferNano.writeInt64(1, this.timeMs);
            }
            if (this.eventCase_ == 2) {
                codedOutputByteBufferNano.writeMessage(2, (MessageNano) this.event_);
            }
            if (this.eventCase_ == 3) {
                codedOutputByteBufferNano.writeMessage(3, (MessageNano) this.event_);
            }
            if (this.eventCase_ == 4) {
                codedOutputByteBufferNano.writeMessage(4, (MessageNano) this.event_);
            }
            if (this.eventCase_ == 5) {
                codedOutputByteBufferNano.writeMessage(5, (MessageNano) this.event_);
            }
            if (this.eventCase_ == 6) {
                codedOutputByteBufferNano.writeMessage(6, (MessageNano) this.event_);
            }
            if (this.eventCase_ == 7) {
                codedOutputByteBufferNano.writeMessage(7, (MessageNano) this.event_);
            }
            if (this.eventCase_ == 8) {
                codedOutputByteBufferNano.writeMessage(8, (MessageNano) this.event_);
            }
            if (this.eventCase_ == 9) {
                codedOutputByteBufferNano.writeMessage(9, (MessageNano) this.event_);
            }
            if (this.eventCase_ == 10) {
                codedOutputByteBufferNano.writeMessage(10, (MessageNano) this.event_);
            }
            if (this.eventCase_ == 11) {
                codedOutputByteBufferNano.writeMessage(11, (MessageNano) this.event_);
            }
            if (this.eventCase_ == 13) {
                codedOutputByteBufferNano.writeMessage(13, (MessageNano) this.event_);
            }
            if (this.eventCase_ == 14) {
                codedOutputByteBufferNano.writeMessage(14, (MessageNano) this.event_);
            }
            if (this.linkLayer != 0) {
                codedOutputByteBufferNano.writeInt32(15, this.linkLayer);
            }
            if (this.networkId != 0) {
                codedOutputByteBufferNano.writeInt32(16, this.networkId);
            }
            if (!this.ifName.equals("")) {
                codedOutputByteBufferNano.writeString(17, this.ifName);
            }
            if (this.transports != 0) {
                codedOutputByteBufferNano.writeInt64(18, this.transports);
            }
            if (this.eventCase_ == 19) {
                codedOutputByteBufferNano.writeMessage(19, (MessageNano) this.event_);
            }
            if (this.eventCase_ == 20) {
                codedOutputByteBufferNano.writeMessage(20, (MessageNano) this.event_);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (this.timeMs != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(1, this.timeMs);
            }
            if (this.eventCase_ == 2) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, (MessageNano) this.event_);
            }
            if (this.eventCase_ == 3) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(3, (MessageNano) this.event_);
            }
            if (this.eventCase_ == 4) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(4, (MessageNano) this.event_);
            }
            if (this.eventCase_ == 5) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(5, (MessageNano) this.event_);
            }
            if (this.eventCase_ == 6) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(6, (MessageNano) this.event_);
            }
            if (this.eventCase_ == 7) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(7, (MessageNano) this.event_);
            }
            if (this.eventCase_ == 8) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(8, (MessageNano) this.event_);
            }
            if (this.eventCase_ == 9) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(9, (MessageNano) this.event_);
            }
            if (this.eventCase_ == 10) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(10, (MessageNano) this.event_);
            }
            if (this.eventCase_ == 11) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(11, (MessageNano) this.event_);
            }
            if (this.eventCase_ == 13) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(13, (MessageNano) this.event_);
            }
            if (this.eventCase_ == 14) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(14, (MessageNano) this.event_);
            }
            if (this.linkLayer != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(15, this.linkLayer);
            }
            if (this.networkId != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(16, this.networkId);
            }
            if (!this.ifName.equals("")) {
                computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(17, this.ifName);
            }
            if (this.transports != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(18, this.transports);
            }
            if (this.eventCase_ == 19) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(19, (MessageNano) this.event_);
            }
            return this.eventCase_ == 20 ? computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(20, (MessageNano) this.event_) : computeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public IpConnectivityEvent mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                switch (readTag) {
                    case 0:
                        return this;
                    case 8:
                        this.timeMs = codedInputByteBufferNano.readInt64();
                        break;
                    case 18:
                        if (this.eventCase_ != 2) {
                            this.event_ = new DefaultNetworkEvent();
                        }
                        codedInputByteBufferNano.readMessage((MessageNano) this.event_);
                        this.eventCase_ = 2;
                        break;
                    case 26:
                        if (this.eventCase_ != 3) {
                            this.event_ = new IpReachabilityEvent();
                        }
                        codedInputByteBufferNano.readMessage((MessageNano) this.event_);
                        this.eventCase_ = 3;
                        break;
                    case 34:
                        if (this.eventCase_ != 4) {
                            this.event_ = new NetworkEvent();
                        }
                        codedInputByteBufferNano.readMessage((MessageNano) this.event_);
                        this.eventCase_ = 4;
                        break;
                    case 42:
                        if (this.eventCase_ != 5) {
                            this.event_ = new DNSLookupBatch();
                        }
                        codedInputByteBufferNano.readMessage((MessageNano) this.event_);
                        this.eventCase_ = 5;
                        break;
                    case 50:
                        if (this.eventCase_ != 6) {
                            this.event_ = new DHCPEvent();
                        }
                        codedInputByteBufferNano.readMessage((MessageNano) this.event_);
                        this.eventCase_ = 6;
                        break;
                    case 58:
                        if (this.eventCase_ != 7) {
                            this.event_ = new IpProvisioningEvent();
                        }
                        codedInputByteBufferNano.readMessage((MessageNano) this.event_);
                        this.eventCase_ = 7;
                        break;
                    case 66:
                        if (this.eventCase_ != 8) {
                            this.event_ = new ValidationProbeEvent();
                        }
                        codedInputByteBufferNano.readMessage((MessageNano) this.event_);
                        this.eventCase_ = 8;
                        break;
                    case 74:
                        if (this.eventCase_ != 9) {
                            this.event_ = new ApfProgramEvent();
                        }
                        codedInputByteBufferNano.readMessage((MessageNano) this.event_);
                        this.eventCase_ = 9;
                        break;
                    case 82:
                        if (this.eventCase_ != 10) {
                            this.event_ = new ApfStatistics();
                        }
                        codedInputByteBufferNano.readMessage((MessageNano) this.event_);
                        this.eventCase_ = 10;
                        break;
                    case 90:
                        if (this.eventCase_ != 11) {
                            this.event_ = new RaEvent();
                        }
                        codedInputByteBufferNano.readMessage((MessageNano) this.event_);
                        this.eventCase_ = 11;
                        break;
                    case 106:
                        if (this.eventCase_ != 13) {
                            this.event_ = new DNSLatencies();
                        }
                        codedInputByteBufferNano.readMessage((MessageNano) this.event_);
                        this.eventCase_ = 13;
                        break;
                    case 114:
                        if (this.eventCase_ != 14) {
                            this.event_ = new ConnectStatistics();
                        }
                        codedInputByteBufferNano.readMessage((MessageNano) this.event_);
                        this.eventCase_ = 14;
                        break;
                    case 120:
                        int readInt32 = codedInputByteBufferNano.readInt32();
                        switch (readInt32) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                            case 7:
                            case 8:
                            case 9:
                                this.linkLayer = readInt32;
                                break;
                        }
                    case 128:
                        this.networkId = codedInputByteBufferNano.readInt32();
                        break;
                    case 138:
                        this.ifName = codedInputByteBufferNano.readString();
                        break;
                    case 144:
                        this.transports = codedInputByteBufferNano.readInt64();
                        break;
                    case 154:
                        if (this.eventCase_ != 19) {
                            this.event_ = new NetworkStats();
                        }
                        codedInputByteBufferNano.readMessage((MessageNano) this.event_);
                        this.eventCase_ = 19;
                        break;
                    case 162:
                        if (this.eventCase_ != 20) {
                            this.event_ = new WakeupStats();
                        }
                        codedInputByteBufferNano.readMessage((MessageNano) this.event_);
                        this.eventCase_ = 20;
                        break;
                    default:
                        if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                            return this;
                        }
                        break;
                }
            }
        }

        public static IpConnectivityEvent parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
            return (IpConnectivityEvent) MessageNano.mergeFrom(new IpConnectivityEvent(), bArr);
        }

        public static IpConnectivityEvent parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            return new IpConnectivityEvent().mergeFrom(codedInputByteBufferNano);
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static final class IpConnectivityLog extends MessageNano {
        private static volatile IpConnectivityLog[] _emptyArray;
        public int droppedEvents;
        public IpConnectivityEvent[] events;
        public int version;

        public static IpConnectivityLog[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new IpConnectivityLog[0];
                    }
                }
            }
            return _emptyArray;
        }

        public IpConnectivityLog() {
            clear();
        }

        public IpConnectivityLog clear() {
            this.events = IpConnectivityEvent.emptyArray();
            this.droppedEvents = 0;
            this.version = 0;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            if (this.events != null && this.events.length > 0) {
                for (int i = 0; i < this.events.length; i++) {
                    IpConnectivityEvent ipConnectivityEvent = this.events[i];
                    if (ipConnectivityEvent != null) {
                        codedOutputByteBufferNano.writeMessage(1, ipConnectivityEvent);
                    }
                }
            }
            if (this.droppedEvents != 0) {
                codedOutputByteBufferNano.writeInt32(2, this.droppedEvents);
            }
            if (this.version != 0) {
                codedOutputByteBufferNano.writeInt32(3, this.version);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (this.events != null && this.events.length > 0) {
                for (int i = 0; i < this.events.length; i++) {
                    IpConnectivityEvent ipConnectivityEvent = this.events[i];
                    if (ipConnectivityEvent != null) {
                        computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, ipConnectivityEvent);
                    }
                }
            }
            if (this.droppedEvents != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(2, this.droppedEvents);
            }
            return this.version != 0 ? computeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(3, this.version) : computeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public IpConnectivityLog mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    return this;
                }
                if (readTag == 10) {
                    int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 10);
                    int length = this.events == null ? 0 : this.events.length;
                    IpConnectivityEvent[] ipConnectivityEventArr = new IpConnectivityEvent[repeatedFieldArrayLength + length];
                    if (length != 0) {
                        System.arraycopy(this.events, 0, ipConnectivityEventArr, 0, length);
                    }
                    while (length < ipConnectivityEventArr.length - 1) {
                        ipConnectivityEventArr[length] = new IpConnectivityEvent();
                        codedInputByteBufferNano.readMessage(ipConnectivityEventArr[length]);
                        codedInputByteBufferNano.readTag();
                        length++;
                    }
                    ipConnectivityEventArr[length] = new IpConnectivityEvent();
                    codedInputByteBufferNano.readMessage(ipConnectivityEventArr[length]);
                    this.events = ipConnectivityEventArr;
                } else if (readTag == 16) {
                    this.droppedEvents = codedInputByteBufferNano.readInt32();
                } else if (readTag != 24) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        return this;
                    }
                } else {
                    this.version = codedInputByteBufferNano.readInt32();
                }
            }
        }

        public static IpConnectivityLog parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
            return (IpConnectivityLog) MessageNano.mergeFrom(new IpConnectivityLog(), bArr);
        }

        public static IpConnectivityLog parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            return new IpConnectivityLog().mergeFrom(codedInputByteBufferNano);
        }
    }
}
