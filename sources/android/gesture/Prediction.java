package android.gesture;

/* loaded from: /home/user/work/dex/classes.dex */
public class Prediction {
    public final String name;
    public double score;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Prediction(String str, double d) {
        this.name = str;
        this.score = d;
    }

    public String toString() {
        return this.name;
    }
}
