package com.android.animation;

import android.view.animation.Interpolator;
/* loaded from: classes.dex */
public abstract class Keyframe implements Cloneable {
    float mFraction;
    Class mValueType;
    private Interpolator mInterpolator = null;
    boolean mHasValue = false;

    @Override // 
    /* renamed from: clone */
    public abstract Keyframe mo13761clone();

    public abstract Object getValue();

    public abstract void setValue(Object obj);

    public static Keyframe ofInt(float f, int i) {
        return new IntKeyframe(f, i);
    }

    public static Keyframe ofInt(float f) {
        return new IntKeyframe(f);
    }

    public static Keyframe ofFloat(float f, float f2) {
        return new FloatKeyframe(f, f2);
    }

    public static Keyframe ofFloat(float f) {
        return new FloatKeyframe(f);
    }

    public static Keyframe ofObject(float f, Object obj) {
        return new ObjectKeyframe(f, obj);
    }

    public static Keyframe ofObject(float f) {
        return new ObjectKeyframe(f, null);
    }

    public boolean hasValue() {
        return this.mHasValue;
    }

    public float getFraction() {
        return this.mFraction;
    }

    public void setFraction(float f) {
        this.mFraction = f;
    }

    public Interpolator getInterpolator() {
        return this.mInterpolator;
    }

    public void setInterpolator(Interpolator interpolator) {
        this.mInterpolator = interpolator;
    }

    public Class getType() {
        return this.mValueType;
    }

    /* loaded from: classes.dex */
    static class ObjectKeyframe extends Keyframe {
        Object mValue;

        ObjectKeyframe(float f, Object obj) {
            this.mFraction = f;
            this.mValue = obj;
            this.mHasValue = obj != null;
            this.mValueType = this.mHasValue ? obj.getClass() : Object.class;
        }

        @Override // com.android.animation.Keyframe
        public Object getValue() {
            return this.mValue;
        }

        @Override // com.android.animation.Keyframe
        public void setValue(Object obj) {
            this.mValue = obj;
            this.mHasValue = obj != null;
        }

        @Override // com.android.animation.Keyframe
        /* renamed from: clone */
        public ObjectKeyframe mo13761clone() {
            ObjectKeyframe objectKeyframe = new ObjectKeyframe(getFraction(), this.mValue);
            objectKeyframe.setInterpolator(getInterpolator());
            return objectKeyframe;
        }
    }

    /* loaded from: classes.dex */
    static class IntKeyframe extends Keyframe {
        int mValue;

        IntKeyframe(float f, int i) {
            this.mFraction = f;
            this.mValue = i;
            this.mValueType = Integer.TYPE;
            this.mHasValue = true;
        }

        IntKeyframe(float f) {
            this.mFraction = f;
            this.mValueType = Integer.TYPE;
        }

        public int getIntValue() {
            return this.mValue;
        }

        @Override // com.android.animation.Keyframe
        public Object getValue() {
            return Integer.valueOf(this.mValue);
        }

        @Override // com.android.animation.Keyframe
        public void setValue(Object obj) {
            if (obj != null && obj.getClass() == Integer.class) {
                this.mValue = ((Integer) obj).intValue();
                this.mHasValue = true;
            }
        }

        @Override // com.android.animation.Keyframe
        /* renamed from: clone */
        public IntKeyframe mo13761clone() {
            IntKeyframe intKeyframe = new IntKeyframe(getFraction(), this.mValue);
            intKeyframe.setInterpolator(getInterpolator());
            return intKeyframe;
        }
    }

    /* loaded from: classes.dex */
    static class FloatKeyframe extends Keyframe {
        float mValue;

        FloatKeyframe(float f, float f2) {
            this.mFraction = f;
            this.mValue = f2;
            this.mValueType = Float.TYPE;
            this.mHasValue = true;
        }

        FloatKeyframe(float f) {
            this.mFraction = f;
            this.mValueType = Float.TYPE;
        }

        public float getFloatValue() {
            return this.mValue;
        }

        @Override // com.android.animation.Keyframe
        public Object getValue() {
            return Float.valueOf(this.mValue);
        }

        @Override // com.android.animation.Keyframe
        public void setValue(Object obj) {
            if (obj != null && obj.getClass() == Float.class) {
                this.mValue = ((Float) obj).floatValue();
                this.mHasValue = true;
            }
        }

        @Override // com.android.animation.Keyframe
        /* renamed from: clone */
        public FloatKeyframe mo13761clone() {
            FloatKeyframe floatKeyframe = new FloatKeyframe(getFraction(), this.mValue);
            floatKeyframe.setInterpolator(getInterpolator());
            return floatKeyframe;
        }
    }
}
