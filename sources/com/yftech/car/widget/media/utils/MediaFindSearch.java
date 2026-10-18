package com.yftech.car.widget.media.utils;

import android.os.AsyncTask;
import com.yftech.car.media.data.CarMediaDataManager;
import com.yftech.car.widget.media.list.MediaDataList;
import com.yftech.car.widget.media.text.MediaSearchEditText;
import java.util.Iterator;
import java.util.List;

/* loaded from: /home/user/work/dex/classes3.dex */
public class MediaFindSearch {
    private boolean isValid = true;

    public void setValid(boolean z) {
        this.isValid = z;
    }

    public void startSearch(String str, MediaSearchEditText mediaSearchEditText, List<MediaDataList> list) {
        startSearch(str, mediaSearchEditText, list, null);
    }

    public void startSearch(final String str, final MediaSearchEditText mediaSearchEditText, final List<MediaDataList> list, final Runnable runnable) {
        AsyncTask.execute(new Runnable() { // from class: com.yftech.car.widget.media.utils.-$$Lambda$MediaFindSearch$OZJWwEbEG639TjQjloZpwoU7cNc
            @Override // java.lang.Runnable
            public final void run() {
                MediaFindSearch.lambda$startSearch$1(MediaFindSearch.this, mediaSearchEditText, str, list, runnable);
            }
        });
    }

    public static /* synthetic */ void lambda$startSearch$1(final MediaFindSearch mediaFindSearch, final MediaSearchEditText mediaSearchEditText, final String str, final List list, final Runnable runnable) {
        final int searchFindFlag = mediaSearchEditText.getSearchFindFlag();
        final List findSearchFile = CarMediaDataManager.getInstance().findSearchFile(str, searchFindFlag, mediaSearchEditText.getSearchIndex());
        if (mediaFindSearch.isValid) {
            mediaSearchEditText.post(new Runnable() { // from class: com.yftech.car.widget.media.utils.-$$Lambda$MediaFindSearch$v-8x2dBNKBSmflabb1tdsMh24Yk
                @Override // java.lang.Runnable
                public final void run() {
                    MediaFindSearch.lambda$startSearch$0(MediaFindSearch.this, list, mediaSearchEditText, str, findSearchFile, searchFindFlag, runnable);
                }
            });
        }
    }

    public static /* synthetic */ void lambda$startSearch$0(MediaFindSearch mediaFindSearch, List list, MediaSearchEditText mediaSearchEditText, String str, List list2, int i, Runnable runnable) {
        if (mediaFindSearch.isValid) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                MediaDataList mediaDataList = (MediaDataList) it.next();
                if (mediaDataList.getMediaDefaultList() == 101 && (mediaSearchEditText.getSearchDataListId() == -1 || mediaSearchEditText.getSearchDataListId() == mediaDataList.getId())) {
                    mediaDataList.updateSearchText(str);
                    mediaDataList.updateSearchList(list2);
                    mediaDataList.setSearchFlags(i);
                }
            }
            if (runnable != null) {
                runnable.run();
            }
        }
    }
}
