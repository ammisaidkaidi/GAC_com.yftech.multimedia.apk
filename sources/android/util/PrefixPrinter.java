package android.util;

import android.view.textclassifier.TextClassifier;

/* loaded from: /home/user/work/dex/classes2.dex */
public class PrefixPrinter implements Printer {
    private final String mPrefix;
    private final Printer mPrinter;

    public static Printer create(Printer printer, String str) {
        return (str == null || str.equals(TextClassifier.TYPE_UNKNOWN)) ? printer : new PrefixPrinter(printer, str);
    }

    private PrefixPrinter(Printer printer, String str) {
        this.mPrinter = printer;
        this.mPrefix = str;
    }

    @Override // android.util.Printer
    public void println(String str) {
        this.mPrinter.println(this.mPrefix + str);
    }
}
