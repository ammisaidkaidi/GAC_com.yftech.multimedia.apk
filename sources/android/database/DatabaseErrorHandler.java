package android.database;

import android.database.sqlite.SQLiteDatabase;

/* loaded from: /home/user/work/dex/classes.dex */
public interface DatabaseErrorHandler {
    void onCorruption(SQLiteDatabase sQLiteDatabase);
}
