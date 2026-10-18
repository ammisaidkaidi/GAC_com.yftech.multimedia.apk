package android.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.graphics.Color;
import android.view.ViewGroup;
import android.view.textclassifier.TextClassifier;
import android.widget.EditText;
import android.widget.TextView;
import java.util.Map;

/* loaded from: /home/user/work/dex/classes2.dex */
public class ChangeText extends Transition {
    public static final int CHANGE_BEHAVIOR_IN = 2;
    public static final int CHANGE_BEHAVIOR_KEEP = 0;
    public static final int CHANGE_BEHAVIOR_OUT = 1;
    public static final int CHANGE_BEHAVIOR_OUT_IN = 3;
    private static final String LOG_TAG = "TextChange";
    private static final String PROPNAME_TEXT_COLOR = "android:textchange:textColor";
    private int mChangeBehavior = 0;
    private static final String PROPNAME_TEXT = "android:textchange:text";
    private static final String PROPNAME_TEXT_SELECTION_START = "android:textchange:textSelectionStart";
    private static final String PROPNAME_TEXT_SELECTION_END = "android:textchange:textSelectionEnd";
    private static final String[] sTransitionProperties = {PROPNAME_TEXT, PROPNAME_TEXT_SELECTION_START, PROPNAME_TEXT_SELECTION_END};

    public ChangeText setChangeBehavior(int i) {
        if (i >= 0 && i <= 3) {
            this.mChangeBehavior = i;
        }
        return this;
    }

    @Override // android.transition.Transition
    public String[] getTransitionProperties() {
        return sTransitionProperties;
    }

    public int getChangeBehavior() {
        return this.mChangeBehavior;
    }

    private void captureValues(TransitionValues transitionValues) {
        if (transitionValues.view instanceof TextView) {
            TextView textView = (TextView) transitionValues.view;
            transitionValues.values.put(PROPNAME_TEXT, textView.getText());
            if (textView instanceof EditText) {
                transitionValues.values.put(PROPNAME_TEXT_SELECTION_START, Integer.valueOf(textView.getSelectionStart()));
                transitionValues.values.put(PROPNAME_TEXT_SELECTION_END, Integer.valueOf(textView.getSelectionEnd()));
            }
            if (this.mChangeBehavior > 0) {
                transitionValues.values.put(PROPNAME_TEXT_COLOR, Integer.valueOf(textView.getCurrentTextColor()));
            }
        }
    }

    @Override // android.transition.Transition
    public void captureStartValues(TransitionValues transitionValues) {
        captureValues(transitionValues);
    }

