package android.filterfw.core;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class InputPort extends FilterPort {
    protected OutputPort mSourcePort;

    public Object getTarget() {
        return null;
    }

    public abstract void transfer(FilterContext filterContext);

    public InputPort(Filter filter, String str) {
        super(filter, str);
    }

    public void setSourcePort(OutputPort outputPort) {
        if (this.mSourcePort != null) {
            throw new RuntimeException(this + " already connected to " + this.mSourcePort + "!");
        }
        this.mSourcePort = outputPort;
    }

    public boolean isConnected() {
        return this.mSourcePort != null;
    }

    @Override // android.filterfw.core.FilterPort
    public void open() {
        super.open();
        if (this.mSourcePort == null || this.mSourcePort.isOpen()) {
            return;
        }
        this.mSourcePort.open();
    }

    @Override // android.filterfw.core.FilterPort
    public void close() {
        if (this.mSourcePort != null && this.mSourcePort.isOpen()) {
            this.mSourcePort.close();
        }
        super.close();
    }

    public OutputPort getSourcePort() {
        return this.mSourcePort;
    }

    public Filter getSourceFilter() {
        if (this.mSourcePort == null) {
            return null;
        }
        return this.mSourcePort.getFilter();
    }

    public FrameFormat getSourceFormat() {
        return this.mSourcePort != null ? this.mSourcePort.getPortFormat() : getPortFormat();
    }

    @Override // android.filterfw.core.FilterPort
    public boolean filterMustClose() {
        return (isOpen() || !isBlocking() || hasFrame()) ? false : true;
    }

    @Override // android.filterfw.core.FilterPort
    public boolean isReady() {
        return hasFrame() || !isBlocking();
    }

    public boolean acceptsFrame() {
        return !hasFrame();
    }
}
