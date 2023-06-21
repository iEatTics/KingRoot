package com.kingroot.kinguser.activitys;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.kingroot.kinguser.AbstractC3922ym;
import com.kingroot.kinguser.aoe;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
/* loaded from: classes.dex */
public class PopRecommendAppSplashActivity extends KUBaseActivity {
    @Override // com.kingroot.common.uilib.template.AbsActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        getWindow().setFlags(32, 32);
        getWindow().setFlags(262144, 262144);
        super.onCreate(bundle);
    }

    @Override // com.kingroot.common.uilib.template.AbsActivity
    /* renamed from: oC */
    public AbstractC3922ym mo1242oC() {
        return new aoe(this);
    }

    /* renamed from: a */
    public static void m12616a(Context context, AppBaseModel appBaseModel, int i) {
        Intent intent = new Intent();
        Bundle bundle = new Bundle();
        bundle.putSerializable("extra_splash_entity", appBaseModel);
        bundle.putInt("extra_scen", i);
        intent.setClass(context, PopRecommendAppSplashActivity.class);
        intent.putExtras(bundle);
        context.startActivity(intent);
    }
}
