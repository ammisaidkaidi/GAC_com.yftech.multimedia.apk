package android.database.sqlite;

/* loaded from: /home/user/work/dex/classes.dex */
public interface SQLiteTransactionListener {
    void onBegin();

    void onCommit();

    void onRollback();
}
