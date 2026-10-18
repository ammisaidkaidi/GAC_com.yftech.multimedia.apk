package android.animation;

/* loaded from: /home/user/work/dex/classes.dex */
public class FloatEvaluator implements TypeEvaluator<Number> {
    @Override // android.animation.TypeEvaluator
    public Float evaluate(float f, Number number, Number number2) {
        float floatValue = number.floatValue();
        return Float.valueOf(floatValue + (f * (number2.floatValue() - floatValue)));
    }
}
