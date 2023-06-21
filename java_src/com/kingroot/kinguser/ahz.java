package com.kingroot.kinguser;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes.dex */
public class ahz implements ahp {
    @Override // com.kingroot.kinguser.ahp
    /* renamed from: a */
    public void mo11678a(Context context, ComponentName componentName, int i) {
        Intent intent = new Intent("com.sonyericsson.home.action.UPDATE_BADGE");
        intent.putExtra("com.sonyericsson.home.intent.extra.badge.PACKAGE_NAME", componentName.getPackageName());
        intent.putExtra("com.sonyericsson.home.intent.extra.badge.ACTIVITY_NAME", componentName.getClassName());
        intent.putExtra("com.sonyericsson.home.intent.extra.badge.MESSAGE", String.valueOf(i));
        intent.putExtra("com.sonyericsson.home.intent.extra.badge.SHOW_MESSAGE", i > 0);
        context.sendBroadcast(intent);
    }

    @Override // com.kingroot.kinguser.ahp
    /* renamed from: xv */
    public List<String> mo11677xv() {
        return Arrays.asList("com.sonyericsson.home");
    }
}
