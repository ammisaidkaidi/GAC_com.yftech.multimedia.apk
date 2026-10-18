package android.mtp;

import java.util.function.BinaryOperator;
import java.util.stream.Stream;

/* compiled from: lambda */
/* renamed from: android.mtp.-$$Lambda$QdR1YPNkK9RX4bISfNvQAOnGxGE, reason: invalid class name */
/* loaded from: /home/user/work/dex/classes.dex */
public final /* synthetic */ class $$Lambda$QdR1YPNkK9RX4bISfNvQAOnGxGE implements BinaryOperator {
    public static final /* synthetic */ $$Lambda$QdR1YPNkK9RX4bISfNvQAOnGxGE INSTANCE = new $$Lambda$QdR1YPNkK9RX4bISfNvQAOnGxGE();

    private /* synthetic */ $$Lambda$QdR1YPNkK9RX4bISfNvQAOnGxGE() {
    }

    @Override // java.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        return Stream.concat((Stream) obj, (Stream) obj2);
    }
}
