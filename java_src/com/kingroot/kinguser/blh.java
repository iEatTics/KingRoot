package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import com.kingroot.common.app.KApplication;
/* loaded from: classes.dex */
public class blh extends C3657tp {
    bed bzM = null;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.C3657tp, com.kingroot.kinguser.AbstractC3642to
    /* renamed from: I */
    public void mo2133I(Context context) {
        super.mo2133I(context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.C3657tp, com.kingroot.kinguser.AbstractC3642to
    /* renamed from: a */
    public void mo2132a(Intent intent) {
        super.mo2132a(intent);
        if (intent != null && intent.getIntExtra("process_flag", 0) == 1) {
            afj();
        }
    }

    private void afj() {
        if (this.bzM == null) {
            this.bzM = new bed(bem.LOW, bec.Light_Weight, true, new bek() { // from class: com.kingroot.kinguser.blh.1
                @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                public void run() {
                    super.run();
                    baw.m7873VY();
                }
            });
        }
        beg.m7461Zj().m7450c(this.bzM);
    }

    /* renamed from: jJ */
    public static void m6501jJ(int i) {
        Intent intent = new Intent(KApplication.m13453ge(), blh.class);
        intent.putExtra("process_flag", i);
        C3636tj.startService(intent);
    }

    public static void afk() {
        m6501jJ(1);
    }
}
