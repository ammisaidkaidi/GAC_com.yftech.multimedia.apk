package android.filterpacks.imageproc;

import android.app.slice.SliceItem;
import android.filterfw.core.Filter;
import android.filterfw.core.FilterContext;
import android.filterfw.core.Frame;
import android.filterfw.core.FrameFormat;
import android.filterfw.core.GenerateFieldPort;
import android.filterfw.format.ImageFormat;
import android.graphics.Bitmap;

/* loaded from: /home/user/work/dex/classes.dex */
public class BitmapSource extends Filter {

    @GenerateFieldPort(name = "bitmap")
    private Bitmap mBitmap;
    private Frame mImageFrame;

    @GenerateFieldPort(hasDefault = true, name = "recycleBitmap")
    private boolean mRecycleBitmap;

    @GenerateFieldPort(hasDefault = true, name = "repeatFrame")
    boolean mRepeatFrame;
    private int mTarget;

    @GenerateFieldPort(name = "target")
    String mTargetString;

    public BitmapSource(String str) {
        super(str);
        this.mRecycleBitmap = true;
        this.mRepeatFrame = false;
    }

    @Override // android.filterfw.core.Filter
    public void setupPorts() {
        addOutputPort(SliceItem.FORMAT_IMAGE, ImageFormat.create(3, 0));
    }

    public void loadImage(FilterContext filterContext) {
        this.mTarget = FrameFormat.readTargetString(this.mTargetString);
        this.mImageFrame = filterContext.getFrameManager().newFrame(ImageFormat.create(this.mBitmap.getWidth(), this.mBitmap.getHeight(), 3, this.mTarget));
        this.mImageFrame.setBitmap(this.mBitmap);
        this.mImageFrame.setTimestamp(-1L);
        if (this.mRecycleBitmap) {
            this.mBitmap.recycle();
        }
        this.mBitmap = null;
    }

    @Override // android.filterfw.core.Filter
    public void fieldPortValueUpdated(String str, FilterContext filterContext) {
        if ((str.equals("bitmap") || str.equals("target")) && this.mImageFrame != null) {
            this.mImageFrame.release();
            this.mImageFrame = null;
        }
    }

    @Override // android.filterfw.core.Filter
    public void process(FilterContext filterContext) {
        if (this.mImageFrame == null) {
            loadImage(filterContext);
        }
        pushOutput(SliceItem.FORMAT_IMAGE, this.mImageFrame);
        if (this.mRepeatFrame) {
            return;
        }
        closeOutputPort(SliceItem.FORMAT_IMAGE);
    }

    @Override // android.filterfw.core.Filter
    public void tearDown(FilterContext filterContext) {
        if (this.mImageFrame != null) {
            this.mImageFrame.release();
            this.mImageFrame = null;
        }
    }
}
