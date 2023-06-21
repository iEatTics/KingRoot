package com.kingroot.kinguser;

import android.content.pm.PackageInfo;
/* loaded from: classes.dex */
public class afp {
    /* renamed from: a */
    public static boolean m12035a(PackageInfo packageInfo) {
        return (packageInfo.applicationInfo.flags & 1) != 0;
    }
}
