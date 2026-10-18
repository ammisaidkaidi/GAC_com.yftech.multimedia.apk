package android.filterpacks.base;

import android.filterfw.core.Filter;
import android.filterfw.core.FilterContext;
import android.filterfw.core.Frame;
import android.filterfw.core.GenerateFieldPort;
import android.filterfw.format.ImageFormat;
import android.media.MediaFormat;

/* loaded from: /home/user/work/dex/classes.dex */
public class GLTextureSource extends Filter {
    private Frame mFrame;

    @GenerateFieldPort(name = MediaFormat.KEY_HEIGHT)
    private int mHeight;

    @GenerateFieldPort(hasDefault = true, name = "repeatFrame")
    private boolean mRepeatFrame;

    @GenerateFieldPort(name = "texId")
    private int mTexId;

    @GenerateFieldPort(hasDefault = true, name = "timestamp")
    private long mTimestamp;

    @GenerateFieldPort(name = MediaFormat.KEY_WIDTH)
    private int mWidth;

    public GLTextureSource(String str) {
        super(str);
        this.mRepeatFrame = false;
        this.mTimestamp = -1L;
    }

    @Override // android.filterfw.core.Filter
    public void setupPorts() {
        addOutputPort("frame", ImageFormat.create(3, 3));
    }

    @Override // android.filterfw.core.Filter
    public void fieldPortValueUpdated(String str, FilterContext filterContext) {
        if (this.mFrame != null) {
            this.mFrame.release();
            this.mFrame = null;
        }
    }

    @Override // android.filterfw.core.Filter
    public void process(FilterContext filterContext) {
        if (this.mFrame == null) {
            this.mFrame = filterContext.getFrameManager().newBoundFrame(ImageFormat.create(this.mWidth, this.mHeight, 3, 3), 100, this.mTexId);
            this.mFrame.setTimestamp(this.mTimestamp);
        }
        pushOutput("frame", this.mFrame);
        if (this.mRepeatFrame) {
            return;
        }
        closeOutputPort("frame");
    }

    @Override // android.filterfw.core.Filter
    public void tearDown(FilterContext filterContext) {
        if (this.mFrame != null) {
            this.mFrame.release();
        }
    }
}
