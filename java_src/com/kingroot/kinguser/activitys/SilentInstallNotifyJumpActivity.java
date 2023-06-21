package com.kingroot.kinguser.activitys;

import android.os.Bundle;
import com.kingroot.kinguser.AbstractC3922ym;
import com.kingroot.kinguser.adm;
import com.kingroot.kinguser.ady;
/* loaded from: classes.dex */
public class SilentInstallNotifyJumpActivity extends KUBaseActivity {
    @Override // com.kingroot.common.uilib.template.AbsActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ady.m12308tK().mo1746bi(100505);
        adm.m12480st().m12485sK();
        SilentInstallActivity.m12592aL(this);
        finish();
    }

    @Override // com.kingroot.common.uilib.template.AbsActivity
    /* renamed from: oC */
    public AbstractC3922ym mo1242oC() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.activitys.KUBaseActivity, com.kingroot.common.uilib.template.BaseActivity, com.kingroot.common.uilib.template.AbsActivity, android.app.Activity
    public void onStop() {
        finish();
        super.onStop();
    }
}
