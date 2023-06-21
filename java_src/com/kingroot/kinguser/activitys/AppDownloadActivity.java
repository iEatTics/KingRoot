package com.kingroot.kinguser.activitys;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.kingroot.kinguser.AbstractC3922ym;
import com.kingroot.kinguser.anl;
/* loaded from: classes.dex */
public class AppDownloadActivity extends KUBaseActivity {
    @Override // com.kingroot.common.uilib.template.AbsActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // com.kingroot.common.uilib.template.AbsActivity
    /* renamed from: oC */
    public AbstractC3922ym mo1242oC() {
        return new anl(this);
    }

    /* renamed from: c */
    public static void m12644c(Context context, String str, int i) {
        Intent intent = new Intent();
        intent.setClass(context, AppDownloadActivity.class);
        intent.putExtra("app_download_page_title", str);
        intent.putExtra("app_download_page_category_id", i);
        context.startActivity(intent);
    }
}
