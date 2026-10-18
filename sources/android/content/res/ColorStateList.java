package android.content.res;

import android.bluetooth.le.AdvertisingSetParameters;
import android.content.res.Resources;
import android.graphics.Color;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.MathUtils;
import android.util.SparseArray;
import android.util.StateSet;
import android.util.Xml;
import com.android.internal.R;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.GrowingArrayUtils;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: /home/user/work/dex/classes.dex */
public class ColorStateList extends ComplexColor implements Parcelable {
    private static final int DEFAULT_COLOR = -65536;
    private static final String TAG = "ColorStateList";
    private int mChangingConfigurations;
    private int[] mColors;
    private int mDefaultColor;
    private ColorStateListFactory mFactory;
    private boolean mIsOpaque;
    private int[][] mStateSpecs;
    private int[][] mThemeAttrs;
    private static final int[][] EMPTY = {new int[0]};
    private static final SparseArray<WeakReference<ColorStateList>> sCache = new SparseArray<>();
    public static final Parcelable.Creator<ColorStateList> CREATOR = new Parcelable.Creator<ColorStateList>() { // from class: android.content.res.ColorStateList.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ColorStateList[] newArray(int i) {
            return new ColorStateList[i];
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ColorStateList createFromParcel(Parcel parcel) {
            int readInt = parcel.readInt();
            int[][] iArr = new int[readInt];
            for (int i = 0; i < readInt; i++) {
                iArr[i] = parcel.createIntArray();
            }
            return new ColorStateList(iArr, parcel.createIntArray());
        }
    };

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    private ColorStateList() {
    }

    public ColorStateList(int[][] iArr, int[] iArr2) {
        this.mStateSpecs = iArr;
        this.mColors = iArr2;
        onColorsChanged();
    }

    public static ColorStateList valueOf(int i) {
        synchronized (sCache) {
            int indexOfKey = sCache.indexOfKey(i);
            if (indexOfKey >= 0) {
                ColorStateList colorStateList = sCache.valueAt(indexOfKey).get();
                if (colorStateList != null) {
                    return colorStateList;
                }
                sCache.removeAt(indexOfKey);
            }
            for (int size = sCache.size() - 1; size >= 0; size--) {
                if (sCache.valueAt(size).get() == null) {
                    sCache.removeAt(size);
                }
            }
            ColorStateList colorStateList2 = new ColorStateList(EMPTY, new int[]{i});
            sCache.put(i, new WeakReference<>(colorStateList2));
            return colorStateList2;
        }
    }

