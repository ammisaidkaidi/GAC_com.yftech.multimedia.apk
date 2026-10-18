package com.example.ffmpeg.util;

import android.media.MediaCodecList;
import java.util.HashMap;
import java.util.Map;

/* loaded from: /home/user/work/dex/classes3.dex */
public class MyVideoSupportUitl {
    private static Map<String, String> codecMap = new HashMap();

    static {
        codecMap.put("h264", "video/avc");
    }

    public static String findVideoCodecName(String str) {
        return codecMap.containsKey(str) ? codecMap.get(str) : "";
    }

    public static boolean isSupportCodec(String str) {
        int codecCount = MediaCodecList.getCodecCount();
        boolean z = false;
        for (int i = 0; i < codecCount; i++) {
            String[] supportedTypes = MediaCodecList.getCodecInfoAt(i).getSupportedTypes();
            int i2 = 0;
            while (true) {
                if (i2 >= supportedTypes.length) {
                    break;
                }
                if (supportedTypes[i2].equals(findVideoCodecName(str))) {
                    z = true;
                    break;
                }
                i2++;
            }
            if (z) {
                break;
            }
        }
        return z;
    }
}
