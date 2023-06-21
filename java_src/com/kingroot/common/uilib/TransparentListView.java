package com.kingroot.common.uilib;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes.dex */
public class TransparentListView extends KBaseListView {
    /* renamed from: ol */
    private void m13200ol() {
        if (Build.VERSION.SDK_INT >= 9) {
            try {
                Method method = TransparentListView.class.getMethod("setOverscrollFooter", Drawable.class);
                Method method2 = TransparentListView.class.getMethod("setOverscrollHeader", Drawable.class);
                try {
                    method.invoke(this, null);
                    method2.invoke(this, null);
                } catch (IllegalAccessException e) {
                } catch (IllegalArgumentException e2) {
                } catch (InvocationTargetException e3) {
                }
            } catch (NoSuchMethodException e4) {
            } catch (SecurityException e5) {
            }
        }
    }

    public TransparentListView(Context context) {
        super(context);
        m13200ol();
    }

    public TransparentListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m13200ol();
    }

    public TransparentListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m13200ol();
    }
}
