package com.android.internal.telephony.uicc.asn1;

import com.android.internal.midi.MidiConstants;
import com.android.internal.telephony.uicc.IccUtils;

/* loaded from: /home/user/work/dex/classes3.dex */
public final class Asn1Decoder {
    private final int mEnd;
    private int mPosition;
    private final byte[] mSrc;

    public Asn1Decoder(String str) {
        this(IccUtils.hexStringToBytes(str));
    }

    public Asn1Decoder(byte[] bArr) {
        this(bArr, 0, bArr.length);
    }

    public Asn1Decoder(byte[] bArr, int i, int i2) {
        int i3;
        if (i < 0 || i2 < 0 || (i3 = i + i2) > bArr.length) {
            throw new IndexOutOfBoundsException("Out of the bounds: bytes=[" + bArr.length + "], offset=" + i + ", length=" + i2);
        }
        this.mSrc = bArr;
        this.mPosition = i;
        this.mEnd = i3;
    }

    public int getPosition() {
        return this.mPosition;
    }

    public boolean hasNextNode() {
        return this.mPosition < this.mEnd;
    }

    public Asn1Node nextNode() throws InvalidAsn1DataException {
        int i;
        if (this.mPosition >= this.mEnd) {
            throw new IllegalStateException("No bytes to parse.");
        }
        int i2 = this.mPosition;
        int i3 = i2 + 1;
        if ((this.mSrc[i2] & 31) == 31) {
            while (true) {
                if (i3 >= this.mEnd) {
                    break;
                }
                int i4 = i3 + 1;
                if ((this.mSrc[i3] & MidiConstants.STATUS_NOTE_OFF) == 0) {
                    i3 = i4;
                    break;
                }
                i3 = i4;
            }
        }
        if (i3 >= this.mEnd) {
            throw new InvalidAsn1DataException(0, "Invalid length at position: " + i3);
        }
        try {
            int bytesToInt = IccUtils.bytesToInt(this.mSrc, i2, i3 - i2);
            int i5 = i3 + 1;
            int i6 = this.mSrc[i3];
            if ((i6 & 128) == 0) {
                i = i5;
            } else {
                int i7 = i6 & 127;
                i = i5 + i7;
                if (i > this.mEnd) {
                    throw new InvalidAsn1DataException(bytesToInt, "Cannot parse length at position: " + i5);
                }
                try {
                    i6 = IccUtils.bytesToInt(this.mSrc, i5, i7);
                } catch (IllegalArgumentException e) {
                    throw new InvalidAsn1DataException(bytesToInt, "Cannot parse length at position: " + i5, e);
                }
            }
            int i8 = i + i6;
            if (i8 > this.mEnd) {
                throw new InvalidAsn1DataException(bytesToInt, "Incomplete data at position: " + i + ", expected bytes: " + i6 + ", actual bytes: " + (this.mEnd - i));
            }
            Asn1Node asn1Node = new Asn1Node(bytesToInt, this.mSrc, i, i6);
            this.mPosition = i8;
            return asn1Node;
        } catch (IllegalArgumentException e2) {
            throw new InvalidAsn1DataException(0, "Cannot parse tag at position: " + i2, e2);
        }
    }
}
