package com.kingroot.kinguser.activitys;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.kingroot.kinguser.AbstractC3922ym;
import com.kingroot.kinguser.aoh;
/* loaded from: classes.dex */
public class ReserveActivity extends KUBaseActivity {
    @Override // com.kingroot.common.uilib.template.AbsActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // com.kingroot.common.uilib.template.AbsActivity
    /* renamed from: oC */
    public AbstractC3922ym mo1242oC() {
        return new aoh(this);
    }

    /* renamed from: aK */
    public static void m12613aK(Context context) {
        Intent intent = new Intent();
        intent.setClass(context, ReserveActivity.class);
        context.startActivity(intent);
    }
}
