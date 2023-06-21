package com.kingroot.kinguser.activitys;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.kingroot.kinguser.AbstractC3922ym;
import com.kingroot.kinguser.adm;
import com.kingroot.kinguser.ady;
import com.kingroot.kinguser.aeg;
import com.kingroot.kinguser.aiv;
/* loaded from: classes.dex */
public class KuInstallNotifyActivity extends KUBaseActivity {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.activitys.KUBaseActivity, com.kingroot.common.uilib.template.BaseActivity, com.kingroot.common.uilib.template.AbsActivity, android.app.Activity
    public void onStop() {
        finish();
        super.onStop();
    }

    @Override // com.kingroot.common.uilib.template.AbsActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (intent != null) {
            int intExtra = intent.getIntExtra("ku_update_flag", 0);
            adm.m12480st().m12479su();
            if (intExtra == 1) {
                ady.m12308tK().mo1746bi(100417);
                aeg.m12265um().mo12214cK(1);
            } else if (intExtra == 2) {
                ady.m12308tK().mo1746bi(100418);
                String stringExtra = intent.getStringExtra("ku_install_path");
                if (!TextUtils.isEmpty(stringExtra)) {
                    aiv.m11525yw().m11530s(stringExtra, 1);
                }
            }
        }
        finish();
    }

    @Override // com.kingroot.common.uilib.template.AbsActivity
    /* renamed from: oC */
    public AbstractC3922ym mo1242oC() {
        return null;
    }

    /* renamed from: d */
    public static Intent m12617d(Context context, String str, int i) {
        Intent intent = new Intent(context, KuInstallNotifyActivity.class);
        try {
            intent.setFlags(268435456);
            intent.setAction("com.kingroot.kinguser.KU_INSTALL");
            intent.putExtra("ku_install_path", str);
            intent.putExtra("ku_update_flag", i);
            intent.setPackage(context.getPackageName());
        } catch (Exception e) {
        }
        return intent;
    }
}
