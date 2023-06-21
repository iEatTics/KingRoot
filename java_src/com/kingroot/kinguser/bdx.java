package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.kingroot.kinguser.bdv;
import com.kingroot.master.app.KUApplication;
/* loaded from: classes.dex */
public class bdx extends C3657tp {
    private bdv bkb = null;
    private bgw bkc;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.C3657tp, com.kingroot.kinguser.AbstractC3642to
    /* renamed from: I */
    public void mo2133I(Context context) {
        super.mo2133I(context);
        try {
            this.bkb = new bdv(context, new bdv.InterfaceC2111a() { // from class: com.kingroot.kinguser.bdx.1
                @Override // com.kingroot.kinguser.bdv.InterfaceC2111a
                /* renamed from: is */
                public void mo7487is(int i) {
                    if (i == -1) {
                        bdx.m7489YW();
                    }
                }
            });
            if (this.bkb != null) {
                this.bkb.m7495YT();
            }
        } catch (Throwable th) {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.C3657tp, com.kingroot.kinguser.AbstractC3642to
    /* renamed from: a */
    public void mo2132a(Intent intent) {
        super.mo2132a(intent);
    }

    @Override // com.kingroot.kinguser.C3657tp, com.kingroot.kinguser.AbstractC3642to
    public void onDestroy() {
        if (this.bkc != null) {
            this.bkc.abZ();
        }
        if (this.bkb != null) {
            this.bkb.m7494nA();
            this.bkb = null;
        }
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.C3657tp, com.kingroot.kinguser.AbstractC3642to
    /* renamed from: jR */
    public void mo2131jR() {
    }

    @Override // com.kingroot.kinguser.C3657tp, com.kingroot.kinguser.AbstractC3642to
    public IBinder onBind(Intent intent) {
        return null;
    }

    /* renamed from: jS */
    public static void m7488jS() {
        synchronized (bdx.class) {
            try {
                Context ge = KUApplication.m13453ge();
                Intent intent = new Intent();
                intent.setClass(ge, bdx.class);
                C3636tj.startService(intent);
            } catch (Exception e) {
            }
        }
    }

    /* renamed from: YW */
    public static void m7489YW() {
        try {
            Context ge = KUApplication.m13453ge();
            Intent intent = new Intent();
            intent.setClass(ge, bdx.class);
            C3636tj.stopService(intent);
        } catch (Exception e) {
        }
    }
}
