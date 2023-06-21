package com.kingroot.kinguser;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import java.lang.reflect.Method;
/* loaded from: classes.dex */
public class bkt {
    /* renamed from: C */
    public static Resources m6533C(Context context, String str) {
        try {
            AssetManager assetManager = (AssetManager) AssetManager.class.newInstance();
            Method declaredMethod = AssetManager.class.getDeclaredMethod("addAssetPath", String.class);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(assetManager, str);
            Resources resources = context.getResources();
            return new Resources(assetManager, resources.getDisplayMetrics(), resources.getConfiguration());
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @TargetApi(14)
    /* renamed from: an */
    public static int m6532an(int i, int i2) {
        return m6531f(i, i2, 16973829, 16973931, 16974120);
    }

    /* renamed from: f */
    private static int m6531f(int i, int i2, int i3, int i4, int i5) {
        if (i != 0) {
            return i;
        }
        return i2 < 11 ? i3 : i2 < 14 ? i4 : i5;
    }
}