    private ColorStateList(ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.mChangingConfigurations = colorStateList.mChangingConfigurations;
            this.mStateSpecs = colorStateList.mStateSpecs;
            this.mDefaultColor = colorStateList.mDefaultColor;
            this.mIsOpaque = colorStateList.mIsOpaque;
            this.mThemeAttrs = (int[][]) colorStateList.mThemeAttrs.clone();
            this.mColors = (int[]) colorStateList.mColors.clone();
        }
    }

    @Deprecated
    public static ColorStateList createFromXml(Resources resources, XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        return createFromXml(resources, xmlPullParser, null);
    }

    public static ColorStateList createFromXml(Resources resources, XmlPullParser xmlPullParser, Resources.Theme theme) throws XmlPullParserException, IOException {
        int next;
        AttributeSet asAttributeSet = Xml.asAttributeSet(xmlPullParser);
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next != 2) {
            throw new XmlPullParserException("No start tag found");
        }
        return createFromXmlInner(resources, xmlPullParser, asAttributeSet, theme);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ColorStateList createFromXmlInner(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        String name = xmlPullParser.getName();
        if (!name.equals("selector")) {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid color state list tag " + name);
        }
        ColorStateList colorStateList = new ColorStateList();
        colorStateList.inflate(resources, xmlPullParser, attributeSet, theme);
        return colorStateList;
    }

    public ColorStateList withAlpha(int i) {
        int[] iArr = new int[this.mColors.length];
        int length = iArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = (this.mColors[i2] & AdvertisingSetParameters.INTERVAL_MAX) | (i << 24);
        }
        return new ColorStateList(this.mStateSpecs, iArr);
    }

    private void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int i;
        int depth;
        int i2 = 1;
        int depth2 = xmlPullParser.getDepth() + 1;
        int[][] iArr = (int[][]) ArrayUtils.newUnpaddedArray(int[].class, 20);
        int i3 = 0;
        int i4 = -65536;
        int[][] iArr2 = iArr;
        int[][] iArr3 = new int[iArr.length];
        int[] iArr4 = new int[iArr.length];
        int i5 = 0;
        boolean z = false;
        int i6 = 0;
        while (true) {
            int next = xmlPullParser.next();
            if (next == i2 || ((depth = xmlPullParser.getDepth()) < depth2 && next == 3)) {
                break;
            }
            if (next == 2 && depth <= depth2 && xmlPullParser.getName().equals("item")) {
                TypedArray obtainAttributes = Resources.obtainAttributes(resources, theme, attributeSet, R.styleable.ColorStateListItem);
                int[] extractThemeAttrs = obtainAttributes.extractThemeAttrs();
                int color = obtainAttributes.getColor(i3, Color.MAGENTA);
                int i7 = depth2;
                float f = obtainAttributes.getFloat(1, 1.0f);
                int changingConfigurations = i5 | obtainAttributes.getChangingConfigurations();
                obtainAttributes.recycle();
                int attributeCount = attributeSet.getAttributeCount();
                int[] iArr5 = new int[attributeCount];
                int i8 = 0;
                int i9 = 0;
                while (i8 < attributeCount) {
                    int i10 = attributeCount;
                    int attributeNameResource = attributeSet.getAttributeNameResource(i8);
                    if (attributeNameResource != 16843173 && attributeNameResource != 16843551) {
                        int i11 = i9 + 1;
                        if (!attributeSet.getAttributeBooleanValue(i8, false)) {
                            attributeNameResource = -attributeNameResource;
                        }
                        iArr5[i9] = attributeNameResource;
                        i9 = i11;
                    }
                    i8++;
                    attributeCount = i10;
                }
                int[] trimStateSet = StateSet.trimStateSet(iArr5, i9);
                int modulateColorAlpha = modulateColorAlpha(color, f);
                if (i6 == 0 || trimStateSet.length == 0) {
                    i4 = modulateColorAlpha;
                }
                if (extractThemeAttrs != null) {
                    z = true;
                }
                iArr4 = GrowingArrayUtils.append(iArr4, i6, modulateColorAlpha);
                iArr3 = (int[][]) GrowingArrayUtils.append(iArr3, i6, extractThemeAttrs);
                iArr2 = (int[][]) GrowingArrayUtils.append(iArr2, i6, trimStateSet);
                i6++;
                depth2 = i7;
                i5 = changingConfigurations;
            } else {
                depth2 = depth2;
            }
            i2 = 1;
            i3 = 0;
        }
        this.mChangingConfigurations = i5;
        this.mDefaultColor = i4;
        if (z) {
            this.mThemeAttrs = new int[i6];
            i = 0;
            System.arraycopy(iArr3, 0, this.mThemeAttrs, 0, i6);
        } else {
            i = 0;
            this.mThemeAttrs = null;
        }
        this.mColors = new int[i6];
        this.mStateSpecs = new int[i6];
        System.arraycopy(iArr4, i, this.mColors, i, i6);
        System.arraycopy(iArr2, i, this.mStateSpecs, i, i6);
        onColorsChanged();
    }

    @Override // android.content.res.ComplexColor
    public boolean canApplyTheme() {
        return this.mThemeAttrs != null;
    }

    private void applyTheme(Resources.Theme theme) {
        if (this.mThemeAttrs == null) {
            return;
        }
        int[][] iArr = this.mThemeAttrs;
        int length = iArr.length;
        boolean z = false;
        for (int i = 0; i < length; i++) {
            if (iArr[i] != null) {
                TypedArray resolveAttributes = theme.resolveAttributes(iArr[i], R.styleable.ColorStateListItem);
                float alpha = iArr[i][0] != 0 ? Color.alpha(this.mColors[i]) / 255.0f : 1.0f;
                iArr[i] = resolveAttributes.extractThemeAttrs(iArr[i]);
                if (iArr[i] != null) {
                    z = true;
                }
                this.mColors[i] = modulateColorAlpha(resolveAttributes.getColor(0, this.mColors[i]), resolveAttributes.getFloat(1, alpha));
                this.mChangingConfigurations |= resolveAttributes.getChangingConfigurations();
                resolveAttributes.recycle();
            }
        }
        if (!z) {
            this.mThemeAttrs = null;
        }
        onColorsChanged();
    }

    @Override // android.content.res.ComplexColor
    public ColorStateList obtainForTheme(Resources.Theme theme) {
        if (theme == null || !canApplyTheme()) {
            return this;
        }
        ColorStateList colorStateList = new ColorStateList(this);
        colorStateList.applyTheme(theme);
        return colorStateList;
    }

    @Override // android.content.res.ComplexColor
    public int getChangingConfigurations() {
        return this.mChangingConfigurations | super.getChangingConfigurations();
    }

    private int modulateColorAlpha(int i, float f) {
        if (f == 1.0f) {
            return i;
        }
        return (MathUtils.constrain((int) ((Color.alpha(i) * f) + 0.5f), 0, 255) << 24) | (i & AdvertisingSetParameters.INTERVAL_MAX);
    }

    @Override // android.content.res.ComplexColor
    public boolean isStateful() {
        return this.mStateSpecs.length >= 1 && this.mStateSpecs[0].length > 0;
    }

    public boolean hasFocusStateSpecified() {
        return StateSet.containsAttribute(this.mStateSpecs, android.R.attr.state_focused);
    }

    public boolean isOpaque() {
        return this.mIsOpaque;
    }

    public int getColorForState(int[] iArr, int i) {
        int length = this.mStateSpecs.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (StateSet.stateSetMatches(this.mStateSpecs[i2], iArr)) {
                return this.mColors[i2];
            }
        }
        return i;
    }

    @Override // android.content.res.ComplexColor
    public int getDefaultColor() {
        return this.mDefaultColor;
    }

    public int[][] getStates() {
        return this.mStateSpecs;
    }

    public int[] getColors() {
        return this.mColors;
    }

    public boolean hasState(int i) {
        for (int[] iArr : this.mStateSpecs) {
            int length = iArr.length;
            for (int i2 = 0; i2 < length; i2++) {
                if (iArr[i2] == i || iArr[i2] == (~i)) {
                    return true;
                }
            }
        }
        return false;
    }

    public String toString() {
        return "ColorStateList{mThemeAttrs=" + Arrays.deepToString(this.mThemeAttrs) + "mChangingConfigurations=" + this.mChangingConfigurations + "mStateSpecs=" + Arrays.deepToString(this.mStateSpecs) + "mColors=" + Arrays.toString(this.mColors) + "mDefaultColor=" + this.mDefaultColor + '}';
    }

    private void onColorsChanged() {
        int i;
        int[][] iArr = this.mStateSpecs;
        int[] iArr2 = this.mColors;
        int length = iArr.length;
        boolean z = true;
        if (length > 0) {
            i = iArr2[0];
            int i2 = length - 1;
            while (true) {
                if (i2 <= 0) {
                    break;
                }
                if (iArr[i2].length == 0) {
                    i = iArr2[i2];
                    break;
                }
                i2--;
            }
            int i3 = 0;
            while (true) {
                if (i3 >= length) {
                    break;
                }
                if (Color.alpha(iArr2[i3]) != 255) {
                    z = false;
                    break;
                }
                i3++;
            }
        } else {
            i = -65536;
        }
        this.mDefaultColor = i;
        this.mIsOpaque = z;
    }

    @Override // android.content.res.ComplexColor
    public ConstantState<ComplexColor> getConstantState() {
        if (this.mFactory == null) {
            this.mFactory = new ColorStateListFactory(this);
        }
        return this.mFactory;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class ColorStateListFactory extends ConstantState<ComplexColor> {
        private final ColorStateList mSrc;

        public ColorStateListFactory(ColorStateList colorStateList) {
            this.mSrc = colorStateList;
        }

        @Override // android.content.res.ConstantState
        public int getChangingConfigurations() {
            return this.mSrc.mChangingConfigurations;
        }

        @Override // android.content.res.ConstantState
        /* renamed from: newInstance, reason: merged with bridge method [inline-methods] */
        public ComplexColor newInstance2() {
            return this.mSrc;
        }

        @Override // android.content.res.ConstantState
        /* renamed from: newInstance, reason: merged with bridge method [inline-methods] */
        public ComplexColor newInstance2(Resources resources, Resources.Theme theme) {
            return this.mSrc.obtainForTheme(theme);
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        if (canApplyTheme()) {
            Log.w(TAG, "Wrote partially-resolved ColorStateList to parcel!");
        }
        int length = this.mStateSpecs.length;
        parcel.writeInt(length);
        for (int i2 = 0; i2 < length; i2++) {
            parcel.writeIntArray(this.mStateSpecs[i2]);
        }
        parcel.writeIntArray(this.mColors);
    }
}
