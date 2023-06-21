package com.kingroot.kinguser;

import android.content.Context;
import android.util.SparseArray;
import com.kingroot.kinguser.blt;
import com.kingx.cloudsdk.C4032d;
import com.kingx.cloudsdk.C4042n;
import com.kingx.cloudsdk.C4045q;
import com.kingx.cloudsdk.C4049u;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes.dex */
public final class bls {
    private static SparseArray<blt.C2506a> bAl = null;

    /* renamed from: jK */
    private static blt.C2506a m6461jK(int i) {
        try {
            if (bAl == null) {
                SparseArray<blt.C2506a> sparseArray = new SparseArray<>();
                bAl = sparseArray;
                sparseArray.put(0, new blt.C2506a(0, "pluginreport|reportPluginData"));
                bAl.put(1, new blt.C2506a(1, "pluginv2|getPluginInfos"));
            }
            return bAl.get(i);
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: a */
    private static void m6464a(int i, bmz bmzVar, bmz bmzVar2) {
        blt.C2506a m6461jK = m6461jK(i);
        if (m6461jK != null) {
            String str = m6461jK.bAn;
            String str2 = m6461jK.bAo;
            bmzVar.mo6294mr("UTF-8");
            bmzVar.m6293Z(i);
            bmzVar.m6292aG(str);
            bmzVar.m6291ms(str2);
            bmzVar2.mo6294mr("UTF-8");
        }
    }

    /* renamed from: a */
    public static int m6463a(Context context, C4032d c4032d, AtomicReference<C4042n> atomicReference) {
        bmz bmzVar = new bmz(true);
        bmz bmzVar2 = new bmz(true);
        m6464a(1, bmzVar, bmzVar2);
        bmzVar.put("fin", blr.m6467eo(true));
        bmzVar.put("req", c4032d);
        int m6450a = blu.m6450a(context, bmzVar, bmzVar2, false);
        if (m6450a == 0) {
            Object e = bmzVar2.m6296e("resp", new C4042n());
            if (e != null && atomicReference != null) {
                atomicReference.set((C4042n) e);
            }
            return 0;
        }
        return m6450a;
    }

    /* renamed from: a */
    public static int m6462a(Context context, C4045q c4045q, AtomicReference<C4049u> atomicReference) {
        bmz bmzVar = new bmz(true);
        bmz bmzVar2 = new bmz(true);
        m6464a(0, bmzVar, bmzVar2);
        bmzVar.put("fin", blr.m6467eo(true));
        bmzVar.put("req", c4045q);
        int m6450a = blu.m6450a(context, bmzVar, bmzVar2, false);
        if (m6450a == 0) {
            bmzVar2.m6296e("resp", new C4049u());
            return 0;
        }
        return m6450a;
    }
}
