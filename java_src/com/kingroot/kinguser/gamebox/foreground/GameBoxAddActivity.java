package com.kingroot.kinguser.gamebox.foreground;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.kingroot.kinguser.AbstractC3922ym;
import com.kingroot.kinguser.activitys.KUBaseActivity;
import com.kingroot.kinguser.ady;
import com.kingroot.kinguser.atj;
/* loaded from: classes.dex */
public class GameBoxAddActivity extends KUBaseActivity {
    @Override // com.kingroot.common.uilib.template.AbsActivity
    /* renamed from: oC */
    public AbstractC3922ym mo1242oC() {
        return new atj(this);
    }

    @Override // com.kingroot.common.uilib.template.AbsActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ady.m12308tK().mo1746bi(100286);
    }

    /* renamed from: c */
    public static void m3767c(Activity activity) {
        Intent intent = new Intent();
        intent.setClass(activity, GameBoxAddActivity.class);
        activity.startActivity(intent);
    }
}
