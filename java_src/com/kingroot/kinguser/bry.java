package com.kingroot.kinguser;

import android.content.Context;
import android.os.Bundle;
/* loaded from: classes.dex */
public class bry implements brh {
    final String TAG = "H5ManagerProxy";
    brh bLg;
    brh bLh;
    private Context context;

    public bry(Context context) {
        this.context = context.getApplicationContext();
    }

    /* renamed from: b */
    public void m5615b(brh brhVar) {
        this.bLg = brhVar;
    }

    @Override // com.kingroot.kinguser.brh
    /* renamed from: a */
    public void mo5616a(String str, boolean z, int i, Bundle bundle) {
        brh brhVar = this.bLg;
        if (brhVar == null) {
            bth.m5541d("H5ManagerProxy", "null == mIH5Browser");
            if (this.bLh == null) {
                synchronized (this) {
                    if (this.bLh == null) {
                        this.bLh = new brx(this.context);
                    }
                }
            }
            brhVar = this.bLh;
        }
        bth.m5541d("H5ManagerProxy", "url=" + str + " report=" + z + " staticpoint=" + i);
        brhVar.mo5616a(str, z, i, bundle);
    }
}
