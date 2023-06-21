package com.kingroot.kinguser.activitys;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.kingroot.kinguser.AbstractC3922ym;
import com.kingroot.kinguser.ady;
import com.kingroot.kinguser.aks;
import com.kingroot.kinguser.axa;
import com.kingroot.master.app.KUApplication;
/* loaded from: classes.dex */
public class AntiInjectActivity extends KUBaseActivity {
    @Override // com.kingroot.common.uilib.template.AbsActivity
    /* renamed from: oC */
    public AbstractC3922ym mo1242oC() {
        return new axa(this);
    }

    @Override // com.kingroot.common.uilib.template.AbsActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ady.m12308tK().mo1746bi(100212);
        aks.m11143BP().m10847be(System.currentTimeMillis());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v2, types: [android.content.Context] */
    /* renamed from: b */
    public static void m12649b(Activity activity) {
        Intent intent = new Intent();
        Activity activity2 = activity;
        if (activity == null) {
            ?? ge = KUApplication.m13453ge();
            intent.setFlags(268435456);
            activity2 = ge;
        }
        intent.setClass(activity2, AntiInjectActivity.class);
        intent.putExtra("AntiInjectPage.is_auto_open", true);
        activity2.startActivity(intent);
    }
}
