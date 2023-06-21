package com.kingroot.kinguser.urlcheck.p017ui;

import android.content.Context;
import android.content.Intent;
import com.kingroot.kinguser.AbstractC3922ym;
import com.kingroot.kinguser.activitys.KUBaseActivity;
import com.kingroot.kinguser.bga;
import com.kingroot.master.app.KUApplication;
/* renamed from: com.kingroot.kinguser.urlcheck.ui.UrlCheckMainActivity */
/* loaded from: classes.dex */
public class UrlCheckMainActivity extends KUBaseActivity {
    @Override // com.kingroot.common.uilib.template.AbsActivity
    /* renamed from: oC */
    public AbstractC3922ym mo1242oC() {
        return new bga(this, getIntent().getBooleanExtra("auto_start_url_check", false));
    }

    /* renamed from: aL */
    public static void m1990aL(Context context) {
        m1989f(context, false);
    }

    /* renamed from: f */
    public static void m1989f(Context context, boolean z) {
        Intent intent = new Intent();
        if (context == null) {
            context = KUApplication.m13453ge();
            intent.setFlags(268435456);
        }
        intent.setClass(context, UrlCheckMainActivity.class);
        intent.putExtra("auto_start_url_check", z);
        context.startActivity(intent);
    }
}
