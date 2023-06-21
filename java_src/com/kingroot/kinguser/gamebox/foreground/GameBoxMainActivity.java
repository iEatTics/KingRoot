package com.kingroot.kinguser.gamebox.foreground;

import android.app.Activity;
import android.content.Intent;
import com.kingroot.kinguser.AbstractC3922ym;
import com.kingroot.kinguser.aks;
import com.kingroot.kinguser.atm;
/* loaded from: classes.dex */
public class GameBoxMainActivity extends GameBoxBaseActivity {
    @Override // com.kingroot.common.uilib.template.AbsActivity
    /* renamed from: oC */
    public AbstractC3922ym mo1242oC() {
        aks.m11143BP().m11057DX();
        return new atm(this, 1);
    }

    /* renamed from: c */
    public static void m3762c(Activity activity) {
        try {
            Intent intent = new Intent();
            intent.setClass(activity, GameBoxMainActivity.class);
            activity.startActivity(intent);
        } catch (Exception e) {
        }
    }
}
