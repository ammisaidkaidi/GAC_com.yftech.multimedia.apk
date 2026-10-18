package com.android.internal.policy;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.util.Size;
import android.view.Gravity;
import java.io.PrintWriter;
import java.util.ArrayList;

/* loaded from: /home/user/work/dex/classes3.dex */
public class PipSnapAlgorithm {
    private static final float CORNER_MAGNET_THRESHOLD = 0.3f;
    private static final int SNAP_MODE_CORNERS_AND_SIDES = 1;
    private static final int SNAP_MODE_CORNERS_ONLY = 0;
    private static final int SNAP_MODE_EDGE = 2;
    private static final int SNAP_MODE_EDGE_MAGNET_CORNERS = 3;
    private static final int SNAP_MODE_LONG_EDGE_MAGNET_CORNERS = 4;
    private final Context mContext;
    private final float mDefaultSizePercent;
    private final int mFlingDeceleration;
    private boolean mIsMinimized;
    private final float mMaxAspectRatioForMinSize;
    private final float mMinAspectRatioForMinSize;
    private final int mMinimizedVisibleSize;
    private final ArrayList<Integer> mSnapGravities = new ArrayList<>();
    private final int mDefaultSnapMode = 3;
    private int mSnapMode = 3;
    private int mOrientation = 0;

    private int findX(float f, float f2, float f3) {
        return (int) ((f3 - f2) / f);
    }

    private int findY(float f, float f2, float f3) {
        return (int) ((f * f3) + f2);
    }

    public PipSnapAlgorithm(Context context) {
        Resources resources = context.getResources();
        this.mContext = context;
        this.mMinimizedVisibleSize = resources.getDimensionPixelSize(17105276);
        this.mDefaultSizePercent = resources.getFloat(17104988);
        this.mMaxAspectRatioForMinSize = resources.getFloat(17104986);
        this.mMinAspectRatioForMinSize = 1.0f / this.mMaxAspectRatioForMinSize;
        this.mFlingDeceleration = this.mContext.getResources().getDimensionPixelSize(17105275);
        onConfigurationChanged();
    }

    public void onConfigurationChanged() {
        Resources resources = this.mContext.getResources();
        this.mOrientation = resources.getConfiguration().orientation;
        this.mSnapMode = resources.getInteger(17694849);
        calculateSnapTargets();
    }

    public void setMinimized(boolean z) {
        this.mIsMinimized = z;
    }

    public Rect findClosestSnapBounds(Rect rect, Rect rect2, float f, float f2, Point point) {
        Rect rect3 = new Rect(rect2);
        Point edgeIntersect = getEdgeIntersect(rect2, rect, f, f2, point);
        rect3.offsetTo(edgeIntersect.x, edgeIntersect.y);
        return findClosestSnapBounds(rect, rect3);
    }

    public Point getEdgeIntersect(Rect rect, Rect rect2, float f, float f2, Point point) {
        int i;
        boolean z = this.mOrientation == 2;
        int i2 = rect.left;
        float f3 = f2 / f;
        float f4 = rect.top - (i2 * f3);
        Point point2 = new Point();
        Point point3 = new Point();
        point2.x = f > 0.0f ? rect2.right : rect2.left;
        point2.y = findY(f3, f4, point2.x);
        point3.y = f2 > 0.0f ? rect2.bottom : rect2.top;
        point3.x = findX(f3, f4, point3.y);
        if (z) {
            if (f > 0.0f) {
                i = rect2.right - rect.left;
            } else {
                i = rect.left - rect2.left;
            }
        } else if (f2 > 0.0f) {
            i = rect2.bottom - rect.top;
        } else {
            i = rect.top - rect2.top;
        }
        if (i > 0) {
            int i3 = z ? point.y : point.x;
            int i4 = z ? point3.y : point3.x;
            int centerX = rect2.centerX();
            if ((i3 < centerX && i4 < centerX) || (i3 > centerX && i4 > centerX)) {
                int min = Math.min(((int) (0.0d - Math.pow(z ? f : f2, 2.0d))) / (this.mFlingDeceleration * 2), i);
                if (z) {
                    int i5 = rect.left;
                    if (f <= 0.0f) {
                        min = -min;
                    }
                    point3.x = i5 + min;
                } else {
                    int i6 = rect.top;
                    if (f2 <= 0.0f) {
                        min = -min;
                    }
                    point3.y = i6 + min;
                }
                return point3;
            }
        }
        double hypot = Math.hypot(point2.x - i2, point2.y - r9);
        double hypot2 = Math.hypot(point3.x - i2, point3.y - r9);
        return hypot == 0.0d ? point3 : (hypot2 != 0.0d && Math.abs(hypot) > Math.abs(hypot2)) ? point3 : point2;
    }

