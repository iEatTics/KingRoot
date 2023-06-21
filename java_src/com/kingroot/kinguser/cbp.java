package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cbp implements cat {
    final /* synthetic */ cbn bWM;
    final /* synthetic */ cbo bWN;

    /* renamed from: ef */
    private ArrayList<C3144h> f2235ef = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    public cbp(cbo cboVar, cbn cbnVar) {
        this.bWN = cboVar;
        this.bWM = cbnVar;
    }

    @Override // com.kingroot.kinguser.cat
    /* renamed from: a */
    public void mo2689a(int i, int i2, int i3, int i4, JceStruct jceStruct) {
        C3075g c3075g;
        if (i3 == 0 && i4 == 0) {
            try {
                if (jceStruct instanceof C3075g) {
                    c3075g = (C3075g) jceStruct;
                    try {
                        this.f2235ef = c3075g.f2696ef;
                        this.bWM.mo5003a(i3 == 0, c3075g);
                        return;
                    } catch (Throwable th) {
                        th = th;
                        this.bWM.mo5003a(i3 == 0, c3075g);
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                c3075g = null;
            }
        }
        this.bWM.mo5003a(i3 == 0, null);
    }
}
