package com.kingroot.kinguser;

import android.graphics.Point;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.kingroot.common.app.KApplication;
/* loaded from: classes.dex */
public class abg {
    /* renamed from: r */
    public static int m12835r(float f) {
        DisplayMetrics displayMetrics = C3953zi.m1311pr().getDisplayMetrics();
        if (displayMetrics == null) {
            return 0;
        }
        return (int) ((displayMetrics.density * f) + 0.5f);
    }

    /* renamed from: qc */
    public static int m12836qc() {
        Display defaultDisplay = ((WindowManager) KApplication.m13453ge().getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        try {
            defaultDisplay.getSize(point);
        } catch (Throwable th) {
            point.x = defaultDisplay.getWidth();
        }
        return point.x;
    }
}
