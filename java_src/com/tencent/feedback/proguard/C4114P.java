package com.tencent.feedback.proguard;
/* renamed from: com.tencent.feedback.proguard.P */
/* loaded from: classes.dex */
public final class C4114P extends AbstractC4128j implements Cloneable {

    /* renamed from: f */
    private static byte[] f4681f;

    /* renamed from: a */
    public byte f4682a = 0;

    /* renamed from: b */
    public int f4683b = 0;

    /* renamed from: c */
    public byte[] f4684c = null;

    /* renamed from: d */
    public String f4685d = "";

    /* renamed from: e */
    public long f4686e = 0;

    @Override // com.tencent.feedback.proguard.AbstractC4128j
    /* renamed from: a */
    public final void mo666a(C4127i c4127i) {
        c4127i.m683a(this.f4682a, 0);
        c4127i.m681a(this.f4683b, 1);
        if (this.f4684c != null) {
            c4127i.m671a(this.f4684c, 2);
        }
        if (this.f4685d != null) {
            c4127i.m676a(this.f4685d, 3);
        }
        c4127i.m680a(this.f4686e, 4);
    }

    @Override // com.tencent.feedback.proguard.AbstractC4128j
    /* renamed from: a */
    public final void mo667a(C4126h c4126h) {
        this.f4682a = c4126h.m709a(this.f4682a, 0, true);
        this.f4683b = c4126h.m705a(this.f4683b, 1, true);
        if (f4681f == null) {
            f4681f = r0;
            byte[] bArr = {0};
        }
        byte[] bArr2 = f4681f;
        this.f4684c = c4126h.m691c(2, false);
        this.f4685d = c4126h.m693b(3, false);
        this.f4686e = c4126h.m703a(this.f4686e, 4, false);
    }

    @Override // com.tencent.feedback.proguard.AbstractC4128j
    /* renamed from: a */
    public final void mo665a(StringBuilder sb, int i) {
    }
}
