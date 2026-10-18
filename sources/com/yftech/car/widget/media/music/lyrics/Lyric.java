package com.yftech.car.widget.media.music.lyrics;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* loaded from: /home/user/work/dex/classes3.dex */
public class Lyric {
    public static final Lyric EMPTY = new Lyric();
    private final String album;
    private final String artist;
    private final String by;
    private final List<Line> lines;
    private final long offset;
    private final String title;

    public final String getTitle() {
        return this.title;
    }

    public final String getArtist() {
        return this.artist;
    }

    public final String getAlbum() {
        return this.album;
    }

    public final String getBy() {
        return this.by;
    }

    public final long getOffset() {
        return this.offset;
    }

    public final List<KrcPlayEntity> getKrcPlayEntity(int i) {
        if (this.lines != null && i >= 0 && i < this.lines.size()) {
            return this.lines.get(i).getKrcList();
        }
        return null;
    }

    public final int getLineCount() {
        if (this.lines == null) {
            return 0;
        }
        return this.lines.size();
    }

    public final String getLineText(int i) {
        if (this.lines != null && i >= 0 && i < this.lines.size()) {
            return this.lines.get(i).content;
        }
        return null;
    }

    public final long getLineStartTime(int i) {
        if (this.lines != null && i >= 0 && i < this.lines.size()) {
            return this.lines.get(i).startTime;
        }
        return 0L;
    }

    public final TimeLineMapper newTimeLineMapper() {
        return new TimeLineMapper(this.lines);
    }

    public final void getLineTexts(List<String> list) {
        if (list == null || this.lines == null || this.lines.size() == 0) {
            return;
        }
        Iterator<Line> it = this.lines.iterator();
        while (it.hasNext()) {
            list.add(it.next().content);
        }
    }

    public final Lyric removeBlankLines() {
        if (this.lines == null || this.lines.isEmpty()) {
            return this;
        }
        ArrayList arrayList = new ArrayList();
        for (Line line : this.lines) {
            if (line.content != null && line.content.length() > 0) {
                arrayList.add(line);
            }
        }
        return arrayList.size() == this.lines.size() ? this : newBuilder().setLines(arrayList).build();
    }

    public final Lyric removeTrailingBlankLines() {
        int size = this.lines == null ? 0 : this.lines.size();
        if (size == 0) {
            return this;
        }
        ArrayList arrayList = new ArrayList(this.lines);
        for (int i = size - 1; i >= 0; i--) {
            String str = arrayList.get(i).content;
            if (str != null && str.length() != 0) {
                break;
            }
            arrayList.remove(i);
        }
        return arrayList.size() == size ? this : newBuilder().setLines(arrayList).build();
    }

    public String toString() {
        return "Lyric{title='" + this.title + "', artist='" + this.artist + "', album='" + this.album + "', by='" + this.by + "', offset=" + this.offset + ", lines=" + this.lines + '}';
    }

    public static Lyric parseLrc(String str) {
        return LrcParser.parseText(str);
    }

    private Lyric() {
        this.title = null;
        this.artist = null;
        this.album = null;
        this.by = null;
        this.offset = 0L;
        this.lines = null;
    }

    Lyric(Builder builder) {
        this.title = builder.title;
        this.artist = builder.artist;
        this.album = builder.album;
        this.by = builder.by;
        this.offset = builder.offset;
        this.lines = builder.lines;
    }

    private Builder newBuilder() {
        return new Builder().setTitle(this.title).setArtist(this.artist).setAlbum(this.album).setBy(this.by).setOffset(this.offset).setLines(this.lines);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class Builder {
        private String album;
        private String artist;
        private String by;
        private List<Line> lines;
        private long offset;
        private String title;

        /* JADX INFO: Access modifiers changed from: package-private */
        public Builder setTitle(String str) {
            this.title = str;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Builder setArtist(String str) {
            this.artist = str;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Builder setAlbum(String str) {
            this.album = str;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Builder setBy(String str) {
            this.by = str;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Builder setOffset(long j) {
            this.offset = j;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Builder addTranslate(String str) {
            if (this.lines != null && this.lines.size() > 0) {
                Line line = this.lines.get(this.lines.size() - 1);
                line.content = line.content + "\n" + str;
            }
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Builder setKrcList(List<KrcPlayEntity> list) {
            if (this.lines != null && this.lines.size() > 0) {
                this.lines.get(this.lines.size() - 1).setKrcList(list);
            }
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Builder insertLine(long j, String str) {
            if (str == null) {
                return this;
            }
            if (this.lines == null) {
                this.lines = new ArrayList();
            }
            int size = this.lines.size();
            while (size > 0 && j < this.lines.get(size - 1).startTime) {
                size--;
            }
            this.lines.add(size, new Line(j, str));
            return this;
        }

        Builder setLines(List<Line> list) {
            this.lines = list;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Lyric build() {
            return new Lyric(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class Line {
        private String content;
        private List<KrcPlayEntity> krcList = null;
        final long startTime;

        Line(long j, String str) {
            this.content = str;
            this.startTime = j;
        }

        public List<KrcPlayEntity> getKrcList() {
            return this.krcList;
        }

        public Line setKrcList(List<KrcPlayEntity> list) {
            this.krcList = list;
            return this;
        }

        public String toString() {
            return "Line{content='" + this.content + "', startTime=" + this.startTime + '}';
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class TimeLineMapper {
        int lastIndex;
        private long lastTimeStamp;
        private final long[] startTimes;

        TimeLineMapper(List<Line> list) {
            if (list == null) {
                this.startTimes = null;
                return;
            }
            int size = list.size();
            if (size == 0) {
                this.startTimes = null;
                return;
            }
            this.startTimes = new long[size];
            for (int i = 0; i < size; i++) {
                this.startTimes[i] = list.get(i).startTime;
            }
        }

        public final int map(long j) {
            if (this.startTimes == null) {
                return 0;
            }
            if (j < this.lastTimeStamp) {
                if (j <= this.startTimes[0]) {
                    this.lastTimeStamp = j;
                    this.lastIndex = 0;
                    return 0;
                }
                int binarySearch = Arrays.binarySearch(this.startTimes, 0, this.lastIndex + 1, j);
                if (binarySearch >= 0) {
                    this.lastTimeStamp = j;
                    this.lastIndex = binarySearch;
                    return binarySearch;
                }
                this.lastTimeStamp = j;
                int i = (-(binarySearch + 1)) - 1;
                this.lastIndex = i;
                return i;
            }
            if (this.lastIndex < this.startTimes.length - 1 && j >= this.startTimes[this.lastIndex + 1]) {
                if (this.lastIndex == this.startTimes.length - 2 || j < this.startTimes[this.lastIndex + 2]) {
                    this.lastTimeStamp = j;
                    int i2 = this.lastIndex + 1;
                    this.lastIndex = i2;
                    return i2;
                }
                if (j >= this.startTimes[this.startTimes.length - 1]) {
                    this.lastTimeStamp = j;
                    int length = this.startTimes.length - 1;
                    this.lastIndex = length;
                    return length;
                }
                int binarySearch2 = Arrays.binarySearch(this.startTimes, this.lastIndex + 1, this.startTimes.length, j);
                if (binarySearch2 >= 0) {
                    this.lastTimeStamp = j;
                    this.lastIndex = binarySearch2;
                    return binarySearch2;
                }
                int i3 = (-(binarySearch2 + 1)) - 1;
                this.lastIndex = i3;
                return i3;
            }
            this.lastTimeStamp = j;
            return this.lastIndex;
        }
    }
}
