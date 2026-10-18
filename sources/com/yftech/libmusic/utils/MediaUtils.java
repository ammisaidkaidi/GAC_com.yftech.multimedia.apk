package com.yftech.libmusic.utils;

import com.media.common.util.LogUtil;
import com.yftech.libmusic.bean.LyricObject;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.TreeMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: /home/user/work/dex/classes4.dex */
public class MediaUtils {
    public static final Charset CHARSET_GBK = Charset.forName("GBK");
    private static final String FILE_CERTIFICATE_PATH = "/data/media/0/certificate";

    public static boolean isGBK(String str) {
        int lastIndexOf;
        try {
            FileInputStream fileInputStream = new FileInputStream(new File(str));
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(fileInputStream, StandardCharsets.UTF_8));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    return false;
                }
                int length = readLine.length();
                if (length > 3 && (lastIndexOf = readLine.lastIndexOf("]")) > 0 && lastIndexOf < length) {
                    int i = 0;
                    while (lastIndexOf < length) {
                        if (readLine.charAt(lastIndexOf) == 65533) {
                            i++;
                        }
                        lastIndexOf++;
                    }
                    if (i > length / 3) {
                        fileInputStream.close();
                        bufferedReader.close();
                        return true;
                    }
                }
            }
        } catch (Exception unused) {
            return false;
        }
    }

    public static List<LyricObject> read(String str) {
        LyricObject lyricObject;
        File file;
        TreeMap treeMap = new TreeMap();
        LyricObject lyricObject2 = null;
        try {
            file = new File(str);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (!file.isFile()) {
            return null;
        }
        Charset charset = isGBK(str) ? CHARSET_GBK : StandardCharsets.UTF_8;
        FileInputStream fileInputStream = new FileInputStream(file);
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(fileInputStream, charset));
        Pattern compile = Pattern.compile("\\d{2}");
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                break;
            }
            String replace = readLine.replace("[", "").replace("]", "@");
            String[] split = replace.split("@");
            if (replace.endsWith("@")) {
                for (String str2 : split) {
                    String[] split2 = str2.replace(":", ".").replace(".", "@").split("@");
                    Matcher matcher = compile.matcher(split2[0]);
                    if (split2.length == 3 && matcher.matches()) {
                        int parseInt = (((Integer.parseInt(split2[0]) * 60) + Integer.parseInt(split2[1])) * 1000) + (Integer.parseInt(split2[2]) * 10);
                        LyricObject lyricObject3 = new LyricObject();
                        lyricObject3.begintime = parseInt;
                        lyricObject3.lrc = "";
                        treeMap.put(Integer.valueOf(parseInt), lyricObject3);
                    }
                }
            } else {
                String str3 = split[split.length - 1];
                for (int i = 0; i < split.length - 1; i++) {
                    String[] split3 = split[i].replace(":", ".").replace(".", "@").split("@");
                    Matcher matcher2 = compile.matcher(split3[0]);
                    if (split3.length == 3 && matcher2.matches()) {
                        int parseInt2 = (((Integer.parseInt(split3[0]) * 60) + Integer.parseInt(split3[1])) * 1000) + (Integer.parseInt(split3[2]) * 10);
                        LyricObject lyricObject4 = new LyricObject();
                        lyricObject4.begintime = parseInt2;
                        lyricObject4.lrc = str3;
                        treeMap.put(Integer.valueOf(parseInt2), lyricObject4);
                    }
                }
            }
        }
        fileInputStream.close();
        ArrayList arrayList = new ArrayList();
        Iterator it = treeMap.keySet().iterator();
        while (it.hasNext() && (lyricObject = (LyricObject) treeMap.get(it.next())) != null) {
            if (lyricObject2 != null) {
                lyricObject2.timeline = lyricObject.begintime - lyricObject2.begintime;
                arrayList.add(lyricObject2);
            }
            if (!it.hasNext()) {
                arrayList.add(lyricObject);
            }
            lyricObject2 = lyricObject;
        }
        return arrayList;
    }

    public static boolean isCarplayCertificate() {
        boolean exists = new File(FILE_CERTIFICATE_PATH).exists();
        LogUtil.i("isCarplayCertificate carplayCertificate:" + exists);
        return exists;
    }
}
