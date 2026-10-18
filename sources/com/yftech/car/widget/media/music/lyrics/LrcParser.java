package com.yftech.car.widget.media.music.lyrics;

import android.util.Log;
import com.yftech.car.widget.media.music.lyrics.Lyric;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: /home/user/work/dex/classes3.dex */
public class LrcParser {
    private static final String ALBUM_KEY = "al";
    private static final String ARTIST_KEY = "ar";
    private static final String BY_KEY = "by";
    private static final long NO_TS = Long.MIN_VALUE;
    private static final String OFFSET_KEY = "offset";
    private static final String TAG = "LrcParser";
    private static final String TITLE_KEY = "ti";
    private static int mLinearMax;

    LrcParser() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Lyric parseText(String str) {
        if (str != null && str.length() != 0) {
            Lyric.Builder builder = new Lyric.Builder();
            for (String str2 : str.split("\n")) {
                parseLine(builder, str2);
            }
            return builder.build();
        }
        return Lyric.EMPTY;
    }

    static Lyric parseLyric(InputStream inputStream, String str) {
        Lyric.Builder builder = new Lyric.Builder();
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, str));
            Throwable th = null;
            while (true) {
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    parseLine(builder, readLine);
                } finally {
                }
            }
            bufferedReader.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return builder.build();
    }

    public static void setLinearMax(int i) {
        mLinearMax = i;
    }

    public static void parseLine(Lyric.Builder builder, String str) {
        if (str != null) {
            str = str.trim();
            if (str.length() != 0 && str.charAt(0) == '[') {
                char charAt = str.charAt(1);
                if ((charAt < 'a' || charAt > 'z') && (charAt < 'A' || charAt > 'Z')) {
                    parseCommonLine(builder, str);
                    return;
                } else {
                    parseMetaData(builder, str);
                    return;
                }
            }
        }
        if (mLinearMax != 1) {
            builder.addTranslate(str);
        }
    }

    public static void parseLine(Lyric.Builder builder, String str, boolean z) {
        if (str != null) {
            String trim = str.trim();
            if (trim.length() == 0 || trim.charAt(0) != '[') {
                return;
            }
            char charAt = trim.charAt(1);
            if ((charAt < 'a' || charAt > 'z') && (charAt < 'A' || charAt > 'Z')) {
                parseCommonLine(builder, trim, z);
            } else {
                parseMetaData(builder, trim);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x006a, code lost:
    
        if (r1.equals(com.yftech.car.widget.media.music.lyrics.LrcParser.ARTIST_KEY) != false) goto L37;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void parseMetaData(Lyric.Builder builder, String str) {
        int i;
        int indexOf;
        char c = 2;
        int indexOf2 = str.indexOf(58, 2);
        if (indexOf2 == -1 || (indexOf = str.indexOf(93, (i = indexOf2 + 1))) == -1) {
            return;
        }
        String trim = str.substring(1, indexOf2).trim();
        String trim2 = str.substring(i, indexOf).trim();
        if (trim.length() == 0 || trim2.length() == 0) {
            return;
        }
        String lowerCase = trim.toLowerCase();
        int hashCode = lowerCase.hashCode();
        if (hashCode == -1019779949) {
            if (lowerCase.equals(OFFSET_KEY)) {
                c = 0;
            }
            c = 65535;
        } else if (hashCode == 3115) {
            if (lowerCase.equals(ALBUM_KEY)) {
                c = 1;
            }
            c = 65535;
        } else if (hashCode != 3121) {
            if (hashCode != 3159) {
                if (hashCode == 3701 && lowerCase.equals(TITLE_KEY)) {
                    c = 4;
                }
                c = 65535;
            } else {
                if (lowerCase.equals(BY_KEY)) {
                    c = 3;
                }
                c = 65535;
            }
        }
        switch (c) {
            case 0:
                try {
                    builder.setOffset(Long.parseLong(trim2));
                    return;
                } catch (NumberFormatException e) {
                    e.printStackTrace();
                    return;
                }
            case 1:
                builder.setAlbum(trim2);
                return;
            case 2:
                builder.setArtist(trim2);
                return;
            case 3:
                builder.setBy(trim2);
                return;
            case 4:
                builder.setTitle(trim2);
                return;
            default:
                Log.d(TAG, "parseMetaData: ");
                return;
        }
    }

    private static void parseCommonLine(Lyric.Builder builder, String str) {
        int length = str.length();
        ArrayList arrayList = new ArrayList();
        int i = 0;
        do {
            int i2 = i + 1;
            int indexOf = str.indexOf(93, i2);
            if (indexOf == -1) {
                break;
            }
            long parseTimeStamp = parseTimeStamp(str.substring(i2, indexOf));
            if (parseTimeStamp == NO_TS) {
                break;
            }
            arrayList.add(Long.valueOf(parseTimeStamp));
            i = indexOf + 1;
        } while (i != length);
        if (arrayList.isEmpty()) {
            return;
        }
        String substring = str.substring(i);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            builder.insertLine(((Long) it.next()).longValue(), substring);
        }
    }

    private static void parseCommonLine(Lyric.Builder builder, String str, boolean z) {
        int indexOf = str.indexOf("[") + 1;
        int indexOf2 = str.indexOf(",");
        if (indexOf2 <= 0 || indexOf < 0 || indexOf >= indexOf2) {
            return;
        }
        builder.insertLine(Long.valueOf(str.substring(indexOf, indexOf2)).longValue(), str.substring(str.indexOf("]") + 1));
    }

    private static long parseTimeStamp(String str) {
        long parseInt;
        int indexOf = str.indexOf(58);
        if (indexOf < 0) {
            return NO_TS;
        }
        try {
            long parseInt2 = (Integer.parseInt(str.substring(0, indexOf)) * 60000) + 0;
            int i = indexOf + 1;
            int indexOf2 = str.indexOf(46, i);
            if (indexOf2 < 0) {
                indexOf2 = str.indexOf(58, i);
            }
            try {
                if (indexOf2 < 0) {
                    parseInt = parseInt2 + (Integer.parseInt(str.substring(i)) * 1000);
                } else {
                    parseInt = parseInt2 + (Integer.parseInt(str.substring(i, indexOf2)) * 1000) + (Integer.parseInt(str.substring(indexOf2 + 1)) * 10);
                }
                return parseInt;
            } catch (NumberFormatException e) {
                e.printStackTrace();
                return NO_TS;
            }
        } catch (NumberFormatException e2) {
            e2.printStackTrace();
            return NO_TS;
        }
    }
}
