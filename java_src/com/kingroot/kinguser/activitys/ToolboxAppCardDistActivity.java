package com.kingroot.kinguser.activitys;

import android.content.Context;
import android.content.Intent;
import android.support.annotation.NonNull;
import com.kingroot.kinguser.AbstractC3922ym;
import com.kingroot.kinguser.C3948zd;
import com.kingroot.kinguser.ayb;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
import java.io.Serializable;
/* loaded from: classes.dex */
public class ToolboxAppCardDistActivity extends KUBaseActivity {
    @Override // com.kingroot.common.uilib.template.AbsActivity
    /* renamed from: oC */
    public AbstractC3922ym mo1242oC() {
        Intent intent = getIntent();
        if (intent != null) {
            return new ayb(this, (AppBaseModel) intent.getParcelableExtra("extra_app_info"));
        }
        finish();
        return null;
    }

    /* renamed from: b */
    public static void m12576b(Context context, @NonNull AppBaseModel appBaseModel) {
        C3948zd.m1327k(appBaseModel);
        C3948zd.m1327k(context);
        Intent intent = new Intent(context, ToolboxAppCardDistActivity.class);
        intent.putExtra("extra_app_info", (Serializable) appBaseModel);
        context.startActivity(intent);
    }
}
