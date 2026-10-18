package android.renderscript;

import java.io.File;

/* loaded from: /home/user/work/dex/classes2.dex */
public class RenderScriptCacheDir {
    static File mCacheDir;

    public static void setupDiskCache(File file) {
        mCacheDir = file;
    }
}
