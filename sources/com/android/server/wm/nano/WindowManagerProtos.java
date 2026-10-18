package com.android.server.wm.nano;

import com.android.framework.protobuf.nano.CodedInputByteBufferNano;
import com.android.framework.protobuf.nano.CodedOutputByteBufferNano;
import com.android.framework.protobuf.nano.InternalNano;
import com.android.framework.protobuf.nano.InvalidProtocolBufferNanoException;
import com.android.framework.protobuf.nano.MessageNano;
import com.android.framework.protobuf.nano.WireFormatNano;
import java.io.IOException;

/* loaded from: /home/user/work/dex/classes3.dex */
public interface WindowManagerProtos {

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static final class TaskSnapshotProto extends MessageNano {
        private static volatile TaskSnapshotProto[] _emptyArray;
        public int insetBottom;
        public int insetLeft;
        public int insetRight;
        public int insetTop;
        public boolean isRealSnapshot;
        public boolean isTranslucent;
        public int orientation;
        public int systemUiVisibility;
        public int windowingMode;

        public static TaskSnapshotProto[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new TaskSnapshotProto[0];
                    }
                }
            }
            return _emptyArray;
        }

        public TaskSnapshotProto() {
            clear();
        }

        public TaskSnapshotProto clear() {
            this.orientation = 0;
            this.insetLeft = 0;
            this.insetTop = 0;
            this.insetRight = 0;
            this.insetBottom = 0;
            this.isRealSnapshot = false;
            this.windowingMode = 0;
            this.systemUiVisibility = 0;
            this.isTranslucent = false;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            if (this.orientation != 0) {
                codedOutputByteBufferNano.writeInt32(1, this.orientation);
            }
            if (this.insetLeft != 0) {
                codedOutputByteBufferNano.writeInt32(2, this.insetLeft);
            }
            if (this.insetTop != 0) {
                codedOutputByteBufferNano.writeInt32(3, this.insetTop);
            }
            if (this.insetRight != 0) {
                codedOutputByteBufferNano.writeInt32(4, this.insetRight);
            }
            if (this.insetBottom != 0) {
                codedOutputByteBufferNano.writeInt32(5, this.insetBottom);
            }
            if (this.isRealSnapshot) {
                codedOutputByteBufferNano.writeBool(6, this.isRealSnapshot);
            }
            if (this.windowingMode != 0) {
                codedOutputByteBufferNano.writeInt32(7, this.windowingMode);
            }
            if (this.systemUiVisibility != 0) {
                codedOutputByteBufferNano.writeInt32(8, this.systemUiVisibility);
            }
            if (this.isTranslucent) {
                codedOutputByteBufferNano.writeBool(9, this.isTranslucent);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (this.orientation != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, this.orientation);
            }
            if (this.insetLeft != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(2, this.insetLeft);
            }
            if (this.insetTop != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(3, this.insetTop);
            }
            if (this.insetRight != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(4, this.insetRight);
            }
            if (this.insetBottom != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(5, this.insetBottom);
            }
            if (this.isRealSnapshot) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(6, this.isRealSnapshot);
            }
            if (this.windowingMode != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(7, this.windowingMode);
            }
            if (this.systemUiVisibility != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(8, this.systemUiVisibility);
            }
            return this.isTranslucent ? computeSerializedSize + CodedOutputByteBufferNano.computeBoolSize(9, this.isTranslucent) : computeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public TaskSnapshotProto mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    return this;
                }
                if (readTag == 8) {
                    this.orientation = codedInputByteBufferNano.readInt32();
                } else if (readTag == 16) {
                    this.insetLeft = codedInputByteBufferNano.readInt32();
                } else if (readTag == 24) {
                    this.insetTop = codedInputByteBufferNano.readInt32();
                } else if (readTag == 32) {
                    this.insetRight = codedInputByteBufferNano.readInt32();
                } else if (readTag == 40) {
                    this.insetBottom = codedInputByteBufferNano.readInt32();
                } else if (readTag == 48) {
                    this.isRealSnapshot = codedInputByteBufferNano.readBool();
                } else if (readTag == 56) {
                    this.windowingMode = codedInputByteBufferNano.readInt32();
                } else if (readTag == 64) {
                    this.systemUiVisibility = codedInputByteBufferNano.readInt32();
                } else if (readTag != 72) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        return this;
                    }
                } else {
                    this.isTranslucent = codedInputByteBufferNano.readBool();
                }
            }
        }

        public static TaskSnapshotProto parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
            return (TaskSnapshotProto) MessageNano.mergeFrom(new TaskSnapshotProto(), bArr);
        }

        public static TaskSnapshotProto parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            return new TaskSnapshotProto().mergeFrom(codedInputByteBufferNano);
        }
    }
}
