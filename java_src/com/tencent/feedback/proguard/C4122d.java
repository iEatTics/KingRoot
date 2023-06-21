package com.tencent.feedback.proguard;

import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.tencent.feedback.proguard.d */
/* loaded from: classes.dex */
public final class C4122d extends C4121c {

    /* renamed from: f */
    private static HashMap<String, byte[]> f4719f = null;

    /* renamed from: g */
    private static HashMap<String, HashMap<String, byte[]>> f4720g = null;

    /* renamed from: e */
    private C4124f f4721e = new C4124f();

    public C4122d() {
        this.f4721e.f4726a = (short) 2;
    }

    @Override // com.tencent.feedback.proguard.C4121c, com.tencent.feedback.proguard.C4119a
    /* renamed from: a */
    public final <T> void mo717a(String str, T t) {
        if (str.startsWith(".")) {
            throw new IllegalArgumentException("put name can not startwith . , now is " + str);
        }
        super.mo717a(str, (String) t);
    }

    @Override // com.tencent.feedback.proguard.C4121c
    /* renamed from: e */
    public final void mo713e() {
        super.mo713e();
        this.f4721e.f4726a = (short) 3;
    }

    @Override // com.tencent.feedback.proguard.C4121c, com.tencent.feedback.proguard.C4119a
    /* renamed from: a */
    public final byte[] mo719a() {
        if (this.f4721e.f4726a == 2) {
            if (this.f4721e.f4728c.equals("")) {
                throw new IllegalArgumentException("servantName can not is null");
            }
            if (this.f4721e.f4729d.equals("")) {
                throw new IllegalArgumentException("funcName can not is null");
            }
        } else {
            if (this.f4721e.f4728c == null) {
                this.f4721e.f4728c = "";
            }
            if (this.f4721e.f4729d == null) {
                this.f4721e.f4729d = "";
            }
        }
        C4127i c4127i = new C4127i(0);
        c4127i.m677a(this.f4713b);
        if (this.f4721e.f4726a == 2) {
            c4127i.m674a((Map) this.f4712a, 0);
        } else {
            c4127i.m674a((Map) this.f4716d, 0);
        }
        this.f4721e.f4730e = C4129k.m662a(c4127i.m684a());
        C4127i c4127i2 = new C4127i(0);
        c4127i2.m677a(this.f4713b);
        this.f4721e.mo666a(c4127i2);
        byte[] m662a = C4129k.m662a(c4127i2.m684a());
        int length = m662a.length;
        ByteBuffer allocate = ByteBuffer.allocate(length + 4);
        allocate.putInt(length + 4).put(m662a).flip();
        return allocate.array();
    }

    @Override // com.tencent.feedback.proguard.C4121c, com.tencent.feedback.proguard.C4119a
    /* renamed from: a */
    public final void mo716a(byte[] bArr) {
        if (bArr.length < 4) {
            throw new IllegalArgumentException("decode package must include size head");
        }
        try {
            C4126h c4126h = new C4126h(bArr, 4);
            c4126h.m699a(this.f4713b);
            this.f4721e.mo667a(c4126h);
            if (this.f4721e.f4726a == 3) {
                C4126h c4126h2 = new C4126h(this.f4721e.f4730e);
                c4126h2.m699a(this.f4713b);
                if (f4719f == null) {
                    HashMap<String, byte[]> hashMap = new HashMap<>();
                    f4719f = hashMap;
                    hashMap.put("", new byte[0]);
                }
                this.f4716d = c4126h2.m698a((Map) f4719f, 0, false);
                return;
            }
            C4126h c4126h3 = new C4126h(this.f4721e.f4730e);
            c4126h3.m699a(this.f4713b);
            if (f4720g == null) {
                f4720g = new HashMap<>();
                HashMap<String, byte[]> hashMap2 = new HashMap<>();
                hashMap2.put("", new byte[0]);
                f4720g.put("", hashMap2);
            }
            this.f4712a = c4126h3.m698a((Map) f4720g, 0, false);
            new HashMap();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: c */
    public final void m715c(String str) {
        this.f4721e.f4728c = str;
    }

    /* renamed from: d */
    public final void m714d(String str) {
        this.f4721e.f4729d = str;
    }

    /* renamed from: a */
    public final void m718a(int i) {
        this.f4721e.f4727b = 1;
    }
}
