package androidx.appcompat.widget;

import android.R;
import android.annotation.SuppressLint;
import android.graphics.Insets;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ScaleDrawable;
import android.os.Build;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.graphics.drawable.DrawableWrapper;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.graphics.drawable.WrappedDrawable;
import java.lang.reflect.Field;

@SuppressLint({"RestrictedAPI"})
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: /home/user/work/dex/classes2.dex */
public class DrawableUtils {
    private static final int[] CHECKED_STATE_SET = {R.attr.state_checked};
    private static final int[] EMPTY_STATE_SET = new int[0];
    public static final Rect INSETS_NONE = new Rect();
    private static final String TAG = "DrawableUtils";
    private static final String VECTOR_DRAWABLE_CLAZZ_NAME = "android.graphics.drawable.VectorDrawable";
    private static Class<?> sInsetsClazz;

    static {
        if (Build.VERSION.SDK_INT >= 18) {
            try {
                sInsetsClazz = Class.forName("android.graphics.Insets");
            } catch (ClassNotFoundException unused) {
            }
        }
    }

    private DrawableUtils() {
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x009b A[Catch: Exception -> 0x00ba, TryCatch #0 {Exception -> 0x00ba, blocks: (B:11:0x0024, B:13:0x003d, B:15:0x004c, B:25:0x0097, B:29:0x009b, B:31:0x00a2, B:33:0x00a9, B:35:0x00b0, B:37:0x006c, B:40:0x0077, B:43:0x0081, B:46:0x008c), top: B:10:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00a2 A[Catch: Exception -> 0x00ba, TryCatch #0 {Exception -> 0x00ba, blocks: (B:11:0x0024, B:13:0x003d, B:15:0x004c, B:25:0x0097, B:29:0x009b, B:31:0x00a2, B:33:0x00a9, B:35:0x00b0, B:37:0x006c, B:40:0x0077, B:43:0x0081, B:46:0x008c), top: B:10:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00a9 A[Catch: Exception -> 0x00ba, TryCatch #0 {Exception -> 0x00ba, blocks: (B:11:0x0024, B:13:0x003d, B:15:0x004c, B:25:0x0097, B:29:0x009b, B:31:0x00a2, B:33:0x00a9, B:35:0x00b0, B:37:0x006c, B:40:0x0077, B:43:0x0081, B:46:0x008c), top: B:10:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00b0 A[Catch: Exception -> 0x00ba, TRY_LEAVE, TryCatch #0 {Exception -> 0x00ba, blocks: (B:11:0x0024, B:13:0x003d, B:15:0x004c, B:25:0x0097, B:29:0x009b, B:31:0x00a2, B:33:0x00a9, B:35:0x00b0, B:37:0x006c, B:40:0x0077, B:43:0x0081, B:46:0x008c), top: B:10:0x0024 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Rect getOpticalBounds(Drawable drawable) {
        char c;
        if (Build.VERSION.SDK_INT >= 29) {
            Insets opticalInsets = drawable.getOpticalInsets();
            Rect rect = new Rect();
            rect.left = opticalInsets.left;
            rect.right = opticalInsets.right;
            rect.top = opticalInsets.top;
            rect.bottom = opticalInsets.bottom;
            return rect;
        }
        if (sInsetsClazz != null) {
            try {
                Drawable unwrap = DrawableCompat.unwrap(drawable);
                Object invoke = unwrap.getClass().getMethod("getOpticalInsets", new Class[0]).invoke(unwrap, new Object[0]);
                if (invoke != null) {
                    Rect rect2 = new Rect();
                    for (Field field : sInsetsClazz.getFields()) {
                        String name = field.getName();
                        int hashCode = name.hashCode();
                        if (hashCode == -1383228885) {
                            if (name.equals("bottom")) {
                                c = 3;
                                switch (c) {
                                }
                            }
                            c = 65535;
                            switch (c) {
                            }
                        } else if (hashCode == 115029) {
                            if (name.equals("top")) {
                                c = 1;
                                switch (c) {
                                }
                            }
                            c = 65535;
                            switch (c) {
                            }
                        } else if (hashCode != 3317767) {
                            if (hashCode == 108511772 && name.equals("right")) {
                                c = 2;
                                switch (c) {
                                    case 0:
                                        rect2.left = field.getInt(invoke);
                                        break;
                                    case 1:
                                        rect2.top = field.getInt(invoke);
                                        break;
                                    case 2:
                                        rect2.right = field.getInt(invoke);
                                        break;
                                    case 3:
                                        rect2.bottom = field.getInt(invoke);
                                        break;
                                }
                            }
                            c = 65535;
                            switch (c) {
                            }
                        } else {
                            if (name.equals("left")) {
                                c = 0;
                                switch (c) {
                                }
                            }
                            c = 65535;
                            switch (c) {
                            }
                        }
                    }
                    return rect2;
                }
            } catch (Exception unused) {
                Log.e(TAG, "Couldn't obtain the optical insets. Ignoring.");
            }
        }
        return INSETS_NONE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void fixDrawable(@NonNull Drawable drawable) {
        if (Build.VERSION.SDK_INT == 21 && VECTOR_DRAWABLE_CLAZZ_NAME.equals(drawable.getClass().getName())) {
            fixVectorDrawableTinting(drawable);
        }
    }

    public static boolean canSafelyMutateDrawable(@NonNull Drawable drawable) {
        if (Build.VERSION.SDK_INT < 15 && (drawable instanceof InsetDrawable)) {
            return false;
        }
        if (Build.VERSION.SDK_INT < 15 && (drawable instanceof GradientDrawable)) {
            return false;
        }
        if (Build.VERSION.SDK_INT < 17 && (drawable instanceof LayerDrawable)) {
            return false;
        }
        if (drawable instanceof DrawableContainer) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (!(constantState instanceof DrawableContainer.DrawableContainerState)) {
                return true;
            }
            for (Drawable drawable2 : ((DrawableContainer.DrawableContainerState) constantState).getChildren()) {
                if (!canSafelyMutateDrawable(drawable2)) {
                    return false;
                }
            }
            return true;
        }
        if (drawable instanceof WrappedDrawable) {
            return canSafelyMutateDrawable(((WrappedDrawable) drawable).getWrappedDrawable());
        }
        if (drawable instanceof DrawableWrapper) {
            return canSafelyMutateDrawable(((DrawableWrapper) drawable).getWrappedDrawable());
        }
        if (drawable instanceof ScaleDrawable) {
            return canSafelyMutateDrawable(((ScaleDrawable) drawable).getDrawable());
        }
        return true;
    }

    private static void fixVectorDrawableTinting(Drawable drawable) {
        int[] state = drawable.getState();
        if (state == null || state.length == 0) {
            drawable.setState(CHECKED_STATE_SET);
        } else {
            drawable.setState(EMPTY_STATE_SET);
        }
        drawable.setState(state);
    }

    public static PorterDuff.Mode parseTintMode(int i, PorterDuff.Mode mode) {
        if (i == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (i) {
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }
}
