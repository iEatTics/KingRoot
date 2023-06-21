package android.support.p007v7.internal.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.support.p007v7.appcompat.C0189R;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import java.util.Locale;
/* renamed from: android.support.v7.internal.widget.CompatTextView */
/* loaded from: classes.dex */
public class CompatTextView extends TextView {
    public CompatTextView(Context context) {
        this(context, null);
    }

    public CompatTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CompatTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0189R.styleable.CompatTextView, i, 0);
        boolean z = obtainStyledAttributes.getBoolean(0, false);
        obtainStyledAttributes.recycle();
        if (z) {
            setTransformationMethod(new AllCapsTransformationMethod(context));
        }
    }

    /* renamed from: android.support.v7.internal.widget.CompatTextView$AllCapsTransformationMethod */
    /* loaded from: classes.dex */
    static class AllCapsTransformationMethod implements TransformationMethod {
        private final Locale mLocale;

        public AllCapsTransformationMethod(Context context) {
            this.mLocale = context.getResources().getConfiguration().locale;
        }

        @Override // android.text.method.TransformationMethod
        public CharSequence getTransformation(CharSequence charSequence, View view) {
            if (charSequence != null) {
                return charSequence.toString().toUpperCase(this.mLocale);
            }
            return null;
        }

        @Override // android.text.method.TransformationMethod
        public void onFocusChanged(View view, CharSequence charSequence, boolean z, int i, Rect rect) {
        }
    }
}
