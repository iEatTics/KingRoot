package com.tencent.feedback.proguard;

import com.tencent.feedback.eup.C4085b;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.tencent.feedback.proguard.f */
/* loaded from: classes.dex */
public final class C4124f extends AbstractC4128j {

    /* renamed from: k */
    private static byte[] f4723k;

    /* renamed from: l */
    private static Map<String, String> f4724l;

    /* renamed from: m */
    private static /* synthetic */ boolean f4725m;

    /* renamed from: e */
    public byte[] f4730e;

    /* renamed from: i */
    private Map<String, String> f4734i;

    /* renamed from: j */
    private Map<String, String> f4735j;

    /* renamed from: a */
    public short f4726a = 0;

    /* renamed from: f */
    private byte f4731f = 0;

    /* renamed from: g */
    private int f4732g = 0;

    /* renamed from: b */
    public int f4727b = 0;

    /* renamed from: c */
    public String f4728c = null;

    /* renamed from: d */
    public String f4729d = null;

    /* renamed from: h */
    private int f4733h = 0;

    static {
        f4725m = !C4124f.class.desiredAssertionStatus();
        f4723k = null;
        f4724l = null;
    }

    public final boolean equals(Object obj) {
        C4124f c4124f = (C4124f) obj;
        return C4129k.m664a(1, c4124f.f4726a) && C4129k.m664a(1, c4124f.f4731f) && C4129k.m664a(1, c4124f.f4732g) && C4129k.m664a(1, c4124f.f4727b) && C4129k.m663a((Object) 1, (Object) c4124f.f4728c) && C4129k.m663a((Object) 1, (Object) c4124f.f4729d) && C4129k.m663a((Object) 1, (Object) c4124f.f4730e) && C4129k.m664a(1, c4124f.f4733h) && C4129k.m663a((Object) 1, (Object) c4124f.f4734i) && C4129k.m663a((Object) 1, (Object) c4124f.f4735j);
    }

    public final Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e) {
            if (f4725m) {
                return null;
            }
            throw new AssertionError();
        }
    }

    @Override // com.tencent.feedback.proguard.AbstractC4128j
    /* renamed from: a */
    public final void mo666a(C4127i c4127i) {
        c4127i.m673a(this.f4726a, 1);
        c4127i.m683a(this.f4731f, 2);
        c4127i.m681a(this.f4732g, 3);
        c4127i.m681a(this.f4727b, 4);
        c4127i.m676a(this.f4728c, 5);
        c4127i.m676a(this.f4729d, 6);
        c4127i.m671a(this.f4730e, 7);
        c4127i.m681a(this.f4733h, 8);
        c4127i.m674a((Map) this.f4734i, 9);
        c4127i.m674a((Map) this.f4735j, 10);
    }

    @Override // com.tencent.feedback.proguard.AbstractC4128j
    /* renamed from: a */
    public final void mo667a(C4126h c4126h) {
        try {
            this.f4726a = c4126h.m696a(this.f4726a, 1, true);
            this.f4731f = c4126h.m709a(this.f4731f, 2, true);
            this.f4732g = c4126h.m705a(this.f4732g, 3, true);
            this.f4727b = c4126h.m705a(this.f4727b, 4, true);
            this.f4728c = c4126h.m693b(5, true);
            this.f4729d = c4126h.m693b(6, true);
            if (f4723k == null) {
                f4723k = new byte[]{0};
            }
            byte[] bArr = f4723k;
            this.f4730e = c4126h.m691c(7, true);
            this.f4733h = c4126h.m705a(this.f4733h, 8, true);
            if (f4724l == null) {
                HashMap hashMap = new HashMap();
                f4724l = hashMap;
                hashMap.put("", "");
            }
            this.f4734i = (Map) c4126h.m700a((C4126h) f4724l, 9, true);
            if (f4724l == null) {
                HashMap hashMap2 = new HashMap();
                f4724l = hashMap2;
                hashMap2.put("", "");
            }
            this.f4735j = (Map) c4126h.m700a((C4126h) f4724l, 10, true);
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("RequestPacket decode error " + C4123e.m712a(this.f4730e));
            throw new RuntimeException(e);
        }
    }

    @Override // com.tencent.feedback.proguard.AbstractC4128j
    /* renamed from: a */
    public final void mo665a(StringBuilder sb, int i) {
        C4085b c4085b = new C4085b(sb, i);
        c4085b.m933a(this.f4726a, "iVersion");
        c4085b.m954a(this.f4731f, "cPacketType");
        c4085b.m950a(this.f4732g, "iMessageType");
        c4085b.m950a(this.f4727b, "iRequestId");
        c4085b.m938a(this.f4728c, "sServantName");
        c4085b.m938a(this.f4729d, "sFuncName");
        c4085b.m931a(this.f4730e, "sBuffer");
        c4085b.m950a(this.f4733h, "iTimeout");
        c4085b.m934a((Map) this.f4734i, "context");
        c4085b.m934a((Map) this.f4735j, "status");
    }
}
