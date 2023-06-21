package com.kingroot.kinguser;

import android.content.Context;
import com.kingroot.loader.common.KlConst;
import com.kingx.cloudsdk.C4030cg;
import com.kingx.cloudsdk.C4031ch;
import java.util.ArrayList;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes.dex */
public abstract class blu {
    /* renamed from: a */
    public static int m6450a(Context context, bmz bmzVar, bmz bmzVar2, boolean z) {
        bmi bmiVar;
        Throwable th;
        bmi bmiVar2;
        byte[] m6314l;
        try {
            m6314l = bmu.m6314l(bmzVar.agc());
            bmiVar = bmi.m6398E(context, blo.bAc);
        } catch (IllegalArgumentException e) {
            bmiVar2 = null;
        } catch (Exception e2) {
            bmiVar = null;
        } catch (Throwable th2) {
            bmiVar = null;
            th = th2;
        }
        try {
            bmiVar.setRequestMethod("POST");
            bmiVar.m6397P(m6314l);
            bmiVar.m6393cS();
            AtomicReference<byte[]> atomicReference = new AtomicReference<>();
            int m6394a = bmiVar.m6394a(false, atomicReference);
            if (m6394a != 0) {
                if (bmiVar != null) {
                    bmiVar.close();
                }
                return m6394a;
            }
            byte[] bArr = atomicReference.get();
            if (bArr != null && bArr.length > 0) {
                byte[] m6346S = bmu.m6346S(bArr);
                if (m6346S != null) {
                    bmzVar2.mo6290s(m6346S);
                } else {
                    m6394a = -6000;
                }
            }
            try {
                long date = bmiVar.getDate();
                if (date > 0) {
                    bmu.m6324d(date);
                }
                int length = bArr != null ? bArr.length : 0;
                int length2 = m6314l != null ? m6314l.length : 0;
                ArrayList arrayList = new ArrayList();
                arrayList.add(Integer.valueOf(length));
                arrayList.add(Integer.valueOf(length2));
            } catch (Throwable th3) {
            }
            if (bmiVar != null) {
                bmiVar.close();
                return m6394a;
            }
            return m6394a;
        } catch (IllegalArgumentException e3) {
            bmiVar2 = bmiVar;
            if (bmiVar2 != null) {
                bmiVar2.close();
                return -6057;
            }
            return -6057;
        } catch (Exception e4) {
            if (bmiVar != null) {
                bmiVar.close();
                return -6000;
            }
            return -6000;
        } catch (Throwable th4) {
            th = th4;
            if (bmiVar != null) {
                bmiVar.close();
            }
            throw th;
        }
    }

    /* renamed from: a */
    public static C4031ch m6449a(Context context, boolean z, boolean z2) {
        C4031ch c4031ch = new C4031ch();
        c4031ch.m1182mv(bmu.m6309mo(bmn.m6375bD(context)));
        c4031ch.m1181mw(bmu.m6309mo(bmn.m6365h(context)));
        c4031ch.m1187jT(bmu.m6326bJ(context) == 0 ? 2 : 1);
        c4031ch.m1184mD("F7E418FB9C74DF11");
        c4031ch.m1191bi(bmu.f1754uL);
        c4031ch.m1186jU(801);
        c4031ch.m1190bj(bmu.m6309mo(bmn.afR()));
        c4031ch.m1185jV(39);
        c4031ch.m1188jS(bmn.m6378V());
        if (z) {
            c4031ch.m1192b(bmu.m6309mo(blr.afu().m6466g()));
            c4031ch.m1189bk(bmu.m6309mo(blr.afu().m6465h()));
        } else {
            c4031ch.m1192b(bmu.m6309mo(bmn.m6367g()));
            c4031ch.m1189bk(bmu.m6309mo(bmn.m6366h()));
        }
        if ((context.getApplicationInfo().flags & 1) == 0) {
            c4031ch.m1194an(0);
        } else {
            c4031ch.m1194an(1);
        }
        c4031ch.m1193ao(bmu.m6320ep(true));
        String[] split = blo.afq().trim().split("[\\.]");
        c4031ch.f4216hL = new C4030cg();
        c4031ch.f4216hL.f4200hG = split.length > 0 ? Integer.parseInt(split[0]) : 1;
        c4031ch.f4216hL.f4201hH = split.length >= 2 ? Integer.parseInt(split[1]) : 0;
        c4031ch.f4216hL.f4202hI = split.length >= 3 ? Integer.parseInt(split[2]) : 0;
        c4031ch.m1183mE(bmu.m6309mo(Locale.getDefault().getLanguage() + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + Locale.getDefault().getCountry()));
        return c4031ch;
    }
}
