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
public class StraightenFilter extends Filter {
    private static final float DEGREE_TO_RADIAN = 0.017453292f;

    @GenerateFieldPort(hasDefault = true, name = "angle")
    private float mAngle;
    private int mHeight;

    @GenerateFieldPort(hasDefault = true, name = "maxAngle")
    private float mMaxAngle;
    private Program mProgram;
    private int mTarget;

    @GenerateFieldPort(hasDefault = true, name = "tile_size")
    private int mTileSize;
    private int mWidth;

    public StraightenFilter(String str) {
        super(str);
        this.mAngle = 0.0f;
        this.mMaxAngle = 45.0f;
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
            updateParameters();
        }
        Frame newFrame = filterContext.getFrameManager().newFrame(format);
        this.mProgram.process(pullInput, newFrame);
        pushOutput(SliceItem.FORMAT_IMAGE, newFrame);
        newFrame.release();
    }

    private void updateParameters() {
        float cos = (float) Math.cos(this.mAngle * DEGREE_TO_RADIAN);
        float sin = (float) Math.sin(this.mAngle * DEGREE_TO_RADIAN);
        if (this.mMaxAngle <= 0.0f) {
            throw new RuntimeException("Max angle is out of range (0-180).");
        }
        this.mMaxAngle = this.mMaxAngle <= 90.0f ? this.mMaxAngle : 90.0f;
        float f = -cos;
        float f2 = -sin;
        Point point = new Point((this.mWidth * f) + (this.mHeight * sin), (this.mWidth * f2) - (this.mHeight * cos));
        Point point2 = new Point((this.mWidth * cos) + (this.mHeight * sin), (this.mWidth * sin) - (this.mHeight * cos));
        Point point3 = new Point((f * this.mWidth) - (this.mHeight * sin), (f2 * this.mWidth) + (this.mHeight * cos));
        Point point4 = new Point((this.mWidth * cos) - (this.mHeight * sin), (sin * this.mWidth) + (cos * this.mHeight));
        float min = Math.min(this.mWidth / Math.max(Math.abs(point.x), Math.abs(point2.x)), this.mHeight / Math.max(Math.abs(point.y), Math.abs(point2.y))) * 0.5f;
        point.set(((point.x * min) / this.mWidth) + 0.5f, ((point.y * min) / this.mHeight) + 0.5f);
        point2.set(((point2.x * min) / this.mWidth) + 0.5f, ((point2.y * min) / this.mHeight) + 0.5f);
        point3.set(((point3.x * min) / this.mWidth) + 0.5f, ((point3.y * min) / this.mHeight) + 0.5f);
        point4.set(((point4.x * min) / this.mWidth) + 0.5f, ((min * point4.y) / this.mHeight) + 0.5f);
        ((ShaderProgram) this.mProgram).setSourceRegion(new Quad(point, point2, point3, point4));
    }
}
