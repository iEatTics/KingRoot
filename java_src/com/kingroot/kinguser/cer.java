package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.kingroot.kinguser.cff;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes.dex */
public class cer {
    private cff bYN;
    private boolean bYx;
    private Context mContext;
    private volatile boolean bYO = false;

    /* renamed from: Js */
    private volatile String f2296Js = "";
    private volatile long bYP = 0;

    /* renamed from: com.kingroot.kinguser.cer$a */
    /* loaded from: classes.dex */
    public interface InterfaceC2717a {
        /* renamed from: a */
        void mo4565a(int i, int i2, int i3, String str);
    }

    public cer(Context context, cff cffVar, boolean z) {
        this.bYx = false;
        this.mContext = context;
        this.bYN = cffVar;
        this.bYx = z;
        String mo2727fL = this.bYN.alL().mo2727fL();
        if (this.bYx != this.bYN.alL().mo2725fN() && !TextUtils.isEmpty(mo2727fL)) {
            this.bYN.alL().mo2733ce("");
            this.bYN.alL().mo2732cf("");
        }
        alc();
    }

    public boolean alb() {
        return TextUtils.isEmpty(getGuid()) || !this.bYO;
    }

    public void alc() {
        this.f2296Js = this.bYN.alL().mo2727fL();
        if (TextUtils.isEmpty(this.f2296Js)) {
            this.bYO = false;
            this.f2296Js = this.bYN.alL().mo2726fM();
            if (this.f2296Js == null) {
                this.f2296Js = "";
                return;
            }
            return;
        }
        this.bYO = true;
    }

    /* renamed from: c */
    public static void m4721c(Context context, int i, String str) {
        try {
            Intent intent = new Intent(String.format("action.guid.got:%s", context.getPackageName()));
            intent.setPackage(context.getPackageName());
            intent.putExtra("k.rc", i);
            intent.putExtra("k.g", str);
            context.sendBroadcast(intent);
        } catch (Throwable th) {
        }
    }

