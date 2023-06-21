package com.kingroot.kinguser;

import android.content.Context;
import android.content.pm.PackageInfo;
/* renamed from: com.kingroot.kinguser.ft */
/* loaded from: classes.dex */
public class C3068ft {
    /* renamed from: a */
    public static PackageInfo m3827a(Context context, String str, int i) {
        try {
            return context.getPackageManager().getPackageInfo(str, i);
        } catch (Throwable th) {
            return null;
        }
    }
}
