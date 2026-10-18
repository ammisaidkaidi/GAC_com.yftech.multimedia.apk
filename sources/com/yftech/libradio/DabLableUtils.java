package com.yftech.libradio;

import android.text.TextPaint;
import com.media.common.util.LogUtil;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes4.dex */
public class DabLableUtils {
    private static final int ITEM_WIDTH_1 = 272;
    private static final int ITEM_WIDTH_2 = 580;

    public static List<String> processLables(List<String> list, TextPaint textPaint) {
        if (list == null || list.isEmpty()) {
            return list;
        }
        LinkedList linkedList = new LinkedList();
        LinkedList linkedList2 = new LinkedList();
        LinkedList linkedList3 = new LinkedList();
        for (String str : list) {
            float measureText = textPaint.measureText(str);
            LogUtil.d("text:" + str + " ,textWidth: " + measureText);
            if (measureText <= 272.0f) {
                linkedList3.offer(str);
            } else if (measureText <= 580.0f) {
                linkedList2.offer(str);
            } else {
                linkedList.offer(str);
            }
        }
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(linkedList);
        while (!linkedList2.isEmpty()) {
            String str2 = (String) linkedList2.pop();
            if (str2 != null) {
                arrayList.add(str2);
                if (!linkedList3.isEmpty()) {
                    arrayList.add(linkedList3.pop());
                }
            }
        }
        while (!linkedList3.isEmpty()) {
            arrayList.add(linkedList3.pop());
        }
        return arrayList;
    }
}
