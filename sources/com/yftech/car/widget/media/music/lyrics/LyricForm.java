package com.yftech.car.widget.media.music.lyrics;

import android.os.Handler;
import android.util.Log;
import com.yftech.car.widget.media.music.lyrics.Lyric;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes3.dex */
public class LyricForm {
    private static final String KRC = ".krc";
    private static final String LRC = ".lrc";
    private static final String TAG = "LyricForm";
    private boolean isReadFile;
    private boolean mAddKrc;
    private Handler mHandler;
    private Lyric mLyric;
    private final int[] miarry = {64, 71, 97, 119, 94, 50, 116, 71, 81, 54, 49, 45, 206, 210, 110, 105};
    private final Charset CHARSET_GBK = Charset.forName("GBK");
    private boolean isValid = true;

    public LyricForm(Handler handler, boolean z) {
        this.mHandler = handler;
        this.mAddKrc = z;
    }

    public void setValid(boolean z) {
        this.isValid = z;
        this.mHandler = null;
        this.mLyric = null;
    }

    public void parseLyric(final LyricView lyricView, String str) {
        int lastIndexOf;
        String str2 = "usb/null";
        if (str != null && (lastIndexOf = str.lastIndexOf(".")) > 1) {
            str2 = str.substring(0, lastIndexOf) + LRC;
        }
        Log.d(TAG, "handleMessage: path==" + str2);
        loadLyric(str2);
        Log.d(TAG, "parseLyric: isValid==" + this.isValid);
        if (this.isValid) {
            lyricView.setLyricMessageNoLyric();
            this.mHandler.post(new Runnable() { // from class: com.yftech.car.widget.media.music.lyrics.LyricForm.1
                @Override // java.lang.Runnable
                public void run() {
                    lyricView.setLyric(LyricForm.this.mLyric);
                }
            });
        }
    }

    private Lyric loadLyric(String str) {
        File file = new File(str);
        if (this.mLyric != null) {
            this.mLyric = null;
        }
        if (file.exists()) {
            Log.d(TAG, "loadLyric: lrc exists");
            if (str.endsWith(KRC)) {
                this.mLyric = loadingKrc(file);
            } else {
                loadingLrc(file, StandardCharsets.UTF_8);
                return this.mLyric;
            }
        } else if (this.mAddKrc) {
            boolean z = true;
            if (str.endsWith(LRC)) {
                String substring = str.substring(0, str.lastIndexOf("."));
                String str2 = substring + KRC;
                Log.d(TAG, "loadingLyric: krcPath==" + str2);
                File file2 = new File(str2);
                if (file2.exists()) {
                    Log.d(TAG, "loadLyric: krc exists");
                    this.mLyric = loadingKrc(file2);
                } else {
                    File[] listFiles = new File(str.substring(0, str.lastIndexOf("/"))).listFiles();
                    if (listFiles != null) {
                        int length = listFiles.length;
                        int i = 0;
                        while (true) {
                            if (i >= length) {
                                break;
                            }
                            File file3 = listFiles[i];
                            if (!this.isValid) {
                                Log.e(TAG, "readFileLyric: isValid is false");
                                break;
                            }
                            if (file3.isFile()) {
                                String path = file3.getPath();
                                if (isFindNameKrc(substring, path)) {
                                    this.mLyric = loadLyric(path);
                                    z = false;
                                    break;
                                }
                            }
                            i++;
                        }
                    }
                    Log.d(TAG, "loadLyric: isFind==" + z);
                    if (z) {
                        this.mLyric = loadLyric(str2);
                    }
                }
            } else {
                Log.d(TAG, "loadingLyric: path ==" + str);
                this.isReadFile = false;
                if (!str.equals("usb/null")) {
                    if (str.length() > 9) {
                        int indexOf = str.substring(9).indexOf("/");
                        if (indexOf != -1) {
                            int i2 = indexOf + 9;
                            if (str.length() > i2) {
                                String substring2 = str.substring(0, i2);
                                Log.e(TAG, "loadingLyric: 歌词文件未找到，正在全盘扫描歌词... scan == " + substring2);
                                File[] listFiles2 = new File(substring2).listFiles();
                                if (listFiles2 != null) {
                                    readFileLyric(listFiles2, str.substring(str.lastIndexOf("/") + 1));
                                }
                            } else {
                                Log.e(TAG, "loadLyric: indexOf error end==" + i2);
                            }
                        } else {
                            Log.e(TAG, "loadLyric: path error,endIndex==" + indexOf);
                        }
                    } else {
                        Log.e(TAG, "loadLyric: path error");
                    }
                }
                if (!this.isReadFile) {
                    Log.e(TAG, "loadLyric: 未找到歌词文件");
                }
            }
        }
        return this.mLyric != null ? this.mLyric : Lyric.EMPTY;
    }

