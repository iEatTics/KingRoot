package com.kingroot.kinguser;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import cloudsdk.ext.p008kr.RootConst;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes.dex */
public class ahr implements ahp {
    @Override // com.kingroot.kinguser.ahp
    /* renamed from: a */
    public void mo11678a(Context context, ComponentName componentName, int i) {
        Intent intent = new Intent("com.anddoes.launcher.COUNTER_CHANGED");
        intent.putExtra("package", componentName.getPackageName());
        intent.putExtra(RootConst.KEY_PROGRESS_COUNT, i);
        intent.putExtra("class", componentName.getClassName());
        context.sendBroadcast(intent);
    }

    @Override // com.kingroot.kinguser.ahp
    /* renamed from: xv */
    public List<String> mo11677xv() {
        return Arrays.asList("com.anddoes.launcher");
    }
}
