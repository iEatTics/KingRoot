package com.android.animation;

import android.view.View;
import com.android.util.Property;
import com.kingroot.kinguser.bhi;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public final class ObjectAnimator extends ValueAnimator {
    private static final boolean DBG = false;
    private static final Map<String, Property> PROXY_PROPERTIES = new HashMap();
    private Property mProperty;
    private String mPropertyName;
    private Object mTarget;

    static {
        PROXY_PROPERTIES.put("alpha", ViewPropertyCompat.ALPHA);
        PROXY_PROPERTIES.put("pivotX", ViewPropertyCompat.PIVOT_X);
        PROXY_PROPERTIES.put("pivotY", ViewPropertyCompat.PIVOT_Y);
        PROXY_PROPERTIES.put("translationX", ViewPropertyCompat.TRANSLATION_X);
        PROXY_PROPERTIES.put("translationY", ViewPropertyCompat.TRANSLATION_Y);
        PROXY_PROPERTIES.put("rotation", ViewPropertyCompat.ROTATION);
        PROXY_PROPERTIES.put("rotationX", ViewPropertyCompat.ROTATION_X);
        PROXY_PROPERTIES.put("rotationY", ViewPropertyCompat.ROTATION_Y);
        PROXY_PROPERTIES.put("scaleX", ViewPropertyCompat.SCALE_X);
        PROXY_PROPERTIES.put("scaleY", ViewPropertyCompat.SCALE_Y);
        PROXY_PROPERTIES.put("scrollX", ViewPropertyCompat.SCROLL_X);
        PROXY_PROPERTIES.put("scrollY", ViewPropertyCompat.SCROLL_Y);
        PROXY_PROPERTIES.put("x", ViewPropertyCompat.f154X);
        PROXY_PROPERTIES.put("y", ViewPropertyCompat.f155Y);
    }

    public void setPropertyName(String str) {
        if (this.mValues != null) {
            PropertyValuesHolder propertyValuesHolder = this.mValues[0];
            String propertyName = propertyValuesHolder.getPropertyName();
            propertyValuesHolder.setPropertyName(str);
            this.mValuesMap.remove(propertyName);
            this.mValuesMap.put(str, propertyValuesHolder);
        }
        this.mPropertyName = str;
        this.mInitialized = false;
    }

    public void setProperty(Property property) {
        if (this.mValues != null) {
            PropertyValuesHolder propertyValuesHolder = this.mValues[0];
            String propertyName = propertyValuesHolder.getPropertyName();
            propertyValuesHolder.setProperty(property);
            this.mValuesMap.remove(propertyName);
            this.mValuesMap.put(this.mPropertyName, propertyValuesHolder);
        }
        if (this.mProperty != null) {
            this.mPropertyName = property.getName();
        }
        this.mProperty = property;
        this.mInitialized = false;
    }

    public String getPropertyName() {
        return this.mPropertyName;
    }

    public ObjectAnimator() {
    }

    private ObjectAnimator(Object obj, String str) {
        this.mTarget = obj;
        setPropertyName(str);
    }

    private <T> ObjectAnimator(T t, Property<T, ?> property) {
        this.mTarget = t;
        setProperty(property);
    }

    public static ObjectAnimator ofInt(Object obj, String str, int... iArr) {
        ObjectAnimator objectAnimator = new ObjectAnimator(obj, str);
        objectAnimator.setIntValues(iArr);
        return objectAnimator;
    }

    public static <T> ObjectAnimator ofInt(T t, Property<T, Integer> property, int... iArr) {
        ObjectAnimator objectAnimator = new ObjectAnimator(t, property);
        objectAnimator.setIntValues(iArr);
        return objectAnimator;
    }

    public static ObjectAnimator ofFloat(Object obj, String str, float... fArr) {
        ObjectAnimator objectAnimator = new ObjectAnimator(obj, str);
        objectAnimator.setFloatValues(fArr);
        return objectAnimator;
    }

    public static <T> ObjectAnimator ofFloat(T t, Property<T, Float> property, float... fArr) {
        ObjectAnimator objectAnimator = new ObjectAnimator(t, property);
        objectAnimator.setFloatValues(fArr);
        return objectAnimator;
    }

    public static ObjectAnimator ofObject(Object obj, String str, TypeEvaluator typeEvaluator, Object... objArr) {
        ObjectAnimator objectAnimator = new ObjectAnimator(obj, str);
        objectAnimator.setObjectValues(objArr);
        objectAnimator.setEvaluator(typeEvaluator);
        return objectAnimator;
    }

    public static <T, V> ObjectAnimator ofObject(T t, Property<T, V> property, TypeEvaluator<V> typeEvaluator, V... vArr) {
        ObjectAnimator objectAnimator = new ObjectAnimator(t, property);
        objectAnimator.setObjectValues(vArr);
        objectAnimator.setEvaluator(typeEvaluator);
        return objectAnimator;
    }

    public static ObjectAnimator ofPropertyValuesHolder(Object obj, PropertyValuesHolder... propertyValuesHolderArr) {
        ObjectAnimator objectAnimator = new ObjectAnimator();
        objectAnimator.mTarget = obj;
        objectAnimator.setValues(propertyValuesHolderArr);
        return objectAnimator;
    }

    @Override // com.android.animation.ValueAnimator
    public void setIntValues(int... iArr) {
        if (this.mValues == null || this.mValues.length == 0) {
            if (this.mProperty != null) {
                setValues(PropertyValuesHolder.ofInt(this.mProperty, iArr));
                return;
            } else {
                setValues(PropertyValuesHolder.ofInt(this.mPropertyName, iArr));
                return;
            }
        }
        super.setIntValues(iArr);
    }

    @Override // com.android.animation.ValueAnimator
    public void setFloatValues(float... fArr) {
        if (this.mValues == null || this.mValues.length == 0) {
            if (this.mProperty != null) {
                setValues(PropertyValuesHolder.ofFloat(this.mProperty, fArr));
                return;
            } else {
                setValues(PropertyValuesHolder.ofFloat(this.mPropertyName, fArr));
                return;
            }
        }
        super.setFloatValues(fArr);
    }

    @Override // com.android.animation.ValueAnimator
    public void setObjectValues(Object... objArr) {
        if (this.mValues == null || this.mValues.length == 0) {
            if (this.mProperty != null) {
                setValues(PropertyValuesHolder.ofObject(this.mProperty, (TypeEvaluator) null, objArr));
                return;
            } else {
                setValues(PropertyValuesHolder.ofObject(this.mPropertyName, (TypeEvaluator) null, objArr));
                return;
            }
        }
        super.setObjectValues(objArr);
    }

    @Override // com.android.animation.ValueAnimator, com.android.animation.Animator
    public void start() {
        super.start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.android.animation.ValueAnimator
    public void initAnimation() {
        if (!this.mInitialized) {
            if (this.mProperty == null && bhi.bqB && (this.mTarget instanceof View) && PROXY_PROPERTIES.containsKey(this.mPropertyName)) {
                setProperty(PROXY_PROPERTIES.get(this.mPropertyName));
            }
            int length = this.mValues.length;
            for (int i = 0; i < length; i++) {
                this.mValues[i].setupSetterAndGetter(this.mTarget);
            }
            super.initAnimation();
        }
    }

    @Override // com.android.animation.ValueAnimator, com.android.animation.Animator
    public ObjectAnimator setDuration(long j) {
        super.setDuration(j);
        return this;
    }

    public Object getTarget() {
        return this.mTarget;
    }

    @Override // com.android.animation.Animator
    public void setTarget(Object obj) {
        if (this.mTarget != obj) {
            Object obj2 = this.mTarget;
            this.mTarget = obj;
            if (obj2 == null || obj == null || obj2.getClass() != obj.getClass()) {
                this.mInitialized = false;
            }
        }
    }

    @Override // com.android.animation.Animator
    public void setupStartValues() {
        initAnimation();
        int length = this.mValues.length;
        for (int i = 0; i < length; i++) {
            this.mValues[i].setupStartValue(this.mTarget);
        }
    }

    @Override // com.android.animation.Animator
    public void setupEndValues() {
        initAnimation();
        int length = this.mValues.length;
        for (int i = 0; i < length; i++) {
            this.mValues[i].setupEndValue(this.mTarget);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.android.animation.ValueAnimator
    public void animateValue(float f) {
        super.animateValue(f);
        int length = this.mValues.length;
        for (int i = 0; i < length; i++) {
            this.mValues[i].setAnimatedValue(this.mTarget);
        }
    }

    @Override // com.android.animation.ValueAnimator, com.android.animation.Animator
    /* renamed from: clone */
    public ObjectAnimator mo13758clone() {
        return (ObjectAnimator) super.mo13758clone();
    }

    @Override // com.android.animation.ValueAnimator
    public String toString() {
        String str = "ObjectAnimator@" + Integer.toHexString(1) + ", target " + this.mTarget;
        if (this.mValues != null) {
            for (int i = 0; i < this.mValues.length; i++) {
                str = str + "\n    " + this.mValues[i].toString();
            }
        }
        return str;
    }
}