    @Override // android.transition.Transition
    public void captureEndValues(TransitionValues transitionValues) {
        captureValues(transitionValues);
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x01a1  */
    @Override // android.transition.Transition
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Animator createAnimator(ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        char c;
        int i6;
        int i7;
        final int i8;
        Animator animator;
        int i9;
        final int i10;
        Animator animator2;
        final int i11;
        if (transitionValues == null || transitionValues2 == null || !(transitionValues.view instanceof TextView) || !(transitionValues2.view instanceof TextView)) {
            return null;
        }
        final TextView textView = (TextView) transitionValues2.view;
        Map<String, Object> map = transitionValues.values;
        Map<String, Object> map2 = transitionValues2.values;
        final CharSequence charSequence = map.get(PROPNAME_TEXT) != null ? (CharSequence) map.get(PROPNAME_TEXT) : TextClassifier.TYPE_UNKNOWN;
        final CharSequence charSequence2 = map2.get(PROPNAME_TEXT) != null ? (CharSequence) map2.get(PROPNAME_TEXT) : TextClassifier.TYPE_UNKNOWN;
        boolean z = textView instanceof EditText;
        if (z) {
            int intValue = map.get(PROPNAME_TEXT_SELECTION_START) != null ? ((Integer) map.get(PROPNAME_TEXT_SELECTION_START)).intValue() : -1;
            int intValue2 = map.get(PROPNAME_TEXT_SELECTION_END) != null ? ((Integer) map.get(PROPNAME_TEXT_SELECTION_END)).intValue() : intValue;
            int intValue3 = map2.get(PROPNAME_TEXT_SELECTION_START) != null ? ((Integer) map2.get(PROPNAME_TEXT_SELECTION_START)).intValue() : -1;
            i3 = intValue3;
            i = intValue;
            i2 = intValue2;
            i4 = map2.get(PROPNAME_TEXT_SELECTION_END) != null ? ((Integer) map2.get(PROPNAME_TEXT_SELECTION_END)).intValue() : intValue3;
        } else {
            i = -1;
            i2 = -1;
            i3 = -1;
            i4 = -1;
        }
        if (charSequence.equals(charSequence2)) {
            return null;
        }
        if (this.mChangeBehavior != 2) {
            textView.setText(charSequence);
            if (z) {
                setSelection((EditText) textView, i, i2);
            }
        }
        if (this.mChangeBehavior == 0) {
            Animator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            final int i12 = i3;
            final int i13 = i4;
            ofFloat.addListener(new AnimatorListenerAdapter() { // from class: android.transition.ChangeText.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator3) {
                    if (charSequence.equals(textView.getText())) {
                        textView.setText(charSequence2);
                        if (textView instanceof EditText) {
                            ChangeText.this.setSelection((EditText) textView, i12, i13);
                        }
                    }
                }
            });
            animator2 = ofFloat;
            i6 = i;
            i5 = i2;
            i11 = 0;
        } else {
            final int intValue4 = ((Integer) map.get(PROPNAME_TEXT_COLOR)).intValue();
            int intValue5 = ((Integer) map2.get(PROPNAME_TEXT_COLOR)).intValue();
            if (this.mChangeBehavior == 3 || this.mChangeBehavior == 1) {
                ValueAnimator ofInt = ValueAnimator.ofInt(Color.alpha(intValue4), 0);
                ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: android.transition.ChangeText.2
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator valueAnimator) {
                        int intValue6 = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                        textView.setTextColor((intValue4 & 16777215) | (intValue6 << 24));
                    }
                });
                i5 = i2;
                c = 1;
                i6 = i;
                i7 = 3;
                final int i14 = i3;
                i8 = intValue5;
                final int i15 = i4;
                ofInt.addListener(new AnimatorListenerAdapter() { // from class: android.transition.ChangeText.3
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator3) {
                        if (charSequence.equals(textView.getText())) {
                            textView.setText(charSequence2);
                            if (textView instanceof EditText) {
                                ChangeText.this.setSelection((EditText) textView, i14, i15);
                            }
                        }
                        textView.setTextColor(i8);
                    }
                });
                animator = ofInt;
            } else {
                c = 1;
                i8 = intValue5;
                i6 = i;
                i5 = i2;
                animator = null;
                i7 = 3;
            }
            if (this.mChangeBehavior != i7) {
                i9 = 2;
                if (this.mChangeBehavior != 2) {
                    i10 = i8;
                    animator2 = null;
                    if (animator == null && animator2 != null) {
                        Animator animatorSet = new AnimatorSet();
                        Animator[] animatorArr = new Animator[i9];
                        animatorArr[0] = animator;
                        animatorArr[c] = animator2;
                        ((AnimatorSet) animatorSet).playSequentially(animatorArr);
                        animator2 = animatorSet;
                    } else if (animator != null) {
                        i11 = i10;
                        animator2 = animator;
                    }
                    i11 = i10;
                }
            } else {
                i9 = 2;
            }
            int[] iArr = new int[i9];
            iArr[0] = 0;
            iArr[c] = Color.alpha(i8);
            ValueAnimator ofInt2 = ValueAnimator.ofInt(iArr);
            i10 = i8;
            ofInt2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: android.transition.ChangeText.4
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    int intValue6 = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    textView.setTextColor((i10 & 16777215) | (intValue6 << 24));
                }
            });
            ofInt2.addListener(new AnimatorListenerAdapter() { // from class: android.transition.ChangeText.5
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator3) {
                    textView.setTextColor(i10);
                }
            });
            animator2 = ofInt2;
            if (animator == null) {
            }
            if (animator != null) {
            }
            i11 = i10;
        }
        final int i16 = i3;
        final int i17 = i4;
        final int i18 = i6;
        final int i19 = i5;
        addListener(new TransitionListenerAdapter() { // from class: android.transition.ChangeText.6
            int mPausedColor = 0;

            @Override // android.transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
            public void onTransitionPause(Transition transition) {
                if (ChangeText.this.mChangeBehavior != 2) {
                    textView.setText(charSequence2);
                    if (textView instanceof EditText) {
                        ChangeText.this.setSelection((EditText) textView, i16, i17);
                    }
                }
                if (ChangeText.this.mChangeBehavior > 0) {
                    this.mPausedColor = textView.getCurrentTextColor();
                    textView.setTextColor(i11);
                }
            }

            @Override // android.transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
            public void onTransitionResume(Transition transition) {
                if (ChangeText.this.mChangeBehavior != 2) {
                    textView.setText(charSequence);
                    if (textView instanceof EditText) {
                        ChangeText.this.setSelection((EditText) textView, i18, i19);
                    }
                }
                if (ChangeText.this.mChangeBehavior > 0) {
                    textView.setTextColor(this.mPausedColor);
                }
            }

            @Override // android.transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
            public void onTransitionEnd(Transition transition) {
                transition.removeListener(this);
            }
        });
        return animator2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSelection(EditText editText, int i, int i2) {
        if (i < 0 || i2 < 0) {
            return;
        }
        editText.setSelection(i, i2);
    }
}
