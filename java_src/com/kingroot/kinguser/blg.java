package com.kingroot.kinguser;

import android.graphics.Typeface;
import com.kingroot.common.app.KApplication;
import java.lang.ref.WeakReference;
/* loaded from: classes.dex */
public class blg {
    private static WeakReference<Typeface> bzL;

    /* renamed from: jH */
    public static Typeface m6503jH(int i) {
        Typeface m6502jI = m6502jI(i);
        if (m6502jI == null) {
            return Typeface.DEFAULT;
        }
        return m6502jI;
    }

    /* renamed from: jI */
    private static Typeface m6502jI(int i) {
        Typeface typeface;
        if (i == 0) {
            if (bzL == null || (typeface = bzL.get()) == null) {
                Typeface createFromAsset = Typeface.createFromAsset(KApplication.m13453ge().getAssets(), "fonts/Roboto-Condensed.ttf");
                if (createFromAsset != null) {
                    bzL = new WeakReference<>(createFromAsset);
                    return createFromAsset;
                }
            } else {
                return typeface;
            }
        }
        return null;
    }
}
