package com.tencent.feedback.proguard;

import java.util.HashMap;
import java.util.Map;
/* renamed from: com.tencent.feedback.proguard.R */
/* loaded from: classes.dex */
public final class C4116R extends AbstractC4128j implements Cloneable {

    /* renamed from: h */
    private static C4115Q f4689h;

    /* renamed from: i */
    private static Map<String, String> f4690i;

    /* renamed from: c */
    private boolean f4693c = true;

    /* renamed from: d */
    private boolean f4694d = true;

    /* renamed from: e */
    private boolean f4695e = true;

    /* renamed from: a */
    public String f4691a = "";

    /* renamed from: f */
    private String f4696f = "";

    /* renamed from: g */
    private C4115Q f4697g = null;

    /* renamed from: b */
    public Map<String, String> f4692b = null;

    @Override // com.tencent.feedback.proguard.AbstractC4128j
    /* renamed from: a */
    public final void mo666a(C4127i c4127i) {
        c4127i.m672a(this.f4693c, 0);
        c4127i.m672a(this.f4694d, 1);
        c4127i.m672a(this.f4695e, 2);
        if (this.f4691a != null) {
            c4127i.m676a(this.f4691a, 3);
        }
        if (this.f4696f != null) {
            c4127i.m676a(this.f4696f, 4);
        }
        if (this.f4697g != null) {
            c4127i.m679a((AbstractC4128j) this.f4697g, 5);
        }
        if (this.f4692b != null) {
            c4127i.m674a((Map) this.f4692b, 6);
        }
    }

    @Override // com.tencent.feedback.proguard.AbstractC4128j
    /* renamed from: a */
    public final void mo667a(C4126h c4126h) {
        boolean z = this.f4693c;
        this.f4693c = c4126h.m704a(0, true);
        boolean z2 = this.f4694d;
        this.f4694d = c4126h.m704a(1, true);
        boolean z3 = this.f4695e;
        this.f4695e = c4126h.m704a(2, true);
        this.f4691a = c4126h.m693b(3, false);
        this.f4696f = c4126h.m693b(4, false);
        if (f4689h == null) {
            f4689h = new C4115Q();
        }
        this.f4697g = (C4115Q) c4126h.m701a((AbstractC4128j) f4689h, 5, false);
        if (f4690i == null) {
            f4690i = new HashMap();
            f4690i.put("", "");
        }
        this.f4692b = (Map) c4126h.m700a((C4126h) f4690i, 6, false);
    }

    @Override // com.tencent.feedback.proguard.AbstractC4128j
    /* renamed from: a */
    public final void mo665a(StringBuilder sb, int i) {
    }
}
