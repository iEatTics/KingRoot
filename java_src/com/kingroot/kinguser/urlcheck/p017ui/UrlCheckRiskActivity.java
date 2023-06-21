package com.kingroot.kinguser.urlcheck.p017ui;

import android.content.Context;
import android.content.Intent;
import com.kingroot.kinguser.AbstractC3922ym;
import com.kingroot.kinguser.activitys.KUBaseActivity;
import com.kingroot.kinguser.bgb;
import com.kingroot.master.app.KUApplication;
/* renamed from: com.kingroot.kinguser.urlcheck.ui.UrlCheckRiskActivity */
/* loaded from: classes.dex */
public class UrlCheckRiskActivity extends KUBaseActivity {
    @Override // com.kingroot.common.uilib.template.AbsActivity
    /* renamed from: oC */
    public AbstractC3922ym mo1242oC() {
        return new bgb(this);
    }

    /* renamed from: aL */
    public static void m1988aL(Context context) {
        Intent intent = new Intent();
        if (context == null) {
            context = KUApplication.m13453ge();
            intent.setFlags(268435456);
        }
        intent.setClass(context, UrlCheckRiskActivity.class);
        context.startActivity(intent);
    }
}
