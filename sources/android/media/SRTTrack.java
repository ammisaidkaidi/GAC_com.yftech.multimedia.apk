package android.media;

import android.media.SubtitleTrack;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Handler;
import android.os.Parcel;
import android.os.SystemProperties;
import android.util.Log;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Vector;

/* compiled from: SRTRenderer.java */
/* loaded from: /home/user/work/dex/classes.dex */
class SRTTrack extends WebVttTrack {
    private static boolean ATC_AOSP_ENHANCEMENT = SystemProperties.getBoolean("ro.atc.aosp_enhancement", false);
    private static final int KEY_LOCAL_SETTING = 102;
    private static final int KEY_START_TIME = 7;
    private static final int KEY_STRUCT_TEXT = 16;
    private static final int MEDIA_TIMED_TEXT = 99;
    private static final String TAG = "SRTTrack";
    private final Handler mEventHandler;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SRTTrack(WebVttRenderingWidget webVttRenderingWidget, MediaFormat mediaFormat) {
        super(webVttRenderingWidget, mediaFormat);
        this.mEventHandler = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SRTTrack(Handler handler, MediaFormat mediaFormat) {
        super(null, mediaFormat);
        this.mEventHandler = handler;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.media.SubtitleTrack
    public void onData(SubtitleData subtitleData) {
        try {
            TextTrackCue textTrackCue = new TextTrackCue();
            textTrackCue.mStartTimeMs = subtitleData.getStartTimeUs() / 1000;
            textTrackCue.mEndTimeMs = (subtitleData.getStartTimeUs() + subtitleData.getDurationUs()) / 1000;
            String[] split = new String(subtitleData.getData(), "UTF-8").split("\\r?\\n");
            textTrackCue.mLines = new TextTrackCueSpan[split.length];
            int length = split.length;
            int i = 0;
            int i2 = 0;
            while (i < length) {
                TextTrackCueSpan[] textTrackCueSpanArr = new TextTrackCueSpan[1];
                textTrackCueSpanArr[0] = new TextTrackCueSpan(split[i], -1L);
                textTrackCue.mLines[i2] = textTrackCueSpanArr;
                i++;
                i2++;
            }
            addCue(textTrackCue);
        } catch (UnsupportedEncodingException e) {
            Log.w(TAG, "subtitle data is not UTF-8 encoded: " + e);
        }
    }

    @Override // android.media.WebVttTrack, android.media.SubtitleTrack
    public void onData(byte[] bArr, boolean z, long j) {
        String readLine;
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new ByteArrayInputStream(bArr), "UTF-8"));
            while (bufferedReader.readLine() != null && (readLine = bufferedReader.readLine()) != null) {
                TextTrackCue textTrackCue = new TextTrackCue();
                String[] split = readLine.split("-->");
                if (!ATC_AOSP_ENHANCEMENT || split.length >= 2) {
                    textTrackCue.mStartTimeMs = parseMs(split[0]);
                    if (ATC_AOSP_ENHANCEMENT) {
                        textTrackCue.mEndTimeMs = parseMs(split[1].trim().split(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER)[0]);
                    } else {
                        textTrackCue.mEndTimeMs = parseMs(split[1]);
                    }
                    ArrayList<String> arrayList = new ArrayList();
                    while (true) {
                        String readLine2 = bufferedReader.readLine();
                        if (readLine2 == null || readLine2.trim().equals("")) {
                            break;
                        } else {
                            arrayList.add(readLine2);
                        }
                    }
                    textTrackCue.mLines = new TextTrackCueSpan[arrayList.size()];
                    textTrackCue.mStrings = (String[]) arrayList.toArray(new String[0]);
                    int i = 0;
                    for (String str : arrayList) {
                        TextTrackCueSpan[] textTrackCueSpanArr = new TextTrackCueSpan[1];
                        textTrackCueSpanArr[0] = new TextTrackCueSpan(str, -1L);
                        textTrackCue.mStrings[i] = str;
                        textTrackCue.mLines[i] = textTrackCueSpanArr;
                        i++;
                    }
                    addCue(textTrackCue);
                }
            }
        } catch (UnsupportedEncodingException e) {
            Log.w(TAG, "subtitle data is not UTF-8 encoded: " + e);
        } catch (IOException e2) {
            Log.e(TAG, e2.getMessage(), e2);
        }
    }

    @Override // android.media.WebVttTrack, android.media.SubtitleTrack
    public void updateView(Vector<SubtitleTrack.Cue> vector) {
        if (getRenderingWidget() != null) {
            super.updateView(vector);
            return;
        }
        if (this.mEventHandler == null) {
            return;
        }
        Iterator<SubtitleTrack.Cue> it = vector.iterator();
        while (it.hasNext()) {
            SubtitleTrack.Cue next = it.next();
            TextTrackCue textTrackCue = (TextTrackCue) next;
            Parcel obtain = Parcel.obtain();
            obtain.writeInt(102);
            obtain.writeInt(7);
            obtain.writeInt((int) next.mStartTimeMs);
            obtain.writeInt(16);
            StringBuilder sb = new StringBuilder();
            for (String str : textTrackCue.mStrings) {
                sb.append(str);
                sb.append('\n');
            }
            byte[] bytes = sb.toString().getBytes();
            obtain.writeInt(bytes.length);
            obtain.writeByteArray(bytes);
            this.mEventHandler.sendMessage(this.mEventHandler.obtainMessage(99, 0, 0, obtain));
        }
        vector.clear();
    }

    private static long parseMs(String str) {
        long j;
        if (ATC_AOSP_ENHANCEMENT) {
            try {
                String[] split = str.split(":");
                if (split.length < 3) {
                    return -1L;
                }
                long parseLong = Long.parseLong(split[0].trim());
                long parseLong2 = Long.parseLong(split[1].trim());
                if (split.length == 3) {
                    String[] split2 = split[2].split(",");
                    long parseLong3 = Long.parseLong(split2[0].trim());
                    j = split2.length >= 2 ? Long.parseLong(split2[1].trim()) : 0L;
                    r15 = parseLong3;
                } else if (split.length == 4) {
                    r15 = Long.parseLong(split[2].trim());
                    j = Long.parseLong(split[3].trim());
                } else {
                    j = 0;
                }
                return (parseLong * 3600000) + (parseLong2 * 60000) + (r15 * 1000) + j;
            } catch (Exception e) {
                Log.e(TAG, "time:" + str + ", parseMs error:" + e);
                return -1L;
            }
        }
        return (Long.parseLong(str.split(":")[0].trim()) * 60 * 60 * 1000) + (Long.parseLong(str.split(":")[1].trim()) * 60 * 1000) + (Long.parseLong(str.split(":")[2].split(",")[0].trim()) * 1000) + Long.parseLong(str.split(":")[2].split(",")[1].trim());
    }
}
