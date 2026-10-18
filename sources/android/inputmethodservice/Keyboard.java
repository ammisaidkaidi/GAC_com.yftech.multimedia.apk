package android.inputmethodservice;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import com.android.internal.R;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: /home/user/work/dex/classes.dex */
public class Keyboard {
    public static final int EDGE_BOTTOM = 8;
    public static final int EDGE_LEFT = 1;
    public static final int EDGE_RIGHT = 2;
    public static final int EDGE_TOP = 4;
    private static final int GRID_HEIGHT = 5;
    private static final int GRID_SIZE = 50;
    private static final int GRID_WIDTH = 10;
    public static final int KEYCODE_ALT = -6;
    public static final int KEYCODE_CANCEL = -3;
    public static final int KEYCODE_DELETE = -5;
    public static final int KEYCODE_DONE = -4;
    public static final int KEYCODE_MODE_CHANGE = -2;
    public static final int KEYCODE_SHIFT = -1;
    private static float SEARCH_DISTANCE = 1.8f;
    static final String TAG = "Keyboard";
    private static final String TAG_KEY = "Key";
    private static final String TAG_KEYBOARD = "Keyboard";
    private static final String TAG_ROW = "Row";
    private int mCellHeight;
    private int mCellWidth;
    private int mDefaultHeight;
    private int mDefaultHorizontalGap;
    private int mDefaultVerticalGap;
    private int mDefaultWidth;
    private int mDisplayHeight;
    private int mDisplayWidth;
    private int[][] mGridNeighbors;
    private int mKeyHeight;
    private int mKeyWidth;
    private int mKeyboardMode;
    private List<Key> mKeys;
    private CharSequence mLabel;
    private List<Key> mModifierKeys;
    private int mProximityThreshold;
    private int[] mShiftKeyIndices;
    private Key[] mShiftKeys;
    private boolean mShifted;
    private int mTotalHeight;
    private int mTotalWidth;
    private ArrayList<Row> rows;

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class Row {
        public int defaultHeight;
        public int defaultHorizontalGap;
        public int defaultWidth;
        ArrayList<Key> mKeys = new ArrayList<>();
        public int mode;
        private Keyboard parent;
        public int rowEdgeFlags;
        public int verticalGap;

        public Row(Keyboard keyboard) {
            this.parent = keyboard;
        }

        public Row(Resources resources, Keyboard keyboard, XmlResourceParser xmlResourceParser) {
            this.parent = keyboard;
            TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlResourceParser), R.styleable.Keyboard);
            this.defaultWidth = Keyboard.getDimensionOrFraction(obtainAttributes, 0, keyboard.mDisplayWidth, keyboard.mDefaultWidth);
            this.defaultHeight = Keyboard.getDimensionOrFraction(obtainAttributes, 1, keyboard.mDisplayHeight, keyboard.mDefaultHeight);
            this.defaultHorizontalGap = Keyboard.getDimensionOrFraction(obtainAttributes, 2, keyboard.mDisplayWidth, keyboard.mDefaultHorizontalGap);
            this.verticalGap = Keyboard.getDimensionOrFraction(obtainAttributes, 3, keyboard.mDisplayHeight, keyboard.mDefaultVerticalGap);
            obtainAttributes.recycle();
            TypedArray obtainAttributes2 = resources.obtainAttributes(Xml.asAttributeSet(xmlResourceParser), R.styleable.Keyboard_Row);
            this.rowEdgeFlags = obtainAttributes2.getInt(0, 0);
            this.mode = obtainAttributes2.getResourceId(1, 0);
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class Key {
        public int[] codes;
        public int edgeFlags;
        public int gap;
        public int height;
        public Drawable icon;
        public Drawable iconPreview;
        private Keyboard keyboard;
        public CharSequence label;
        public boolean modifier;
        public boolean on;
        public CharSequence popupCharacters;
        public int popupResId;
        public boolean pressed;
        public boolean repeatable;
        public boolean sticky;
        public CharSequence text;
        public int width;
        public int x;
        public int y;
        private static final int[] KEY_STATE_NORMAL_ON = {android.R.attr.state_checkable, android.R.attr.state_checked};
        private static final int[] KEY_STATE_PRESSED_ON = {android.R.attr.state_pressed, android.R.attr.state_checkable, android.R.attr.state_checked};
        private static final int[] KEY_STATE_NORMAL_OFF = {android.R.attr.state_checkable};
        private static final int[] KEY_STATE_PRESSED_OFF = {android.R.attr.state_pressed, android.R.attr.state_checkable};
        private static final int[] KEY_STATE_NORMAL = new int[0];
        private static final int[] KEY_STATE_PRESSED = {android.R.attr.state_pressed};

        public Key(Row row) {
            this.keyboard = row.parent;
            this.height = row.defaultHeight;
            this.width = row.defaultWidth;
            this.gap = row.defaultHorizontalGap;
            this.edgeFlags = row.rowEdgeFlags;
        }

        public Key(Resources resources, Row row, int i, int i2, XmlResourceParser xmlResourceParser) {
            this(row);
            this.x = i;
            this.y = i2;
            TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlResourceParser), R.styleable.Keyboard);
            this.width = Keyboard.getDimensionOrFraction(obtainAttributes, 0, this.keyboard.mDisplayWidth, row.defaultWidth);
            this.height = Keyboard.getDimensionOrFraction(obtainAttributes, 1, this.keyboard.mDisplayHeight, row.defaultHeight);
            this.gap = Keyboard.getDimensionOrFraction(obtainAttributes, 2, this.keyboard.mDisplayWidth, row.defaultHorizontalGap);
            obtainAttributes.recycle();
            TypedArray obtainAttributes2 = resources.obtainAttributes(Xml.asAttributeSet(xmlResourceParser), R.styleable.Keyboard_Key);
            this.x += this.gap;
            TypedValue typedValue = new TypedValue();
            obtainAttributes2.getValue(0, typedValue);
            if (typedValue.type == 16 || typedValue.type == 17) {
                this.codes = new int[]{typedValue.data};
            } else if (typedValue.type == 3) {
                this.codes = parseCSV(typedValue.string.toString());
            }
            this.iconPreview = obtainAttributes2.getDrawable(7);
            if (this.iconPreview != null) {
                this.iconPreview.setBounds(0, 0, this.iconPreview.getIntrinsicWidth(), this.iconPreview.getIntrinsicHeight());
            }
            this.popupCharacters = obtainAttributes2.getText(2);
            this.popupResId = obtainAttributes2.getResourceId(1, 0);
            this.repeatable = obtainAttributes2.getBoolean(6, false);
            this.modifier = obtainAttributes2.getBoolean(4, false);
            this.sticky = obtainAttributes2.getBoolean(5, false);
            this.edgeFlags = obtainAttributes2.getInt(3, 0);
            this.edgeFlags = row.rowEdgeFlags | this.edgeFlags;
            this.icon = obtainAttributes2.getDrawable(10);
            if (this.icon != null) {
                this.icon.setBounds(0, 0, this.icon.getIntrinsicWidth(), this.icon.getIntrinsicHeight());
            }
            this.label = obtainAttributes2.getText(9);
            this.text = obtainAttributes2.getText(8);
            if (this.codes == null && !TextUtils.isEmpty(this.label)) {
                this.codes = new int[]{this.label.charAt(0)};
            }
            obtainAttributes2.recycle();
        }

        public void onPressed() {
            this.pressed = !this.pressed;
        }

        public void onReleased(boolean z) {
            this.pressed = !this.pressed;
            if (this.sticky && z) {
                this.on = !this.on;
            }
        }

        int[] parseCSV(String str) {
            int i;
            int i2 = 0;
            if (str.length() > 0) {
                i = 1;
                int i3 = 0;
                while (true) {
                    i3 = str.indexOf(",", i3 + 1);
                    if (i3 <= 0) {
                        break;
                    }
                    i++;
                }
            } else {
                i = 0;
            }
            int[] iArr = new int[i];
            StringTokenizer stringTokenizer = new StringTokenizer(str, ",");
            while (stringTokenizer.hasMoreTokens()) {
                int i4 = i2 + 1;
                try {
                    iArr[i2] = Integer.parseInt(stringTokenizer.nextToken());
                } catch (NumberFormatException unused) {
                    Log.e("Keyboard", "Error parsing keycodes " + str);
                }
                i2 = i4;
            }
            return iArr;
        }

        public boolean isInside(int i, int i2) {
            return (i >= this.x || (((this.edgeFlags & 1) > 0) && i <= this.x + this.width)) && (i < this.x + this.width || (((this.edgeFlags & 2) > 0) && i >= this.x)) && ((i2 >= this.y || (((this.edgeFlags & 4) > 0) && i2 <= this.y + this.height)) && (i2 < this.y + this.height || (((this.edgeFlags & 8) > 0) && i2 >= this.y)));
        }

        public int squaredDistanceFrom(int i, int i2) {
            int i3 = (this.x + (this.width / 2)) - i;
            int i4 = (this.y + (this.height / 2)) - i2;
            return (i3 * i3) + (i4 * i4);
        }

        public int[] getCurrentDrawableState() {
            int[] iArr = KEY_STATE_NORMAL;
            if (this.on) {
                if (this.pressed) {
                    return KEY_STATE_PRESSED_ON;
                }
                return KEY_STATE_NORMAL_ON;
            }
            if (!this.sticky) {
                return this.pressed ? KEY_STATE_PRESSED : iArr;
            }
            if (this.pressed) {
                return KEY_STATE_PRESSED_OFF;
            }
            return KEY_STATE_NORMAL_OFF;
        }
    }

    public Keyboard(Context context, int i) {
        this(context, i, 0);
    }

    public Keyboard(Context context, int i, int i2, int i3, int i4) {
        this.mShiftKeys = new Key[]{null, null};
        this.mShiftKeyIndices = new int[]{-1, -1};
        this.rows = new ArrayList<>();
        this.mDisplayWidth = i3;
        this.mDisplayHeight = i4;
        this.mDefaultHorizontalGap = 0;
        this.mDefaultWidth = this.mDisplayWidth / 10;
        this.mDefaultVerticalGap = 0;
        this.mDefaultHeight = this.mDefaultWidth;
        this.mKeys = new ArrayList();
        this.mModifierKeys = new ArrayList();
        this.mKeyboardMode = i2;
        loadKeyboard(context, context.getResources().getXml(i));
    }

    public Keyboard(Context context, int i, int i2) {
        this.mShiftKeys = new Key[]{null, null};
        this.mShiftKeyIndices = new int[]{-1, -1};
        this.rows = new ArrayList<>();
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        this.mDisplayWidth = displayMetrics.widthPixels;
        this.mDisplayHeight = displayMetrics.heightPixels;
        this.mDefaultHorizontalGap = 0;
        this.mDefaultWidth = this.mDisplayWidth / 10;
        this.mDefaultVerticalGap = 0;
        this.mDefaultHeight = this.mDefaultWidth;
        this.mKeys = new ArrayList();
        this.mModifierKeys = new ArrayList();
        this.mKeyboardMode = i2;
        loadKeyboard(context, context.getResources().getXml(i));
    }

    public Keyboard(Context context, int i, CharSequence charSequence, int i2, int i3) {
        this(context, i);
        this.mTotalWidth = 0;
        Row row = new Row(this);
        row.defaultHeight = this.mDefaultHeight;
        row.defaultWidth = this.mDefaultWidth;
        row.defaultHorizontalGap = this.mDefaultHorizontalGap;
        row.verticalGap = this.mDefaultVerticalGap;
        row.rowEdgeFlags = 12;
        i2 = i2 == -1 ? Integer.MAX_VALUE : i2;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        for (int i7 = 0; i7 < charSequence.length(); i7++) {
            char charAt = charSequence.charAt(i7);
            if (i4 >= i2 || this.mDefaultWidth + i6 + i3 > this.mDisplayWidth) {
                i5 += this.mDefaultVerticalGap + this.mDefaultHeight;
                i4 = 0;
                i6 = 0;
            }
            Key key = new Key(row);
            key.x = i6;
            key.y = i5;
            key.label = String.valueOf(charAt);
            key.codes = new int[]{charAt};
            i4++;
            i6 += key.width + key.gap;
            this.mKeys.add(key);
            row.mKeys.add(key);
            if (i6 > this.mTotalWidth) {
                this.mTotalWidth = i6;
            }
        }
        this.mTotalHeight = i5 + this.mDefaultHeight;
        this.rows.add(row);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void resize(int i, int i2) {
        int size = this.rows.size();
        for (int i3 = 0; i3 < size; i3++) {
            Row row = this.rows.get(i3);
            int size2 = row.mKeys.size();
            int i4 = 0;
            int i5 = 0;
            for (int i6 = 0; i6 < size2; i6++) {
                Key key = row.mKeys.get(i6);
                if (i6 > 0) {
                    i4 += key.gap;
                }
                i5 += key.width;
            }
            if (i4 + i5 > i) {
                float f = (i - i4) / i5;
                int i7 = 0;
                for (int i8 = 0; i8 < size2; i8++) {
                    Key key2 = row.mKeys.get(i8);
                    key2.width = (int) (key2.width * f);
                    key2.x = i7;
                    i7 += key2.width + key2.gap;
                }
            }
        }
        this.mTotalWidth = i;
    }

    public List<Key> getKeys() {
        return this.mKeys;
    }

    public List<Key> getModifierKeys() {
        return this.mModifierKeys;
    }

    protected int getHorizontalGap() {
        return this.mDefaultHorizontalGap;
    }

    protected void setHorizontalGap(int i) {
        this.mDefaultHorizontalGap = i;
    }

    protected int getVerticalGap() {
        return this.mDefaultVerticalGap;
    }

    protected void setVerticalGap(int i) {
        this.mDefaultVerticalGap = i;
    }

    protected int getKeyHeight() {
        return this.mDefaultHeight;
    }

    protected void setKeyHeight(int i) {
        this.mDefaultHeight = i;
    }

    protected int getKeyWidth() {
        return this.mDefaultWidth;
    }

    protected void setKeyWidth(int i) {
        this.mDefaultWidth = i;
    }

    public int getHeight() {
        return this.mTotalHeight;
    }

    public int getMinWidth() {
        return this.mTotalWidth;
    }

    public boolean setShifted(boolean z) {
        for (Key key : this.mShiftKeys) {
            if (key != null) {
                key.on = z;
            }
        }
        if (this.mShifted == z) {
            return false;
        }
        this.mShifted = z;
        return true;
    }

    public boolean isShifted() {
        return this.mShifted;
    }

    public int[] getShiftKeyIndices() {
        return this.mShiftKeyIndices;
    }

    public int getShiftKeyIndex() {
        return this.mShiftKeyIndices[0];
    }

    private void computeNearestNeighbors() {
        this.mCellWidth = ((getMinWidth() + 10) - 1) / 10;
        this.mCellHeight = ((getHeight() + 5) - 1) / 5;
        this.mGridNeighbors = new int[50];
        int[] iArr = new int[this.mKeys.size()];
        int i = this.mCellWidth * 10;
        int i2 = this.mCellHeight * 5;
        int i3 = 0;
        while (i3 < i) {
            int i4 = 0;
            while (i4 < i2) {
                int i5 = 0;
                for (int i6 = 0; i6 < this.mKeys.size(); i6++) {
                    Key key = this.mKeys.get(i6);
                    if (key.squaredDistanceFrom(i3, i4) < this.mProximityThreshold || key.squaredDistanceFrom((this.mCellWidth + i3) - 1, i4) < this.mProximityThreshold || key.squaredDistanceFrom((this.mCellWidth + i3) - 1, (this.mCellHeight + i4) - 1) < this.mProximityThreshold || key.squaredDistanceFrom(i3, (this.mCellHeight + i4) - 1) < this.mProximityThreshold) {
                        iArr[i5] = i6;
                        i5++;
                    }
                }
                int[] iArr2 = new int[i5];
                System.arraycopy(iArr, 0, iArr2, 0, i5);
                this.mGridNeighbors[((i4 / this.mCellHeight) * 10) + (i3 / this.mCellWidth)] = iArr2;
                i4 += this.mCellHeight;
            }
            i3 += this.mCellWidth;
        }
    }

    public int[] getNearestKeys(int i, int i2) {
        int i3;
        if (this.mGridNeighbors == null) {
            computeNearestNeighbors();
        }
        if (i >= 0 && i < getMinWidth() && i2 >= 0 && i2 < getHeight() && (i3 = ((i2 / this.mCellHeight) * 10) + (i / this.mCellWidth)) < 50) {
            return this.mGridNeighbors[i3];
        }
        return new int[0];
    }

    protected Row createRowFromXml(Resources resources, XmlResourceParser xmlResourceParser) {
        return new Row(resources, this, xmlResourceParser);
    }

    protected Key createKeyFromXml(Resources resources, Row row, int i, int i2, XmlResourceParser xmlResourceParser) {
        return new Key(resources, row, i, i2, xmlResourceParser);
    }

    private void loadKeyboard(Context context, XmlResourceParser xmlResourceParser) {
        Resources resources = context.getResources();
        Key key = null;
        Row row = null;
        boolean z = false;
        int i = 0;
        int i2 = 0;
        loop0: while (true) {
            int i3 = i2;
            while (true) {
                try {
                    int next = xmlResourceParser.next();
                    if (next == 1) {
                        break loop0;
                    }
                    if (next == 2) {
                        String name = xmlResourceParser.getName();
                        if (TAG_ROW.equals(name)) {
                            row = createRowFromXml(resources, xmlResourceParser);
                            this.rows.add(row);
                            if ((row.mode == 0 || row.mode == this.mKeyboardMode) ? false : true) {
                                break;
                            }
                            i2 = 0;
                            i3 = 1;
                        } else if (TAG_KEY.equals(name)) {
                            Key createKeyFromXml = createKeyFromXml(resources, row, i2, i, xmlResourceParser);
                            this.mKeys.add(createKeyFromXml);
                            if (createKeyFromXml.codes[0] == -1) {
                                int i4 = 0;
                                while (true) {
                                    if (i4 >= this.mShiftKeys.length) {
                                        break;
                                    }
                                    if (this.mShiftKeys[i4] == null) {
                                        this.mShiftKeys[i4] = createKeyFromXml;
                                        this.mShiftKeyIndices[i4] = this.mKeys.size() - 1;
                                        break;
                                    }
                                    i4++;
                                }
                                this.mModifierKeys.add(createKeyFromXml);
                            } else if (createKeyFromXml.codes[0] == -6) {
                                this.mModifierKeys.add(createKeyFromXml);
                            }
                            row.mKeys.add(createKeyFromXml);
                            key = createKeyFromXml;
                            z = true;
                        } else if ("Keyboard".equals(name)) {
                            parseKeyboardAttributes(resources, xmlResourceParser);
                        }
                    } else if (next == 3) {
                        if (z) {
                            i2 += key.gap + key.width;
                            if (i2 > this.mTotalWidth) {
                                this.mTotalWidth = i2;
                            }
                            z = false;
                        } else if (i3 != 0) {
                            i = i + row.verticalGap + row.defaultHeight;
                            i3 = 0;
                        }
                    }
                } catch (Exception e) {
                    Log.e("Keyboard", "Parse error:" + e);
                    e.printStackTrace();
                }
            }
            skipToEndOfRow(xmlResourceParser);
            i2 = 0;
        }
        this.mTotalHeight = i - this.mDefaultVerticalGap;
    }

    private void skipToEndOfRow(XmlResourceParser xmlResourceParser) throws XmlPullParserException, IOException {
        while (true) {
            int next = xmlResourceParser.next();
            if (next == 1) {
                return;
            }
            if (next == 3 && xmlResourceParser.getName().equals(TAG_ROW)) {
                return;
            }
        }
    }

    private void parseKeyboardAttributes(Resources resources, XmlResourceParser xmlResourceParser) {
        TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlResourceParser), R.styleable.Keyboard);
        this.mDefaultWidth = getDimensionOrFraction(obtainAttributes, 0, this.mDisplayWidth, this.mDisplayWidth / 10);
        this.mDefaultHeight = getDimensionOrFraction(obtainAttributes, 1, this.mDisplayHeight, 50);
        this.mDefaultHorizontalGap = getDimensionOrFraction(obtainAttributes, 2, this.mDisplayWidth, 0);
        this.mDefaultVerticalGap = getDimensionOrFraction(obtainAttributes, 3, this.mDisplayHeight, 0);
        this.mProximityThreshold = (int) (this.mDefaultWidth * SEARCH_DISTANCE);
        this.mProximityThreshold *= this.mProximityThreshold;
        obtainAttributes.recycle();
    }

    static int getDimensionOrFraction(TypedArray typedArray, int i, int i2, int i3) {
        TypedValue peekValue = typedArray.peekValue(i);
        if (peekValue == null) {
            return i3;
        }
        if (peekValue.type == 5) {
            return typedArray.getDimensionPixelOffset(i, i3);
        }
        return peekValue.type == 6 ? Math.round(typedArray.getFraction(i, i2, i2, i3)) : i3;
    }
}
