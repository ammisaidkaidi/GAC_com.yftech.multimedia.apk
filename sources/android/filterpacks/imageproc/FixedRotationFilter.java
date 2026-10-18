package android.filterpacks.imageproc;

import android.app.slice.SliceItem;
import android.filterfw.core.Filter;
import android.filterfw.core.FilterContext;
import android.filterfw.core.Frame;
import android.filterfw.core.FrameFormat;
import android.filterfw.core.GenerateFieldPort;
import android.filterfw.core.MutableFrameFormat;
import android.filterfw.core.ShaderProgram;
import android.filterfw.format.ImageFormat;
import android.filterfw.geometry.Point;
import android.filterfw.geometry.Quad;

/* loaded from: /home/user/work/dex/classes.dex */
public class FixedRotationFilter extends Filter {
    private ShaderProgram mProgram;

    @GenerateFieldPort(hasDefault = true, name = "rotation")
    private int mRotation;

    @Override // android.filterfw.core.Filter
    public FrameFormat getOutputFormat(String str, FrameFormat frameFormat) {
        return frameFormat;
    }

    public FixedRotationFilter(String str) {
        super(str);
        this.mRotation = 0;
        this.mProgram = null;
    }

    @Override // android.filterfw.core.Filter
    public void setupPorts() {
        addMaskedInputPort(SliceItem.FORMAT_IMAGE, ImageFormat.create(3, 3));
        addOutputBasedOnInput(SliceItem.FORMAT_IMAGE, SliceItem.FORMAT_IMAGE);
    }

    @Override // android.filterfw.core.Filter
    public void process(FilterContext filterContext) {
        Quad quad;
        Frame pullInput = pullInput(SliceItem.FORMAT_IMAGE);
        if (this.mRotation == 0) {
            pushOutput(SliceItem.FORMAT_IMAGE, pullInput);
            return;
        }
        FrameFormat format = pullInput.getFormat();
        if (this.mProgram == null) {
            this.mProgram = ShaderProgram.createIdentity(filterContext);
        }
        MutableFrameFormat mutableCopy = format.mutableCopy();
        int width = format.getWidth();
        int height = format.getHeight();
        Point point = new Point(0.0f, 0.0f);
        Point point2 = new Point(1.0f, 0.0f);
        Point point3 = new Point(0.0f, 1.0f);
        Point point4 = new Point(1.0f, 1.0f);
        switch (Math.round(this.mRotation / 90.0f) % 4) {
            case 1:
                quad = new Quad(point3, point, point4, point2);
                mutableCopy.setDimensions(height, width);
                break;
            case 2:
                quad = new Quad(point4, point3, point2, point);
                break;
            case 3:
                quad = new Quad(point2, point4, point, point3);
                mutableCopy.setDimensions(height, width);
                break;
            default:
                quad = new Quad(point, point2, point3, point4);
                break;
        }
        Frame newFrame = filterContext.getFrameManager().newFrame(mutableCopy);
        this.mProgram.setSourceRegion(quad);
        this.mProgram.process(pullInput, newFrame);
        pushOutput(SliceItem.FORMAT_IMAGE, newFrame);
        newFrame.release();
    }
}
