package com.facebook.imagepipeline.nativecode;

import android.content.Context;
import com.facebook.common.internal.DoNotStrip;
import com.facebook.infer.annotation.Nullsafe;
import com.facebook.soloader.SoLoader;
import java.io.IOException;

@DoNotStrip
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: /home/user/work/dex/classes3.dex */
public class NativeCodeInitializer {
    @DoNotStrip
    public static void init(Context context) throws IOException {
        SoLoader.init(context, 0);
    }
}
