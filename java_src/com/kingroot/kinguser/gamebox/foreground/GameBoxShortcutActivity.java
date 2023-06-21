package com.kingroot.kinguser.gamebox.foreground;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.kingroot.kinguser.AbstractC3922ym;
import com.kingroot.kinguser.C3840wl;
import com.kingroot.kinguser.adm;
import com.kingroot.kinguser.ady;
import com.kingroot.kinguser.aks;
import com.kingroot.kinguser.asv;
import com.kingroot.kinguser.atm;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class GameBoxShortcutActivity extends GameBoxMainActivity {
    @Override // com.kingroot.kinguser.gamebox.foreground.GameBoxMainActivity, com.kingroot.common.uilib.template.AbsActivity
    /* renamed from: oC */
    public AbstractC3922ym mo1242oC() {
        return new atm(this, 2);
    }

    @Override // com.kingroot.kinguser.gamebox.foreground.GameBoxBaseActivity, com.kingroot.common.uilib.template.AbsActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        aks.m11143BP().m10994Ei();
        overridePendingTransition(R.anim.grow_from_middle, R.anim.shrink_to_middle);
        try {
            Intent intent = getIntent();
            if (intent != null && intent.getIntExtra("extra_start_from", 0) == 1) {
                ady.m12308tK().mo1746bi(100271);
            }
            ady.m12308tK().mo1746bi(100283);
            if (intent != null && intent.getIntExtra("extra_start_from", 0) == 1) {
                adm.m12480st().m12501cy(17);
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: c */
    public static void m3760c(Activity activity) {
        try {
            Intent intent = new Intent();
            intent.setClass(activity, GameBoxShortcutActivity.class);
            activity.startActivity(intent);
        } catch (Exception e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.activitys.KUBaseActivity, com.kingroot.common.uilib.template.AbsActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (!aks.m11143BP().m11061DT()) {
            asv.m9360cJ(false);
        }
    }

    @Override // com.kingroot.common.uilib.template.AbsActivity, android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(R.anim.grow_from_middle, R.anim.shrink_to_middle);
        m3761Pp();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.common.uilib.template.AbsActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        overridePendingTransition(R.anim.grow_from_middle, R.anim.shrink_to_middle);
    }

    /* renamed from: Pp */
    private void m3761Pp() {
        if (!aks.m11143BP().m11059DV()) {
            C3840wl.m1551c(new Runnable() { // from class: com.kingroot.kinguser.gamebox.foreground.GameBoxShortcutActivity.1
                @Override // java.lang.Runnable
                public void run() {
                    GameBoxGuideActivityDialog.m3764Pd();
                }
            }, 1000L);
        }
    }
}
