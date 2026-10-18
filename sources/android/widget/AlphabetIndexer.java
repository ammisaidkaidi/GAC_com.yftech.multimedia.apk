package android.widget;

import android.database.Cursor;
import android.database.DataSetObserver;
import android.util.SparseIntArray;
import java.text.Collator;

/* loaded from: /home/user/work/dex/classes2.dex */
public class AlphabetIndexer extends DataSetObserver implements SectionIndexer {
    private SparseIntArray mAlphaMap;
    protected CharSequence mAlphabet;
    private String[] mAlphabetArray;
    private int mAlphabetLength;
    private Collator mCollator;
    protected int mColumnIndex;
    protected Cursor mDataCursor;

    public AlphabetIndexer(Cursor cursor, int i, CharSequence charSequence) {
        this.mDataCursor = cursor;
        this.mColumnIndex = i;
        this.mAlphabet = charSequence;
        this.mAlphabetLength = charSequence.length();
        this.mAlphabetArray = new String[this.mAlphabetLength];
        for (int i2 = 0; i2 < this.mAlphabetLength; i2++) {
            this.mAlphabetArray[i2] = Character.toString(this.mAlphabet.charAt(i2));
        }
        this.mAlphaMap = new SparseIntArray(this.mAlphabetLength);
        if (cursor != null) {
            cursor.registerDataSetObserver(this);
        }
        this.mCollator = Collator.getInstance();
        this.mCollator.setStrength(0);
    }

    @Override // android.widget.SectionIndexer
    public Object[] getSections() {
        return this.mAlphabetArray;
    }

    public void setCursor(Cursor cursor) {
        if (this.mDataCursor != null) {
            this.mDataCursor.unregisterDataSetObserver(this);
        }
        this.mDataCursor = cursor;
        if (cursor != null) {
            this.mDataCursor.registerDataSetObserver(this);
        }
        this.mAlphaMap.clear();
    }

    protected int compare(String str, String str2) {
        return this.mCollator.compare(str.length() == 0 ? " " : str.substring(0, 1), str2);
    }

    @Override // android.widget.SectionIndexer
    public int getPositionForSection(int i) {
        int i2;
        int i3;
        SparseIntArray sparseIntArray = this.mAlphaMap;
        Cursor cursor = this.mDataCursor;
        int i4 = 0;
        if (cursor == null || this.mAlphabet == null || i <= 0) {
            return 0;
        }
        if (i >= this.mAlphabetLength) {
            i = this.mAlphabetLength - 1;
        }
        int position = cursor.getPosition();
        int count = cursor.getCount();
        char charAt = this.mAlphabet.charAt(i);
        String ch = Character.toString(charAt);
        int i5 = sparseIntArray.get(charAt, Integer.MIN_VALUE);
        if (Integer.MIN_VALUE == i5) {
            i2 = count;
        } else {
            if (i5 >= 0) {
                return i5;
            }
            i2 = -i5;
        }
        if (i > 0 && (i3 = sparseIntArray.get(this.mAlphabet.charAt(i - 1), Integer.MIN_VALUE)) != Integer.MIN_VALUE) {
            i4 = Math.abs(i3);
        }
        int i6 = (i2 + i4) / 2;
        while (true) {
            if (i6 >= i2) {
                break;
            }
            cursor.moveToPosition(i6);
            String string = cursor.getString(this.mColumnIndex);
            if (string != null) {
                int compare = compare(string, ch);
                if (compare != 0) {
                    if (compare < 0) {
                        int i7 = i6 + 1;
                        if (i7 >= count) {
                            i6 = count;
                            break;
                        }
                        i4 = i7;
                    }
                    i2 = i6;
                } else {
                    if (i4 == i6) {
                        break;
                    }
                    i2 = i6;
                }
                i6 = (i4 + i2) / 2;
            } else {
                if (i6 == 0) {
                    break;
                }
                i6--;
            }
        }
        sparseIntArray.put(charAt, i6);
        cursor.moveToPosition(position);
        return i6;
    }

    @Override // android.widget.SectionIndexer
    public int getSectionForPosition(int i) {
        int position = this.mDataCursor.getPosition();
        this.mDataCursor.moveToPosition(i);
        String string = this.mDataCursor.getString(this.mColumnIndex);
        this.mDataCursor.moveToPosition(position);
        for (int i2 = 0; i2 < this.mAlphabetLength; i2++) {
            if (compare(string, Character.toString(this.mAlphabet.charAt(i2))) == 0) {
                return i2;
            }
        }
        return 0;
    }

    @Override // android.database.DataSetObserver
    public void onChanged() {
        super.onChanged();
        this.mAlphaMap.clear();
    }

    @Override // android.database.DataSetObserver
    public void onInvalidated() {
        super.onInvalidated();
        this.mAlphaMap.clear();
    }
}
