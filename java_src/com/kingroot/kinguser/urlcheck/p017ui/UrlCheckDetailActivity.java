package com.kingroot.kinguser.urlcheck.p017ui;

import android.content.Context;
import android.content.Intent;
import com.kingroot.kinguser.AbstractC3922ym;
import com.kingroot.kinguser.activitys.KUBaseActivity;
import com.kingroot.kinguser.bfz;
import com.kingroot.kinguser.urlcheck.p016db.UrlCheckLog;
import com.kingroot.master.app.KUApplication;
/* renamed from: com.kingroot.kinguser.urlcheck.ui.UrlCheckDetailActivity */
/* loaded from: classes.dex */
public class UrlCheckDetailActivity extends KUBaseActivity {
    @Override // com.kingroot.common.uilib.template.AbsActivity
    /* renamed from: oC */
    public AbstractC3922ym mo1242oC() {
        return new bfz(this);
    }

    /* renamed from: a */
    public static void m1992a(Context context, UrlCheckLog urlCheckLog) {
        Intent intent = new Intent();
        if (context == null) {
            context = KUApplication.m13453ge();
            intent.setFlags(268435456);
        }
        intent.setClass(context, UrlCheckDetailActivity.class);
        intent.putExtra("key_risk_url_log", urlCheckLog);
        context.startActivity(intent);
    }
}
