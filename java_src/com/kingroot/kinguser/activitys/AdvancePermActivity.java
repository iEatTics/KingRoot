package com.kingroot.kinguser.activitys;

import android.content.Context;
import android.content.Intent;
import com.kingroot.kinguser.AbstractC3922ym;
import com.kingroot.kinguser.aun;
import com.kingroot.kinguser.awx;
import com.kingroot.master.app.KUApplication;
/* loaded from: classes.dex */
public class AdvancePermActivity extends KUBaseActivity {
    @Override // com.kingroot.common.uilib.template.AbsActivity
    /* renamed from: oC */
    public AbstractC3922ym mo1242oC() {
        awx awxVar = new awx(this);
        awxVar.m8568a(new aun(this, awxVar));
        return awxVar;
    }

    /* renamed from: aL */
    public static void m12650aL(Context context) {
        Intent intent = new Intent();
        if (context == null) {
            context = KUApplication.m13453ge();
            intent.setFlags(268435456);
        }
        intent.setClass(context, AdvancePermActivity.class);
        context.startActivity(intent);
    }
}
