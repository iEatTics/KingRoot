package com.kingroot.kinguser;

import com.kingx.cloudsdk.C4024bw;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public final class bmz extends bmy {
    private static HashMap<String, byte[]> bCF = null;
    private static HashMap<String, HashMap<String, byte[]>> bCG = null;
    private C4024bw bCE = new C4024bw();

    public bmz() {
        this.bCE.f4178he = (short) 2;
    }

    public bmz(boolean z) {
        agd();
    }

    @Override // com.kingroot.kinguser.bmy, com.kingroot.kinguser.bmx
    public final <T> void put(String str, T t) {
        if (str.startsWith(".")) {
            throw new IllegalArgumentException("put name can not startwith . , now is " + str);
        }
        super.put(str, t);
    }

    @Override // com.kingroot.kinguser.bmy
    public final void agd() {
        super.agd();
        this.bCE.f4178he = (short) 3;
    }

    @Override // com.kingroot.kinguser.bmy, com.kingroot.kinguser.bmx
    public final byte[] agc() {
        if (this.bCE.f4178he == 2) {
            if (this.bCE.f4182hi == null || this.bCE.f4182hi.equals("")) {
                throw new IllegalArgumentException("servantName can not is null");
            }
            if (this.bCE.f4183hj == null || this.bCE.f4183hj.equals("")) {
                throw new IllegalArgumentException("funcName can not is null");
            }
        } else {
            if (this.bCE.f4182hi == null) {
                this.bCE.f4182hi = "";
            }
            if (this.bCE.f4183hj == null) {
                this.bCE.f4183hj = "";
            }
        }
        bnd bndVar = new bnd(0);
        bndVar.m6243mu(this.bCB);
        if (this.bCE.f4178he == 2) {
            bndVar.m6250a((Map) this.bCz, 0);
        } else {
            bndVar.m6250a((Map) this.bCD, 0);
        }
        this.bCE.f4184hk = bne.m6242a(bndVar.agg());
        bnd bndVar2 = new bnd(0);
        bndVar2.m6243mu(this.bCB);
        this.bCE.mo1166a(bndVar2);
        byte[] m6242a = bne.m6242a(bndVar2.agg());
        int length = m6242a.length;
        ByteBuffer allocate = ByteBuffer.allocate(length + 4);
        allocate.putInt(length + 4).put(m6242a).flip();
        return allocate.array();
    }

    @Override // com.kingroot.kinguser.bmy, com.kingroot.kinguser.bmx
    /* renamed from: s */
    public final void mo6290s(byte[] bArr) {
        if (bArr.length < 4) {
            throw new IllegalArgumentException("decode package must include size head");
        }
        try {
            bnc bncVar = new bnc(bArr, 4);
            bncVar.m6262mu(this.bCB);
            this.bCE.mo1167a(bncVar);
            if (this.bCE.f4178he == 3) {
                bnc bncVar2 = new bnc(this.bCE.f4184hk);
                bncVar2.m6262mu(this.bCB);
                if (bCF == null) {
                    HashMap<String, byte[]> hashMap = new HashMap<>();
                    bCF = hashMap;
                    hashMap.put("", new byte[0]);
                }
                this.bCD = bncVar2.m6269a((Map) bCF, 0, false);
                return;
            }
            this.bCD = null;
            bnc bncVar3 = new bnc(this.bCE.f4184hk);
            bncVar3.m6262mu(this.bCB);
            if (bCG == null) {
                bCG = new HashMap<>();
                HashMap<String, byte[]> hashMap2 = new HashMap<>();
                hashMap2.put("", new byte[0]);
                bCG.put("", hashMap2);
            }
            this.bCz = bncVar3.m6269a((Map) bCG, 0, false);
            new HashMap();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: aG */
    public final void m6292aG(String str) {
        this.bCE.f4182hi = str;
    }

    /* renamed from: ms */
    public final void m6291ms(String str) {
        this.bCE.f4183hj = str;
    }

    /* renamed from: Z */
    public final void m6293Z(int i) {
        this.bCE.f4181hh = i;
    }
}
