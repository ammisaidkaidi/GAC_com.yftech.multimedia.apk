package android.filterfw;

import android.filterfw.core.CachedFrameManager;
import android.filterfw.core.FilterContext;
import android.filterfw.core.FrameManager;
import android.filterfw.core.GLEnvironment;

/* loaded from: /home/user/work/dex/classes.dex */
public class MffEnvironment {
    private FilterContext mContext;

    /* JADX INFO: Access modifiers changed from: protected */
    public MffEnvironment(FrameManager frameManager) {
        frameManager = frameManager == null ? new CachedFrameManager() : frameManager;
        this.mContext = new FilterContext();
        this.mContext.setFrameManager(frameManager);
    }

    public FilterContext getContext() {
        return this.mContext;
    }

    public void setGLEnvironment(GLEnvironment gLEnvironment) {
        this.mContext.initGLEnvironment(gLEnvironment);
    }

    public void createGLEnvironment() {
        GLEnvironment gLEnvironment = new GLEnvironment();
        gLEnvironment.initWithNewContext();
        setGLEnvironment(gLEnvironment);
    }

    public void activateGLEnvironment() {
        if (this.mContext.getGLEnvironment() != null) {
            this.mContext.getGLEnvironment().activate();
            return;
        }
        throw new NullPointerException("No GLEnvironment in place to activate!");
    }

    public void deactivateGLEnvironment() {
        if (this.mContext.getGLEnvironment() != null) {
            this.mContext.getGLEnvironment().deactivate();
            return;
        }
        throw new NullPointerException("No GLEnvironment in place to deactivate!");
    }
}
