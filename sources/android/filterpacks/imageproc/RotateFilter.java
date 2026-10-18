package android.filterpacks.imageproc;

import android.app.slice.SliceItem;
import android.filterfw.core.Filter;
import android.filterfw.core.FilterContext;
import android.filterfw.core.Frame;
import android.filterfw.core.FrameFormat;
import android.filterfw.core.GenerateFieldPort;
import android.filterfw.core.Program;
import android.filterfw.core.ShaderProgram;
import android.filterfw.format.ImageFormat;
import android.filterfw.geometry.Point;
import android.filterfw.geometry.Quad;

/* loaded from: /home/user/work/dex/classes.dex */
public class RotateFilter extends Filter {

    @GenerateFieldPort(name = "angle")
    private int mAngle;
    private int mHeight;
    private int mOutputHeight;
    private int mOutputWidth;
    private Program mProgram;
    private int mTarget;

    @GenerateFieldPort(hasDefault = true, name = "tile_size")
    private int mTileSize;
    private int mWidth;

    public RotateFilter(String str) {
        super(str);
        this.mTileSize = 640;
        this.mWidth = 0;
        this.mHeight = 0;
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
            createIdentity.setClearsOutput(true);
            this.mProgram = createIdentity;
            this.mTarget = i;
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
        if (format.getWidth() != this.mWidth || format.getHeight() != this.mHeight) {
            this.mWidth = format.getWidth();
            this.mHeight = format.getHeight();
            this.mOutputWidth = this.mWidth;
            this.mOutputHeight = this.mHeight;
            updateParameters();
        }
        Frame newFrame = filterContext.getFrameManager().newFrame(ImageFormat.create(this.mOutputWidth, this.mOutputHeight, 3, 3));
        this.mProgram.process(pullInput, newFrame);
        pushOutput(SliceItem.FORMAT_IMAGE, newFrame);
        newFrame.release();
    }

    private void updateParameters() {
        if (this.mAngle % 90 == 0) {
            float f = 0.0f;
            if (this.mAngle % 180 == 0) {
                if (this.mAngle % 360 == 0) {
                    r1 = 1.0f;
                }
            } else {
                r1 = (this.mAngle + 90) % 360 != 0 ? 1.0f : -1.0f;
                this.mOutputWidth = this.mHeight;
                this.mOutputHeight = this.mWidth;
                f = r1;
                r1 = 0.0f;
            }
            float f2 = -r1;
            float f3 = -f;
            float f4 = (r1 + f + 1.0f) * 0.5f;
            ((ShaderProgram) this.mProgram).setTargetRegion(new Quad(new Point((f2 + f + 1.0f) * 0.5f, ((f3 - r1) + 1.0f) * 0.5f), new Point(f4, ((f - r1) + 1.0f) * 0.5f), new Point(((f2 - f) + 1.0f) * 0.5f, (f3 + r1 + 1.0f) * 0.5f), new Point(((r1 - f) + 1.0f) * 0.5f, f4)));
            return;
        }
        throw new RuntimeException("degree has to be multiply of 90.");
    }
}
