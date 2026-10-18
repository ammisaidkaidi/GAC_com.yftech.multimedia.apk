package com.yftech.libradio.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.Switch;
import java.lang.reflect.Field;

/* loaded from: /home/user/work/dex/classes4.dex */
public class RadioSwitcher extends Switch {
    public RadioSwitcher(Context context) {
        super(context);
    }

    public RadioSwitcher(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public RadioSwitcher(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public RadioSwitcher(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0031 -> B:11:0x0039). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0036 -> B:11:0x0039). Please report as a decompilation issue!!! */
    @Override // android.widget.Switch, android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean onTouchEvent = super.onTouchEvent(motionEvent);
        if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            try {
                Field declaredField = Switch.class.getDeclaredField("mThumbPosition");
                declaredField.setAccessible(true);
                if (declaredField.getFloat(this) < 0.5f) {
                    setChecked(false);
                } else {
                    setChecked(true);
                }
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            } catch (NoSuchFieldException e2) {
                e2.printStackTrace();
            }
        }
        return onTouchEvent;
    }
}
