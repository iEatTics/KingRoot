package com.kingroot.kinguser.activitys;

import android.content.Context;
import android.content.Intent;
import com.kingroot.kinguser.AbstractC3922ym;
import com.kingroot.kinguser.axw;
/* loaded from: classes.dex */
public class SoftwareHelpActivity extends KUBaseActivity {
    @Override // com.kingroot.common.uilib.template.AbsActivity
    /* renamed from: oC */
    public AbstractC3922ym mo1242oC() {
        int intExtra;
        Intent intent = getIntent();
        return (intent == null || (intExtra = intent.getIntExtra("Soft_Help_Expand_Pos_Flag", -1)) == -1) ? new axw(this) : new axw(this, intExtra);
    }

    /* renamed from: j */
    public static void m12587j(Context context, int i) {
        try {
            Intent intent = new Intent();
            intent.setClass(context, SoftwareHelpActivity.class);
            intent.putExtra("Soft_Help_Expand_Pos_Flag", i);
            context.startActivity(intent);
        } catch (Exception e) {
        }
    }
}
