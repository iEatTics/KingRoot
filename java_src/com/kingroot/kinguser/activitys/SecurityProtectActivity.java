package com.kingroot.kinguser.activitys;

import android.content.Context;
import android.content.Intent;
import com.kingroot.kinguser.AbstractC3922ym;
import com.kingroot.kinguser.aut;
import com.kingroot.kinguser.axr;
import com.kingroot.master.app.KUApplication;
/* loaded from: classes.dex */
public class SecurityProtectActivity extends KUBaseActivity {
    @Override // com.kingroot.common.uilib.template.AbsActivity
    /* renamed from: oC */
    public AbstractC3922ym mo1242oC() {
        axr axrVar = new axr(this);
        axrVar.m8182a(new aut(axrVar));
        return axrVar;
    }

    /* renamed from: aL */
    public static void m12607aL(Context context) {
        m12606f(context, false);
    }

    /* renamed from: f */
    public static void m12606f(Context context, boolean z) {
        try {
            Intent intent = new Intent();
            if (context == null) {
                context = KUApplication.m13453ge();
                intent.setFlags(268435456);
            }
            intent.putExtra("mode", z);
            intent.setClass(context, SecurityProtectActivity.class);
            context.startActivity(intent);
        } catch (Exception e) {
        }
    }
}
