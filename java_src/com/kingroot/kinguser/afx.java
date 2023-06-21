package com.kingroot.kinguser;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
/* loaded from: classes.dex */
public class afx implements brh {
    @Override // com.kingroot.kinguser.brh
    /* renamed from: a */
    public void mo5616a(String str, boolean z, int i, Bundle bundle) {
        if (!TextUtils.isEmpty(str)) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.addFlags(268435456);
            intent.setData(Uri.parse(str));
            KApplication.m13453ge().startActivity(intent);
        }
    }
}
