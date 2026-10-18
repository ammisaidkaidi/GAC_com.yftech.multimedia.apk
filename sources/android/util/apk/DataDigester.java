package android.util.apk;

import java.nio.ByteBuffer;
import java.security.DigestException;

/* loaded from: /home/user/work/dex/classes2.dex */
interface DataDigester {
    void consume(ByteBuffer byteBuffer) throws DigestException;
}
