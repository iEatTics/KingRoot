package com.kingroot.kinguser;

import android.os.Build;
import android.util.DisplayMetrics;
import java.io.File;
/* loaded from: classes.dex */
public class cdc {
    /* renamed from: a */
    public static Object m4862a(Object obj, File file, String str, DisplayMetrics displayMetrics, int i) {
        Object obj2 = null;
        try {
            obj2 = Build.VERSION.SDK_INT >= 21 ? cdd.m4860a(obj, "parsePackage", new Object[]{file, Integer.valueOf(i)}) : cdd.m4860a(obj, "parsePackage", new Object[]{file, str, displayMetrics, Integer.valueOf(i)});
        } catch (Exception e) {
            cdo.m4815f("--PackageUtil--", e);
        }
        return obj2;
    }

    /* renamed from: nE */
    public static Object m4861nE(String str) {
        Object obj = null;
        try {
            obj = Build.VERSION.SDK_INT >= 21 ? cdd.m4859f("android.content.pm.PackageParser", null) : cdd.m4859f("android.content.pm.PackageParser", new Object[]{str});
        } catch (Exception e) {
            cdo.m4815f("--PackageUtil--", e);
        }
        return obj;
    }
}
