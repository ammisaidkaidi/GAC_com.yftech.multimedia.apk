package android.filterfw.core;

/* loaded from: /home/user/work/dex/classes.dex */
public class SimpleScheduler extends Scheduler {
    @Override // android.filterfw.core.Scheduler
    public void reset() {
    }

    public SimpleScheduler(FilterGraph filterGraph) {
        super(filterGraph);
    }

    @Override // android.filterfw.core.Scheduler
    public Filter scheduleNextNode() {
        for (Filter filter : getGraph().getFilters()) {
            if (filter.canProcess()) {
                return filter;
            }
        }
        return null;
    }
}
