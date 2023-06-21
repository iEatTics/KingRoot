package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
/* loaded from: classes.dex */
public class brx implements brh {
    Context context;

    public brx(Context context) {
        this.context = context.getApplicationContext();
    }

    @Override // com.kingroot.kinguser.brh
    /* renamed from: a */
    public void mo5616a(String str, boolean z, int i, Bundle bundle) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addFlags(268435456);
        intent.setData(Uri.parse(str));
        this.context.startActivity(intent);
    }
}
