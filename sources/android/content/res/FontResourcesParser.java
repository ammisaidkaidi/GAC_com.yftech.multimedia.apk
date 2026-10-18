package android.content.res;

import android.util.Log;
import android.util.Xml;
import com.android.internal.R;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: /home/user/work/dex/classes.dex */
public class FontResourcesParser {
    private static final String TAG = "FontResourcesParser";

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface FamilyResourceEntry {
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class ProviderResourceEntry implements FamilyResourceEntry {
        private final List<List<String>> mCerts;
        private final String mProviderAuthority;
        private final String mProviderPackage;
        private final String mQuery;

        public ProviderResourceEntry(String str, String str2, String str3, List<List<String>> list) {
            this.mProviderAuthority = str;
            this.mProviderPackage = str2;
            this.mQuery = str3;
            this.mCerts = list;
        }

        public String getAuthority() {
            return this.mProviderAuthority;
        }

        public String getPackage() {
            return this.mProviderPackage;
        }

        public String getQuery() {
            return this.mQuery;
        }

        public List<List<String>> getCerts() {
            return this.mCerts;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class FontFileResourceEntry {
        private final String mFileName;
        private int mItalic;
        private int mResourceId;
        private int mTtcIndex;
        private String mVariationSettings;
        private int mWeight;

        public FontFileResourceEntry(String str, int i, int i2, String str2, int i3) {
            this.mFileName = str;
            this.mWeight = i;
            this.mItalic = i2;
            this.mVariationSettings = str2;
            this.mTtcIndex = i3;
        }

        public String getFileName() {
            return this.mFileName;
        }

        public int getWeight() {
            return this.mWeight;
        }

        public int getItalic() {
            return this.mItalic;
        }

        public String getVariationSettings() {
            return this.mVariationSettings;
        }

        public int getTtcIndex() {
            return this.mTtcIndex;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class FontFamilyFilesResourceEntry implements FamilyResourceEntry {
        private final FontFileResourceEntry[] mEntries;

        public FontFamilyFilesResourceEntry(FontFileResourceEntry[] fontFileResourceEntryArr) {
            this.mEntries = fontFileResourceEntryArr;
        }

        public FontFileResourceEntry[] getEntries() {
            return this.mEntries;
        }
    }

    public static FamilyResourceEntry parse(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        int next;
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next != 2) {
            throw new XmlPullParserException("No start tag found");
        }
        return readFamilies(xmlPullParser, resources);
    }

    private static FamilyResourceEntry readFamilies(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "font-family");
        if (xmlPullParser.getName().equals("font-family")) {
            return readFamily(xmlPullParser, resources);
        }
        skip(xmlPullParser);
        Log.e(TAG, "Failed to find font-family tag");
        return null;
    }

    private static FamilyResourceEntry readFamily(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), R.styleable.FontFamily);
        String string = obtainAttributes.getString(0);
        String string2 = obtainAttributes.getString(2);
        String string3 = obtainAttributes.getString(1);
        int resourceId = obtainAttributes.getResourceId(3, 0);
        obtainAttributes.recycle();
        ArrayList arrayList = null;
        if (string != null && string2 != null && string3 != null) {
            while (xmlPullParser.next() != 3) {
                skip(xmlPullParser);
            }
            if (resourceId != 0) {
                TypedArray obtainTypedArray = resources.obtainTypedArray(resourceId);
                if (obtainTypedArray.length() > 0) {
                    arrayList = new ArrayList();
                    if (obtainTypedArray.getResourceId(0, 0) != 0) {
                        for (int i = 0; i < obtainTypedArray.length(); i++) {
                            arrayList.add(Arrays.asList(resources.getStringArray(obtainTypedArray.getResourceId(i, 0))));
                        }
                    } else {
                        arrayList.add(Arrays.asList(resources.getStringArray(resourceId)));
                    }
                }
            }
            return new ProviderResourceEntry(string, string2, string3, arrayList);
        }
        ArrayList arrayList2 = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("font")) {
                    FontFileResourceEntry readFont = readFont(xmlPullParser, resources);
                    if (readFont != null) {
                        arrayList2.add(readFont);
                    }
                } else {
                    skip(xmlPullParser);
                }
            }
        }
        if (arrayList2.isEmpty()) {
            return null;
        }
        return new FontFamilyFilesResourceEntry((FontFileResourceEntry[]) arrayList2.toArray(new FontFileResourceEntry[arrayList2.size()]));
    }

    private static FontFileResourceEntry readFont(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), R.styleable.FontFamilyFont);
        int i = obtainAttributes.getInt(1, -1);
        int i2 = obtainAttributes.getInt(2, -1);
        String string = obtainAttributes.getString(4);
        int i3 = obtainAttributes.getInt(3, 0);
        String string2 = obtainAttributes.getString(0);
        obtainAttributes.recycle();
        while (xmlPullParser.next() != 3) {
            skip(xmlPullParser);
        }
        if (string2 == null) {
            return null;
        }
        return new FontFileResourceEntry(string2, i, i2, string, i3);
    }

    private static void skip(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        int i = 1;
        while (i > 0) {
            switch (xmlPullParser.next()) {
                case 2:
                    i++;
                    break;
                case 3:
                    i--;
                    break;
            }
        }
    }
}
