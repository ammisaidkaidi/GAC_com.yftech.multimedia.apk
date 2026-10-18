package android.net;

/* loaded from: /home/user/work/dex/classes.dex */
public class ParseException extends RuntimeException {
    public String response;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ParseException(String str) {
        this.response = str;
    }
}
