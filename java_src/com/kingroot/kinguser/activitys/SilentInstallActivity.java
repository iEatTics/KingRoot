package com.kingroot.kinguser.activitys;

import android.content.Context;
import android.content.Intent;
import com.kingroot.kinguser.AbstractC3922ym;
import com.kingroot.kinguser.auu;
import com.kingroot.kinguser.axu;
import com.kingroot.master.app.KUApplication;
/* loaded from: classes.dex */
public class SilentInstallActivity extends KUBaseActivity {
    @Override // com.kingroot.common.uilib.template.AbsActivity
    /* renamed from: oC */
    public AbstractC3922ym mo1242oC() {
        axu axuVar = new axu(this);
        axuVar.m8142a(new auu(this, axuVar));
        return axuVar;
    }

    /* renamed from: aL */
    public static void m12592aL(Context context) {
        Intent intent = new Intent();
        if (context == null) {
            context = KUApplication.m13453ge();
            intent.setFlags(268435456);
        }
        intent.setClass(context, SilentInstallActivity.class);
        context.startActivity(intent);
    }
}
