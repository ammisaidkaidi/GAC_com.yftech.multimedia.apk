package android.os;

import com.android.internal.util.FastPrintWriter;
import java.io.BufferedInputStream;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;

/* loaded from: /home/user/work/dex/classes2.dex */
public abstract class ShellCommand {
    static final boolean DEBUG = false;
    static final String TAG = "ShellCommand";
    private int mArgPos;
    private String[] mArgs;
    private String mCmd;
    private String mCurArgData;
    private FileDescriptor mErr;
    private FastPrintWriter mErrPrintWriter;
    private FileOutputStream mFileErr;
    private FileInputStream mFileIn;
    private FileOutputStream mFileOut;
    private FileDescriptor mIn;
    private InputStream mInputStream;
    private FileDescriptor mOut;
    private FastPrintWriter mOutPrintWriter;
    private ResultReceiver mResultReceiver;
    private ShellCallback mShellCallback;
    private Binder mTarget;

    public abstract int onCommand(String str);

    public abstract void onHelp();

    public void init(Binder binder, FileDescriptor fileDescriptor, FileDescriptor fileDescriptor2, FileDescriptor fileDescriptor3, String[] strArr, ShellCallback shellCallback, int i) {
        this.mTarget = binder;
        this.mIn = fileDescriptor;
        this.mOut = fileDescriptor2;
        this.mErr = fileDescriptor3;
        this.mArgs = strArr;
        this.mShellCallback = shellCallback;
        this.mResultReceiver = null;
        this.mCmd = null;
        this.mArgPos = i;
        this.mCurArgData = null;
        this.mFileIn = null;
        this.mFileOut = null;
        this.mFileErr = null;
        this.mOutPrintWriter = null;
        this.mErrPrintWriter = null;
        this.mInputStream = null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x00ad, code lost:
    
        if (r12.mResultReceiver == null) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00b1, code lost:
    
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0070, code lost:
    
        r12.mResultReceiver.send(-1, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x006e, code lost:
    
        if (r12.mResultReceiver == null) goto L43;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int exec(Binder binder, FileDescriptor fileDescriptor, FileDescriptor fileDescriptor2, FileDescriptor fileDescriptor3, String[] strArr, ShellCallback shellCallback, ResultReceiver resultReceiver) {
        int i;
        String str;
        if (strArr == null || strArr.length <= 0) {
            i = 0;
            str = null;
        } else {
            str = strArr[0];
            i = 1;
        }
        init(binder, fileDescriptor, fileDescriptor2, fileDescriptor3, strArr, shellCallback, i);
        this.mCmd = str;
        this.mResultReceiver = resultReceiver;
        try {
            try {
                int onCommand = onCommand(this.mCmd);
                if (this.mOutPrintWriter != null) {
                    this.mOutPrintWriter.flush();
                }
                if (this.mErrPrintWriter != null) {
                    this.mErrPrintWriter.flush();
                }
                if (this.mResultReceiver == null) {
                    return onCommand;
                }
                this.mResultReceiver.send(onCommand, null);
                return onCommand;
            } catch (SecurityException e) {
                PrintWriter errPrintWriter = getErrPrintWriter();
                errPrintWriter.println("Security exception: " + e.getMessage());
                errPrintWriter.println();
                e.printStackTrace(errPrintWriter);
                if (this.mOutPrintWriter != null) {
                    this.mOutPrintWriter.flush();
                }
                if (this.mErrPrintWriter != null) {
                    this.mErrPrintWriter.flush();
                }
            } catch (Throwable th) {
                PrintWriter errPrintWriter2 = getErrPrintWriter();
                errPrintWriter2.println();
                errPrintWriter2.println("Exception occurred while executing:");
                th.printStackTrace(errPrintWriter2);
                if (this.mOutPrintWriter != null) {
                    this.mOutPrintWriter.flush();
                }
                if (this.mErrPrintWriter != null) {
                    this.mErrPrintWriter.flush();
                }
            }
        } catch (Throwable th2) {
            if (this.mOutPrintWriter != null) {
                this.mOutPrintWriter.flush();
            }
            if (this.mErrPrintWriter != null) {
                this.mErrPrintWriter.flush();
            }
            if (this.mResultReceiver != null) {
                this.mResultReceiver.send(-1, null);
            }
            throw th2;
        }
    }

    public ResultReceiver adoptResultReceiver() {
        ResultReceiver resultReceiver = this.mResultReceiver;
        this.mResultReceiver = null;
        return resultReceiver;
    }

    public FileDescriptor getOutFileDescriptor() {
        return this.mOut;
    }

    public OutputStream getRawOutputStream() {
        if (this.mFileOut == null) {
            this.mFileOut = new FileOutputStream(this.mOut);
        }
        return this.mFileOut;
    }

    public PrintWriter getOutPrintWriter() {
        if (this.mOutPrintWriter == null) {
            this.mOutPrintWriter = new FastPrintWriter(getRawOutputStream());
        }
        return this.mOutPrintWriter;
    }

    public FileDescriptor getErrFileDescriptor() {
        return this.mErr;
    }

    public OutputStream getRawErrorStream() {
        if (this.mFileErr == null) {
            this.mFileErr = new FileOutputStream(this.mErr);
        }
        return this.mFileErr;
    }

    public PrintWriter getErrPrintWriter() {
        if (this.mErr == null) {
            return getOutPrintWriter();
        }
        if (this.mErrPrintWriter == null) {
            this.mErrPrintWriter = new FastPrintWriter(getRawErrorStream());
        }
        return this.mErrPrintWriter;
    }

    public FileDescriptor getInFileDescriptor() {
        return this.mIn;
    }

    public InputStream getRawInputStream() {
        if (this.mFileIn == null) {
            this.mFileIn = new FileInputStream(this.mIn);
        }
        return this.mFileIn;
    }

    public InputStream getBufferedInputStream() {
        if (this.mInputStream == null) {
            this.mInputStream = new BufferedInputStream(getRawInputStream());
        }
        return this.mInputStream;
    }

    public ParcelFileDescriptor openFileForSystem(String str, String str2) {
        try {
            ParcelFileDescriptor openFile = getShellCallback().openFile(str, "u:r:system_server:s0", str2);
            if (openFile != null) {
                return openFile;
            }
        } catch (RuntimeException e) {
            getErrPrintWriter().println("Failure opening file: " + e.getMessage());
        }
        getErrPrintWriter().println("Error: Unable to open file: " + str);
        getErrPrintWriter().println("Consider using a file under /data/local/tmp/");
        return null;
    }

    public String getNextOption() {
        if (this.mCurArgData != null) {
            throw new IllegalArgumentException("No argument expected after \"" + this.mArgs[this.mArgPos - 1] + "\"");
        }
        if (this.mArgPos >= this.mArgs.length) {
            return null;
        }
        String str = this.mArgs[this.mArgPos];
        if (!str.startsWith("-")) {
            return null;
        }
        this.mArgPos++;
        if (str.equals("--")) {
            return null;
        }
        if (str.length() > 1 && str.charAt(1) != '-') {
            if (str.length() > 2) {
                this.mCurArgData = str.substring(2);
                return str.substring(0, 2);
            }
            this.mCurArgData = null;
            return str;
        }
        this.mCurArgData = null;
        return str;
    }

    public String getNextArg() {
        if (this.mCurArgData != null) {
            String str = this.mCurArgData;
            this.mCurArgData = null;
            return str;
        }
        if (this.mArgPos >= this.mArgs.length) {
            return null;
        }
        String[] strArr = this.mArgs;
        int i = this.mArgPos;
        this.mArgPos = i + 1;
        return strArr[i];
    }

    public String peekNextArg() {
        if (this.mCurArgData != null) {
            return this.mCurArgData;
        }
        if (this.mArgPos < this.mArgs.length) {
            return this.mArgs[this.mArgPos];
        }
        return null;
    }

    public String getNextArgRequired() {
        String nextArg = getNextArg();
        if (nextArg != null) {
            return nextArg;
        }
        throw new IllegalArgumentException("Argument expected after \"" + this.mArgs[this.mArgPos - 1] + "\"");
    }

    public ShellCallback getShellCallback() {
        return this.mShellCallback;
    }

    public int handleDefaultCommands(String str) {
        if ("dump".equals(str)) {
            String[] strArr = new String[this.mArgs.length - 1];
            System.arraycopy(this.mArgs, 1, strArr, 0, this.mArgs.length - 1);
            this.mTarget.doDump(this.mOut, getOutPrintWriter(), strArr);
            return 0;
        }
        if (str == null || "help".equals(str) || "-h".equals(str)) {
            onHelp();
            return -1;
        }
        getOutPrintWriter().println("Unknown command: " + str);
        return -1;
    }
}