    /* renamed from: a */
    public void m4728a(final InterfaceC2717a interfaceC2717a) {
        if (alb()) {
            final C1599au ald = ald();
            C2036az c2036az = new C2036az();
            final int alo = cfb.aly().alo();
            c2036az.seqNo = alo;
            c2036az.cmd = 1;
            c2036az.data = ceq.m4744a(this.mContext, ald, 1, c2036az);
            if (c2036az.data == null) {
                interfaceC2717a.mo4565a(alo, 1, -20001500, null);
                return;
            }
            ArrayList<C2036az> arrayList = new ArrayList<>();
            arrayList.add(c2036az);
            cfc.alC().m4657b(c2036az.seqNo, -1L, null);
            this.bYN.m4594b(arrayList, new cff.InterfaceC2741a() { // from class: com.kingroot.kinguser.cer.1
                @Override // com.kingroot.kinguser.cff.InterfaceC2741a
                /* renamed from: a */
                public void mo4412a(boolean z, int i, int i2, ArrayList<C2235bg> arrayList2) {
                    if (i != 0) {
                        interfaceC2717a.mo4565a(alo, 1, i, null);
                    } else if (arrayList2 == null) {
                        interfaceC2717a.mo4565a(alo, 1, -21250000, null);
                    } else if (arrayList2.size() <= 0) {
                        interfaceC2717a.mo4565a(alo, 1, -21250000, null);
                    } else {
                        C2235bg c2235bg = arrayList2.get(0);
                        if (c2235bg == null) {
                            interfaceC2717a.mo4565a(alo, 1, -21250000, null);
                        } else if (c2235bg.retCode != 0) {
                            interfaceC2717a.mo4565a(alo, 1, c2235bg.retCode, null);
                        } else if (c2235bg.f1670jZ != 0) {
                            interfaceC2717a.mo4565a(alo, 1, -21300000, null);
                        } else {
                            byte[] bArr = c2235bg.data;
                            if (bArr == null) {
                                interfaceC2717a.mo4565a(alo, 1, -21000005, null);
                                return;
                            }
                            try {
                                JceStruct m4739a = ceq.m4739a(cer.this.mContext, cer.this.bYN.m4586fw().bZv.getBytes(), bArr, new C2086bc(), false, c2235bg.flag);
                                if (m4739a == null) {
                                    interfaceC2717a.mo4565a(alo, 1, -21000400, null);
                                    return;
                                }
                                C2086bc c2086bc = (C2086bc) m4739a;
                                cer.this.m4725a(c2086bc.f1656it, ald, true);
                                interfaceC2717a.mo4565a(alo, 1, 0, c2086bc.f1656it);
                            } catch (Exception e) {
                                interfaceC2717a.mo4565a(alo, 1, -21000400, null);
                            }
                        }
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m4725a(String str, C1599au c1599au, boolean z) {
        if (!TextUtils.isEmpty(str)) {
            this.f2296Js = str != null ? str : "";
            this.bYO = true;
            this.bYN.alL().m4687lc(cdz.akR());
            this.bYN.alL().mo2708r(this.bYx);
            this.bYN.alL().mo2733ce(str);
            this.bYN.alL().mo2732cf(str);
            this.bYN.alL().mo2737b(c1599au);
        }
    }

    /* renamed from: eI */
    public void m4717eI(boolean z) {
        C1599au m4715eK = m4715eK(z);
        if (m4715eK != null) {
            m4720c(m4715eK);
        }
    }

    /* renamed from: eJ */
    private boolean m4716eJ(boolean z) {
        long currentTimeMillis = System.currentTimeMillis();
        if (z) {
            this.bYP = currentTimeMillis;
            this.bYN.alL().mo2709q(currentTimeMillis);
            return true;
        }
        boolean z2 = false;
        if (this.bYP <= 0 || ceh.m4776a(currentTimeMillis, this.bYP, 60)) {
            this.bYP = currentTimeMillis;
            long mo2722fQ = this.bYN.alL().mo2722fQ();
            if (mo2722fQ <= 0) {
                this.bYN.alL().mo2709q(currentTimeMillis);
            } else if (ceh.m4776a(currentTimeMillis, mo2722fQ, 720)) {
                this.bYN.alL().mo2709q(currentTimeMillis);
                z2 = true;
            }
        }
        return z2;
    }

    /* renamed from: eK */
    private C1599au m4715eK(boolean z) {
        if (!alb() && m4716eJ(z)) {
            C1599au ald = ald();
            C1599au mo2724fO = this.bYN.alL().mo2724fO();
            if (ald == null || mo2724fO == null) {
                return null;
            }
            boolean m4722bg = m4722bg(ald.f1553iE, mo2724fO.f1553iE) | false | m4722bg(ald.f1554iF, mo2724fO.f1554iF) | m4722bg(ald.f1600ju, mo2724fO.f1600ju) | m4722bg(ald.f1555iG, mo2724fO.f1555iG) | m4722bg(ald.f1607qq, mo2724fO.f1607qq) | m4722bg(ald.f1556iH, mo2724fO.f1556iH) | m4724ay(ald.product, mo2724fO.product) | m4722bg(ald.f1606lc, mo2724fO.f1606lc) | m4724ay(ald.f1551dS, mo2724fO.f1551dS) | m4722bg(ald.f1552dT, mo2724fO.f1552dT) | m4724ay(ald.f1557iI, mo2724fO.f1557iI) | m4724ay(ald.f1558iJ, mo2724fO.f1558iJ) | m4713j(ald.f1559iK, mo2724fO.f1559iK) | m4722bg(ald.f1560iL, mo2724fO.f1560iL) | m4722bg(ald.f1561iM, mo2724fO.f1561iM) | m4724ay(ald.f1562iN, mo2724fO.f1562iN) | m4722bg(ald.f1563iO, mo2724fO.f1563iO) | m4724ay(ald.f1564iP, mo2724fO.f1564iP) | m4724ay(ald.f1580ja, mo2724fO.f1580ja) | m4722bg(ald.f1581jb, mo2724fO.f1581jb) | m4722bg(ald.f1568jD, mo2724fO.f1568jD) | m4722bg(ald.f1582jc, mo2724fO.f1582jc) | m4724ay(ald.f1583jd, mo2724fO.f1583jd) | m4722bg(ald.f1584je, mo2724fO.f1584je) | m4714j(ald.f1585jf, mo2724fO.f1585jf) | m4714j(ald.f1586jg, mo2724fO.f1586jg) | m4714j(ald.f1587jh, mo2724fO.f1587jh) | m4714j(ald.f1573jI, mo2724fO.f1573jI) | m4722bg(ald.f1588ji, mo2724fO.f1588ji) | m4722bg(ald.f1589jj, mo2724fO.f1589jj) | m4722bg(ald.f1590jk, mo2724fO.f1590jk) | m4722bg(ald.version, mo2724fO.version) | m4724ay(ald.f1604jy, mo2724fO.f1604jy) | m4722bg(ald.f1605jz, mo2724fO.f1605jz) | m4722bg(ald.f1593jn, mo2724fO.f1593jn) | m4724ay(ald.f1596jq, mo2724fO.f1596jq) | m4724ay(ald.f1597jr, mo2724fO.f1597jr) | m4722bg(ald.f1565jA, mo2724fO.f1565jA) | m4722bg(ald.f1566jB, mo2724fO.f1566jB) | m4722bg(ald.f1567jC, mo2724fO.f1567jC) | m4722bg(ald.f1569jE, mo2724fO.f1569jE) | m4722bg(ald.f1570jF, mo2724fO.f1570jF) | m4722bg(ald.f1571jG, mo2724fO.f1571jG) | m4722bg(ald.f1572jH, mo2724fO.f1572jH) | m4722bg(ald.f1594jo, mo2724fO.f1594jo) | m4722bg(ald.f1574jJ, mo2724fO.f1574jJ) | m4722bg(ald.f1595jp, mo2724fO.f1595jp) | m4722bg(ald.f1591jl, mo2724fO.f1591jl) | m4722bg(ald.f1592jm, mo2724fO.f1592jm) | m4722bg(ald.f1575jK, mo2724fO.f1575jK) | m4713j(ald.f1598js, mo2724fO.f1598js) | m4724ay(ald.f1576jL, mo2724fO.f1576jL) | m4722bg(ald.f1577jM, mo2724fO.f1577jM) | m4722bg(ald.f1578jN, mo2724fO.f1578jN) | m4722bg(ald.f1579jO, mo2724fO.f1579jO);
            String mo2726fM = this.bYN.alL().mo2726fM();
            String guid = getGuid();
            if (((TextUtils.isEmpty(mo2726fM) || TextUtils.isEmpty(guid) || mo2726fM.equals(guid)) ? false : true) || m4722bg) {
                return ald;
            }
            return null;
        }
        return null;
    }

    /* renamed from: bg */
    private boolean m4722bg(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return TextUtils.isEmpty(str2) || !str.equals(str2);
    }

    /* renamed from: j */
    private boolean m4714j(long j, long j2) {
        return j != j2;
    }

    /* renamed from: ay */
    private boolean m4724ay(int i, int i2) {
        return i != i2;
    }

    /* renamed from: j */
    private boolean m4713j(boolean z, boolean z2) {
        return z != z2;
    }

    public String getGuid() {
        return this.f2296Js != null ? this.f2296Js : "";
    }

    /* renamed from: c */
    private void m4720c(final C1599au c1599au) {
        final int alo = cfb.aly().alo();
        C1700aw m4718d = m4718d(c1599au);
        C2036az c2036az = new C2036az();
        c2036az.seqNo = alo;
        c2036az.cmd = 2;
        c2036az.data = ceq.m4744a(this.mContext, m4718d, 2, c2036az);
        if (c2036az.data != null) {
            ArrayList<C2036az> arrayList = new ArrayList<>();
            arrayList.add(c2036az);
            cfc.alC().m4657b(c2036az.seqNo, -1L, null);
            this.bYN.m4624a(0, 0L, false, arrayList, new cff.InterfaceC2741a() { // from class: com.kingroot.kinguser.cer.2
                @Override // com.kingroot.kinguser.cff.InterfaceC2741a
                /* renamed from: a */
                public void mo4412a(boolean z, int i, int i2, ArrayList<C2235bg> arrayList2) {
                    int i3 = 0;
                    if (i != 0) {
                        cfc.alC().m4659a("GuidCertifier", 10002, alo, null, 30, i);
                        cfc.alC().m4651lf(alo);
                        return;
                    }
                    if (arrayList2 != null && arrayList2.size() > 0) {
                        Iterator<C2235bg> it = arrayList2.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                i3 = -21250000;
                                break;
                            }
                            C2235bg next = it.next();
                            if (next != null && 10002 == next.cmd) {
                                if (next.retCode != 0) {
                                    i3 = next.retCode;
                                } else if (next.f1670jZ == 0) {
                                    cer.this.m4725a(cer.this.f2296Js, c1599au, false);
                                } else {
                                    i3 = -21300000;
                                }
                            }
                        }
                    } else {
                        i3 = -21250000;
                    }
                    cfc.alC().m4659a("GuidCertifier", 10002, alo, null, 30, i3);
                    cfc.alC().m4651lf(alo);
                }
            });
        }
    }

    private C1599au ald() {
        C1599au mo2723fP = this.bYN.alL().mo2723fP();
        if (mo2723fP == null) {
            throw new RuntimeException("onGetRealInfoOfGuid() return null");
        }
        if (mo2723fP.f1553iE == null) {
            mo2723fP.f1553iE = "";
        }
        return mo2723fP;
    }

    /* renamed from: d */
    private C1700aw m4718d(C1599au c1599au) {
        C1700aw c1700aw = new C1700aw();
        c1700aw.f1617jQ = c1599au;
        c1700aw.f1618jR = getGuid();
        c1700aw.f1619jS = this.bYN.alL().mo2726fM();
        return c1700aw;
    }
}
