package com.kingroot.kinguser.xmod.p018ui;

import android.content.Context;
import android.content.Intent;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.AbstractC3922ym;
import com.kingroot.kinguser.activitys.KUBaseActivity;
import com.kingroot.kinguser.biu;
import com.kingroot.kinguser.xmod.cloud.CveCloudListManager;
/* renamed from: com.kingroot.kinguser.xmod.ui.CveDetailActivity */
/* loaded from: classes.dex */
public class CveDetailActivity extends KUBaseActivity {
    @Override // com.kingroot.common.uilib.template.AbsActivity
    /* renamed from: oC */
    public AbstractC3922ym mo1242oC() {
        return new biu(this);
    }

    /* renamed from: b */
    public static void m1464b(CveCloudListManager.CveInfo cveInfo) {
        Context m13453ge = KApplication.m13453ge();
        Intent intent = new Intent(m13453ge, CveDetailActivity.class);
        intent.addFlags(268435456);
        intent.putExtra("cve_info", cveInfo);
        m13453ge.startActivity(intent);
    }
}
