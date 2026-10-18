package android.filterfw.core;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class FrameManager {
    private FilterContext mContext;

    public abstract Frame newBoundFrame(FrameFormat frameFormat, int i, long j);

    public abstract Frame newFrame(FrameFormat frameFormat);

    public abstract Frame releaseFrame(Frame frame);

    public abstract Frame retainFrame(Frame frame);

    public void tearDown() {
    }

    public Frame duplicateFrame(Frame frame) {
        Frame newFrame = newFrame(frame.getFormat());
        newFrame.setDataFromFrame(frame);
        return newFrame;
    }

    public Frame duplicateFrameToTarget(Frame frame, int i) {
        MutableFrameFormat mutableCopy = frame.getFormat().mutableCopy();
        mutableCopy.setTarget(i);
        Frame newFrame = newFrame(mutableCopy);
        newFrame.setDataFromFrame(frame);
        return newFrame;
    }

    public FilterContext getContext() {
        return this.mContext;
    }

    public GLEnvironment getGLEnvironment() {
        if (this.mContext != null) {
            return this.mContext.getGLEnvironment();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setContext(FilterContext filterContext) {
        this.mContext = filterContext;
    }
}