    private Lyric loadingKrc(File file) {
        byte[] krcText = getKrcText(file);
        Log.d(TAG, "loadingKrc: krc data ---ok");
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(krcText);
        InputStreamReader inputStreamReader = new InputStreamReader(byteArrayInputStream, StandardCharsets.UTF_8);
        BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
        StringBuilder sb = new StringBuilder();
        Lyric.Builder builder = new Lyric.Builder();
        while (true) {
            try {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    if (!this.isValid) {
                        Log.e(TAG, "loadingKrc: isValid is false");
                        return null;
                    }
                    if (sb.length() > 0) {
                        sb.delete(0, sb.length());
                    }
                    int indexOf = readLine.indexOf("]") + 1;
                    String substring = readLine.substring(indexOf);
                    ArrayList arrayList = new ArrayList();
                    loadingLyricDate(arrayList, substring, sb);
                    LrcParser.parseLine(builder, readLine.substring(0, indexOf) + sb.toString(), true);
                    builder.setKrcList(arrayList);
                }
            } catch (IOException e) {
                e.printStackTrace();
                builder = null;
            }
            try {
                byteArrayInputStream.close();
                inputStreamReader.close();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
            return builder != null ? builder.build() : Lyric.EMPTY;
        }
    }

    private void loadingLrc(File file, Charset charset) {
        Lyric.Builder builder;
        int length;
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            InputStreamReader inputStreamReader = new InputStreamReader(fileInputStream, charset);
            BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
            builder = new Lyric.Builder();
            while (true) {
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine != null) {
                        if (!this.isValid) {
                            Log.e(TAG, "loadingLrc: isValid is false");
                            return;
                        }
                        if (charset != this.CHARSET_GBK && (length = readLine.length()) > 3) {
                            int i = 0;
                            int lastIndexOf = readLine.lastIndexOf("]");
                            if (lastIndexOf > 0 && lastIndexOf < length) {
                                while (lastIndexOf < length) {
                                    if (readLine.charAt(lastIndexOf) == 65533) {
                                        i++;
                                    }
                                    lastIndexOf++;
                                }
                                if (i > length / 3) {
                                    loadingLrc(file, this.CHARSET_GBK);
                                    fileInputStream.close();
                                    inputStreamReader.close();
                                    return;
                                }
                            }
                        }
                        LrcParser.parseLine(builder, readLine);
                    } else {
                        fileInputStream.close();
                        inputStreamReader.close();
                        break;
                    }
                } catch (IOException e) {
                    e = e;
                    e.printStackTrace();
                    this.mLyric = builder != null ? builder.build() : Lyric.EMPTY;
                    return;
                }
            }
        } catch (IOException e2) {
            e = e2;
            builder = null;
        }
    }

    private boolean isFindNameKrc(String str, String str2) {
        return str2.startsWith(str) && str2.toLowerCase().endsWith(KRC);
    }

    private boolean isFindNameLrc(String str, String str2) {
        return str2.startsWith(str) && str2.toLowerCase().endsWith(LRC);
    }

    private void loadingLyricDate(List<KrcPlayEntity> list, String str, StringBuilder sb) {
        int indexOf;
        if (str.startsWith("<")) {
            int indexOf2 = str.indexOf(">") + 1;
            String substring = str.substring(1, indexOf2 - 1);
            KrcPlayEntity krcPlayEntity = new KrcPlayEntity();
            String[] split = substring.split(",");
            int[] iArr = new int[split.length];
            for (int i = 0; i < iArr.length; i++) {
                iArr[i] = Integer.parseInt(split[i]);
            }
            krcPlayEntity.setPlayTime(iArr);
            if (str.length() > indexOf2) {
                String substring2 = str.substring(indexOf2);
                int indexOf3 = substring2.indexOf("<", -1);
                if (indexOf3 == -1) {
                    krcPlayEntity.setLyrics(substring2);
                } else {
                    krcPlayEntity.setLyrics(substring2.substring(0, indexOf3));
                }
                sb.append(krcPlayEntity.getLyrics());
            } else {
                krcPlayEntity.setLyrics("");
            }
            list.add(krcPlayEntity);
            String substring3 = str.substring(indexOf2);
            if (substring3.length() <= 0 || (indexOf = substring3.indexOf("<", -1)) == -1) {
                return;
            }
            loadingLyricDate(list, substring3.substring(indexOf), sb);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0033 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0022 A[LOOP:0: B:8:0x0020->B:9:0x0022, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private byte[] getKrcText(File file) {
        FileInputStream fileInputStream;
        int length;
        int i;
        byte[] bArr = new byte[(int) file.length()];
        try {
            fileInputStream = new FileInputStream(file);
        } catch (IOException e) {
            e = e;
            fileInputStream = null;
        }
        try {
            fileInputStream.read(new byte[4]);
            fileInputStream.read(bArr);
        } catch (IOException e2) {
            e = e2;
            e.printStackTrace();
            length = bArr.length;
            while (i < length) {
            }
            if (fileInputStream != null) {
            }
            return ZLibUtils.decompress(bArr);
        }
        length = bArr.length;
        for (i = 0; i < length; i++) {
            bArr[i] = (byte) (this.miarry[i % 16] ^ bArr[i]);
        }
        if (fileInputStream != null) {
            try {
                fileInputStream.close();
            } catch (IOException e3) {
                e3.printStackTrace();
            }
        }
        return ZLibUtils.decompress(bArr);
    }

    private void readFileLyric(File[] fileArr, String str) {
        if (!this.isValid) {
            Log.e(TAG, "readFileLyric: isValid is false");
            return;
        }
        for (int i = 0; fileArr != null && i < fileArr.length; i++) {
            if (!this.isValid) {
                Log.e(TAG, "readFileLyric: isValid is false");
                return;
            }
            File file = fileArr[i];
            boolean z = true;
            if (file.isFile()) {
                if (isFindNameLrc(str.substring(0, str.lastIndexOf(".")), file.getName())) {
                    Log.i(TAG, "readFile: music content lrc：" + file.getPath());
                    this.isReadFile = true;
                    loadingLrc(file, StandardCharsets.UTF_8);
                } else if (isFindNameKrc(str.substring(0, str.lastIndexOf(".")), file.getName())) {
                    Log.i(TAG, "readFile: music content krc：" + file.getPath());
                    this.isReadFile = true;
                    this.mLyric = loadingKrc(file);
                }
                if (this.isReadFile) {
                    return;
                }
            } else if (file.isDirectory()) {
                String absolutePath = file.getAbsolutePath();
                int i2 = 0;
                int i3 = 0;
                while (true) {
                    if (i2 >= absolutePath.length()) {
                        break;
                    }
                    if (absolutePath.charAt(i2) == '/') {
                        if (i3 > 50) {
                            z = false;
                            break;
                        }
                        i3++;
                    }
                    i2++;
                }
                if (z) {
                    readFileLyric(new File(absolutePath).listFiles(), str);
                }
            }
        }
    }

    private boolean isFileName(File file, String str) {
        return file.getName().toLowerCase().equals(str.toLowerCase());
    }
}
