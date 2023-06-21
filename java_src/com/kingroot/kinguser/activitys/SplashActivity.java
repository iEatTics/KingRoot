package com.kingroot.kinguser.activitys;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.kingroot.kinguser.AbstractC3922ym;
import com.kingroot.kinguser.axy;
import com.kingroot.kinguser.p013ad.SplashDisplayModel;
/* loaded from: classes.dex */
public class SplashActivity extends KUBaseActivity {
    @Override // com.kingroot.common.uilib.template.AbsActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // com.kingroot.common.uilib.template.AbsActivity
    /* renamed from: oC */
    public AbstractC3922ym mo1242oC() {
        return new axy(this);
    }

    /* renamed from: a */
    public static void m12586a(Context context, SplashDisplayModel splashDisplayModel) {
        try {
            Intent intent = new Intent(context, SplashActivity.class);
            intent.putExtra("splash_display_model", splashDisplayModel);
            context.startActivity(intent);
        } catch (Exception e) {
        }
    }
}
