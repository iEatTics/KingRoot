package com.android.animation;

import android.view.View;
import com.android.util.FloatProperty;
import com.android.util.IntProperty;
import com.android.util.Property;
import com.kingroot.kinguser.bhi;
/* loaded from: classes.dex */
public final class ViewPropertyCompat {
    public static Property<View, Float> ALPHA = new FloatProperty<View>("alpha") { // from class: com.android.animation.ViewPropertyCompat.1
        @Override // com.android.util.FloatProperty
        public void setValue(View view, float f) {
            bhi.m7003J(view).setAlpha(f);
        }

        @Override // com.android.util.Property
        public Float get(View view) {
            return Float.valueOf(bhi.m7003J(view).getAlpha());
        }
    };
    public static Property<View, Float> PIVOT_X = new FloatProperty<View>("pivotX") { // from class: com.android.animation.ViewPropertyCompat.2
        @Override // com.android.util.FloatProperty
        public void setValue(View view, float f) {
            bhi.m7003J(view).setPivotX(f);
        }

        @Override // com.android.util.Property
        public Float get(View view) {
            return Float.valueOf(bhi.m7003J(view).getPivotX());
        }
    };
    public static Property<View, Float> PIVOT_Y = new FloatProperty<View>("pivotY") { // from class: com.android.animation.ViewPropertyCompat.3
        @Override // com.android.util.FloatProperty
        public void setValue(View view, float f) {
            bhi.m7003J(view).setPivotY(f);
        }

        @Override // com.android.util.Property
        public Float get(View view) {
            return Float.valueOf(bhi.m7003J(view).getPivotY());
        }
    };
    public static Property<View, Float> TRANSLATION_X = new FloatProperty<View>("translationX") { // from class: com.android.animation.ViewPropertyCompat.4
        @Override // com.android.util.FloatProperty
        public void setValue(View view, float f) {
            bhi.m7003J(view).setTranslationX(f);
        }

        @Override // com.android.util.Property
        public Float get(View view) {
            return Float.valueOf(bhi.m7003J(view).getTranslationX());
        }
    };
    public static Property<View, Float> TRANSLATION_Y = new FloatProperty<View>("translationY") { // from class: com.android.animation.ViewPropertyCompat.5
        @Override // com.android.util.FloatProperty
        public void setValue(View view, float f) {
            bhi.m7003J(view).setTranslationY(f);
        }

        @Override // com.android.util.Property
        public Float get(View view) {
            return Float.valueOf(bhi.m7003J(view).getTranslationY());
        }
    };
    public static Property<View, Float> ROTATION = new FloatProperty<View>("rotation") { // from class: com.android.animation.ViewPropertyCompat.6
        @Override // com.android.util.FloatProperty
        public void setValue(View view, float f) {
            bhi.m7003J(view).setRotation(f);
        }

        @Override // com.android.util.Property
        public Float get(View view) {
            return Float.valueOf(bhi.m7003J(view).getRotation());
        }
    };
    public static Property<View, Float> ROTATION_X = new FloatProperty<View>("rotationX") { // from class: com.android.animation.ViewPropertyCompat.7
        @Override // com.android.util.FloatProperty
        public void setValue(View view, float f) {
            bhi.m7003J(view).setRotationX(f);
        }

        @Override // com.android.util.Property
        public Float get(View view) {
            return Float.valueOf(bhi.m7003J(view).getRotationX());
        }
    };
    public static Property<View, Float> ROTATION_Y = new FloatProperty<View>("rotationY") { // from class: com.android.animation.ViewPropertyCompat.8
        @Override // com.android.util.FloatProperty
        public void setValue(View view, float f) {
            bhi.m7003J(view).setRotationY(f);
        }

        @Override // com.android.util.Property
        public Float get(View view) {
            return Float.valueOf(bhi.m7003J(view).getRotationY());
        }
    };
    public static Property<View, Float> SCALE_X = new FloatProperty<View>("scaleX") { // from class: com.android.animation.ViewPropertyCompat.9
        @Override // com.android.util.FloatProperty
        public void setValue(View view, float f) {
            bhi.m7003J(view).setScaleX(f);
        }

        @Override // com.android.util.Property
        public Float get(View view) {
            return Float.valueOf(bhi.m7003J(view).getScaleX());
        }
    };
    public static Property<View, Float> SCALE_Y = new FloatProperty<View>("scaleY") { // from class: com.android.animation.ViewPropertyCompat.10
        @Override // com.android.util.FloatProperty
        public void setValue(View view, float f) {
            bhi.m7003J(view).setScaleY(f);
        }

        @Override // com.android.util.Property
        public Float get(View view) {
            return Float.valueOf(bhi.m7003J(view).getScaleY());
        }
    };
    public static Property<View, Integer> SCROLL_X = new IntProperty<View>("scrollX") { // from class: com.android.animation.ViewPropertyCompat.11
        @Override // com.android.util.IntProperty
        public void setValue(View view, int i) {
            bhi.m7003J(view).setScrollX(i);
        }

        @Override // com.android.util.Property
        public Integer get(View view) {
            return Integer.valueOf(bhi.m7003J(view).getScrollX());
        }
    };
    public static Property<View, Integer> SCROLL_Y = new IntProperty<View>("scrollY") { // from class: com.android.animation.ViewPropertyCompat.12
        @Override // com.android.util.IntProperty
        public void setValue(View view, int i) {
            bhi.m7003J(view).setScrollY(i);
        }

        @Override // com.android.util.Property
        public Integer get(View view) {
            return Integer.valueOf(bhi.m7003J(view).getScrollY());
        }
    };

    /* renamed from: X */
    public static Property<View, Float> f154X = new FloatProperty<View>("x") { // from class: com.android.animation.ViewPropertyCompat.13
        @Override // com.android.util.FloatProperty
        public void setValue(View view, float f) {
            bhi.m7003J(view).setX(f);
        }

        @Override // com.android.util.Property
        public Float get(View view) {
            return Float.valueOf(bhi.m7003J(view).getX());
        }
    };

    /* renamed from: Y */
    public static Property<View, Float> f155Y = new FloatProperty<View>("y") { // from class: com.android.animation.ViewPropertyCompat.14
        @Override // com.android.util.FloatProperty
        public void setValue(View view, float f) {
            bhi.m7003J(view).setY(f);
        }

        @Override // com.android.util.Property
        public Float get(View view) {
            return Float.valueOf(bhi.m7003J(view).getY());
        }
    };

    private ViewPropertyCompat() {
    }
}
