package android.printservice;

import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.print.PrintDocumentInfo;
import android.print.PrintJobId;
import android.util.Log;
import java.io.IOException;

/* loaded from: /home/user/work/dex/classes2.dex */
public final class PrintDocument {
    private static final String LOG_TAG = "PrintDocument";
    private final PrintDocumentInfo mInfo;
    private final PrintJobId mPrintJobId;
    private final IPrintServiceClient mPrintServiceClient;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PrintDocument(PrintJobId printJobId, IPrintServiceClient iPrintServiceClient, PrintDocumentInfo printDocumentInfo) {
        this.mPrintJobId = printJobId;
        this.mPrintServiceClient = iPrintServiceClient;
        this.mInfo = printDocumentInfo;
    }

    public PrintDocumentInfo getInfo() {
        PrintService.throwIfNotCalledOnMainThread();
        return this.mInfo;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x002b, code lost:
    
        if (r1 == null) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x003d, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x002d, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x003a, code lost:
    
        if (r1 == null) goto L25;
     */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0041 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ParcelFileDescriptor getData() {
        ParcelFileDescriptor parcelFileDescriptor;
        PrintService.throwIfNotCalledOnMainThread();
        AutoCloseable autoCloseable = null;
        try {
            try {
                ParcelFileDescriptor[] createPipe = ParcelFileDescriptor.createPipe();
                ParcelFileDescriptor parcelFileDescriptor2 = createPipe[0];
                parcelFileDescriptor = createPipe[1];
                try {
                    this.mPrintServiceClient.writePrintJobData(parcelFileDescriptor, this.mPrintJobId);
                    if (parcelFileDescriptor != null) {
                        try {
                            parcelFileDescriptor.close();
                        } catch (IOException unused) {
                        }
                    }
                    return parcelFileDescriptor2;
                } catch (RemoteException e) {
                    e = e;
                    Log.e(LOG_TAG, "Error calling getting print job data!", e);
                } catch (IOException e2) {
                    e = e2;
                    Log.e(LOG_TAG, "Error calling getting print job data!", e);
                }
            } catch (Throwable th) {
                th = th;
                if (0 != 0) {
                    try {
                        autoCloseable.close();
                    } catch (IOException unused2) {
                    }
                }
                throw th;
            }
        } catch (RemoteException e3) {
            e = e3;
            parcelFileDescriptor = null;
        } catch (IOException e4) {
            e = e4;
            parcelFileDescriptor = null;
        } catch (Throwable th2) {
            th = th2;
            if (0 != 0) {
            }
            throw th;
        }
    }
}
