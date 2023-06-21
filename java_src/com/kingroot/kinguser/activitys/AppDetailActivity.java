package com.kingroot.kinguser.activitys;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.kingroot.kinguser.AbstractC3922ym;
import com.kingroot.kinguser.ank;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
/* loaded from: classes.dex */
public class AppDetailActivity extends KUBaseActivity {
    @Override // com.kingroot.common.uilib.template.AbsActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // com.kingroot.common.uilib.template.AbsActivity
    /* renamed from: oC */
    public AbstractC3922ym mo1242oC() {
        return new ank(this);
    }

    /* renamed from: a */
    public static void m12647a(Context context, AppBaseModel appBaseModel) {
        m12646a(context, appBaseModel, false);
    }

    /* renamed from: a */
    public static void m12646a(Context context, AppBaseModel appBaseModel, boolean z) {
        m12645a(context, appBaseModel, z, 0);
    }

    /* renamed from: a */
    public static void m12645a(Context context, AppBaseModel appBaseModel, boolean z, int i) {
        Intent intent = new Intent();
        Bundle bundle = new Bundle();
        bundle.putInt("app_detail_scene", i);
        bundle.putBoolean("app_auto_start_download", z);
        bundle.putParcelable("app_detail_model", appBaseModel);
        intent.setClass(context, AppDetailActivity.class);
        intent.putExtras(bundle);
        context.startActivity(intent);
    }
}
