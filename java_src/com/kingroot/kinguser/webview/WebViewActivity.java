package com.kingroot.kinguser.webview;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.kingroot.common.uilib.template.BaseActivity;
import com.kingroot.kinguser.AbstractC3922ym;
import com.kingroot.kinguser.bin;
/* loaded from: classes.dex */
public class WebViewActivity extends BaseActivity {
    @Override // com.kingroot.common.uilib.template.AbsActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // com.kingroot.common.uilib.template.AbsActivity
    /* renamed from: oC */
    public AbstractC3922ym mo1242oC() {
        return new bin(this);
    }

    /* renamed from: g */
    public static void m1566g(Context context, String str, String str2) {
        m1567a(context, str, str2, -1);
    }

    /* renamed from: a */
    public static void m1567a(Context context, String str, String str2, int i) {
        Intent intent = new Intent();
        intent.addFlags(268435456);
        intent.setClass(context, WebViewActivity.class);
        intent.putExtra("url", str);
        intent.putExtra("webview_title", str2);
        intent.putExtra("monitor_webview", i);
        context.startActivity(intent);
    }
}
