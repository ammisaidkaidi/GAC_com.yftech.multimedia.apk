package com.android.internal.util;

import android.os.RemoteException;
import android.util.ExceptionUtils;
import com.android.internal.util.FunctionalUtils;
import java.util.function.Consumer;

/* loaded from: /home/user/work/dex/classes3.dex */
public class FunctionalUtils {

    @FunctionalInterface
    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface ThrowingSupplier<T> {
        T getOrThrow() throws Exception;
    }

    public static <T> Consumer<T> ignoreRemoteException(RemoteExceptionIgnoringConsumer<T> remoteExceptionIgnoringConsumer) {
        return remoteExceptionIgnoringConsumer;
    }

    public static <T> Consumer<T> uncheckExceptions(ThrowingConsumer<T> throwingConsumer) {
        return throwingConsumer;
    }

    private FunctionalUtils() {
    }

    public static Runnable handleExceptions(final ThrowingRunnable throwingRunnable, final Consumer<Throwable> consumer) {
        return new Runnable() { // from class: com.android.internal.util.-$$Lambda$FunctionalUtils$koCSI8D7Nu5vOJTVTEj0m3leo_U
            @Override // java.lang.Runnable
            public final void run() {
                FunctionalUtils.lambda$handleExceptions$0(FunctionalUtils.ThrowingRunnable.this, consumer);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$handleExceptions$0(ThrowingRunnable throwingRunnable, Consumer consumer) {
        try {
            throwingRunnable.run();
        } catch (Throwable th) {
            consumer.accept(th);
        }
    }

    @FunctionalInterface
    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface ThrowingRunnable extends Runnable {
        void runOrThrow() throws Exception;

        @Override // java.lang.Runnable
        default void run() {
            try {
                runOrThrow();
            } catch (Exception e) {
                throw ExceptionUtils.propagate(e);
            }
        }
    }

    @FunctionalInterface
    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface ThrowingConsumer<T> extends Consumer<T> {
        void acceptOrThrow(T t) throws Exception;

        @Override // java.util.function.Consumer
        default void accept(T t) {
            try {
                acceptOrThrow(t);
            } catch (Exception e) {
                throw ExceptionUtils.propagate(e);
            }
        }
    }

    @FunctionalInterface
    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface RemoteExceptionIgnoringConsumer<T> extends Consumer<T> {
        void acceptOrThrow(T t) throws RemoteException;

        @Override // java.util.function.Consumer
        default void accept(T t) {
            try {
                acceptOrThrow(t);
            } catch (RemoteException unused) {
            }
        }
    }
}
