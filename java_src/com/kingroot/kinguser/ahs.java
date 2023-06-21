package com.kingroot.kinguser;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes.dex */
public class ahs implements ahp {
    @Override // com.kingroot.kinguser.ahp
    /* renamed from: a */
    public void mo11678a(Context context, ComponentName componentName, int i) {
        Intent intent = new Intent("android.intent.action.BADGE_COUNT_UPDATE");
        intent.putExtra("badge_count", i);
        intent.putExtra("badge_count_package_name", componentName.getPackageName());
        intent.putExtra("badge_count_class_name", componentName.getClassName());
        intent.putExtra("badge_vip_count", 0);
        context.sendBroadcast(intent);
    }

    @Override // com.kingroot.kinguser.ahp
    /* renamed from: xv */
    public List<String> mo11677xv() {
        return Arrays.asList("com.asus.launcher");
    }
}
