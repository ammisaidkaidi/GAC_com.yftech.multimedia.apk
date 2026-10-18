package com.yftech.car.widget.media.photo.adapter;

import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.viewpager.widget.PagerAdapter;
import com.yftech.car.media.data.entity.MediaFile;
import com.yftech.car.widget.media.photo.photoview.ImageOnTouch;
import com.yftech.car.widget.media.photo.photoview.PhotoView;
import com.yftech.car.widget.media.utils.ImageLoadingManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: /home/user/work/dex/classes3.dex */
public class MyPagerImageAdapter extends PagerAdapter {
    private static final String TAG = "MyPagerImageAdapter";
    private List<Integer> ExceptionId;
    private OnImageTouchListener listener;
    private Drawable mDrawable;
    private final List<MediaFile> mList;
    private final int mResId;
    private View photoView;
    private int mFailedResId = -1;
    private boolean isLoop = true;
    private final View.OnClickListener mOnClickListener = new View.OnClickListener() { // from class: com.yftech.car.widget.media.photo.adapter.MyPagerImageAdapter.2
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyPagerImageAdapter.this.listener.onImageTouch();
        }
    };
    private final ImageOnTouch mImageOnTouch = new ImageOnTouch() { // from class: com.yftech.car.widget.media.photo.adapter.MyPagerImageAdapter.3
        @Override // com.yftech.car.widget.media.photo.photoview.ImageOnTouch
        public void OntouchListener() {
            MyPagerImageAdapter.this.listener.onImageTouch();
        }
    };

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface OnImageTouchListener {
        View getItemView(MediaFile mediaFile);

        void onImageTouch();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public boolean isViewFromObject(View view, Object obj) {
        return view == obj;
    }

    public MyPagerImageAdapter(List<MediaFile> list, int i) {
        this.mList = list;
        this.mResId = i;
        if (this.ExceptionId == null) {
            this.ExceptionId = new ArrayList();
        }
    }

    public void setFailedResId(int i) {
        this.mFailedResId = i;
    }

    public void setLoop(boolean z) {
        this.isLoop = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [android.widget.ImageView, android.view.View, com.yftech.car.widget.media.photo.photoview.PhotoView] */
    @Override // androidx.viewpager.widget.PagerAdapter
    public View instantiateItem(@NonNull ViewGroup viewGroup, int i) {
        View itemView;
        final MediaFile mediaFile = this.mList.get(i % this.mList.size());
        if (this.listener != null && (itemView = this.listener.getItemView(mediaFile)) != null) {
            viewGroup.addView(itemView);
            return itemView;
        }
        final ?? photoView = new PhotoView(viewGroup.getContext());
        ImageLoadingManager.OnLoadingImageListener onLoadingImageListener = new ImageLoadingManager.OnLoadingImageListener() { // from class: com.yftech.car.widget.media.photo.adapter.MyPagerImageAdapter.1
            @Override // com.yftech.car.widget.media.utils.ImageLoadingManager.OnLoadingImageListener
            public void onLoadFinish(long j) {
            }

            @Override // com.yftech.car.widget.media.utils.ImageLoadingManager.OnLoadingImageListener
            public void onLoadStart(long j) {
            }

            @Override // com.yftech.car.widget.media.utils.ImageLoadingManager.OnLoadingImageListener
            public void onLoading(long j, int i2, int i3) {
            }

            @Override // com.yftech.car.widget.media.utils.ImageLoadingManager.OnLoadingImageListener
            public void onError(long j, int i2) {
                if (mediaFile.getId() == j) {
                    photoView.setImageResource(MyPagerImageAdapter.this.mFailedResId != -1 ? MyPagerImageAdapter.this.mFailedResId : MyPagerImageAdapter.this.mResId);
                }
            }
        };
        if (this.mDrawable == null && this.mResId != 0) {
            this.mDrawable = AppCompatResources.getDrawable(viewGroup.getContext(), this.mResId);
        }
        ImageLoadingManager.getInstance().loadImage(mediaFile, photoView, this.mDrawable, photoView, onLoadingImageListener);
        photoView.setTag(mediaFile);
        photoView.mAttacher.setOnTouchListener(this.mImageOnTouch);
        photoView.setZoomTransitionDuration(300);
        viewGroup.addView(photoView);
        return photoView;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getItemPosition(Object obj) {
        return ((Integer) ((View) obj).getTag()).intValue() == 0 ? -2 : -1;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void setPrimaryItem(ViewGroup viewGroup, int i, Object obj) {
        if (this.ExceptionId.size() > 0) {
            Iterator<Integer> it = this.ExceptionId.iterator();
            while (it.hasNext()) {
                if (this.mList.get(i % this.mList.size()).getId() == it.next().intValue()) {
                    Log.i("TAG3", "setPrimaryItem==position====" + this.mList.get(i % this.mList.size()).getFileName());
                    this.ExceptionId.clear();
                    return;
                }
            }
        }
        this.photoView = (View) obj;
    }

    public View getPrimaryItem() {
        return this.photoView;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void destroyItem(ViewGroup viewGroup, int i, @NonNull Object obj) {
        viewGroup.removeView((View) obj);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        if (this.isLoop) {
            return 214748364;
        }
        return this.mList.size();
    }

    public int getCurrentPosition(int i) {
        return i % this.mList.size();
    }

    public int getListSize() {
        return this.mList.size();
    }

    public void setOnImageTouchLisetener(OnImageTouchListener onImageTouchListener) {
        this.listener = onImageTouchListener;
    }
}
