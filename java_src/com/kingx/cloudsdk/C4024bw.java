package com.kingx.cloudsdk;

import com.kingroot.kinguser.bna;
import com.kingroot.kinguser.bnc;
import com.kingroot.kinguser.bnd;
import com.kingroot.kinguser.bne;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.kingx.cloudsdk.bw */
/* loaded from: classes.dex */
public final class C4024bw extends AbstractC4027cb {
    private static byte[] bCI;
    private static Map<String, String> bCJ;
    private static /* synthetic */ boolean bCK;

    /* renamed from: hk */
    public byte[] f4184hk;

    /* renamed from: hm */
    private Map<String, String> f4186hm;

    /* renamed from: hn */
    private Map<String, String> f4187hn;

    /* renamed from: he */
    public short f4178he = 0;

    /* renamed from: hf */
    private byte f4179hf = 0;

    /* renamed from: hg */
    private int f4180hg = 0;

    /* renamed from: hh */
    public int f4181hh = 0;

    /* renamed from: hi */
    public String f4182hi = null;

    /* renamed from: hj */
    public String f4183hj = null;

    /* renamed from: hl */
    private int f4185hl = 0;

    static {
        bCK = !C4024bw.class.desiredAssertionStatus();
        bCI = null;
        bCJ = null;
    }

    public final boolean equals(Object obj) {
        C4024bw c4024bw = (C4024bw) obj;
        return bne.equals(1, c4024bw.f4178he) && bne.equals(1, c4024bw.f4179hf) && bne.equals(1, c4024bw.f4180hg) && bne.equals(1, c4024bw.f4181hh) && bne.equals((Object) 1, (Object) c4024bw.f4182hi) && bne.equals((Object) 1, (Object) c4024bw.f4183hj) && bne.equals((Object) 1, (Object) c4024bw.f4184hk) && bne.equals(1, c4024bw.f4185hl) && bne.equals((Object) 1, (Object) c4024bw.f4186hm) && bne.equals((Object) 1, (Object) c4024bw.f4187hn);
    }

    public final Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e) {
            if (bCK) {
                return null;
            }
            throw new AssertionError();
        }
    }

    @Override // com.kingx.cloudsdk.AbstractC4027cb
    /* renamed from: a */
    public final void mo1166a(bnd bndVar) {
        bndVar.m6249a(this.f4178he, 1);
        bndVar.m6245b(this.f4179hf, 2);
        bndVar.m6246am(this.f4180hg, 3);
        bndVar.m6246am(this.f4181hh, 4);
        bndVar.m6258T(this.f4182hi, 5);
        bndVar.m6258T(this.f4183hj, 6);
        bndVar.m6247a(this.f4184hk, 7);
        bndVar.m6246am(this.f4185hl, 8);
        bndVar.m6250a((Map) this.f4186hm, 9);
        bndVar.m6250a((Map) this.f4187hn, 10);
    }

    @Override // com.kingx.cloudsdk.AbstractC4027cb
    /* renamed from: a */
    public final void mo1167a(bnc bncVar) {
        try {
            this.f4178he = bncVar.m6267a(this.f4178he, 1, true);
            this.f4179hf = bncVar.m6277a(this.f4179hf, 2, true);
            this.f4180hg = bncVar.m6274a(this.f4180hg, 3, true);
            this.f4181hh = bncVar.m6274a(this.f4181hh, 4, true);
            this.f4182hi = bncVar.m6259z(5, true);
            this.f4183hj = bncVar.m6259z(6, true);
            if (bCI == null) {
                bCI = new byte[]{0};
            }
            byte[] bArr = bCI;
            this.f4184hk = bncVar.m6284B(7, true);
            this.f4185hl = bncVar.m6274a(this.f4185hl, 8, true);
            if (bCJ == null) {
                HashMap hashMap = new HashMap();
                bCJ = hashMap;
                hashMap.put("", "");
            }
            this.f4186hm = (Map) bncVar.m6264d(bCJ, 9, true);
            if (bCJ == null) {
                HashMap hashMap2 = new HashMap();
                bCJ = hashMap2;
                hashMap2.put("", "");
            }
            this.f4187hn = (Map) bncVar.m6264d(bCJ, 10, true);
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("RequestPacket decode error " + bna.m6289t(this.f4184hk));
            throw new RuntimeException(e);
        }
    }
}
