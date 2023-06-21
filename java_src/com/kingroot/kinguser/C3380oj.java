package com.kingroot.kinguser;

import android.content.Context;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.kingroot.kinguser.ces;
import com.kingroot.kinguser.cez;
import com.kingroot.kinguser.cgt;
import java.util.HashMap;
import java.util.List;
import tmsdk.common.TMSDKContext;
/* renamed from: com.kingroot.kinguser.oj */
/* loaded from: classes.dex */
public class C3380oj extends ceu {

    /* renamed from: yb */
    private boolean f3244yb;

    /* renamed from: yc */
    private C3379oi f3245yc;

    /* renamed from: yd */
    private C3383ol f3246yd;

    /* renamed from: ye */
    private car f3247ye;

    /* renamed from: com.kingroot.kinguser.oj$a */
    /* loaded from: classes.dex */
    static class C3381a {

        /* renamed from: yf */
        private static final C3380oj f3248yf = new C3380oj();
    }

    private C3380oj() {
        this.f3244yb = true;
        this.f3245yc = C3379oi.m2748fu();
        this.f3246yd = C3383ol.m2703fZ();
    }

    /* renamed from: fH */
    public static C3380oj m2731fH() {
        return C3381a.f3248yf;
    }

    /* renamed from: a */
    public void m2739a(boolean z, @Nullable car carVar) {
        this.f3244yb = z;
        this.f3247ye = carVar;
    }

    @Override // com.kingroot.kinguser.ceu
    /* renamed from: fI */
    public boolean mo2730fI() {
        return this.f3244yb;
    }

    @Override // com.kingroot.kinguser.ceu
    /* renamed from: cd */
    public ces.C2718a mo2734cd(String str) {
        return this.f3245yc.m2760bY(str);
    }

    @Override // com.kingroot.kinguser.ceu
    /* renamed from: b */
    public void mo2735b(String str, long j, List<String> list) {
        this.f3245yc.m2763a(str, j, list);
    }

    @Override // com.kingroot.kinguser.ceu
    /* renamed from: b */
    public void mo2736b(cez.C2723b c2723b) {
        if (c2723b != null) {
            this.f3245yc.m2764a(c2723b);
        }
    }

    @Override // com.kingroot.kinguser.ceu
    /* renamed from: fJ */
    public cez.C2723b mo2729fJ() {
        return this.f3245yc.m2746fw();
    }

    @Override // com.kingroot.kinguser.ceu
    /* renamed from: b */
    public void mo2738b(C1400ap c1400ap) {
        this.f3245yc.m2766a(c1400ap);
    }

    @Override // com.kingroot.kinguser.ceu
    /* renamed from: fK */
    public C1400ap mo2728fK() {
        return this.f3245yc.m2752fD();
    }

    @Override // com.kingroot.kinguser.ceu
    /* renamed from: fL */
    public String mo2727fL() {
        return this.f3245yc.m2745fx();
    }

