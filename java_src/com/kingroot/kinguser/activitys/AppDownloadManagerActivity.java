package com.kingroot.kinguser.activitys;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.kingroot.kinguser.AbstractC3922ym;
import com.kingroot.kinguser.ady;
import com.kingroot.kinguser.anm;
/* loaded from: classes.dex */
public class AppDownloadManagerActivity extends KUBaseActivity {
    private int aie = 0;

    @Override // com.kingroot.common.uilib.template.AbsActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.activitys.KUBaseActivity, com.kingroot.common.uilib.template.AbsActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        Intent intent = getIntent();
        if (intent != null) {
            this.aie = intent.getIntExtra("key_notify_type", 0);
        }
        if (this.aie == 1) {
            ady.m12308tK().mo1746bi(100612);
        }
    }

    @Override // com.kingroot.common.uilib.template.AbsActivity
    /* renamed from: oC */
    public AbstractC3922ym mo1242oC() {
        return new anm(this);
    }

    /* renamed from: aK */
    public static void m12643aK(Context context) {
        Intent intent = new Intent();
        intent.setClass(context, AppDownloadManagerActivity.class);
        context.startActivity(intent);
    }

    /* renamed from: aM */
    public static void m12642aM(Context context) {
        Intent intent = new Intent();
        intent.putExtra("key_is_auto_install", true);
        intent.setClass(context, AppDownloadManagerActivity.class);
        context.startActivity(intent);
    }
}
