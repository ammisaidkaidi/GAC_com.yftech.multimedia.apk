package android.nfc.tech;

import android.nfc.FormatException;
import android.nfc.INfcTag;
import android.nfc.NdefMessage;
import android.nfc.Tag;
import android.os.RemoteException;
import android.util.Log;
import java.io.IOException;

/* loaded from: /home/user/work/dex/classes.dex */
public final class NdefFormatable extends BasicTagTechnology {
    private static final String TAG = "NFC";

    @Override // android.nfc.tech.BasicTagTechnology, android.nfc.tech.TagTechnology, java.io.Closeable, java.lang.AutoCloseable
    public /* bridge */ /* synthetic */ void close() throws IOException {
        super.close();
    }

    @Override // android.nfc.tech.BasicTagTechnology, android.nfc.tech.TagTechnology
    public /* bridge */ /* synthetic */ void connect() throws IOException {
        super.connect();
    }

    @Override // android.nfc.tech.BasicTagTechnology, android.nfc.tech.TagTechnology
    public /* bridge */ /* synthetic */ Tag getTag() {
        return super.getTag();
    }

    @Override // android.nfc.tech.BasicTagTechnology, android.nfc.tech.TagTechnology
    public /* bridge */ /* synthetic */ boolean isConnected() {
        return super.isConnected();
    }

    @Override // android.nfc.tech.BasicTagTechnology, android.nfc.tech.TagTechnology
    public /* bridge */ /* synthetic */ void reconnect() throws IOException {
        super.reconnect();
    }

    public static NdefFormatable get(Tag tag) {
        if (!tag.hasTech(7)) {
            return null;
        }
        try {
            return new NdefFormatable(tag);
        } catch (RemoteException unused) {
            return null;
        }
    }

    public NdefFormatable(Tag tag) throws RemoteException {
        super(tag, 7);
    }

    public void format(NdefMessage ndefMessage) throws IOException, FormatException {
        format(ndefMessage, false);
    }

    public void formatReadOnly(NdefMessage ndefMessage) throws IOException, FormatException {
        format(ndefMessage, true);
    }

    void format(NdefMessage ndefMessage, boolean z) throws IOException, FormatException {
        checkConnected();
        try {
            int serviceHandle = this.mTag.getServiceHandle();
            INfcTag tagService = this.mTag.getTagService();
            int formatNdef = tagService.formatNdef(serviceHandle, MifareClassic.KEY_DEFAULT);
            if (formatNdef != -8) {
                switch (formatNdef) {
                    case -1:
                        throw new IOException();
                    case 0:
                        if (!tagService.isNdef(serviceHandle)) {
                            throw new IOException();
                        }
                        if (ndefMessage != null) {
                            int ndefWrite = tagService.ndefWrite(serviceHandle, ndefMessage);
                            if (ndefWrite != -8) {
                                switch (ndefWrite) {
                                    case -1:
                                        throw new IOException();
                                    case 0:
                                        break;
                                    default:
                                        throw new IOException();
                                }
                            } else {
                                throw new FormatException();
                            }
                        }
                        if (z) {
                            int ndefMakeReadOnly = tagService.ndefMakeReadOnly(serviceHandle);
                            if (ndefMakeReadOnly != -8) {
                                switch (ndefMakeReadOnly) {
                                    case -1:
                                        throw new IOException();
                                    case 0:
                                        return;
                                    default:
                                        throw new IOException();
                                }
                            }
                            throw new IOException();
                        }
                        return;
                    default:
                        throw new IOException();
                }
            }
            throw new FormatException();
        } catch (RemoteException e) {
            Log.e(TAG, "NFC service dead", e);
        }
    }
}
