package com.kingroot.kinguser;

import android.content.ComponentName;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes.dex */
public class ahu implements ahp {
    @Override // com.kingroot.kinguser.ahp
    /* renamed from: a */
    public void mo11678a(Context context, ComponentName componentName, int i) {
        if (m11707aQ(context)) {
            try {
                String className = componentName.getClassName();
                if (className != null) {
                    if (i > 99) {
                        i = 99;
                    }
                    Bundle bundle = new Bundle();
                    bundle.putString("package", context.getPackageName());
                    bundle.putString("class", className);
                    bundle.putInt("badgenumber", i);
                    context.getContentResolver().call(Uri.parse("content://com.huawei.android.launcher.settings/badge/"), "change_badge", (String) null, bundle);
                }
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: aQ */
    private boolean m11707aQ(Context context) {
        try {
            Class<?> loadClass = context.createPackageContext("com.huawei.android.launcher", 3).getClassLoader().loadClass("com.huawei.android.launcher.LauncherProvider");
            return ((Boolean) loadClass.getMethod("isSupportChangeBadgeByCallMethod", new Class[0]).invoke(loadClass.newInstance(), new Object[0])).booleanValue();
        } catch (Exception e) {
            return false;
        }
    }

    @Override // com.kingroot.kinguser.ahp
    /* renamed from: xv */
    public List<String> mo11677xv() {
        return Arrays.asList("com.huawei.android.launcher");
    }
}
