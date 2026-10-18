package com.yftech.car.widget.media.photo.layout;

import android.util.ArrayMap;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.NotificationManagerCompat;
import com.yftech.car.media.data.entity.MediaFile;
import com.yftech.car.utils.Loger;
import com.yftech.car.widget.media.entity.SizeCore;
import com.yftech.car.widget.media.layout.BaseLayoutChildManager;
import com.yftech.car.widget.media.list.MediaDataDirectoryList;
import com.yftech.car.widget.media.list.MediaDataList;
import com.yftech.car.widget.media.manager.MediaDataManager;
import com.yftech.car.widget.media.photo.button.PhotoButton;
import com.yftech.car.widget.media.photo.layout.PhotoLayoutChildManager;
import com.yftech.car.widget.media.text.MediaDataListText;
import com.yftech.car.widget.media.text.MediaDataModifyBtn;
import com.yftech.car.widget.media.text.MediaListFolderPath;
import com.yftech.car.widget.media.text.VisibilityTextButton;
import com.yftech.car.widget.media.utils.AnimationUtil;
import com.yftech.car.widget.media.view.MediaImageLoading;
import com.yftech.car.widget.media.view.SideTextRetrievalView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* loaded from: /home/user/work/dex/classes3.dex */
public class PhotoLayoutChildManager extends BaseLayoutChildManager {
    private static final String TAG = "LayoutChildManager";
    private ViewGroup mLayout;
    private MediaDataManager.OnDataChangeCallback mOnDataChangeCallback;
    private final List<MediaDataList> mMediaDataList = new ArrayList();
    private final List<MediaListFolderPath> mMediaListFolderPathList = new ArrayList();
    private final List<MediaDataListText> mMediaDataListTextList = new ArrayList();
    private final List<VisibilityTextButton> mVisibilityTextButtonList = new ArrayList();
    private final List<MediaDataModifyBtn> mMediaDataModifyBtnList = new ArrayList();
    private final List<PhotoButton> mPhotoButtonList = new ArrayList();
    private final List<MediaImageLoading> mMediaImageLoadingList = new ArrayList();
    private final List<MediaDataDirectoryList> mMediaDataDirectoryList = new ArrayList();
    private final List<SideTextRetrievalView> mSideTextRetrievalViewList = new ArrayList();
    private final Map<View, SizeCore> mSizeCore = new ArrayMap();
    private boolean isAnimationLoading = false;
    private final VisibilityTextButton.OnClickVisibilityListener mOnClickVisibilityListener = new AnonymousClass2();
    private final PhotoButton.OnClickFunctionListener mOnClickFunctionListener = new PhotoButton.OnClickFunctionListener() { // from class: com.yftech.car.widget.media.photo.layout.PhotoLayoutChildManager.3
        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // com.yftech.car.widget.media.photo.button.PhotoButton.OnClickFunctionListener
        public void onClickFunction(int i, int i2) {
            for (MediaDataList mediaDataList : PhotoLayoutChildManager.this.mMediaDataList) {
                if (i == -1 || i == mediaDataList.getId()) {
                    if (i2 != 1006) {
                        switch (i2) {
                            case 1001:
                                mediaDataList.setMediaDefaultList(i2 + NotificationManagerCompat.IMPORTANCE_UNSPECIFIED);
                                mediaDataList.updateFolderList(MediaDataManager.getInstance().getFolderPhoto(mediaDataList.getUsbIndex()), true);
                                break;
                            case 1002:
                                mediaDataList.setMediaDefaultList(i2 + NotificationManagerCompat.IMPORTANCE_UNSPECIFIED);
                                mediaDataList.updateFileList(MediaDataManager.getInstance().getFilePhoto(mediaDataList.getUsbIndex()), true);
                                break;
                            case 1003:
                                mediaDataList.setMediaDefaultList(i2 + NotificationManagerCompat.IMPORTANCE_UNSPECIFIED);
                                mediaDataList.updateFolderList(MediaDataManager.getInstance().getArtistsPhoto(mediaDataList.getUsbIndex()), true);
                                break;
                            default:
                                int i3 = i2 - 100;
                                if (i3 >= 0 && i3 <= 4) {
                                    int mediaDefaultList = mediaDataList.getMediaDefaultList();
                                    mediaDataList.setUsbIndex(i3);
                                    if (mediaDefaultList != 6) {
                                        switch (mediaDefaultList) {
                                            case 1:
                                                mediaDataList.updateFolderList(MediaDataManager.getInstance().getFolderPhoto(i3), true);
                                                break;
                                            case 2:
                                                mediaDataList.updateFileList(MediaDataManager.getInstance().getFilePhoto(i3), true);
                                                break;
                                            case 3:
                                                mediaDataList.updateFolderList(MediaDataManager.getInstance().getArtistsPhoto(i3), true);
                                                break;
                                        }
                                    } else {
                                        mediaDataList.updateDirectoryList(MediaDataManager.getInstance().getPhotoDirectory(i3));
                                        Loger.d(PhotoLayoutChildManager.TAG, "initView: mediaDataList mediaDefaultList==" + mediaDefaultList);
                                        break;
                                    }
                                }
                                break;
                        }
                    } else {
                        mediaDataList.setMediaDefaultList(i2 + NotificationManagerCompat.IMPORTANCE_UNSPECIFIED);
                        if (mediaDataList.isMediaListClickMemoryDirectory()) {
                            mediaDataList.updateDirectoryList();
                        } else {
                            mediaDataList.updateDirectoryList(MediaDataManager.getInstance().getPhotoDirectory(mediaDataList.getUsbIndex()));
                        }
                    }
                    int mediaDefaultList2 = mediaDataList.getMediaDefaultList();
                    for (PhotoButton photoButton : PhotoLayoutChildManager.this.mPhotoButtonList) {
                        photoButton.setSelected(photoButton.isFunction(1000 + mediaDefaultList2));
                    }
                    if (i2 >= 1000) {
                        mediaDataList.setVisibility(0);
                    }
                }
            }
        }
    };

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    public void onWindowFocusChanged(boolean z) {
    }

