package com.tencent.feedback.proguard;

import java.util.HashMap;
import java.util.Map;
/* renamed from: com.tencent.feedback.proguard.O */
/* loaded from: classes.dex */
public final class C4113O extends AbstractC4128j implements Cloneable {

    /* renamed from: m */
    private static byte[] f4667m;

    /* renamed from: n */
    private static Map<String, String> f4668n;

    /* renamed from: a */
    public int f4669a = 0;

    /* renamed from: b */
    public String f4670b = "";

    /* renamed from: c */
    public String f4671c = "";

    /* renamed from: d */
    public String f4672d = "";

    /* renamed from: e */
    public String f4673e = "";

    /* renamed from: f */
    public String f4674f = "";

    /* renamed from: g */
    public int f4675g = 0;

    /* renamed from: h */
    public byte[] f4676h = null;

    /* renamed from: i */
    public String f4677i = "";

    /* renamed from: j */
    public String f4678j = "";

    /* renamed from: k */
    private Map<String, String> f4679k = null;

    /* renamed from: l */
    private String f4680l = "";

    @Override // com.tencent.feedback.proguard.AbstractC4128j
    /* renamed from: a */
    public final void mo666a(C4127i c4127i) {
        c4127i.m681a(this.f4669a, 0);
        c4127i.m676a(this.f4670b, 1);
        c4127i.m676a(this.f4671c, 2);
        c4127i.m676a(this.f4672d, 3);
        if (this.f4673e != null) {
            c4127i.m676a(this.f4673e, 4);
        }
        c4127i.m676a(this.f4674f, 5);
        c4127i.m681a(this.f4675g, 6);
        c4127i.m671a(this.f4676h, 7);
        if (this.f4677i != null) {
            c4127i.m676a(this.f4677i, 8);
        }
        if (this.f4678j != null) {
            c4127i.m676a(this.f4678j, 9);
        }
        if (this.f4679k != null) {
            c4127i.m674a((Map) this.f4679k, 10);
        }
        if (this.f4680l != null) {
            c4127i.m676a(this.f4680l, 11);
        }
    }

    @Override // com.tencent.feedback.proguard.AbstractC4128j
    /* renamed from: a */
    public final void mo667a(C4126h c4126h) {
        this.f4669a = c4126h.m705a(this.f4669a, 0, true);
        this.f4670b = c4126h.m693b(1, true);
        this.f4671c = c4126h.m693b(2, true);
        this.f4672d = c4126h.m693b(3, true);
        this.f4673e = c4126h.m693b(4, false);
        this.f4674f = c4126h.m693b(5, true);
        this.f4675g = c4126h.m705a(this.f4675g, 6, true);
        if (f4667m == null) {
            f4667m = r0;
            byte[] bArr = {0};
        }
        byte[] bArr2 = f4667m;
        this.f4676h = c4126h.m691c(7, true);
        this.f4677i = c4126h.m693b(8, false);
        this.f4678j = c4126h.m693b(9, false);
        if (f4668n == null) {
            f4668n = new HashMap();
            f4668n.put("", "");
        }
        this.f4679k = (Map) c4126h.m700a((C4126h) f4668n, 10, false);
        this.f4680l = c4126h.m693b(11, false);
    }

    @Override // com.tencent.feedback.proguard.AbstractC4128j
    /* renamed from: a */
    public final void mo665a(StringBuilder sb, int i) {
    }
}
