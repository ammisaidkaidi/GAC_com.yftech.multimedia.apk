package android.filterfw.core;

import java.util.Iterator;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;

/* loaded from: /home/user/work/dex/classes.dex */
public class CachedFrameManager extends SimpleFrameManager {
    private int mStorageCapacity = 25165824;
    private int mStorageSize = 0;
    private int mTimeStamp = 0;
    private SortedMap<Integer, Frame> mAvailableFrames = new TreeMap();

    @Override // android.filterfw.core.SimpleFrameManager, android.filterfw.core.FrameManager
    public Frame newFrame(FrameFormat frameFormat) {
        Frame findAvailableFrame = findAvailableFrame(frameFormat, 0, 0L);
        if (findAvailableFrame == null) {
            findAvailableFrame = super.newFrame(frameFormat);
        }
        findAvailableFrame.setTimestamp(-2L);
        return findAvailableFrame;
    }

    @Override // android.filterfw.core.SimpleFrameManager, android.filterfw.core.FrameManager
    public Frame newBoundFrame(FrameFormat frameFormat, int i, long j) {
        Frame findAvailableFrame = findAvailableFrame(frameFormat, i, j);
        if (findAvailableFrame == null) {
            findAvailableFrame = super.newBoundFrame(frameFormat, i, j);
        }
        findAvailableFrame.setTimestamp(-2L);
        return findAvailableFrame;
    }

    @Override // android.filterfw.core.SimpleFrameManager, android.filterfw.core.FrameManager
    public Frame retainFrame(Frame frame) {
        return super.retainFrame(frame);
    }

    @Override // android.filterfw.core.SimpleFrameManager, android.filterfw.core.FrameManager
    public Frame releaseFrame(Frame frame) {
        if (frame.isReusable()) {
            int decRefCount = frame.decRefCount();
            if (decRefCount == 0 && frame.hasNativeAllocation()) {
                if (storeFrame(frame)) {
                    return null;
                }
                frame.releaseNativeAllocation();
                return null;
            }
            if (decRefCount < 0) {
                throw new RuntimeException("Frame reference count dropped below 0!");
            }
        } else {
            super.releaseFrame(frame);
        }
        return frame;
    }

    public void clearCache() {
        Iterator<Frame> it = this.mAvailableFrames.values().iterator();
        while (it.hasNext()) {
            it.next().releaseNativeAllocation();
        }
        this.mAvailableFrames.clear();
    }

    @Override // android.filterfw.core.FrameManager
    public void tearDown() {
        clearCache();
    }

    private boolean storeFrame(Frame frame) {
        synchronized (this.mAvailableFrames) {
            int size = frame.getFormat().getSize();
            if (size > this.mStorageCapacity) {
                return false;
            }
            int i = this.mStorageSize + size;
            while (i > this.mStorageCapacity) {
                dropOldestFrame();
                i = this.mStorageSize + size;
            }
            frame.onFrameStore();
            this.mStorageSize = i;
            this.mAvailableFrames.put(Integer.valueOf(this.mTimeStamp), frame);
            this.mTimeStamp++;
            return true;
        }
    }

    private void dropOldestFrame() {
        int intValue = this.mAvailableFrames.firstKey().intValue();
        Frame frame = this.mAvailableFrames.get(Integer.valueOf(intValue));
        this.mStorageSize -= frame.getFormat().getSize();
        frame.releaseNativeAllocation();
        this.mAvailableFrames.remove(Integer.valueOf(intValue));
    }

    private Frame findAvailableFrame(FrameFormat frameFormat, int i, long j) {
        synchronized (this.mAvailableFrames) {
            for (Map.Entry<Integer, Frame> entry : this.mAvailableFrames.entrySet()) {
                Frame value = entry.getValue();
                if (value.getFormat().isReplaceableBy(frameFormat) && i == value.getBindingType() && (i == 0 || j == value.getBindingId())) {
                    super.retainFrame(value);
                    this.mAvailableFrames.remove(entry.getKey());
                    value.onFrameFetch();
                    value.reset(frameFormat);
                    this.mStorageSize -= frameFormat.getSize();
                    return value;
                }
            }
            return null;
        }
    }
}
