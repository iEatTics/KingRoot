package com.kingroot.kinguser.activitys;

import android.content.Intent;
import com.kingroot.kinguser.AbstractC3922ym;
import com.kingroot.kinguser.aks;
import com.kingroot.kinguser.axn;
import com.kingroot.kinguser.axx;
/* loaded from: classes.dex */
public class SoftwareProtectListActivity extends KUBaseActivity {
    @Override // com.kingroot.common.uilib.template.AbsActivity
    /* renamed from: oC */
    public AbstractC3922ym mo1242oC() {
        Intent intent = getIntent();
        switch (intent != null ? intent.getIntExtra("software.protect_list.page", 0) : 0) {
            case 0:
                aks.m11143BP().m10864bP(true);
                return new axx(this);
            case 1:
                return new axn(this);
            default:
                aks.m11143BP().m10864bP(true);
                return new axx(this);
        }
    }
}
