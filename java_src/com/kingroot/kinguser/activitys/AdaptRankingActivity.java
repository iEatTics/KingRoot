package com.kingroot.kinguser.activitys;

import android.content.Context;
import android.content.Intent;
import com.kingroot.kinguser.AbstractC3922ym;
import com.kingroot.kinguser.aum;
import com.kingroot.kinguser.awu;
/* loaded from: classes.dex */
public class AdaptRankingActivity extends KUBaseActivity {
    private final String TAG = "ku_applicationAdaptRankingActivity";

    @Override // com.kingroot.common.uilib.template.AbsActivity
    /* renamed from: oC */
    public AbstractC3922ym mo1242oC() {
        awu awuVar = new awu(this);
        awuVar.m8593a(new aum(awuVar, this));
        return awuVar;
    }

    /* renamed from: aL */
    public static void m12651aL(Context context) {
        context.startActivity(new Intent(context, AdaptRankingActivity.class));
    }
}
