package android.os;

import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: /home/user/work/dex/classes2.dex */
public class SynchronousResultReceiver extends ResultReceiver {
    private final CompletableFuture<Result> mFuture;
    private final String mName;

    /* loaded from: /home/user/work/dex/classes2.dex */
    public static class Result {
        public Bundle bundle;
        public int resultCode;

        public Result(int i, Bundle bundle) {
            this.resultCode = i;
            this.bundle = bundle;
        }
    }

    public SynchronousResultReceiver() {
        super((Handler) null);
        this.mFuture = new CompletableFuture<>();
        this.mName = null;
    }

    public SynchronousResultReceiver(String str) {
        super((Handler) null);
        this.mFuture = new CompletableFuture<>();
        this.mName = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.ResultReceiver
    public final void onReceiveResult(int i, Bundle bundle) {
        super.onReceiveResult(i, bundle);
        this.mFuture.complete(new Result(i, bundle));
    }

    public String getName() {
        return this.mName;
    }

    public Result awaitResult(long j) throws TimeoutException {
        long currentTimeMillis = System.currentTimeMillis() + j;
        while (j >= 0) {
            try {
                return this.mFuture.get(j, TimeUnit.MILLISECONDS);
            } catch (InterruptedException unused) {
                j -= currentTimeMillis - System.currentTimeMillis();
            } catch (ExecutionException e) {
                throw new AssertionError("Error receiving response", e);
            }
        }
        throw new TimeoutException();
    }
}
