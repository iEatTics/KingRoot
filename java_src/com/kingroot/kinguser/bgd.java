package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.support.annotation.NonNull;
/* loaded from: classes.dex */
public class bgd {
    /* renamed from: bt */
    public static void m7122bt(@NonNull Context context) {
        context.startActivity(new Intent("android.settings.SETTINGS"));
        C3637tk m2167cS = C3637tk.m2167cS("ActivityJumpHelper#jumpSysSetting");
        if (m2167cS != null) {
            m2167cS.m2161s(180000L);
        }
    }
}