    @Override // com.kingroot.kinguser.ceu
    /* renamed from: ce */
    public void mo2733ce(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.f3245yc.m2762bW(str);
        }
    }

    @Override // com.kingroot.kinguser.ceu
    /* renamed from: fM */
    public String mo2726fM() {
        return this.f3245yc.m2744fy();
    }

    @Override // com.kingroot.kinguser.ceu
    /* renamed from: cf */
    public void mo2732cf(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.f3245yc.m2761bX(str);
        }
    }

    @Override // com.kingroot.kinguser.ceu
    /* renamed from: r */
    public void mo2708r(boolean z) {
        this.f3245yc.m2741q(z);
    }

    @Override // com.kingroot.kinguser.ceu
    /* renamed from: fN */
    public boolean mo2725fN() {
        return this.f3245yc.m2754fB();
    }

    @Override // com.kingroot.kinguser.ceu
    /* renamed from: b */
    public void mo2737b(C1599au c1599au) {
        this.f3245yc.m2765a(c1599au);
    }

    @Override // com.kingroot.kinguser.ceu
    /* renamed from: fO */
    public C1599au mo2724fO() {
        return this.f3245yc.m2755fA();
    }

    @Override // com.kingroot.kinguser.ceu
    /* renamed from: fP */
    public C1599au mo2723fP() {
        Context m2699ge = this.f3246yd.m2699ge();
        cas m2700gd = this.f3246yd.m2700gd();
        if (m2699ge == null || m2700gd == null) {
            return new C1599au();
        }
        String[] m4326Z = cgo.m4326Z(m2699ge);
        int mo5043Tl = m2700gd.mo5043Tl();
        long m3642a = C3143gz.m3642a();
        cgt.C2810a c2810a = new cgt.C2810a();
        cgt.m4317a(c2810a);
        long j = c2810a.f2338Yw;
        cgt.C2810a c2810a2 = new cgt.C2810a();
        cgt.m4310b(c2810a2);
        long j2 = c2810a2.f2338Yw;
        String m4312ah = cgt.m4312ah(m2699ge);
        String mo5041Tn = m2700gd.mo5041Tn();
        String mo5040To = m2700gd.mo5040To();
        int m4309cx = cgt.m4309cx(m2699ge);
        int m4308cy = cgt.m4308cy(m2699ge);
        if (m4309cx >= m4308cy) {
            m4308cy = m4309cx;
            m4309cx = m4308cy;
        }
        C1599au c1599au = new C1599au();
        String mo5047Th = this.f3246yd.m2700gd().mo5047Th();
        if (TextUtils.isEmpty(mo5047Th)) {
            mo5047Th = cgt.m4314ae(m2699ge);
        }
        c1599au.f1553iE = mo5047Th;
        c1599au.f1554iF = mo5041Tn;
        c1599au.f1600ju = mo5040To;
        c1599au.f1555iG = m4312ah != null ? m4312ah : "";
        c1599au.f1607qq = "0";
        c1599au.f1556iH = "0";
        c1599au.product = TMSDKContext.m14nF("product");
        c1599au.f1606lc = cgx.m4297nl(TMSDKContext.m13nG("lc"));
        c1599au.f1551dS = TMSDKContext.m14nF("build");
        c1599au.f1552dT = cgx.m4297nl(TMSDKContext.m13nG("channel"));
        c1599au.f1557iI = 2;
        c1599au.f1558iJ = TMSDKContext.m14nF("sub_platform");
        c1599au.f1559iK = cgo.m4325cv(m2699ge);
        try {
            c1599au.f1560iL = m2699ge.getPackageName();
        } catch (Throwable th) {
        }
        c1599au.f1561iM = cgx.m4297nl(m2700gd.mo5045Tj());
        c1599au.f1562iN = cgu.m4301qb();
        c1599au.f1563iO = cgx.m4297nl(cgt.m4311aj(m2699ge));
        c1599au.f1564iP = (short) 2052;
        c1599au.f1580ja = mo5043Tl;
        c1599au.f1581jb = m4326Z[2];
        c1599au.f1568jD = cgt.m4303nX("ro.product.cpu.abi2");
        c1599au.f1582jc = cgo.m4324pg();
        c1599au.f1583jd = cgo.amZ();
        c1599au.f1584je = m4308cy + "*" + m4309cx;
        c1599au.f1585jf = m3642a;
        c1599au.f1586jg = cgo.ana();
        c1599au.f1587jh = j;
        c1599au.f1573jI = j2;
        c1599au.f1588ji = cgx.m4297nl(cgt.m4302qf());
        c1599au.f1589jj = cgx.m4297nl(cgt.anc());
        c1599au.f1590jk = cgx.m4297nl(cgt.and());
        c1599au.f1604jy = 1;
        c1599au.version = cgx.m4297nl(TMSDKContext.m13nG("softversion"));
        c1599au.f1605jz = cgx.m4297nl(TMSDKContext.m13nG("pkgkey"));
        c1599au.f1593jn = C3143gz.m3641b();
        c1599au.f1596jq = 0;
        c1599au.f1597jr = 0;
        c1599au.f1565jA = cgt.ane();
        c1599au.f1566jB = cgt.anf();
        c1599au.f1567jC = cgt.m4303nX("ro.build.product");
        c1599au.f1569jE = cgt.m4303nX("ro.build.fingerprint");
        c1599au.f1570jF = cgt.m4303nX("ro.product.locale.language");
        c1599au.f1571jG = cgt.m4303nX("ro.product.locale.region");
        c1599au.f1572jH = cgt.getRadioVersion();
        c1599au.f1594jo = cgt.m4303nX("ro.board.platform");
        c1599au.f1574jJ = cgt.m4303nX("ro.mediatek.platform");
        c1599au.f1595jp = cgt.m4303nX("ro.sf.lcd_density");
        c1599au.f1591jl = cgt.m4303nX("ro.product.name");
        c1599au.f1592jm = cgt.m4303nX("ro.build.version.release");
        c1599au.f1575jK = cgt.m4306eZ(false);
        c1599au.f1598js = m2700gd.mo5042Tm();
        c1599au.f1576jL = TMSDKContext.m14nF("app_build_type");
        c1599au.f1577jM = cgt.ang();
        c1599au.f1578jN = cgt.m4305eq(true);
        c1599au.f1579jO = cgt.m4305eq(false);
        return c1599au;
    }

    @Override // com.kingroot.kinguser.ceu
    /* renamed from: q */
    public void mo2709q(long j) {
        this.f3245yc.m2742p(j);
    }

    @Override // com.kingroot.kinguser.ceu
    /* renamed from: fQ */
    public long mo2722fQ() {
        return this.f3245yc.m2743fz();
    }

    @Override // com.kingroot.kinguser.ceu
    /* renamed from: i */
    public void mo2713i(int i, int i2) {
        if (this.f3247ye != null) {
            this.f3247ye.m5050i(i, i2);
        }
        int m4766kI = cen.m4766kI(i2);
        if (m4766kI == -220000) {
        }
        if (m4766kI == -160000) {
        }
        if (m4766kI == -450000 || m4766kI == -540000) {
        }
        if (m4766kI == -70000 || m4766kI == -370000 || m4766kI == -380000) {
        }
        if (m4766kI == -350000 || m4766kI == -360000 || m4766kI == -430000) {
        }
    }

    @Override // com.kingroot.kinguser.ceu
    /* renamed from: j */
    public void mo2711j(int i, int i2) {
    }

    @Override // com.kingroot.kinguser.ceu
    /* renamed from: k */
    public void mo2710k(int i, int i2) {
    }

    @Override // com.kingroot.kinguser.ceu
    /* renamed from: fR */
    public boolean mo2721fR() {
        return true;
    }

    @Override // com.kingroot.kinguser.ceu
    /* renamed from: fS */
    public int mo2720fS() {
        return this.f3246yd.m2700gd().mo5046Ti();
    }

    @Override // com.kingroot.kinguser.ceu
    /* renamed from: a */
    public void mo2740a(HashMap<String, String> hashMap) {
        if (this.f3247ye != null) {
            this.f3247ye.m5051a(hashMap);
        }
    }

    @Override // com.kingroot.kinguser.ceu
    /* renamed from: fT */
    public boolean mo2719fT() {
        return this.f3246yd.m2700gd().aks();
    }

    @Override // com.kingroot.kinguser.ceu
    /* renamed from: fU */
    public void mo2718fU() {
    }

    @Override // com.kingroot.kinguser.ceu
    /* renamed from: fV */
    public String mo2717fV() {
        return C3379oi.m2748fu().m2751fE();
    }

    @Override // com.kingroot.kinguser.ceu
    /* renamed from: fW */
    public String mo2716fW() {
        return C3379oi.m2748fu().m2750fF();
    }

    @Override // com.kingroot.kinguser.ceu
    /* renamed from: h */
    public void mo2714h(String str, boolean z) {
        if (str != null) {
            C3379oi.m2748fu().m2758ca(str);
        }
    }

    @Override // com.kingroot.kinguser.ceu
    /* renamed from: i */
    public void mo2712i(String str, boolean z) {
        if (str != null) {
            C3379oi.m2748fu().m2759bZ(str);
        }
    }

    @Override // com.kingroot.kinguser.ceu
    /* renamed from: fX */
    public int mo2715fX() {
        return this.f3246yd.m2700gd().m5037fX();
    }
}
