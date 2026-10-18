package bolts;

/* loaded from: /home/user/work/dex/classes3.dex */
public interface Continuation<TTaskResult, TContinuationResult> {
    TContinuationResult then(Task<TTaskResult> task) throws Exception;
}
