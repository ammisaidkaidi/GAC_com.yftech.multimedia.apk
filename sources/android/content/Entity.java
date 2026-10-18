package android.content;

import android.net.Uri;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: /home/user/work/dex/classes.dex */
public final class Entity {
    private final ArrayList<NamedContentValues> mSubValues = new ArrayList<>();
    private final ContentValues mValues;

    public Entity(ContentValues contentValues) {
        this.mValues = contentValues;
    }

    public ContentValues getEntityValues() {
        return this.mValues;
    }

    public ArrayList<NamedContentValues> getSubValues() {
        return this.mSubValues;
    }

    public void addSubValue(Uri uri, ContentValues contentValues) {
        this.mSubValues.add(new NamedContentValues(uri, contentValues));
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class NamedContentValues {
        public final Uri uri;
        public final ContentValues values;

        public NamedContentValues(Uri uri, ContentValues contentValues) {
            this.uri = uri;
            this.values = contentValues;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Entity: ");
        sb.append(getEntityValues());
        Iterator<NamedContentValues> it = getSubValues().iterator();
        while (it.hasNext()) {
            NamedContentValues next = it.next();
            sb.append("\n  ");
            sb.append(next.uri);
            sb.append("\n  -> ");
            sb.append(next.values);
        }
        return sb.toString();
    }
}
