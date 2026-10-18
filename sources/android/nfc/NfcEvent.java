package android.nfc;

/* loaded from: /home/user/work/dex/classes.dex */
public final class NfcEvent {
    public final NfcAdapter nfcAdapter;
    public final int peerLlcpMajorVersion;
    public final int peerLlcpMinorVersion;

    /* JADX INFO: Access modifiers changed from: package-private */
    public NfcEvent(NfcAdapter nfcAdapter, byte b) {
        this.nfcAdapter = nfcAdapter;
        this.peerLlcpMajorVersion = (b & 240) >> 4;
        this.peerLlcpMinorVersion = b & 15;
    }
}
