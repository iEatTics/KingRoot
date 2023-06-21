package com.kingroot.kinguser.activitys;

import android.content.Context;
import android.content.Intent;
import com.kingroot.kinguser.AbstractC3922ym;
import com.kingroot.kinguser.axv;
import com.kingroot.master.app.KUApplication;
/* loaded from: classes.dex */
public class SilentInstallSettingActivity extends KUBaseActivity {
    @Override // com.kingroot.common.uilib.template.AbsActivity
    /* renamed from: oC */
    public AbstractC3922ym mo1242oC() {
        return new axv(this);
    }

    /* renamed from: vw */
    public static void m12590vw() {
        Context ge = KUApplication.m13453ge();
        Intent intent = new Intent(ge, SilentInstallSettingActivity.class);
        intent.setFlags(268435456);
        ge.startActivity(intent);
    }
}
