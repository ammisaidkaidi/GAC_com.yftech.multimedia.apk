package com.yftech.car.widget.media.utils;

import android.util.Log;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;

/* loaded from: /home/user/work/dex/classes3.dex */
public class FileUtil {
    private static final long GB = 1073741824;
    private static final int KB = 1024;
    private static final int MB = 1048576;
    private static final String TAG = "FileUtil";
    private static final long TB = 1099511627776L;

    private static double getSizeValues(double d, int i) {
        switch (i) {
            case 1:
                return ((int) (d * 10.0d)) / 10.0d;
            case 2:
                return ((int) (d * 100.0d)) / 100.0d;
            case 3:
                return ((int) (d * 1000.0d)) / 1000.0d;
            case 4:
                return ((int) (d * 10000.0d)) / 10000.0d;
            case 5:
                return ((int) (d * 100000.0d)) / 100000.0d;
            default:
                return d;
        }
    }

    public static String folderFileSize(String str, int i) {
        return fileSize(getFolderFileSize(str), i);
    }

    public static String fileSize(long j, int i) {
        if (j < 1024) {
            return j + "B";
        }
        if (j < 1048576) {
            if (i > 0) {
                return getSizeValues(j / 1024.0d, i) + "KB";
            }
            return (j / 1024) + "KB";
        }
        if (j < GB) {
            if (i > 0) {
                return getSizeValues(j / 1048576.0d, i) + "MB";
            }
            return (j / 1048576) + "MB";
        }
        if (j < TB) {
            if (i > 0) {
                return getSizeValues(j / 1.073741824E9d, i) + "GB";
            }
            return (j / GB) + "GB";
        }
        if (i > 0) {
            return getSizeValues(j / 1.099511627776E12d, i) + "TB";
        }
        return (j / TB) + "TB";
    }

    public static long getFolderFileSize(String str) {
        if (str == null) {
            return 0L;
        }
        File file = new File(str);
        if (!file.exists()) {
            return 0L;
        }
        if (file.isDirectory()) {
            return directoryFirst(file, file.length());
        }
        return file.length();
    }

    private static long directoryFirst(File file, long j) {
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (File file2 : listFiles) {
                j += file2.length();
                if (file2.isDirectory()) {
                    directoryFirst(file2, j);
                }
            }
        }
        return j;
    }

    private static String execRootCmd(String str) {
        String str2 = "";
        try {
            InputStream inputStream = Runtime.getRuntime().exec(str).getInputStream();
            InputStreamReader inputStreamReader = new InputStreamReader(inputStream, StandardCharsets.UTF_8);
            BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
            while (bufferedReader.read() > 0) {
                str2 = bufferedReader.readLine();
            }
            inputStream.close();
            inputStreamReader.close();
            bufferedReader.close();
        } catch (IOException e) {
            Log.d(TAG, "exception " + e.toString());
            e.printStackTrace();
        }
        return str2;
    }
}
