package com.tencent.feedback.proguard;

import java.util.HashMap;
import java.util.Map;
/* renamed from: com.tencent.feedback.proguard.S */
/* loaded from: classes.dex */
public final class C4117S extends AbstractC4128j implements Cloneable {

    /* renamed from: g */
    private static Map<String, String> f4698g = new HashMap();

    /* renamed from: a */
    public long f4699a = 0;

    /* renamed from: b */
    public byte f4700b = 0;

    /* renamed from: c */
    public String f4701c = "";

    /* renamed from: d */
    public String f4702d = "";

    /* renamed from: f */
    private String f4704f = "";

    /* renamed from: e */
    public Map<String, String> f4703e = null;

    @Override // com.tencent.feedback.proguard.AbstractC4128j
    /* renamed from: a */
    public final void mo666a(C4127i c4127i) {
        c4127i.m680a(this.f4699a, 0);
        c4127i.m683a(this.f4700b, 1);
        if (this.f4701c != null) {
            c4127i.m676a(this.f4701c, 2);
        }
        if (this.f4702d != null) {
            c4127i.m676a(this.f4702d, 3);
        }
        if (this.f4704f != null) {
            c4127i.m676a(this.f4704f, 4);
        }
        if (this.f4703e != null) {
            c4127i.m674a((Map) this.f4703e, 5);
        }
    }

    static {
        f4698g.put("", "");
    }

    @Override // com.tencent.feedback.proguard.AbstractC4128j
    /* renamed from: a */
    public final void mo667a(C4126h c4126h) {
        this.f4699a = c4126h.m703a(this.f4699a, 0, true);
        this.f4700b = c4126h.m709a(this.f4700b, 1, true);
        this.f4701c = c4126h.m693b(2, false);
        this.f4702d = c4126h.m693b(3, false);
        this.f4704f = c4126h.m693b(4, false);
        this.f4703e = (Map) c4126h.m700a((C4126h) f4698g, 5, false);
    }

    @Override // com.tencent.feedback.proguard.AbstractC4128j
    /* renamed from: a */
    public final void mo665a(StringBuilder sb, int i) {
    }
}
