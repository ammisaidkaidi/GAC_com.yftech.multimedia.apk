package android.filterfw.core;

/* loaded from: /home/user/work/dex/classes.dex */
public class OutputPort extends FilterPort {
    protected InputPort mBasePort;
    protected InputPort mTargetPort;

    public OutputPort(Filter filter, String str) {
        super(filter, str);
    }

    public void connectTo(InputPort inputPort) {
        if (this.mTargetPort != null) {
            throw new RuntimeException(this + " already connected to " + this.mTargetPort + "!");
        }
        this.mTargetPort = inputPort;
        this.mTargetPort.setSourcePort(this);
    }

    public boolean isConnected() {
        return this.mTargetPort != null;
    }

    @Override // android.filterfw.core.FilterPort
    public void open() {
        super.open();
        if (this.mTargetPort == null || this.mTargetPort.isOpen()) {
            return;
        }
        this.mTargetPort.open();
    }

    @Override // android.filterfw.core.FilterPort
    public void close() {
        super.close();
        if (this.mTargetPort == null || !this.mTargetPort.isOpen()) {
            return;
        }
        this.mTargetPort.close();
    }

    public InputPort getTargetPort() {
        return this.mTargetPort;
    }

    public Filter getTargetFilter() {
        if (this.mTargetPort == null) {
            return null;
        }
        return this.mTargetPort.getFilter();
    }

    public void setBasePort(InputPort inputPort) {
        this.mBasePort = inputPort;
    }

    public InputPort getBasePort() {
        return this.mBasePort;
    }

    @Override // android.filterfw.core.FilterPort
    public boolean filterMustClose() {
        return !isOpen() && isBlocking();
    }

    @Override // android.filterfw.core.FilterPort
    public boolean isReady() {
        return (isOpen() && this.mTargetPort.acceptsFrame()) || !isBlocking();
    }

    @Override // android.filterfw.core.FilterPort
    public void clear() {
        if (this.mTargetPort != null) {
            this.mTargetPort.clear();
        }
    }

    @Override // android.filterfw.core.FilterPort
    public void pushFrame(Frame frame) {
        if (this.mTargetPort == null) {
            throw new RuntimeException("Attempting to push frame on unconnected port: " + this + "!");
        }
        this.mTargetPort.pushFrame(frame);
    }

    @Override // android.filterfw.core.FilterPort
    public void setFrame(Frame frame) {
        assertPortIsOpen();
        if (this.mTargetPort == null) {
            throw new RuntimeException("Attempting to set frame on unconnected port: " + this + "!");
        }
        this.mTargetPort.setFrame(frame);
    }

    @Override // android.filterfw.core.FilterPort
    public Frame pullFrame() {
        throw new RuntimeException("Cannot pull frame on " + this + "!");
    }

    @Override // android.filterfw.core.FilterPort
    public boolean hasFrame() {
        if (this.mTargetPort == null) {
            return false;
        }
        return this.mTargetPort.hasFrame();
    }

    @Override // android.filterfw.core.FilterPort
    public String toString() {
        return "output " + super.toString();
    }
}