    public Rect findClosestSnapBounds(Rect rect, Rect rect2) {
        Rect rect3 = new Rect(rect.left, rect.top, rect.right + rect2.width(), rect.bottom + rect2.height());
        Rect rect4 = new Rect(rect2);
        if (this.mSnapMode == 4 || this.mSnapMode == 3) {
            Rect rect5 = new Rect();
            Point[] pointArr = new Point[this.mSnapGravities.size()];
            for (int i = 0; i < this.mSnapGravities.size(); i++) {
                Gravity.apply(this.mSnapGravities.get(i).intValue(), rect2.width(), rect2.height(), rect3, 0, 0, rect5);
                pointArr[i] = new Point(rect5.left, rect5.top);
            }
            Point findClosestPoint = findClosestPoint(rect2.left, rect2.top, pointArr);
            if (distanceToPoint(findClosestPoint, rect2.left, rect2.top) < Math.max(rect2.width(), rect2.height()) * CORNER_MAGNET_THRESHOLD) {
                rect4.offsetTo(findClosestPoint.x, findClosestPoint.y);
            } else {
                snapRectToClosestEdge(rect2, rect, rect4);
            }
        } else if (this.mSnapMode == 2) {
            snapRectToClosestEdge(rect2, rect, rect4);
        } else {
            Rect rect6 = new Rect();
            Point[] pointArr2 = new Point[this.mSnapGravities.size()];
            for (int i2 = 0; i2 < this.mSnapGravities.size(); i2++) {
                Gravity.apply(this.mSnapGravities.get(i2).intValue(), rect2.width(), rect2.height(), rect3, 0, 0, rect6);
                pointArr2[i2] = new Point(rect6.left, rect6.top);
            }
            Point findClosestPoint2 = findClosestPoint(rect2.left, rect2.top, pointArr2);
            rect4.offsetTo(findClosestPoint2.x, findClosestPoint2.y);
        }
        return rect4;
    }

    public void applyMinimizedOffset(Rect rect, Rect rect2, Point point, Rect rect3) {
        if (rect.left <= rect2.centerX()) {
            rect.offsetTo((rect3.left + this.mMinimizedVisibleSize) - rect.width(), rect.top);
        } else {
            rect.offsetTo((point.x - rect3.right) - this.mMinimizedVisibleSize, rect.top);
        }
    }

    public float getSnapFraction(Rect rect, Rect rect2) {
        Rect rect3 = new Rect();
        snapRectToClosestEdge(rect, rect2, rect3);
        float width = (rect3.left - rect2.left) / rect2.width();
        float height = (rect3.top - rect2.top) / rect2.height();
        return rect3.top == rect2.top ? width : rect3.left == rect2.right ? height + 1.0f : rect3.top == rect2.bottom ? (1.0f - width) + 2.0f : (1.0f - height) + 3.0f;
    }

    public void applySnapFraction(Rect rect, Rect rect2, float f) {
        if (f < 1.0f) {
            rect.offsetTo(rect2.left + ((int) (f * rect2.width())), rect2.top);
            return;
        }
        if (f < 2.0f) {
            rect.offsetTo(rect2.right, rect2.top + ((int) ((f - 1.0f) * rect2.height())));
        } else if (f < 3.0f) {
            rect.offsetTo(rect2.left + ((int) ((1.0f - (f - 2.0f)) * rect2.width())), rect2.bottom);
        } else {
            rect.offsetTo(rect2.left, rect2.top + ((int) ((1.0f - (f - 3.0f)) * rect2.height())));
        }
    }

