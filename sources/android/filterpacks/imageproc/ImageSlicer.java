package android.filterpacks.imageproc;

import android.app.slice.SliceItem;
import android.filterfw.core.Filter;
import android.filterfw.core.FilterContext;
import android.filterfw.core.Frame;
import android.filterfw.core.FrameFormat;
import android.filterfw.core.GenerateFieldPort;
import android.filterfw.core.MutableFrameFormat;
import android.filterfw.core.Program;
import android.filterfw.core.ShaderProgram;
import android.filterfw.format.ImageFormat;

/* loaded from: /home/user/work/dex/classes.dex */
public class ImageSlicer extends Filter {
    private int mInputHeight;
    private int mInputWidth;
    private Frame mOriginalFrame;
    private int mOutputHeight;
    private int mOutputWidth;

    @GenerateFieldPort(name = "padSize")
    private int mPadSize;
    private Program mProgram;
    private int mSliceHeight;
    private int mSliceIndex;
    private int mSliceWidth;

    @GenerateFieldPort(name = "xSlices")
    private int mXSlices;

    @GenerateFieldPort(name = "ySlices")
    private int mYSlices;

    @Override // android.filterfw.core.Filter
    public FrameFormat getOutputFormat(String str, FrameFormat frameFormat) {
        return frameFormat;
    }

    public ImageSlicer(String str) {
        super(str);
        this.mSliceIndex = 0;
    }

    @Override // android.filterfw.core.Filter
    public void setupPorts() {
        addMaskedInputPort(SliceItem.FORMAT_IMAGE, ImageFormat.create(3, 3));
        addOutputBasedOnInput(SliceItem.FORMAT_IMAGE, SliceItem.FORMAT_IMAGE);
    }

    private void calcOutputFormatForInput(Frame frame) {
        this.mInputWidth = frame.getFormat().getWidth();
        this.mInputHeight = frame.getFormat().getHeight();
        this.mSliceWidth = ((this.mInputWidth + this.mXSlices) - 1) / this.mXSlices;
        this.mSliceHeight = ((this.mInputHeight + this.mYSlices) - 1) / this.mYSlices;
        this.mOutputWidth = this.mSliceWidth + (this.mPadSize * 2);
        this.mOutputHeight = this.mSliceHeight + (this.mPadSize * 2);
    }

    @Override // android.filterfw.core.Filter
    public void process(FilterContext filterContext) {
        if (this.mSliceIndex == 0) {
            this.mOriginalFrame = pullInput(SliceItem.FORMAT_IMAGE);
            calcOutputFormatForInput(this.mOriginalFrame);
        }
        MutableFrameFormat mutableCopy = this.mOriginalFrame.getFormat().mutableCopy();
        mutableCopy.setDimensions(this.mOutputWidth, this.mOutputHeight);
        Frame newFrame = filterContext.getFrameManager().newFrame(mutableCopy);
        if (this.mProgram == null) {
            this.mProgram = ShaderProgram.createIdentity(filterContext);
        }
        int i = this.mSliceIndex % this.mXSlices;
        int i2 = this.mSliceIndex / this.mXSlices;
        ((ShaderProgram) this.mProgram).setSourceRect(((i * this.mSliceWidth) - this.mPadSize) / this.mInputWidth, ((i2 * this.mSliceHeight) - this.mPadSize) / this.mInputHeight, this.mOutputWidth / this.mInputWidth, this.mOutputHeight / this.mInputHeight);
        this.mProgram.process(this.mOriginalFrame, newFrame);
        this.mSliceIndex++;
        if (this.mSliceIndex == this.mXSlices * this.mYSlices) {
            this.mSliceIndex = 0;
            this.mOriginalFrame.release();
            setWaitsOnInputPort(SliceItem.FORMAT_IMAGE, true);
        } else {
            this.mOriginalFrame.retain();
            setWaitsOnInputPort(SliceItem.FORMAT_IMAGE, false);
        }
        pushOutput(SliceItem.FORMAT_IMAGE, newFrame);
        newFrame.release();
    }
}
