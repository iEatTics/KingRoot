package com.kingroot.kinguser;

import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Map;
import sm.C4396ab;
/* loaded from: classes.dex */
public class cdv extends cdu {
    static HashMap<String, byte[]> bXH = null;
    static HashMap<String, HashMap<String, byte[]>> bXI = null;
    protected C4396ab bXG = new C4396ab();

    /* renamed from: j */
    private int f2294j = 0;

    @Override // com.kingroot.kinguser.cdu, com.kingroot.kinguser.cdt
    /* renamed from: a */
    public /* bridge */ /* synthetic */ void mo4802a(String str) {
        super.mo4802a(str);
    }

    public cdv() {
        this.bXG.f5349a = (short) 2;
    }

    public cdv(boolean z) {
        if (z) {
            mo4799b();
        } else {
            this.bXG.f5349a = (short) 2;
        }
    }

    @Override // com.kingroot.kinguser.cdu, com.kingroot.kinguser.cdt
    /* renamed from: a */
    public <T> void mo4801a(String str, T t) {
        if (str.startsWith(".")) {
            throw new IllegalArgumentException("put name can not startwith . , now is " + str);
        }
        super.mo4801a(str, (String) t);
    }

    @Override // com.kingroot.kinguser.cdu
    /* renamed from: b */
    public void mo4799b() {
        super.mo4799b();
        this.bXG.f5349a = (short) 3;
    }

    @Override // com.kingroot.kinguser.cdu, com.kingroot.kinguser.cdt
    /* renamed from: a */
    public byte[] mo4804a() {
        if (this.bXG.f5349a == 2) {
            if (this.bXG.f5353e == null || this.bXG.f5353e.equals("")) {
                throw new IllegalArgumentException("servantName can not is null");
            }
            if (this.bXG.f5354f == null || this.bXG.f5354f.equals("")) {
                throw new IllegalArgumentException("funcName can not is null");
            }
        } else {
            if (this.bXG.f5353e == null) {
                this.bXG.f5353e = "";
            }
            if (this.bXG.f5354f == null) {
                this.bXG.f5354f = "";
            }
        }
        ccs ccsVar = new ccs(0);
        ccsVar.m4913a(this.f2290c);
        if (this.bXG.f5349a == 2) {
            ccsVar.m4910a((Map) this.f2289a, 0);
        } else {
            ccsVar.m4910a((Map) this.f2292e, 0);
        }
        this.bXG.f5355g = cct.m4895a(ccsVar.m4921a());
        ccs ccsVar2 = new ccs(0);
        ccsVar2.m4913a(this.f2290c);
        this.bXG.mo22a(ccsVar2);
        byte[] m4895a = cct.m4895a(ccsVar2.m4921a());
        int length = m4895a.length;
        ByteBuffer allocate = ByteBuffer.allocate(length + 4);
        allocate.putInt(length + 4).put(m4895a).flip();
        return allocate.array();
    }

    /* renamed from: c */
    private void m4797c() {
        ccr ccrVar = new ccr(this.bXG.f5355g);
        ccrVar.m4941a(this.f2290c);
        if (bXH == null) {
            bXH = new HashMap<>();
            bXH.put("", new byte[0]);
        }
        this.f2292e = ccrVar.m4940a((Map) bXH, 0, false);
    }

    /* renamed from: d */
    private void m4795d() {
        ccr ccrVar = new ccr(this.bXG.f5355g);
        ccrVar.m4941a(this.f2290c);
        if (bXI == null) {
            bXI = new HashMap<>();
            HashMap<String, byte[]> hashMap = new HashMap<>();
            hashMap.put("", new byte[0]);
            bXI.put("", hashMap);
        }
        this.f2289a = ccrVar.m4940a((Map) bXI, 0, false);
        this.bEP = new HashMap<>();
    }

    @Override // com.kingroot.kinguser.cdu, com.kingroot.kinguser.cdt
    /* renamed from: a */
    public void mo4800a(byte[] bArr) {
        if (bArr.length < 4) {
            throw new IllegalArgumentException("decode package must include size head");
        }
        try {
            ccr ccrVar = new ccr(bArr, 4);
            ccrVar.m4941a(this.f2290c);
            this.bXG.mo23a(ccrVar);
            if (this.bXG.f5349a == 3) {
                m4797c();
                return;
            }
            this.f2292e = null;
            m4795d();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: b */
    public void m4798b(String str) {
        this.bXG.f5353e = str;
    }

    /* renamed from: c */
    public void m4796c(String str) {
        this.bXG.f5354f = str;
    }

    /* renamed from: a */
    public void m4803a(int i) {
        this.bXG.f5352d = i;
    }
}
