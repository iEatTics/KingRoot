package com.tencent.feedback.proguard;
/* renamed from: com.tencent.feedback.proguard.L */
/* loaded from: classes.dex */
public final class C4110L extends AbstractC4128j implements Cloneable {

    /* renamed from: d */
    private static byte[] f4634d;

    /* renamed from: a */
    public byte f4635a;

    /* renamed from: b */
    public String f4636b;

    /* renamed from: c */
    public byte[] f4637c;

    public C4110L() {
        this.f4635a = (byte) 0;
        this.f4636b = "";
        this.f4637c = null;
    }

    public C4110L(byte b, String str, byte[] bArr) {
        this.f4635a = (byte) 0;
        this.f4636b = "";
        this.f4637c = null;
        this.f4635a = b;
        this.f4636b = str;
        this.f4637c = bArr;
    }

    @Override // com.tencent.feedback.proguard.AbstractC4128j
    /* renamed from: a */
    public final void mo666a(C4127i c4127i) {
        c4127i.m683a(this.f4635a, 0);
        c4127i.m676a(this.f4636b, 1);
        if (this.f4637c != null) {
            c4127i.m671a(this.f4637c, 2);
        }
    }

    @Override // com.tencent.feedback.proguard.AbstractC4128j
    /* renamed from: a */
    public final void mo667a(C4126h c4126h) {
        this.f4635a = c4126h.m709a(this.f4635a, 0, true);
        this.f4636b = c4126h.m693b(1, true);
        if (f4634d == null) {
            f4634d = r0;
            byte[] bArr = {0};
        }
        byte[] bArr2 = f4634d;
        this.f4637c = c4126h.m691c(2, false);
    }

    @Override // com.tencent.feedback.proguard.AbstractC4128j
    /* renamed from: a */
    public final void mo665a(StringBuilder sb, int i) {
    }
}
