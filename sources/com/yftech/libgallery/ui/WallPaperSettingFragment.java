package com.yftech.libgallery.ui;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapRegionDecoder;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.media.ExifInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.provider.Settings;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentActivity;
import com.facebook.common.util.UriUtil;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.backends.pipeline.PipelineDraweeController;
import com.facebook.drawee.controller.BaseControllerListener;
import com.facebook.drawee.controller.ControllerListener;
import com.facebook.imagepipeline.image.ImageInfo;
import com.facebook.imagepipeline.request.ImageRequestBuilder;
import com.media.common.util.BaseApplication;
import com.media.common.util.LogUtil;
import com.media.common.util.SystemUtil;
import com.media.common.util.ToastUtils;
import com.yftech.libgallery.R;
import com.yftech.libgallery.presenter.WallPaperSettingPresenter;
import com.yftech.libgallery.view.ClipImageView;
import com.yftech.libgallery.view.IWallPaperSettingFragmentView;
import com.yftech.libmvpmodule.mvp.BaseMvpFragment;
import com.yftech.libmvpmodule.utils.Constants;
import com.yftech.vehicle.internal.adapter.ICarDrive;
import com.yftech.vehicle.internal.adapter.ICarSettings;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Objects;

/* loaded from: /home/user/work/dex/classes4.dex */
public class WallPaperSettingFragment extends BaseMvpFragment<WallPaperSettingPresenter> implements IWallPaperSettingFragmentView, View.OnClickListener {
    private static final String ARG_PARAM1 = "imagePath";
    private String imagePath;
    private ClipImageView mClipImageView;
    private int mDegree;
    private String mOutput;
    private int mSampleSize;
    private int mSourceHeight;
    private int mSourceWidth;
    private TextView mTvConfirm;
    private ImageView wallCardBg;
    private int mMaxWidth = Constants.displayWidth;
    private final int RC_RESULT_SUCCESSFUL = 10;
    private final int RC_RESULT_FAILURE = 20;
    private Handler mHandler = new Handler(Looper.getMainLooper()) { // from class: com.yftech.libgallery.ui.WallPaperSettingFragment.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 10) {
                ToastUtils.showNormalMessage(WallPaperSettingFragment.this.getString(R.string.create_wall_success), 1);
                LogUtil.e("send wallpaper data, data is" + WallPaperSettingFragment.this.mOutput + "imagePath:" + WallPaperSettingFragment.this.imagePath);
                Settings.Global.putString(WallPaperSettingFragment.this.getContext().getContentResolver(), "wallpaper_original_path", WallPaperSettingFragment.this.imagePath);
                Settings.Global.putString(WallPaperSettingFragment.this.getContext().getContentResolver(), "wallpaper_md5", SystemUtil.getFileMD5(WallPaperSettingFragment.this.imagePath));
                Intent intent = new Intent("com.yftech.multimedia.action.wallpaper.setting");
                intent.putExtra("com.yftech.multimedia.data.wallpaper.setting", WallPaperSettingFragment.this.mOutput);
                ((Context) Objects.requireNonNull(WallPaperSettingFragment.this.getContext())).sendBroadcast(intent);
                if (WallPaperSettingFragment.this.getActivity() != null) {
                    WallPaperSettingFragment.this.getActivity().onBackPressed();
                    return;
                }
                return;
            }
            if (message.what == 20) {
                ToastUtils.showFailMessage(WallPaperSettingFragment.this.getString(R.string.create_wall_fail), 1);
            }
        }
    };
    private final ControllerListener<ImageInfo> mControllerListener = new BaseControllerListener<ImageInfo>() { // from class: com.yftech.libgallery.ui.WallPaperSettingFragment.2
        public void onFailure(String str, Throwable th) {
            WallPaperSettingFragment.this.mTvConfirm.setEnabled(false);
        }

        public void onFinalImageSet(String str, @Nullable ImageInfo imageInfo, @Nullable Animatable animatable) {
            super.onFinalImageSet(str, imageInfo, animatable);
            if (imageInfo != null) {
                WallPaperSettingFragment.this.mTvConfirm.setEnabled(true);
            }
        }

        public void onSubmit(String str, Object obj) {
            super.onSubmit(str, obj);
            WallPaperSettingFragment.this.mTvConfirm.setEnabled(false);
        }
    };

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    public WallPaperSettingPresenter createPresenter() {
        return null;
    }

    public static WallPaperSettingFragment newInstance(String str) {
        WallPaperSettingFragment wallPaperSettingFragment = new WallPaperSettingFragment();
        Bundle bundle = new Bundle();
        bundle.putString(ARG_PARAM1, str);
        wallPaperSettingFragment.setArguments(bundle);
        return wallPaperSettingFragment;
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.imagePath = getArguments().getString(ARG_PARAM1);
        }
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    protected View onBindView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_wall_paper_setting, viewGroup, false);
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    protected void initView(View view) {
        this.mClipImageView = (ClipImageView) view.findViewById(R.id.clip_image_view);
        this.mTvConfirm = (TextView) view.findViewById(R.id.btn_confirm);
        this.mTvConfirm.setOnClickListener(this);
        view.findViewById(R.id.btn_cancel).setOnClickListener(this);
        this.wallCardBg = (ImageView) view.findViewById(R.id.wall_card_bg);
        this.mClipImageView.setController((PipelineDraweeController) Fresco.newDraweeControllerBuilder().setImageRequest(ImageRequestBuilder.newBuilderWithSource(UriUtil.getUriForFile(new File(this.imagePath))).build()).setAutoPlayAnimations(true).setControllerListener(this.mControllerListener).build());
        this.wallCardBg.setVisibility(0);
        this.mOutput = SystemUtil.getWallPaperOutputPath(getContext());
    }

    private void setImageAndClipParams() {
        this.mClipImageView.post(new Runnable() { // from class: com.yftech.libgallery.ui.WallPaperSettingFragment.3
            @Override // java.lang.Runnable
            public void run() {
                WallPaperSettingFragment.this.mOutput = SystemUtil.getWallPaperOutputPath(WallPaperSettingFragment.this.getContext());
                WallPaperSettingFragment.this.mClipImageView.setMaxOutputWidth(WallPaperSettingFragment.this.mMaxWidth);
                WallPaperSettingFragment.this.mDegree = WallPaperSettingFragment.readPictureDegree(WallPaperSettingFragment.this.imagePath);
                boolean z = WallPaperSettingFragment.this.mDegree == 90 || WallPaperSettingFragment.this.mDegree == 270;
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                BitmapFactory.decodeFile(WallPaperSettingFragment.this.imagePath, options);
                WallPaperSettingFragment.this.mSourceWidth = options.outWidth;
                WallPaperSettingFragment.this.mSourceHeight = options.outHeight;
                WallPaperSettingFragment.this.mSampleSize = WallPaperSettingFragment.findBestSample(z ? options.outHeight : options.outWidth, WallPaperSettingFragment.this.mClipImageView.getClipBorder().width());
                options.inJustDecodeBounds = false;
                options.inSampleSize = WallPaperSettingFragment.this.mSampleSize;
                options.inPreferredConfig = Bitmap.Config.RGB_565;
                Bitmap decodeFile = BitmapFactory.decodeFile(WallPaperSettingFragment.this.imagePath, options);
                if (WallPaperSettingFragment.this.mDegree != 0) {
                    Matrix matrix = new Matrix();
                    matrix.postRotate(WallPaperSettingFragment.this.mDegree);
                    Bitmap createBitmap = Bitmap.createBitmap(decodeFile, 0, 0, decodeFile.getWidth(), decodeFile.getHeight(), matrix, false);
                    if (createBitmap != decodeFile && !decodeFile.isRecycled()) {
                        decodeFile.recycle();
                    }
                    decodeFile = createBitmap;
                }
                WallPaperSettingFragment.this.mClipImageView.setImageBitmap(decodeFile);
                WallPaperSettingFragment.this.wallCardBg.setVisibility(0);
            }
        });
    }

    public static int readPictureDegree(String str) {
        int i;
        try {
            int attributeInt = new ExifInterface(str).getAttributeInt("Orientation", 1);
            if (attributeInt == 3) {
                i = ICarDrive.EPS_STYLE;
            } else if (attributeInt == 6) {
                i = 90;
            } else {
                if (attributeInt != 8) {
                    return 0;
                }
                i = ICarSettings.INTELLIGENT_AVOID_SETTING;
            }
            return i;
        } catch (IOException e) {
            e.printStackTrace();
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int findBestSample(int i, int i2) {
        int i3 = 1;
        for (int i4 = i / 2; i4 > i2; i4 /= 2) {
            i3 *= 2;
        }
        return i3;
    }

    private void clipImage() {
        ToastUtils.showNormalMessage(getString(R.string.generating_wallpaper), 1);
        FragmentActivity activity = getActivity();
        if (activity != null) {
            BaseApplication application = activity.getApplication();
            if (application instanceof BaseApplication) {
                application.getFixedThreadPool().execute(new Runnable() { // from class: com.yftech.libgallery.ui.WallPaperSettingFragment.4
                    /* JADX WARN: Removed duplicated region for block: B:23:0x005c A[EXC_TOP_SPLITTER, SYNTHETIC] */
                    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0055 -> B:10:0x0058). Please report as a decompilation issue!!! */
                    @Override // java.lang.Runnable
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                    */
                    public void run() {
                        FileOutputStream fileOutputStream;
                        FileNotFoundException e;
                        try {
                            try {
                                fileOutputStream = new FileOutputStream(WallPaperSettingFragment.this.mOutput);
                                try {
                                    try {
                                        Bitmap createClippedBitmap = WallPaperSettingFragment.this.createClippedBitmap();
                                        createClippedBitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
                                        WallPaperSettingFragment.this.mHandler.sendEmptyMessage(10);
                                        if (!createClippedBitmap.isRecycled()) {
                                            createClippedBitmap.recycle();
                                        }
                                        fileOutputStream.flush();
                                        fileOutputStream.close();
                                    } catch (FileNotFoundException e2) {
                                        e = e2;
                                        e.printStackTrace();
                                        WallPaperSettingFragment.this.mHandler.sendEmptyMessage(20);
                                        if (fileOutputStream != null) {
                                            fileOutputStream.flush();
                                            fileOutputStream.close();
                                        }
                                    }
                                } catch (Throwable th) {
                                    th = th;
                                    if (fileOutputStream != null) {
                                        try {
                                            fileOutputStream.flush();
                                            fileOutputStream.close();
                                        } catch (IOException e3) {
                                            e3.printStackTrace();
                                        }
                                    }
                                    throw th;
                                }
                            } catch (IOException e4) {
                                e4.printStackTrace();
                            }
                        } catch (FileNotFoundException e5) {
                            fileOutputStream = null;
                            e = e5;
                        } catch (Throwable th2) {
                            th = th2;
                            fileOutputStream = null;
                            if (fileOutputStream != null) {
                            }
                            throw th;
                        }
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Bitmap createClippedBitmap() {
        BitmapRegionDecoder bitmapRegionDecoder;
        if (this.mSampleSize <= 1) {
            return this.mClipImageView.snapShotForViewGroup();
        }
        float[] clipMatrixValues = this.mClipImageView.getClipMatrixValues();
        float f = clipMatrixValues[0];
        float f2 = clipMatrixValues[2];
        float f3 = clipMatrixValues[5];
        Rect clipBorder = this.mClipImageView.getClipBorder();
        float f4 = (((-f2) + clipBorder.left) / f) * this.mSampleSize;
        float f5 = (((-f3) + clipBorder.top) / f) * this.mSampleSize;
        float width = (clipBorder.width() / f) * this.mSampleSize;
        Rect realRect = getRealRect(new RectF(f4, f5, f4 + width, ((clipBorder.height() / f) * this.mSampleSize) + f5));
        BitmapFactory.Options options = new BitmapFactory.Options();
        Matrix matrix = new Matrix();
        matrix.setRotate(this.mDegree);
        if (this.mMaxWidth > 0 && width > this.mMaxWidth) {
            options.inSampleSize = findBestSample((int) width, this.mMaxWidth);
            float f6 = this.mMaxWidth / (width / options.inSampleSize);
            matrix.postScale(f6, f6);
        }
        BitmapRegionDecoder bitmapRegionDecoder2 = null;
        try {
            try {
                bitmapRegionDecoder = BitmapRegionDecoder.newInstance(this.imagePath, false);
            } catch (Throwable th) {
                th = th;
                bitmapRegionDecoder = null;
            }
        } catch (Exception unused) {
        }
        try {
            Bitmap decodeRegion = bitmapRegionDecoder.decodeRegion(realRect, options);
            recycleImageViewBitmap();
            Bitmap createBitmap = Bitmap.createBitmap(decodeRegion, 0, 0, decodeRegion.getWidth(), decodeRegion.getHeight(), matrix, false);
            if (bitmapRegionDecoder != null && !bitmapRegionDecoder.isRecycled()) {
                bitmapRegionDecoder.recycle();
            }
            return createBitmap;
        } catch (Exception unused2) {
            bitmapRegionDecoder2 = bitmapRegionDecoder;
            Bitmap snapShotForViewGroup = this.mClipImageView.snapShotForViewGroup();
            if (bitmapRegionDecoder2 != null && !bitmapRegionDecoder2.isRecycled()) {
                bitmapRegionDecoder2.recycle();
            }
            return snapShotForViewGroup;
        } catch (Throwable th2) {
            th = th2;
            if (bitmapRegionDecoder != null && !bitmapRegionDecoder.isRecycled()) {
                bitmapRegionDecoder.recycle();
            }
            throw th;
        }
    }

    private Rect getRealRect(RectF rectF) {
        int i = this.mDegree;
        if (i == 90) {
            return new Rect((int) rectF.top, (int) (this.mSourceHeight - rectF.right), (int) rectF.bottom, (int) (this.mSourceHeight - rectF.left));
        }
        if (i == 180) {
            return new Rect((int) (this.mSourceWidth - rectF.right), (int) (this.mSourceHeight - rectF.bottom), (int) (this.mSourceWidth - rectF.left), (int) (this.mSourceHeight - rectF.top));
        }
        if (i == 270) {
            return new Rect((int) (this.mSourceWidth - rectF.bottom), (int) rectF.left, (int) (this.mSourceWidth - rectF.top), (int) rectF.right);
        }
        return new Rect((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
    }

    private void recycleImageViewBitmap() {
        this.mClipImageView.post(new Runnable() { // from class: com.yftech.libgallery.ui.WallPaperSettingFragment.5
            @Override // java.lang.Runnable
            public void run() {
                WallPaperSettingFragment.this.mClipImageView.setImageBitmap(null);
            }
        });
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (SystemUtil.isFastDoubleClick()) {
            return;
        }
        if (view.getId() == R.id.btn_confirm) {
            clipImage();
        } else {
            if (view.getId() != R.id.btn_cancel || getActivity() == null) {
                return;
            }
            getActivity().onBackPressed();
        }
    }
}