    public void updateTouchEvent(boolean z) {
    }

    public void initView(final ViewGroup viewGroup) {
        this.mLayout = viewGroup;
        if (this.mOnDataChangeCallback == null) {
            this.mOnDataChangeCallback = getOnDataChangeCallback();
            MediaDataManager.getInstance().registerCarDataControlCallback(this.mOnDataChangeCallback);
            LinkedList<ViewGroup> linkedList = new LinkedList<>();
            linkedList.add(viewGroup);
            while (!linkedList.isEmpty()) {
                ViewGroup removeFirst = linkedList.removeFirst();
                for (int i = 0; i < removeFirst.getChildCount(); i++) {
                    Object childAt = removeFirst.getChildAt(i);
                    if (childAt instanceof MediaDataList) {
                        MediaDataList mediaDataList = (MediaDataList) childAt;
                        mediaDataList.setLinkedList(linkedList);
                        this.mMediaDataList.add(mediaDataList);
                    } else if (childAt instanceof MediaDataDirectoryList) {
                        this.mMediaDataDirectoryList.add((MediaDataDirectoryList) childAt);
                    } else if (childAt instanceof ViewGroup) {
                        linkedList.add((ViewGroup) childAt);
                    } else if (childAt instanceof MediaListFolderPath) {
                        this.mMediaListFolderPathList.add((MediaListFolderPath) childAt);
                    } else if (childAt instanceof MediaDataListText) {
                        this.mMediaDataListTextList.add((MediaDataListText) childAt);
                    } else if (childAt instanceof VisibilityTextButton) {
                        this.mVisibilityTextButtonList.add((VisibilityTextButton) childAt);
                    } else if (childAt instanceof PhotoButton) {
                        this.mPhotoButtonList.add((PhotoButton) childAt);
                    } else if (childAt instanceof MediaDataModifyBtn) {
                        this.mMediaDataModifyBtnList.add((MediaDataModifyBtn) childAt);
                    } else if (childAt instanceof MediaImageLoading) {
                        this.mMediaImageLoadingList.add((MediaImageLoading) childAt);
                    } else if (childAt instanceof SideTextRetrievalView) {
                        this.mSideTextRetrievalViewList.add((SideTextRetrievalView) childAt);
                    }
                }
            }
            if (this.mMediaDataList.size() > 0) {
                for (final MediaDataList mediaDataList2 : this.mMediaDataList) {
                    Iterator<MediaListFolderPath> it = this.mMediaListFolderPathList.iterator();
                    while (it.hasNext()) {
                        mediaDataList2.setMediaListFolderPath(it.next());
                    }
                    mediaDataList2.setMediaDataDirectoryList(this.mMediaDataDirectoryList);
                    mediaDataList2.setMediaDataListTextList(this.mMediaDataListTextList);
                    mediaDataList2.setSideTextRetrievalViewList(this.mSideTextRetrievalViewList);
                    mediaDataList2.setMediaDataModifyBtnList(this.mMediaDataModifyBtnList);
                    int mediaDefaultList = mediaDataList2.getMediaDefaultList();
                    mediaDataList2.setMediaType(2, new Runnable() { // from class: com.yftech.car.widget.media.photo.layout.-$$Lambda$PhotoLayoutChildManager$WpUr5R34WG4x_8g6Z-492o0522Y
                        @Override // java.lang.Runnable
                        public final void run() {
                            PhotoLayoutChildManager.lambda$initView$0(MediaDataList.this);
                        }
                    });
                    for (PhotoButton photoButton : this.mPhotoButtonList) {
                        photoButton.setSelected(photoButton.isFunction(mediaDefaultList + 1000));
                    }
                    boolean isScanner = MediaDataManager.getInstance().isScanner(mediaDataList2.getUsbIndex());
                    for (MediaImageLoading mediaImageLoading : this.mMediaImageLoadingList) {
                        if (mediaImageLoading.getMediaDataListId() == -1 || mediaImageLoading.getMediaDataListId() == mediaDataList2.getId()) {
                            mediaImageLoading.setLoadingStatus(isScanner);
                        }
                    }
                }
            }
            Iterator<PhotoButton> it2 = this.mPhotoButtonList.iterator();
            while (it2.hasNext()) {
                it2.next().setFunctionListener(this.mOnClickFunctionListener);
            }
            for (final VisibilityTextButton visibilityTextButton : this.mVisibilityTextButtonList) {
                visibilityTextButton.setOnClickVisibilityListener(this.mOnClickVisibilityListener);
                visibilityTextButton.postOnAnimation(new Runnable() { // from class: com.yftech.car.widget.media.photo.layout.-$$Lambda$PhotoLayoutChildManager$Soakz66pHNxAuWpbIyDkhlytvAk
                    @Override // java.lang.Runnable
                    public final void run() {
                        r0.setVisibilityShow(VisibilityTextButton.this.isMediaDataListShow(viewGroup));
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$initView$0(MediaDataList mediaDataList) {
        int usbIndex = mediaDataList.getUsbIndex();
        int mediaDefaultList = mediaDataList.getMediaDefaultList();
        if (mediaDefaultList == 6) {
            mediaDataList.updateDirectoryList(MediaDataManager.getInstance().getPhotoDirectory(usbIndex));
            return;
        }
        if (mediaDefaultList != 100) {
            switch (mediaDefaultList) {
                case 1:
                    mediaDataList.updateFolderList(MediaDataManager.getInstance().getFolderPhoto(usbIndex), true);
                    return;
                case 2:
                    mediaDataList.updateFileList(MediaDataManager.getInstance().getFilePhoto(usbIndex), true);
                    return;
                case 3:
                    mediaDataList.updateFolderList(MediaDataManager.getInstance().getArtistsPhoto(usbIndex), true);
                    return;
                default:
                    Log.e(TAG, "initView: no MediaDefaultList == " + mediaDataList.getMediaDefaultList());
                    return;
            }
        }
    }

    public void unregister() {
        if (this.mOnDataChangeCallback != null) {
            MediaDataManager.getInstance().unregisterCarDataControlCallback(this.mOnDataChangeCallback);
            this.mOnDataChangeCallback = null;
            this.mMediaListFolderPathList.clear();
            this.mMediaDataListTextList.clear();
            Iterator<MediaDataList> it = this.mMediaDataList.iterator();
            while (it.hasNext()) {
                it.next().release();
            }
            this.mMediaDataList.clear();
            this.mMediaDataModifyBtnList.clear();
            this.mVisibilityTextButtonList.clear();
            this.mPhotoButtonList.clear();
            this.mMediaImageLoadingList.clear();
            Iterator<MediaDataDirectoryList> it2 = this.mMediaDataDirectoryList.iterator();
            while (it2.hasNext()) {
                it2.next().release();
            }
            this.mMediaDataDirectoryList.clear();
            this.mLayout = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void visibilityGone(View view, int i, int i2) {
        float width;
        float y;
        switch (i) {
            case 1:
                SizeCore sizeCore = this.mSizeCore.get(view);
                if (sizeCore != null) {
                    width = sizeCore.childAtCoreX;
                    y = sizeCore.childAtCoreY;
                } else {
                    width = (view.getWidth() / 2.0f) + view.getX();
                    y = view.getY() + (view.getHeight() / 2.0f);
                    SizeCore sizeCore2 = new SizeCore();
                    sizeCore2.childAtCoreX = width;
                    sizeCore2.childAtCoreY = y;
                    this.mSizeCore.put(view, sizeCore2);
                }
                float width2 = this.mLayout.getWidth() / 2.0f;
                float height = this.mLayout.getHeight() / 2.0f;
                if (width < width2 && Math.abs(y - height) < Math.abs(width - width2)) {
                    AnimationUtil.showTranslateAnimation(view, i2, 0.0f, -(view.getWidth() + view.getX()), 0.0f, 0.0f);
                    break;
                } else if (y < height && Math.abs(width2 - width) < Math.abs(y - height)) {
                    AnimationUtil.showTranslateAnimation(view, i2, 0.0f, 0.0f, 0.0f, -(view.getHeight() + view.getY()));
                    break;
                } else if (width2 < width && Math.abs(width - width2) > Math.abs(y - height)) {
                    AnimationUtil.showTranslateAnimation(view, i2, 0.0f, view.getWidth() + (this.mLayout.getWidth() - (view.getX() + view.getWidth())), 0.0f, 0.0f);
                    break;
                } else {
                    AnimationUtil.showTranslateAnimation(view, i2, 0.0f, 0.0f, 0.0f, view.getHeight() + (this.mLayout.getHeight() - (view.getY() + view.getHeight())));
                    break;
                }
                break;
            case 2:
                AnimationUtil.showAlphaAnimation(view, i2, false);
                break;
        }
        view.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void visibilityVisible(View view, int i, int i2) {
        float width;
        float y;
        view.setVisibility(0);
        switch (i) {
            case 1:
                SizeCore sizeCore = this.mSizeCore.get(view);
                if (sizeCore != null) {
                    width = sizeCore.childAtCoreX;
                    y = sizeCore.childAtCoreY;
                } else {
                    width = (view.getWidth() / 2.0f) + view.getX();
                    y = view.getY() + (view.getHeight() / 2.0f);
                    SizeCore sizeCore2 = new SizeCore();
                    sizeCore2.childAtCoreX = width;
                    sizeCore2.childAtCoreY = y;
                    this.mSizeCore.put(view, sizeCore2);
                }
                float width2 = this.mLayout.getWidth() / 2.0f;
                float height = this.mLayout.getHeight() / 2.0f;
                if (width < width2 && Math.abs(y - height) < Math.abs(width - width2)) {
                    AnimationUtil.showTranslateAnimation(view, i2, -(view.getWidth() + view.getX()), 0.0f, 0.0f, 0.0f);
                    return;
                }
                if (y < height && Math.abs(width2 - width) < Math.abs(y - height)) {
                    AnimationUtil.showTranslateAnimation(view, i2, 0.0f, 0.0f, -(view.getHeight() + view.getY()), 0.0f);
                    return;
                }
                if (width2 < width && Math.abs(width - width2) > Math.abs(y - height)) {
                    AnimationUtil.showTranslateAnimation(view, i2, view.getWidth() + (this.mLayout.getWidth() - (view.getX() + view.getWidth())), 0.0f, 0.0f, 0.0f);
                    return;
                } else {
                    AnimationUtil.showTranslateAnimation(view, i2, 0.0f, 0.0f, view.getHeight() + (this.mLayout.getHeight() - (view.getY() + view.getHeight())), 0.0f);
                    return;
                }
            case 2:
                AnimationUtil.showAlphaAnimation(view, i2, true);
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yftech.car.widget.media.photo.layout.PhotoLayoutChildManager$1, reason: invalid class name */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public class AnonymousClass1 extends MediaDataManager.OnDataChangeCallback {
        AnonymousClass1() {
        }

        @Override // com.yftech.car.widget.media.manager.MediaDataManager.OnDataChangeCallback, com.yftech.car.widget.media.manager.MediaDataManager.OnDataChangeListener
        public void onUsbStatusChange(int i, boolean z) {
            if (z) {
                return;
            }
            for (final MediaDataList mediaDataList : PhotoLayoutChildManager.this.mMediaDataList) {
                if (mediaDataList.getUsbIndex() == i) {
                    mediaDataList.postOnAnimation(new Runnable() { // from class: com.yftech.car.widget.media.photo.layout.-$$Lambda$PhotoLayoutChildManager$1$UxiGZAI7XTbZBgoKmNLCBt9xG34
                        @Override // java.lang.Runnable
                        public final void run() {
                            PhotoLayoutChildManager.AnonymousClass1.lambda$onUsbStatusChange$0(PhotoLayoutChildManager.AnonymousClass1.this, mediaDataList);
                        }
                    });
                }
            }
        }

        public static /* synthetic */ void lambda$onUsbStatusChange$0(AnonymousClass1 anonymousClass1, MediaDataList mediaDataList) {
            mediaDataList.clearList();
            for (MediaImageLoading mediaImageLoading : PhotoLayoutChildManager.this.mMediaImageLoadingList) {
                if (mediaImageLoading.getMediaDataListId() == -1 || mediaImageLoading.getMediaDataListId() == mediaDataList.getId()) {
                    mediaImageLoading.setLoadingStatus(false);
                }
            }
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:13:0x0030. Please report as an issue. */
        @Override // com.yftech.car.widget.media.manager.MediaDataManager.OnDataChangeCallback, com.yftech.car.widget.media.manager.MediaDataManager.OnDataChangeListener
        public void onScanStatusChange(int i, boolean z) {
            if (MediaDataManager.getInstance().isUsbExists(i)) {
                if (!z) {
                    for (MediaDataList mediaDataList : PhotoLayoutChildManager.this.mMediaDataList) {
                        if (mediaDataList.getUsbIndex() == i) {
                            int mediaDefaultList = mediaDataList.getMediaDefaultList();
                            if (mediaDefaultList != 6) {
                                switch (mediaDefaultList) {
                                    case 1:
                                        mediaDataList.updateFolderList(MediaDataManager.getInstance().getFolderPhoto(i), true);
                                        break;
                                    case 2:
                                        List<MediaFile> filePhoto = MediaDataManager.getInstance().getFilePhoto(i);
                                        if (!mediaDataList.equalsFileList(filePhoto)) {
                                            mediaDataList.updateFileList(filePhoto, true);
                                            break;
                                        }
                                        break;
                                    case 3:
                                        mediaDataList.updateFolderList(MediaDataManager.getInstance().getArtistsPhoto(i), true);
                                        break;
                                }
                            } else {
                                Objects.requireNonNull(mediaDataList);
                                mediaDataList.postOnAnimation(new $$Lambda$CZB4jbJKe4H7VHMQ0XTlIdVSXzU(mediaDataList));
                            }
                            for (final MediaImageLoading mediaImageLoading : PhotoLayoutChildManager.this.mMediaImageLoadingList) {
                                if (mediaImageLoading.getMediaDataListId() == -1 || mediaImageLoading.getMediaDataListId() == mediaDataList.getId()) {
                                    mediaImageLoading.postOnAnimation(new Runnable() { // from class: com.yftech.car.widget.media.photo.layout.-$$Lambda$PhotoLayoutChildManager$1$ajGKjFcKKbcppF1Q0CnkhwB4294
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            MediaImageLoading.this.setLoadingStatus(false);
                                        }
                                    });
                                }
                            }
                        }
                    }
                    return;
                }
                for (final MediaDataList mediaDataList2 : PhotoLayoutChildManager.this.mMediaDataList) {
                    if (mediaDataList2.getUsbIndex() == i) {
                        mediaDataList2.postOnAnimation(new Runnable() { // from class: com.yftech.car.widget.media.photo.layout.-$$Lambda$PhotoLayoutChildManager$1$4xGRWnIaZtxyKR_tF8CPjtErdjI
                            @Override // java.lang.Runnable
                            public final void run() {
                                PhotoLayoutChildManager.AnonymousClass1.lambda$onScanStatusChange$2(PhotoLayoutChildManager.AnonymousClass1.this, mediaDataList2);
                            }
                        });
                    }
                }
            }
        }

        public static /* synthetic */ void lambda$onScanStatusChange$2(AnonymousClass1 anonymousClass1, MediaDataList mediaDataList) {
            for (MediaImageLoading mediaImageLoading : PhotoLayoutChildManager.this.mMediaImageLoadingList) {
                if (mediaImageLoading.getMediaDataListId() == -1 || mediaImageLoading.getMediaDataListId() == mediaDataList.getId()) {
                    mediaImageLoading.setLoadingStatus(true);
                }
            }
            mediaDataList.setUsbLoadingScan();
        }

        @Override // com.yftech.car.widget.media.manager.MediaDataManager.OnDataChangeCallback, com.yftech.car.widget.media.manager.MediaDataManager.OnDataChangeListener
        public void onPhotoDataChange(int i) {
            Loger.d(PhotoLayoutChildManager.TAG, " onPhotoDataChange updateFileList: usbIndex==" + i);
            for (MediaDataList mediaDataList : PhotoLayoutChildManager.this.mMediaDataList) {
                if (mediaDataList.getUsbIndex() == i) {
                    int mediaDefaultList = mediaDataList.getMediaDefaultList();
                    if (mediaDefaultList != 6) {
                        switch (mediaDefaultList) {
                            case 1:
                                mediaDataList.updateFolderList(MediaDataManager.getInstance().getFolderPhoto(i), true);
                                break;
                            case 2:
                                List<MediaFile> filePhoto = MediaDataManager.getInstance().getFilePhoto(i);
                                if (mediaDataList.equalsFileList(filePhoto)) {
                                    break;
                                } else {
                                    mediaDataList.updateFileList(filePhoto, true);
                                    break;
                                }
                            case 3:
                                mediaDataList.updateFolderList(MediaDataManager.getInstance().getArtistsPhoto(i), true);
                                break;
                        }
                    } else {
                        Objects.requireNonNull(mediaDataList);
                        mediaDataList.postOnAnimation(new $$Lambda$CZB4jbJKe4H7VHMQ0XTlIdVSXzU(mediaDataList));
                    }
                }
            }
        }
    }

    private MediaDataManager.OnDataChangeCallback getOnDataChangeCallback() {
        return new AnonymousClass1();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yftech.car.widget.media.photo.layout.PhotoLayoutChildManager$2, reason: invalid class name */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public class AnonymousClass2 implements VisibilityTextButton.OnClickVisibilityListener {
        AnonymousClass2() {
        }

        @Override // com.yftech.car.widget.media.text.VisibilityTextButton.OnClickVisibilityListener
        public void onClickVisibility(int[] iArr, int i, int i2, int i3) {
            if (PhotoLayoutChildManager.this.mLayout != null) {
                if (PhotoLayoutChildManager.this.isAnimationLoading) {
                    Log.e(PhotoLayoutChildManager.TAG, "onClickVisibility: Double Click isAnimationLoading is true");
                    return;
                }
                int i4 = i2;
                boolean z = -1;
                for (int i5 : iArr) {
                    if (i5 != -1) {
                        final View findViewById = PhotoLayoutChildManager.this.mLayout.findViewById(i5);
                        if (findViewById.getVisibility() != 0) {
                            if ((i & 1) > 0) {
                                if (i4 == -1) {
                                    i4 = 0;
                                }
                                PhotoLayoutChildManager.this.isAnimationLoading = true;
                                PhotoLayoutChildManager.this.visibilityVisible(findViewById, i4, i3);
                                z = true;
                            }
                        } else if (findViewById.getVisibility() != 8 && (i & 2) > 0) {
                            PhotoLayoutChildManager.this.isAnimationLoading = true;
                            if (i4 == -1) {
                                i4 = 0;
                            }
                            PhotoLayoutChildManager.this.visibilityGone(findViewById, i4, i3);
                            z = false;
                        }
                        if (PhotoLayoutChildManager.this.isAnimationLoading) {
                            if (i4 == 1 || i4 == 2) {
                                PhotoLayoutChildManager.this.mLayout.postOnAnimationDelayed(new Runnable() { // from class: com.yftech.car.widget.media.photo.layout.-$$Lambda$PhotoLayoutChildManager$2$hKo3z3Pr4QFpH2Px6u0zhdq3y20
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        PhotoLayoutChildManager.AnonymousClass2.lambda$onClickVisibility$1(PhotoLayoutChildManager.AnonymousClass2.this, findViewById);
                                    }
                                }, i3);
                            } else {
                                PhotoLayoutChildManager.this.isAnimationLoading = false;
                            }
                        }
                    }
                }
                Iterator it = PhotoLayoutChildManager.this.mVisibilityTextButtonList.iterator();
                while (it.hasNext()) {
                    ((VisibilityTextButton) it.next()).setVisibilityShow(z);
                }
            }
        }

        public static /* synthetic */ void lambda$onClickVisibility$1(final AnonymousClass2 anonymousClass2, View view) {
            view.clearAnimation();
            PhotoLayoutChildManager.this.mLayout.postOnAnimationDelayed(new Runnable() { // from class: com.yftech.car.widget.media.photo.layout.-$$Lambda$PhotoLayoutChildManager$2$hYWDyGsf5No1j3gqtR1Oz6qRkG8
                @Override // java.lang.Runnable
                public final void run() {
                    PhotoLayoutChildManager.this.isAnimationLoading = false;
                }
            }, 100L);
        }

        @Override // com.yftech.car.widget.media.text.VisibilityTextButton.OnClickVisibilityListener
        public void onClickVisibilityVisible(int[] iArr, int i, int i2) {
            if (PhotoLayoutChildManager.this.mLayout != null) {
                int i3 = i;
                for (int i4 : iArr) {
                    if (i4 != -1) {
                        final View findViewById = PhotoLayoutChildManager.this.mLayout.findViewById(i4);
                        if (findViewById.getVisibility() != 0) {
                            if (i3 == -1) {
                                i3 = 0;
                            }
                            PhotoLayoutChildManager.this.visibilityVisible(findViewById, i3, i2);
                            if (i3 == 1 || i3 == 2) {
                                PhotoLayoutChildManager.this.mLayout.postOnAnimationDelayed(new Runnable() { // from class: com.yftech.car.widget.media.photo.layout.-$$Lambda$PhotoLayoutChildManager$2$d1IPRAEkI1CC2q5sLMNK7GmoeP4
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        findViewById.clearAnimation();
                                    }
                                }, i2);
                            }
                        }
                    }
                }
            }
        }

        @Override // com.yftech.car.widget.media.text.VisibilityTextButton.OnClickVisibilityListener
        public void onClickVisibilityGone(int[] iArr, int i, int i2) {
            if (PhotoLayoutChildManager.this.mLayout != null) {
                int i3 = i;
                for (int i4 : iArr) {
                    if (i4 != -1) {
                        final View findViewById = PhotoLayoutChildManager.this.mLayout.findViewById(i4);
                        if (findViewById.getVisibility() != 8) {
                            if (i3 == -1) {
                                i3 = 0;
                            }
                            PhotoLayoutChildManager.this.visibilityGone(findViewById, i3, i2);
                            if (i3 == 1 || i3 == 2) {
                                PhotoLayoutChildManager.this.mLayout.postOnAnimationDelayed(new Runnable() { // from class: com.yftech.car.widget.media.photo.layout.-$$Lambda$PhotoLayoutChildManager$2$eVpHc4zXbEecvZ5QOyYx-nQuQl0
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        findViewById.clearAnimation();
                                    }
                                }, i2);
                            }
                        }
                    }
                }
            }
        }
    }
}
