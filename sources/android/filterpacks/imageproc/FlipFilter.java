package android.filterpacks.imageproc;

import android.app.slice.Slice;
import android.app.slice.SliceItem;
import android.filterfw.core.Filter;
import android.filterfw.core.FilterContext;
import android.filterfw.core.Frame;
import android.filterfw.core.FrameFormat;
import android.filterfw.core.GenerateFieldPort;
import android.filterfw.core.Program;
import android.filterfw.core.ShaderProgram;
import android.filterfw.format.ImageFormat;

/* loaded from: /home/user/work/dex/classes.dex */
public class FlipFilter extends Filter {

    @GenerateFieldPort(hasDefault = true, name = Slice.HINT_HORIZONTAL)
    private boolean mHorizontal;
    private Program mProgram;
    private int mTarget;

    @GenerateFieldPort(hasDefault = true, name = "tile_size")
    private int mTileSize;

    @GenerateFieldPort(hasDefault = true, name = "vertical")
    private boolean mVertical;

    @Override // android.filterfw.core.Filter
    public FrameFormat getOutputFormat(String str, FrameFormat frameFormat) {
        return frameFormat;
    }

    public FlipFilter(String str) {
        super(str);
        this.mVertical = false;
        this.mHorizontal = false;
        this.mTileSize = 640;
        this.mTarget = 0;
    }

    @Override // android.filterfw.core.Filter
    public void setupPorts() {
        addMaskedInputPort(SliceItem.FORMAT_IMAGE, ImageFormat.create(3));
        addOutputBasedOnInput(SliceItem.FORMAT_IMAGE, SliceItem.FORMAT_IMAGE);
    }

    public void initProgram(FilterContext filterContext, int i) {
        if (i == 3) {
            ShaderProgram createIdentity = ShaderProgram.createIdentity(filterContext);
            createIdentity.setMaximumTileSize(this.mTileSize);
            this.mProgram = createIdentity;
            this.mTarget = i;
            updateParameters();
            return;
        }
        throw new RuntimeException("Filter Sharpen does not support frames of target " + i + "!");
    }

    @Override // android.filterfw.core.Filter
    public void fieldPortValueUpdated(String str, FilterContext filterContext) {
        if (this.mProgram != null) {
            updateParameters();
        }
    }

    @Override // android.filterfw.core.Filter
    public void process(FilterContext filterContext) {
        Frame pullInput = pullInput(SliceItem.FORMAT_IMAGE);
        FrameFormat format = pullInput.getFormat();
        if (this.mProgram == null || format.getTarget() != this.mTarget) {
            initProgram(filterContext, format.getTarget());
        }
        Frame newFrame = filterContext.getFrameManager().newFrame(format);
        this.mProgram.process(pullInput, newFrame);
        pushOutput(SliceItem.FORMAT_IMAGE, newFrame);
        newFrame.release();
    }

    private void updateParameters() {
        ((ShaderProgram) this.mProgram).setSourceRect(this.mHorizontal ? 1.0f : 0.0f, this.mVertical ? 1.0f : 0.0f, this.mHorizontal ? -1.0f : 1.0f, this.mVertical ? -1.0f : 1.0f);
    }
}
