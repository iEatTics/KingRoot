package com.kingroot.kinguser.activitys;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.kingroot.kinguser.AbstractC3922ym;
import com.kingroot.kinguser.ant;
/* loaded from: classes.dex */
public class AppsMarketCategoryActivity extends KUBaseActivity {
    @Override // com.kingroot.common.uilib.template.AbsActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // com.kingroot.common.uilib.template.AbsActivity
    /* renamed from: oC */
    public AbstractC3922ym mo1242oC() {
        return new ant(this);
    }

    /* renamed from: aL */
    public static void m12638aL(Context context) {
        context.startActivity(new Intent(context, AppsMarketCategoryActivity.class));
    }
}
