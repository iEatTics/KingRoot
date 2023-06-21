package com.kingroot.kinguser.activitys;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.kingroot.kinguser.AbstractC3922ym;
import com.kingroot.kinguser.ady;
import com.kingroot.kinguser.aob;
/* loaded from: classes.dex */
public class AppIgnoreUpdateActivity extends KUBaseActivity {
    @Override // com.kingroot.common.uilib.template.AbsActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ady.m12308tK().mo1746bi(100731);
    }

    @Override // com.kingroot.common.uilib.template.AbsActivity
    /* renamed from: oC */
    public AbstractC3922ym mo1242oC() {
        return new aob(this);
    }

    /* renamed from: aK */
    public static void m12641aK(Context context) {
        Intent intent = new Intent();
        intent.setClass(context, AppIgnoreUpdateActivity.class);
        context.startActivity(intent);
    }
}
