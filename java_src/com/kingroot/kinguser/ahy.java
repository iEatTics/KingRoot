package com.kingroot.kinguser;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes.dex */
public class ahy implements ahp {
    @Override // com.kingroot.kinguser.ahp
    /* renamed from: a */
    public void mo11678a(Context context, ComponentName componentName, int i) {
        Intent intent = new Intent("com.majeur.launcher.intent.action.UPDATE_BADGE");
        intent.putExtra("com.majeur.launcher.intent.extra.BADGE_PACKAGE", componentName.getPackageName());
        intent.putExtra("com.majeur.launcher.intent.extra.BADGE_COUNT", i);
        intent.putExtra("com.majeur.launcher.intent.extra.BADGE_CLASS", componentName.getClassName());
        context.sendBroadcast(intent);
    }

    @Override // com.kingroot.kinguser.ahp
    /* renamed from: xv */
    public List<String> mo11677xv() {
        return Arrays.asList("com.majeur.launcher");
    }
}
