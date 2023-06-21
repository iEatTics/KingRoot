package com.kingroot.kinguser;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import cloudsdk.ext.p008kr.RootConst;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes.dex */
public class ahv implements ahp {
    @Override // com.kingroot.kinguser.ahp
    /* renamed from: a */
    public void mo11678a(Context context, ComponentName componentName, int i) {
        Intent intent = new Intent("com.htc.launcher.action.SET_NOTIFICATION");
        intent.putExtra("com.htc.launcher.extra.COMPONENT", componentName.flattenToShortString());
        intent.putExtra("com.htc.launcher.extra.COUNT", i);
        context.sendBroadcast(intent);
        Intent intent2 = new Intent("com.htc.launcher.action.UPDATE_SHORTCUT");
        intent2.putExtra("packagename", componentName.getPackageName());
        intent2.putExtra(RootConst.KEY_PROGRESS_COUNT, i);
        context.sendBroadcast(intent2);
    }

    @Override // com.kingroot.kinguser.ahp
    /* renamed from: xv */
    public List<String> mo11677xv() {
        return Arrays.asList("com.htc.launcher");
    }
}
