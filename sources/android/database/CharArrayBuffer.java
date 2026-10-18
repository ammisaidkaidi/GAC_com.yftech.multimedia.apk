package android.database;

/* loaded from: /home/user/work/dex/classes.dex */
public final class CharArrayBuffer {
    public char[] data;
    public int sizeCopied;

    public CharArrayBuffer(int i) {
        this.data = new char[i];
    }

    public CharArrayBuffer(char[] cArr) {
        this.data = cArr;
    }
}
