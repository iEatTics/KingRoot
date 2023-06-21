package com.kingroot.kinguser.gamebox.foreground;

import android.app.Activity;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import com.kingroot.kinguser.AbstractC3922ym;
import com.kingroot.kinguser.atn;
/* loaded from: classes.dex */
public class RecommendGameDetailActivity extends GameBoxBaseActivity {
    @Override // com.kingroot.common.uilib.template.AbsActivity
    /* renamed from: oC */
    public AbstractC3922ym mo1242oC() {
        return new atn(this);
    }

    @Override // com.kingroot.kinguser.gamebox.foreground.GameBoxBaseActivity, com.kingroot.common.uilib.template.AbsActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        overridePendingTransition(0, 0);
        getWindow().setBackgroundDrawable(new ColorDrawable(0));
    }

    /* renamed from: a */
    public static void m3759a(Activity activity, Bundle bundle) {
        if (bundle != null) {
            Intent intent = new Intent();
            intent.putExtras(bundle);
            intent.addFlags(268435456);
            intent.setClass(activity, RecommendGameDetailActivity.class);
            activity.startActivity(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.activitys.KUBaseActivity, com.kingroot.common.uilib.template.AbsActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    @Override // com.kingroot.common.uilib.template.AbsActivity, android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(0, 0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.common.uilib.template.AbsActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        overridePendingTransition(0, 0);
    }
}
