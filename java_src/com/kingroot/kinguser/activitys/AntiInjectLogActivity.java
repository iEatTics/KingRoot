package com.kingroot.kinguser.activitys;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.kingroot.kinguser.AbstractC3922ym;
import com.kingroot.kinguser.adm;
import com.kingroot.kinguser.ady;
import com.kingroot.kinguser.aks;
import com.kingroot.kinguser.awz;
/* loaded from: classes.dex */
public class AntiInjectLogActivity extends KUBaseActivity {
    @Override // com.kingroot.common.uilib.template.AbsActivity
    /* renamed from: oC */
    public AbstractC3922ym mo1242oC() {
        return new awz(this);
    }

    @Override // com.kingroot.common.uilib.template.AbsActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        adm.m12480st().m12494sB();
        aks.m11143BP().m10910aL(System.currentTimeMillis());
        ady.m12308tK().mo1746bi(100223);
    }

    /* renamed from: c */
    public static void m12648c(Activity activity) {
        Intent intent = new Intent();
        intent.setClass(activity, AntiInjectLogActivity.class);
        activity.startActivity(intent);
    }
}
