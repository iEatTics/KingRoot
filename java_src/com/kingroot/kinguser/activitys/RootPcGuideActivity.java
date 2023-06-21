package com.kingroot.kinguser.activitys;

import android.content.Context;
import android.content.Intent;
import com.kingroot.common.uilib.template.BaseActivity;
import com.kingroot.kinguser.AbstractC3922ym;
import com.kingroot.kinguser.axp;
/* loaded from: classes.dex */
public class RootPcGuideActivity extends BaseActivity {
    @Override // com.kingroot.common.uilib.template.AbsActivity
    /* renamed from: oC */
    public AbstractC3922ym mo1242oC() {
        return new axp(this);
    }

    /* renamed from: aL */
    public static void m12611aL(Context context) {
        context.startActivity(new Intent(context, RootPcGuideActivity.class));
    }
}
