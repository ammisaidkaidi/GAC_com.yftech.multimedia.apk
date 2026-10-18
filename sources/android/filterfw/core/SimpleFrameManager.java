package android.filterfw.core;

/* loaded from: /home/user/work/dex/classes.dex */
public class SimpleFrameManager extends FrameManager {
    @Override // android.filterfw.core.FrameManager
    public Frame newFrame(FrameFormat frameFormat) {
        return createNewFrame(frameFormat);
    }

    @Override // android.filterfw.core.FrameManager
    public Frame newBoundFrame(FrameFormat frameFormat, int i, long j) {
        if (frameFormat.getTarget() == 3) {
            GLFrame gLFrame = new GLFrame(frameFormat, this, i, j);
            gLFrame.init(getGLEnvironment());
            return gLFrame;
        }
        throw new RuntimeException("Attached frames are not supported for target type: " + FrameFormat.targetToString(frameFormat.getTarget()) + "!");
    }

    private Frame createNewFrame(FrameFormat frameFormat) {
        switch (frameFormat.getTarget()) {
            case 1:
                return new SimpleFrame(frameFormat, this);
            case 2:
                return new NativeFrame(frameFormat, this);
            case 3:
                GLFrame gLFrame = new GLFrame(frameFormat, this);
                gLFrame.init(getGLEnvironment());
                return gLFrame;
            case 4:
                return new VertexFrame(frameFormat, this);
            default:
                throw new RuntimeException("Unsupported frame target type: " + FrameFormat.targetToString(frameFormat.getTarget()) + "!");
        }
    }

    @Override // android.filterfw.core.FrameManager
    public Frame retainFrame(Frame frame) {
        frame.incRefCount();
        return frame;
    }

    @Override // android.filterfw.core.FrameManager
    public Frame releaseFrame(Frame frame) {
        int decRefCount = frame.decRefCount();
        if (decRefCount == 0 && frame.hasNativeAllocation()) {
            frame.releaseNativeAllocation();
            return null;
        }
        if (decRefCount >= 0) {
            return frame;
        }
        throw new RuntimeException("Frame reference count dropped below 0!");
    }
}
