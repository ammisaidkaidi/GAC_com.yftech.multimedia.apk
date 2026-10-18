package android.inputmethodservice;

import android.R;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;

/* loaded from: /home/user/work/dex/classes.dex */
public class CompactExtractEditLayout extends LinearLayout {
    private View mInputExtractAccessories;
    private View mInputExtractAction;
    private View mInputExtractEditText;
    private boolean mPerformLayoutChanges;

    public CompactExtractEditLayout(Context context) {
        super(context);
    }

    public CompactExtractEditLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public CompactExtractEditLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mInputExtractEditText = findViewById(R.id.inputExtractEditText);
        this.mInputExtractAccessories = findViewById(16908979);
        this.mInputExtractAction = findViewById(16908980);
        if (this.mInputExtractEditText == null || this.mInputExtractAccessories == null || this.mInputExtractAction == null) {
            return;
        }
        this.mPerformLayoutChanges = true;
    }

    private int applyFractionInt(int i, int i2) {
        return Math.round(getResources().getFraction(i, i2, i2));
    }

    private static void setLayoutHeight(View view, int i) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.height = i;
        view.setLayoutParams(layoutParams);
    }

    private static void setLayoutMarginBottom(View view, int i) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        marginLayoutParams.bottomMargin = i;
        view.setLayoutParams(marginLayoutParams);
    }

    private void applyProportionalLayout(int i, int i2) {
        if (getResources().getConfiguration().isScreenRound()) {
            setGravity(80);
        }
        setLayoutHeight(this, applyFractionInt(18022406, i2));
        setPadding(applyFractionInt(18022407, i), 0, applyFractionInt(18022409, i), 0);
        setLayoutMarginBottom(this.mInputExtractEditText, applyFractionInt(18022410, i2));
        setLayoutMarginBottom(this.mInputExtractAccessories, applyFractionInt(18022405, i2));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.mPerformLayoutChanges) {
            Resources resources = getResources();
            Configuration configuration = resources.getConfiguration();
            DisplayMetrics displayMetrics = resources.getDisplayMetrics();
            int i = displayMetrics.widthPixels;
            int i2 = displayMetrics.heightPixels;
            if (configuration.isScreenRound() && i2 < i) {
                i2 = i;
            }
            applyProportionalLayout(i, i2);
        }
    }
}
