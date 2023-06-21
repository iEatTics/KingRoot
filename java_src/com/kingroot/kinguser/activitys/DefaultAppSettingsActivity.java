package com.kingroot.kinguser.activitys;

import android.content.Context;
import android.content.Intent;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.AbstractC3922ym;
import com.kingroot.kinguser.axe;
/* loaded from: classes.dex */
public class DefaultAppSettingsActivity extends KUBaseActivity {
    @Override // com.kingroot.common.uilib.template.AbsActivity
    /* renamed from: oC */
    public AbstractC3922ym mo1242oC() {
        return new axe(this);
    }

    public static void start(boolean z) {
        Context m13453ge = KApplication.m13453ge();
        Intent intent = new Intent();
        intent.putExtra("defaultSetting_optimize_flag", z);
        intent.setClass(m13453ge, DefaultAppSettingsActivity.class);
        intent.setFlags(268435456);
        m13453ge.startActivity(intent);
    }
}
