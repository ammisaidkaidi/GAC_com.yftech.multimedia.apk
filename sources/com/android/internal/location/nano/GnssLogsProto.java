package com.android.internal.location.nano;

import com.android.framework.protobuf.nano.CodedInputByteBufferNano;
import com.android.framework.protobuf.nano.CodedOutputByteBufferNano;
import com.android.framework.protobuf.nano.InternalNano;
import com.android.framework.protobuf.nano.InvalidProtocolBufferNanoException;
import com.android.framework.protobuf.nano.MessageNano;
import com.android.framework.protobuf.nano.WireFormatNano;
import java.io.IOException;

/* loaded from: /home/user/work/dex/classes3.dex */
public interface GnssLogsProto {

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static final class GnssLog extends MessageNano {
        private static volatile GnssLog[] _emptyArray;
        public int meanPositionAccuracyMeters;
        public int meanTimeToFirstFixSecs;
        public double meanTopFourAverageCn0DbHz;
        public int numLocationReportProcessed;
        public int numPositionAccuracyProcessed;
        public int numTimeToFirstFixProcessed;
        public int numTopFourAverageCn0Processed;
        public int percentageLocationFailure;
        public PowerMetrics powerMetrics;
        public int standardDeviationPositionAccuracyMeters;
        public int standardDeviationTimeToFirstFixSecs;
        public double standardDeviationTopFourAverageCn0DbHz;

        public static GnssLog[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new GnssLog[0];
                    }
                }
            }
            return _emptyArray;
        }

        public GnssLog() {
            clear();
        }

        public GnssLog clear() {
            this.numLocationReportProcessed = 0;
            this.percentageLocationFailure = 0;
            this.numTimeToFirstFixProcessed = 0;
            this.meanTimeToFirstFixSecs = 0;
            this.standardDeviationTimeToFirstFixSecs = 0;
            this.numPositionAccuracyProcessed = 0;
            this.meanPositionAccuracyMeters = 0;
            this.standardDeviationPositionAccuracyMeters = 0;
            this.numTopFourAverageCn0Processed = 0;
            this.meanTopFourAverageCn0DbHz = 0.0d;
            this.standardDeviationTopFourAverageCn0DbHz = 0.0d;
            this.powerMetrics = null;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            if (this.numLocationReportProcessed != 0) {
                codedOutputByteBufferNano.writeInt32(1, this.numLocationReportProcessed);
            }
            if (this.percentageLocationFailure != 0) {
                codedOutputByteBufferNano.writeInt32(2, this.percentageLocationFailure);
            }
            if (this.numTimeToFirstFixProcessed != 0) {
                codedOutputByteBufferNano.writeInt32(3, this.numTimeToFirstFixProcessed);
            }
            if (this.meanTimeToFirstFixSecs != 0) {
                codedOutputByteBufferNano.writeInt32(4, this.meanTimeToFirstFixSecs);
            }
            if (this.standardDeviationTimeToFirstFixSecs != 0) {
                codedOutputByteBufferNano.writeInt32(5, this.standardDeviationTimeToFirstFixSecs);
            }
            if (this.numPositionAccuracyProcessed != 0) {
                codedOutputByteBufferNano.writeInt32(6, this.numPositionAccuracyProcessed);
            }
            if (this.meanPositionAccuracyMeters != 0) {
                codedOutputByteBufferNano.writeInt32(7, this.meanPositionAccuracyMeters);
            }
            if (this.standardDeviationPositionAccuracyMeters != 0) {
                codedOutputByteBufferNano.writeInt32(8, this.standardDeviationPositionAccuracyMeters);
            }
            if (this.numTopFourAverageCn0Processed != 0) {
                codedOutputByteBufferNano.writeInt32(9, this.numTopFourAverageCn0Processed);
            }
            if (Double.doubleToLongBits(this.meanTopFourAverageCn0DbHz) != Double.doubleToLongBits(0.0d)) {
                codedOutputByteBufferNano.writeDouble(10, this.meanTopFourAverageCn0DbHz);
            }
            if (Double.doubleToLongBits(this.standardDeviationTopFourAverageCn0DbHz) != Double.doubleToLongBits(0.0d)) {
                codedOutputByteBufferNano.writeDouble(11, this.standardDeviationTopFourAverageCn0DbHz);
            }
            if (this.powerMetrics != null) {
                codedOutputByteBufferNano.writeMessage(12, this.powerMetrics);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (this.numLocationReportProcessed != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, this.numLocationReportProcessed);
            }
            if (this.percentageLocationFailure != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(2, this.percentageLocationFailure);
            }
            if (this.numTimeToFirstFixProcessed != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(3, this.numTimeToFirstFixProcessed);
            }
            if (this.meanTimeToFirstFixSecs != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(4, this.meanTimeToFirstFixSecs);
            }
            if (this.standardDeviationTimeToFirstFixSecs != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(5, this.standardDeviationTimeToFirstFixSecs);
            }
            if (this.numPositionAccuracyProcessed != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(6, this.numPositionAccuracyProcessed);
            }
            if (this.meanPositionAccuracyMeters != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(7, this.meanPositionAccuracyMeters);
            }
            if (this.standardDeviationPositionAccuracyMeters != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(8, this.standardDeviationPositionAccuracyMeters);
            }
            if (this.numTopFourAverageCn0Processed != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(9, this.numTopFourAverageCn0Processed);
            }
            if (Double.doubleToLongBits(this.meanTopFourAverageCn0DbHz) != Double.doubleToLongBits(0.0d)) {
                computeSerializedSize += CodedOutputByteBufferNano.computeDoubleSize(10, this.meanTopFourAverageCn0DbHz);
            }
            if (Double.doubleToLongBits(this.standardDeviationTopFourAverageCn0DbHz) != Double.doubleToLongBits(0.0d)) {
                computeSerializedSize += CodedOutputByteBufferNano.computeDoubleSize(11, this.standardDeviationTopFourAverageCn0DbHz);
            }
            return this.powerMetrics != null ? computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(12, this.powerMetrics) : computeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public GnssLog mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                switch (readTag) {
                    case 0:
                        return this;
                    case 8:
                        this.numLocationReportProcessed = codedInputByteBufferNano.readInt32();
                        break;
                    case 16:
                        this.percentageLocationFailure = codedInputByteBufferNano.readInt32();
                        break;
                    case 24:
                        this.numTimeToFirstFixProcessed = codedInputByteBufferNano.readInt32();
                        break;
                    case 32:
                        this.meanTimeToFirstFixSecs = codedInputByteBufferNano.readInt32();
                        break;
                    case 40:
                        this.standardDeviationTimeToFirstFixSecs = codedInputByteBufferNano.readInt32();
                        break;
                    case 48:
                        this.numPositionAccuracyProcessed = codedInputByteBufferNano.readInt32();
                        break;
                    case 56:
                        this.meanPositionAccuracyMeters = codedInputByteBufferNano.readInt32();
                        break;
                    case 64:
                        this.standardDeviationPositionAccuracyMeters = codedInputByteBufferNano.readInt32();
                        break;
                    case 72:
                        this.numTopFourAverageCn0Processed = codedInputByteBufferNano.readInt32();
                        break;
                    case 81:
                        this.meanTopFourAverageCn0DbHz = codedInputByteBufferNano.readDouble();
                        break;
                    case 89:
                        this.standardDeviationTopFourAverageCn0DbHz = codedInputByteBufferNano.readDouble();
                        break;
                    case 98:
                        if (this.powerMetrics == null) {
                            this.powerMetrics = new PowerMetrics();
                        }
                        codedInputByteBufferNano.readMessage(this.powerMetrics);
                        break;
                    default:
                        if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                            return this;
                        }
                        break;
                }
            }
        }

        public static GnssLog parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
            return (GnssLog) MessageNano.mergeFrom(new GnssLog(), bArr);
        }

        public static GnssLog parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            return new GnssLog().mergeFrom(codedInputByteBufferNano);
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static final class PowerMetrics extends MessageNano {
        private static volatile PowerMetrics[] _emptyArray;
        public double energyConsumedMah;
        public long loggingDurationMs;
        public long[] timeInSignalQualityLevelMs;

        public static PowerMetrics[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new PowerMetrics[0];
                    }
                }
            }
            return _emptyArray;
        }

        public PowerMetrics() {
            clear();
        }

        public PowerMetrics clear() {
            this.loggingDurationMs = 0L;
            this.energyConsumedMah = 0.0d;
            this.timeInSignalQualityLevelMs = WireFormatNano.EMPTY_LONG_ARRAY;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            if (this.loggingDurationMs != 0) {
                codedOutputByteBufferNano.writeInt64(1, this.loggingDurationMs);
            }
            if (Double.doubleToLongBits(this.energyConsumedMah) != Double.doubleToLongBits(0.0d)) {
                codedOutputByteBufferNano.writeDouble(2, this.energyConsumedMah);
            }
            if (this.timeInSignalQualityLevelMs != null && this.timeInSignalQualityLevelMs.length > 0) {
                for (int i = 0; i < this.timeInSignalQualityLevelMs.length; i++) {
                    codedOutputByteBufferNano.writeInt64(3, this.timeInSignalQualityLevelMs[i]);
                }
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (this.loggingDurationMs != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(1, this.loggingDurationMs);
            }
            if (Double.doubleToLongBits(this.energyConsumedMah) != Double.doubleToLongBits(0.0d)) {
                computeSerializedSize += CodedOutputByteBufferNano.computeDoubleSize(2, this.energyConsumedMah);
            }
            if (this.timeInSignalQualityLevelMs == null || this.timeInSignalQualityLevelMs.length <= 0) {
                return computeSerializedSize;
            }
            int i = 0;
            for (int i2 = 0; i2 < this.timeInSignalQualityLevelMs.length; i2++) {
                i += CodedOutputByteBufferNano.computeInt64SizeNoTag(this.timeInSignalQualityLevelMs[i2]);
            }
            return computeSerializedSize + i + (this.timeInSignalQualityLevelMs.length * 1);
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public PowerMetrics mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    return this;
                }
                if (readTag == 8) {
                    this.loggingDurationMs = codedInputByteBufferNano.readInt64();
                } else if (readTag == 17) {
                    this.energyConsumedMah = codedInputByteBufferNano.readDouble();
                } else if (readTag == 24) {
                    int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 24);
                    int length = this.timeInSignalQualityLevelMs == null ? 0 : this.timeInSignalQualityLevelMs.length;
                    long[] jArr = new long[repeatedFieldArrayLength + length];
                    if (length != 0) {
                        System.arraycopy(this.timeInSignalQualityLevelMs, 0, jArr, 0, length);
                    }
                    while (length < jArr.length - 1) {
                        jArr[length] = codedInputByteBufferNano.readInt64();
                        codedInputByteBufferNano.readTag();
                        length++;
                    }
                    jArr[length] = codedInputByteBufferNano.readInt64();
                    this.timeInSignalQualityLevelMs = jArr;
                } else if (readTag != 26) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        return this;
                    }
                } else {
                    int pushLimit = codedInputByteBufferNano.pushLimit(codedInputByteBufferNano.readRawVarint32());
                    int position = codedInputByteBufferNano.getPosition();
                    int i = 0;
                    while (codedInputByteBufferNano.getBytesUntilLimit() > 0) {
                        codedInputByteBufferNano.readInt64();
                        i++;
                    }
                    codedInputByteBufferNano.rewindToPosition(position);
                    int length2 = this.timeInSignalQualityLevelMs == null ? 0 : this.timeInSignalQualityLevelMs.length;
                    long[] jArr2 = new long[i + length2];
                    if (length2 != 0) {
                        System.arraycopy(this.timeInSignalQualityLevelMs, 0, jArr2, 0, length2);
                    }
                    while (length2 < jArr2.length) {
                        jArr2[length2] = codedInputByteBufferNano.readInt64();
                        length2++;
                    }
                    this.timeInSignalQualityLevelMs = jArr2;
                    codedInputByteBufferNano.popLimit(pushLimit);
                }
            }
        }

        public static PowerMetrics parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
            return (PowerMetrics) MessageNano.mergeFrom(new PowerMetrics(), bArr);
        }

        public static PowerMetrics parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            return new PowerMetrics().mergeFrom(codedInputByteBufferNano);
        }
    }
}
