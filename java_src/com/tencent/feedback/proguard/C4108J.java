package com.tencent.feedback.proguard;
/* renamed from: com.tencent.feedback.proguard.J */
/* loaded from: classes.dex */
public final class C4108J extends AbstractC4128j implements Cloneable {

    /* renamed from: a */
    public String f4626a = "";

    /* renamed from: b */
    public String f4627b = "";

    /* renamed from: c */
    public String f4628c = "";

    /* renamed from: e */
    private String f4630e = "";

    /* renamed from: d */
    public String f4629d = "";

    @Override // com.tencent.feedback.proguard.AbstractC4128j
    /* renamed from: a */
    public final void mo666a(C4127i c4127i) {
        c4127i.m676a(this.f4626a, 0);
        if (this.f4627b != null) {
            c4127i.m676a(this.f4627b, 1);
        }
        if (this.f4628c != null) {
            c4127i.m676a(this.f4628c, 2);
        }
        if (this.f4630e != null) {
            c4127i.m676a(this.f4630e, 3);
        }
        if (this.f4629d != null) {
            c4127i.m676a(this.f4629d, 4);
        }
    }

    @Override // com.tencent.feedback.proguard.AbstractC4128j
    /* renamed from: a */
    public final void mo667a(C4126h c4126h) {
        this.f4626a = c4126h.m693b(0, true);
        this.f4627b = c4126h.m693b(1, false);
        this.f4628c = c4126h.m693b(2, false);
        this.f4630e = c4126h.m693b(3, false);
        this.f4629d = c4126h.m693b(4, false);
    }

    @Override // com.tencent.feedback.proguard.AbstractC4128j
    /* renamed from: a */
    public final void mo665a(StringBuilder sb, int i) {
    }
}
