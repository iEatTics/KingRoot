package com.kingroot.kinguser.activitys;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.kingroot.kinguser.AbstractC3922ym;
import com.kingroot.kinguser.anq;
/* loaded from: classes.dex */
public class AppSearchActivity extends KUBaseActivity {
    @Override // com.kingroot.common.uilib.template.AbsActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // com.kingroot.common.uilib.template.AbsActivity
    /* renamed from: oC */
    public AbstractC3922ym mo1242oC() {
        return new anq(this);
    }

    /* renamed from: aK */
    public static void m12640aK(Context context) {
        Intent intent = new Intent();
        intent.setClass(context, AppSearchActivity.class);
        context.startActivity(intent);
    }

    /* renamed from: e */
    public static void m12639e(Context context, String str, String str2) {
        Intent intent = new Intent();
        intent.setClass(context, AppSearchActivity.class);
        intent.putExtra("app_search_key_word", str);
        intent.putExtra("app_search_hint_hot_word", str2);
        context.startActivity(intent);
    }
}
