package com.android.animation;
/* loaded from: classes.dex */
public class FloatEvaluator implements TypeEvaluator<Number> {
    @Override // com.android.animation.TypeEvaluator
    public Float evaluate(float f, Number number, Number number2) {
        float floatValue = number.floatValue();
        return Float.valueOf(floatValue + ((number2.floatValue() - floatValue) * f));
    }
}
