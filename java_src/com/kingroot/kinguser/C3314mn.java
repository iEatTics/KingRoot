package com.kingroot.kinguser;

import com.king.uranus.C0401cM;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.kingroot.kinguser.mn */
/* loaded from: classes.dex */
public class C3314mn extends C3313mm {

    /* renamed from: vW */
    static HashMap<String, byte[]> f3136vW = null;

    /* renamed from: vX */
    static HashMap<String, HashMap<String, byte[]>> f3137vX = null;

    /* renamed from: vV */
    protected C0401cM f3138vV = new C0401cM();

    /* renamed from: vY */
    private int f3139vY = 0;

    public C3314mn() {
        this.f3138vV.f248iQ = (short) 2;
    }

    public C3314mn(boolean z) {
        if (z) {
            mo3061eE();
        } else {
            this.f3138vV.f248iQ = (short) 2;
        }
    }

    @Override // com.kingroot.kinguser.C3313mm, com.kingroot.kinguser.C3312ml
    public <T> void put(String str, T t) {
        if (str.startsWith(".")) {
            throw new IllegalArgumentException("put name can not startwith . , now is " + str);
        }
        super.put(str, t);
    }

    @Override // com.kingroot.kinguser.C3313mm
    /* renamed from: eE */
    public void mo3061eE() {
        super.mo3061eE();
        this.f3138vV.f248iQ = (short) 3;
    }

    @Override // com.kingroot.kinguser.C3313mm, com.kingroot.kinguser.C3312ml
    /* renamed from: eD */
    public byte[] mo3062eD() {
        if (this.f3138vV.f248iQ == 2) {
            if (this.f3138vV.f252iU == null || this.f3138vV.f252iU.equals("")) {
                throw new IllegalArgumentException("servantName can not is null");
            }
            if (this.f3138vV.f253iV == null || this.f3138vV.f253iV.equals("")) {
                throw new IllegalArgumentException("funcName can not is null");
            }
        } else {
            if (this.f3138vV.f252iU == null) {
                this.f3138vV.f252iU = "";
            }
            if (this.f3138vV.f253iV == null) {
                this.f3138vV.f253iV = "";
            }
        }
        C3324mr c3324mr = new C3324mr(0);
        c3324mr.m2984by(this.f3131vS);
        if (this.f3138vV.f248iQ == 2) {
            c3324mr.m2997a((Map) this.f3128vP, 0);
        } else {
            c3324mr.m2997a((Map) this.f3135vU, 0);
        }
        this.f3138vV.f254iW = C3325ms.m2980a(c3324mr.m2982eJ());
        C3324mr c3324mr2 = new C3324mr(0);
        c3324mr2.m2984by(this.f3131vS);
        this.f3138vV.mo13632a(c3324mr2);
        byte[] m2980a = C3325ms.m2980a(c3324mr2.m2982eJ());
        int length = m2980a.length;
        ByteBuffer allocate = ByteBuffer.allocate(length + 4);
        allocate.putInt(length + 4).put(m2980a).flip();
        return allocate.array();
    }

    /* renamed from: eF */
    private void m3060eF() {
        C3322mq c3322mq = new C3322mq(this.f3138vV.f254iW);
        c3322mq.m3010by(this.f3131vS);
        if (f3136vW == null) {
            f3136vW = new HashMap<>();
            f3136vW.put("", new byte[0]);
        }
        this.f3135vU = c3322mq.m3027a((Map) f3136vW, 0, false);
    }

    /* renamed from: eG */
    private void m3059eG() {
        C3322mq c3322mq = new C3322mq(this.f3138vV.f254iW);
        c3322mq.m3010by(this.f3131vS);
        if (f3137vX == null) {
            f3137vX = new HashMap<>();
            HashMap<String, byte[]> hashMap = new HashMap<>();
            hashMap.put("", new byte[0]);
            f3137vX.put("", hashMap);
        }
        this.f3128vP = c3322mq.m3027a((Map) f3137vX, 0, false);
        this.f3129vQ = new HashMap<>();
    }

    @Override // com.kingroot.kinguser.C3313mm, com.kingroot.kinguser.C3312ml
    /* renamed from: s */
    public void mo3058s(byte[] bArr) {
        if (bArr.length < 4) {
            throw new IllegalArgumentException("decode package must include size head");
        }
        try {
            C3322mq c3322mq = new C3322mq(bArr, 4);
            c3322mq.m3010by(this.f3131vS);
            this.f3138vV.mo13633a(c3322mq);
            if (this.f3138vV.f248iQ == 3) {
                m3060eF();
                return;
            }
            this.f3135vU = null;
            m3059eG();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: bv */
    public void m3064bv(String str) {
        this.f3138vV.f252iU = str;
    }

    /* renamed from: bw */
    public void m3063bw(String str) {
        this.f3138vV.f253iV = str;
    }

    /* renamed from: aj */
    public void m3065aj(int i) {
        this.f3138vV.f251iT = i;
    }
}
