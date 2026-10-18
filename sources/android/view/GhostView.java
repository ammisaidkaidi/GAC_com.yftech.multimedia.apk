package android.view;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.view.ViewOverlay;
import android.widget.FrameLayout;
import java.util.ArrayList;

/* loaded from: /home/user/work/dex/classes2.dex */
public class GhostView extends View {
    private boolean mBeingMoved;
    private int mReferences;
    private final View mView;

    private GhostView(View view) {
        super(view.getContext());
        this.mView = view;
        this.mView.mGhostView = this;
        ViewGroup viewGroup = (ViewGroup) this.mView.getParent();
        this.mView.setTransitionVisibility(4);
        viewGroup.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (canvas instanceof DisplayListCanvas) {
            DisplayListCanvas displayListCanvas = (DisplayListCanvas) canvas;
            this.mView.mRecreateDisplayList = true;
            RenderNode updateDisplayListIfDirty = this.mView.updateDisplayListIfDirty();
            if (updateDisplayListIfDirty.isValid()) {
                displayListCanvas.insertReorderBarrier();
                displayListCanvas.drawRenderNode(updateDisplayListIfDirty);
                displayListCanvas.insertInorderBarrier();
            }
        }
    }

    public void setMatrix(Matrix matrix) {
        this.mRenderNode.setAnimationMatrix(matrix);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        if (this.mView.mGhostView == this) {
            this.mView.setTransitionVisibility(i == 0 ? 4 : 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mBeingMoved) {
            return;
        }
        this.mView.setTransitionVisibility(0);
        this.mView.mGhostView = null;
        ViewGroup viewGroup = (ViewGroup) this.mView.getParent();
        if (viewGroup != null) {
            viewGroup.invalidate();
        }
    }

    public static void calculateMatrix(View view, ViewGroup viewGroup, Matrix matrix) {
        ViewGroup viewGroup2 = (ViewGroup) view.getParent();
        matrix.reset();
        viewGroup2.transformMatrixToGlobal(matrix);
        matrix.preTranslate(-viewGroup2.getScrollX(), -viewGroup2.getScrollY());
        viewGroup.transformMatrixToLocal(matrix);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static GhostView addGhost(View view, ViewGroup viewGroup, Matrix matrix) {
        int i;
        if (!(view.getParent() instanceof ViewGroup)) {
            throw new IllegalArgumentException("Ghosted views must be parented by a ViewGroup");
        }
        ViewGroupOverlay overlay = viewGroup.getOverlay();
        ViewOverlay.OverlayViewGroup overlayViewGroup = overlay.mOverlayViewGroup;
        GhostView ghostView = view.mGhostView;
        if (ghostView != null) {
            View view2 = (View) ghostView.getParent();
            ViewGroup viewGroup2 = (ViewGroup) view2.getParent();
            if (viewGroup2 != overlayViewGroup) {
                i = ghostView.mReferences;
                viewGroup2.removeView(view2);
                ghostView = null;
                if (ghostView != null) {
                    if (matrix == null) {
                        matrix = new Matrix();
                        calculateMatrix(view, viewGroup, matrix);
                    }
                    ghostView = new GhostView(view);
                    ghostView.setMatrix(matrix);
                    FrameLayout frameLayout = new FrameLayout(view.getContext());
                    frameLayout.setClipChildren(false);
                    copySize(viewGroup, frameLayout);
                    copySize(viewGroup, ghostView);
                    frameLayout.addView(ghostView);
                    ArrayList arrayList = new ArrayList();
                    insertIntoOverlay(overlay.mOverlayViewGroup, frameLayout, ghostView, arrayList, moveGhostViewsToTop(overlay.mOverlayViewGroup, arrayList));
                    ghostView.mReferences = i;
                } else if (matrix != null) {
                    ghostView.setMatrix(matrix);
                }
                ghostView.mReferences++;
                return ghostView;
            }
        }
        i = 0;
        if (ghostView != null) {
        }
        ghostView.mReferences++;
        return ghostView;
    }

    public static GhostView addGhost(View view, ViewGroup viewGroup) {
        return addGhost(view, viewGroup, null);
    }

    public static void removeGhost(View view) {
        GhostView ghostView = view.mGhostView;
        if (ghostView != null) {
            ghostView.mReferences--;
            if (ghostView.mReferences == 0) {
                ViewGroup viewGroup = (ViewGroup) ghostView.getParent();
                ((ViewGroup) viewGroup.getParent()).removeView(viewGroup);
            }
        }
    }

    public static GhostView getGhost(View view) {
        return view.mGhostView;
    }

    private static void copySize(View view, View view2) {
        view2.setLeft(0);
        view2.setTop(0);
        view2.setRight(view.getWidth());
        view2.setBottom(view.getHeight());
    }

    private static int moveGhostViewsToTop(ViewGroup viewGroup, ArrayList<View> arrayList) {
        int childCount = viewGroup.getChildCount();
        int i = -1;
        if (childCount == 0) {
            return -1;
        }
        int i2 = childCount - 1;
        if (isGhostWrapper(viewGroup.getChildAt(i2))) {
            int i3 = i2;
            int i4 = childCount - 2;
            while (i4 >= 0 && isGhostWrapper(viewGroup.getChildAt(i4))) {
                int i5 = i4;
                i4--;
                i3 = i5;
            }
            return i3;
        }
        for (int i6 = childCount - 2; i6 >= 0; i6--) {
            View childAt = viewGroup.getChildAt(i6);
            if (isGhostWrapper(childAt)) {
                arrayList.add(childAt);
                GhostView ghostView = (GhostView) ((ViewGroup) childAt).getChildAt(0);
                ghostView.mBeingMoved = true;
                viewGroup.removeViewAt(i6);
                ghostView.mBeingMoved = false;
            }
        }
        if (!arrayList.isEmpty()) {
            i = viewGroup.getChildCount();
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                viewGroup.addView(arrayList.get(size));
            }
            arrayList.clear();
        }
        return i;
    }

    private static void insertIntoOverlay(ViewGroup viewGroup, ViewGroup viewGroup2, GhostView ghostView, ArrayList<View> arrayList, int i) {
        if (i == -1) {
            viewGroup.addView(viewGroup2);
            return;
        }
        ArrayList arrayList2 = new ArrayList();
        getParents(ghostView.mView, arrayList2);
        int insertIndex = getInsertIndex(viewGroup, arrayList2, arrayList, i);
        if (insertIndex < 0 || insertIndex >= viewGroup.getChildCount()) {
            viewGroup.addView(viewGroup2);
        } else {
            viewGroup.addView(viewGroup2, insertIndex);
        }
    }

    private static int getInsertIndex(ViewGroup viewGroup, ArrayList<View> arrayList, ArrayList<View> arrayList2, int i) {
        int childCount = viewGroup.getChildCount() - 1;
        while (i <= childCount) {
            int i2 = (i + childCount) / 2;
            getParents(((GhostView) ((ViewGroup) viewGroup.getChildAt(i2)).getChildAt(0)).mView, arrayList2);
            if (isOnTop(arrayList, arrayList2)) {
                i = i2 + 1;
            } else {
                childCount = i2 - 1;
            }
            arrayList2.clear();
        }
        return i;
    }

    private static boolean isGhostWrapper(View view) {
        if (view instanceof FrameLayout) {
            FrameLayout frameLayout = (FrameLayout) view;
            if (frameLayout.getChildCount() == 1) {
                return frameLayout.getChildAt(0) instanceof GhostView;
            }
        }
        return false;
    }

    private static boolean isOnTop(ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        if (arrayList.isEmpty() || arrayList2.isEmpty() || arrayList.get(0) != arrayList2.get(0)) {
            return true;
        }
        int min = Math.min(arrayList.size(), arrayList2.size());
        for (int i = 1; i < min; i++) {
            View view = arrayList.get(i);
            View view2 = arrayList2.get(i);
            if (view != view2) {
                return isOnTop(view, view2);
            }
        }
        return arrayList2.size() == min;
    }

    private static void getParents(View view, ArrayList<View> arrayList) {
        Object parent = view.getParent();
        if (parent != null && (parent instanceof ViewGroup)) {
            getParents((View) parent, arrayList);
        }
        arrayList.add(view);
    }

    private static boolean isOnTop(View view, View view2) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        int childCount = viewGroup.getChildCount();
        ArrayList<View> buildOrderedChildList = viewGroup.buildOrderedChildList();
        boolean z = true;
        boolean z2 = buildOrderedChildList == null && viewGroup.isChildrenDrawingOrderEnabled();
        int i = 0;
        while (true) {
            if (i >= childCount) {
                break;
            }
            int childDrawingOrder = z2 ? viewGroup.getChildDrawingOrder(childCount, i) : i;
            View childAt = buildOrderedChildList == null ? viewGroup.getChildAt(childDrawingOrder) : buildOrderedChildList.get(childDrawingOrder);
            if (childAt == view) {
                z = false;
                break;
            }
            if (childAt == view2) {
                break;
            }
            i++;
        }
        if (buildOrderedChildList != null) {
            buildOrderedChildList.clear();
        }
        return z;
    }
}