    public void getMovementBounds(Rect rect, Rect rect2, Rect rect3, int i) {
        rect3.set(rect2);
        rect3.right = Math.max(rect2.left, rect2.right - rect.width());
        rect3.bottom = Math.max(rect2.top, rect2.bottom - rect.height());
        rect3.bottom -= i;
    }

    public Size getSizeForAspectRatio(float f, float f2, int i, int i2) {
        int round;
        int max = (int) Math.max(f2, Math.min(i, i2) * this.mDefaultSizePercent);
        if (f > this.mMinAspectRatioForMinSize && f <= this.mMaxAspectRatioForMinSize) {
            float f3 = max;
            float length = PointF.length(this.mMaxAspectRatioForMinSize * f3, f3);
            max = (int) Math.round(Math.sqrt((length * length) / ((f * f) + 1.0f)));
            round = Math.round(max * f);
        } else if (f <= 1.0f) {
            max = Math.round(max / f);
            round = max;
        } else {
            round = Math.round(max * f);
        }
        return new Size(round, max);
    }

    private Point findClosestPoint(int i, int i2, Point[] pointArr) {
        Point point = null;
        float f = Float.MAX_VALUE;
        for (Point point2 : pointArr) {
            float distanceToPoint = distanceToPoint(point2, i, i2);
            if (distanceToPoint < f) {
                point = point2;
                f = distanceToPoint;
            }
        }
        return point;
    }

    private void snapRectToClosestEdge(Rect rect, Rect rect2, Rect rect3) {
        int min;
        int max = Math.max(rect2.left, Math.min(rect2.right, rect.left));
        int max2 = Math.max(rect2.top, Math.min(rect2.bottom, rect.top));
        rect3.set(rect);
        if (this.mIsMinimized) {
            rect3.offsetTo(max, max2);
            return;
        }
        int abs = Math.abs(rect.left - rect2.left);
        int abs2 = Math.abs(rect.top - rect2.top);
        int abs3 = Math.abs(rect2.right - rect.left);
        int abs4 = Math.abs(rect2.bottom - rect.top);
        if (this.mSnapMode == 4) {
            if (this.mOrientation == 2) {
                min = Math.min(abs2, abs4);
            } else {
                min = Math.min(abs, abs3);
            }
        } else {
            min = Math.min(Math.min(abs, abs3), Math.min(abs2, abs4));
        }
        if (min == abs) {
            rect3.offsetTo(rect2.left, max2);
            return;
        }
        if (min == abs2) {
            rect3.offsetTo(max, rect2.top);
        } else if (min == abs3) {
            rect3.offsetTo(rect2.right, max2);
        } else {
            rect3.offsetTo(max, rect2.bottom);
        }
    }

    private float distanceToPoint(Point point, int i, int i2) {
        return PointF.length(point.x - i, point.y - i2);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0007. Please report as an issue. */
    private void calculateSnapTargets() {
        this.mSnapGravities.clear();
        switch (this.mSnapMode) {
            case 1:
                if (this.mOrientation == 2) {
                    this.mSnapGravities.add(49);
                    this.mSnapGravities.add(81);
                } else {
                    this.mSnapGravities.add(19);
                    this.mSnapGravities.add(21);
                }
            case 0:
            case 3:
            case 4:
                this.mSnapGravities.add(51);
                this.mSnapGravities.add(53);
                this.mSnapGravities.add(83);
                this.mSnapGravities.add(85);
                return;
            case 2:
            default:
                return;
        }
    }

    public void dump(PrintWriter printWriter, String str) {
        String str2 = str + "  ";
        printWriter.println(str + PipSnapAlgorithm.class.getSimpleName());
        printWriter.println(str2 + "mSnapMode=" + this.mSnapMode);
        printWriter.println(str2 + "mOrientation=" + this.mOrientation);
        printWriter.println(str2 + "mMinimizedVisibleSize=" + this.mMinimizedVisibleSize);
        printWriter.println(str2 + "mIsMinimized=" + this.mIsMinimized);
    }
}
