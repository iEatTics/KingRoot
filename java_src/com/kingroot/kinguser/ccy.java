package com.kingroot.kinguser;

import android.content.Context;
import java.util.concurrent.atomic.AtomicReference;
import sm.C4401am;
import sm.C4406ar;
/* loaded from: classes.dex */
public class ccy {
    private static ccy bXo;
    private static ccp bXp = null;

    /* renamed from: a */
    public static void m4884a(Context context, bng bngVar) {
        bXo = new ccy();
        bXp = new ccp(context, bngVar.packageName, bngVar.versionName, bngVar.bDs, 201, "EP_CloudCheck_Sdk", 61, "88888", "DCA939E7DF3B97C8", bnh.f1757a, bnh.f1758b);
    }

    public static ccy akK() {
        return bXo;
    }

    /* renamed from: a */
    public int m4883a(C4401am c4401am, AtomicReference<C4406ar> atomicReference) {
        cdj akJ = bXp.akJ();
        cdv cdvVar = new cdv(true);
        cdv cdvVar2 = new cdv(true);
        int m4848a = akJ.m4848a(ccx.m4885kW(2), cdvVar, cdvVar2);
        if (m4848a != 0) {
            return m4848a;
        }
        cdvVar.mo4801a("phonetype", (String) akJ.akM());
        cdvVar.mo4801a("userinfo", (String) akJ.akN());
        cdvVar.mo4801a("req", (String) c4401am);
        int m4846a = akJ.m4846a(cdvVar, cdvVar2, true);
        if (m4846a == 0) {
            C4406ar c4406ar = (C4406ar) cdvVar2.m4806b("resp", new C4406ar());
            if (c4406ar != null) {
                atomicReference.set(c4406ar);
            }
            return 0;
        }
        return m4846a;
    }
}
