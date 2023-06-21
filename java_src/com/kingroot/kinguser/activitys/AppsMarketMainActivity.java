package com.kingroot.kinguser.activitys;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.kingroot.kinguser.AbstractC3922ym;
import com.kingroot.kinguser.ady;
import com.kingroot.kinguser.ane;
import com.kingroot.kinguser.anu;
import com.kingroot.kinguser.auo;
/* loaded from: classes.dex */
public class AppsMarketMainActivity extends KUBaseActivity {
    @Override // com.kingroot.common.uilib.template.AbsActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ane.m10302IR();
        ady.m12308tK().mo1746bi(100587);
    }

    @Override // com.kingroot.common.uilib.template.AbsActivity
    /* renamed from: oC */
    public AbstractC3922ym mo1242oC() {
        anu anuVar = new anu(this);
        anuVar.m10074a(new auo(anuVar));
        return anuVar;
    }

    /* renamed from: aL */
    public static void m12637aL(Context context) {
        context.startActivity(new Intent(context, AppsMarketMainActivity.class));
    }

    /* renamed from: aN */
    public static void m12636aN(Context context) {
        Intent intent = new Intent(context, AppsMarketMainActivity.class);
        intent.putExtra("show_well_chosen", true);
        context.startActivity(intent);
    }
}
