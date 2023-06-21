package com.king.uranus;

import com.kingroot.kinguser.C3315mo;
import com.kingroot.kinguser.C3322mq;
import com.kingroot.kinguser.C3324mr;
import com.kingroot.kinguser.C3325ms;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.king.uranus.cM */
/* loaded from: classes.dex */
public final class C0401cM extends AbstractC0404cS {

    /* renamed from: wb */
    static byte[] f245wb;

    /* renamed from: wc */
    static Map<String, String> f246wc;

    /* renamed from: wd */
    static final /* synthetic */ boolean f247wd;

    /* renamed from: iW */
    public byte[] f254iW;

    /* renamed from: iY */
    public Map<String, String> f256iY;

    /* renamed from: iZ */
    public Map<String, String> f257iZ;

    /* renamed from: iQ */
    public short f248iQ = 0;

    /* renamed from: iR */
    public byte f249iR = 0;

    /* renamed from: iS */
    public int f250iS = 0;

    /* renamed from: iT */
    public int f251iT = 0;

    /* renamed from: iU */
    public String f252iU = null;

    /* renamed from: iV */
    public String f253iV = null;

    /* renamed from: iX */
    public int f255iX = 0;

    static {
        f247wd = !C0401cM.class.desiredAssertionStatus();
        f245wb = null;
        f246wc = null;
    }

    public boolean equals(Object obj) {
        C0401cM c0401cM = (C0401cM) obj;
        return C3325ms.equals(1, c0401cM.f248iQ) && C3325ms.equals(1, c0401cM.f249iR) && C3325ms.equals(1, c0401cM.f250iS) && C3325ms.equals(1, c0401cM.f251iT) && C3325ms.equals((Object) 1, (Object) c0401cM.f252iU) && C3325ms.equals((Object) 1, (Object) c0401cM.f253iV) && C3325ms.equals((Object) 1, (Object) c0401cM.f254iW) && C3325ms.equals(1, c0401cM.f255iX) && C3325ms.equals((Object) 1, (Object) c0401cM.f256iY) && C3325ms.equals((Object) 1, (Object) c0401cM.f257iZ);
    }

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e) {
            if (f247wd) {
                return null;
            }
            throw new AssertionError();
        }
    }

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13632a(C3324mr c3324mr) {
        c3324mr.m2996a(this.f248iQ, 1);
        c3324mr.m2985b(this.f249iR, 2);
        c3324mr.m2983e(this.f250iS, 3);
        c3324mr.m2983e(this.f251iT, 4);
        c3324mr.m2981f(this.f252iU, 5);
        c3324mr.m2981f(this.f253iV, 6);
        c3324mr.m2994a(this.f254iW, 7);
        c3324mr.m2983e(this.f255iX, 8);
        c3324mr.m2997a((Map) this.f256iY, 9);
        c3324mr.m2997a((Map) this.f257iZ, 10);
    }

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13633a(C3322mq c3322mq) {
        try {
            this.f248iQ = c3322mq.m3025a(this.f248iQ, 1, true);
            this.f249iR = c3322mq.m3035a(this.f249iR, 2, true);
            this.f250iS = c3322mq.m3032a(this.f250iS, 3, true);
            this.f251iT = c3322mq.m3032a(this.f251iT, 4, true);
            this.f252iU = c3322mq.m3013b(5, true);
            this.f253iV = c3322mq.m3013b(6, true);
            if (f245wb == null) {
                f245wb = new byte[]{0};
            }
            this.f254iW = c3322mq.m3023a(f245wb, 7, true);
            this.f255iX = c3322mq.m3032a(this.f255iX, 8, true);
            if (f246wc == null) {
                f246wc = new HashMap();
                f246wc.put("", "");
            }
            this.f256iY = (Map) c3322mq.m3008d(f246wc, 9, true);
            if (f246wc == null) {
                f246wc = new HashMap();
                f246wc.put("", "");
            }
            this.f257iZ = (Map) c3322mq.m3008d(f246wc, 10, true);
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("RequestPacket decode error " + C3315mo.m3057t(this.f254iW));
            throw new RuntimeException(e);
        }
    }
}
