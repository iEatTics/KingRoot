package com.kingroot.kinguser;

import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
/* renamed from: com.kingroot.kinguser.wx */
/* loaded from: classes.dex */
public class C3867wx {
    /* renamed from: a */
    public static void m1488a(View view, Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.setBackground(drawable);
        } else {
            view.setBackgroundDrawable(drawable);
        }
    }
}
