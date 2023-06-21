package com.tencent.feedback.proguard;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.tencent.feedback.proguard.T */
/* loaded from: classes.dex */
public final class C4118T extends AbstractC4128j implements Cloneable {

    /* renamed from: f */
    private static ArrayList<C4117S> f4705f;

    /* renamed from: g */
    private static Map<String, String> f4706g;

    /* renamed from: a */
    public byte f4707a = 0;

    /* renamed from: b */
    public String f4708b = "";

    /* renamed from: c */
    public String f4709c = "";

    /* renamed from: d */
    public ArrayList<C4117S> f4710d = null;

    /* renamed from: e */
    public Map<String, String> f4711e = null;

    @Override // com.tencent.feedback.proguard.AbstractC4128j
    /* renamed from: a */
    public final void mo666a(C4127i c4127i) {
        c4127i.m683a(this.f4707a, 0);
        if (this.f4708b != null) {
            c4127i.m676a(this.f4708b, 1);
        }
        if (this.f4709c != null) {
            c4127i.m676a(this.f4709c, 2);
        }
        if (this.f4710d != null) {
            c4127i.m675a((Collection) this.f4710d, 3);
        }
        if (this.f4711e != null) {
            c4127i.m674a((Map) this.f4711e, 4);
        }
    }

    @Override // com.tencent.feedback.proguard.AbstractC4128j
    /* renamed from: a */
    public final void mo667a(C4126h c4126h) {
        this.f4707a = c4126h.m709a(this.f4707a, 0, true);
        this.f4708b = c4126h.m693b(1, false);
        this.f4709c = c4126h.m693b(2, false);
        if (f4705f == null) {
            f4705f = new ArrayList<>();
            f4705f.add(new C4117S());
        }
        this.f4710d = (ArrayList) c4126h.m700a((C4126h) f4705f, 3, false);
        if (f4706g == null) {
            f4706g = new HashMap();
            f4706g.put("", "");
        }
        this.f4711e = (Map) c4126h.m700a((C4126h) f4706g, 4, false);
    }

    @Override // com.tencent.feedback.proguard.AbstractC4128j
    /* renamed from: a */
    public final void mo665a(StringBuilder sb, int i) {
    }
}
