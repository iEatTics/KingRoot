package com.kingroot.kinguser;

import android.content.Intent;
import android.net.Uri;
import com.kingroot.master.app.KUApplication;
/* loaded from: classes.dex */
public class ban {
    /* renamed from: VE */
    public static void m7903VE() {
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("http://www.kingroot.net"));
            if (C3952zh.m1312pq().queryIntentActivities(intent, 0).size() > 0) {
                intent.setFlags(335544320);
                KUApplication.m13453ge().startActivity(intent);
            }
        } catch (Throwable th) {
        }
    }
}
