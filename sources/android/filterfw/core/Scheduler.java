package android.filterfw.core;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class Scheduler {
    private FilterGraph mGraph;

    boolean finished() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void reset();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract Filter scheduleNextNode();

    /* JADX INFO: Access modifiers changed from: package-private */
    public Scheduler(FilterGraph filterGraph) {
        this.mGraph = filterGraph;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FilterGraph getGraph() {
        return this.mGraph;
    }
}
