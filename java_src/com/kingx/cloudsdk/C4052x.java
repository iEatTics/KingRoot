package com.kingx.cloudsdk;

import com.kingroot.kinguser.bnc;
import com.kingroot.kinguser.bnd;
/* renamed from: com.kingx.cloudsdk.x */
/* loaded from: classes.dex */
public final class C4052x extends AbstractC4027cb implements Cloneable {
    private static byte[] bDr;
    private int valueType = 0;

    /* renamed from: dz */
    private int f4376dz = 0;

    /* renamed from: dA */
    private int f4370dA = 0;

    /* renamed from: dB */
    private long f4371dB = 0;

    /* renamed from: dC */
    private String f4372dC = "";

    /* renamed from: dD */
    private byte[] f4373dD = null;

    /* renamed from: dE */
    private boolean f4374dE = false;

    /* renamed from: dF */
    private short f4375dF = 0;

    /* renamed from: P */
    public final void m1175P(int i) {
        this.valueType = i;
    }

    /* renamed from: jX */
    public final void m1169jX(int i) {
        this.f4376dz = i;
    }

    /* renamed from: jY */
    public final void m1168jY(int i) {
        this.f4370dA = i;
    }

    /* renamed from: a */
    public final void m1174a(long j) {
        this.f4371dB = j;
    }

    /* renamed from: a */
    public final void m1173a(String str) {
        this.f4372dC = str;
    }

    /* renamed from: a */
    public final void m1171a(byte[] bArr) {
        this.f4373dD = bArr;
    }

    /* renamed from: a */
    public final void m1172a(boolean z) {
        this.f4374dE = z;
    }

    /* renamed from: c */
    public final void m1170c(short s) {
        this.f4375dF = s;
    }

    @Override // com.kingx.cloudsdk.AbstractC4027cb
    /* renamed from: a */
    public final void mo1166a(bnd bndVar) {
        if (this.valueType != 0) {
            bndVar.m6246am(this.valueType, 0);
        }
        if (this.f4376dz != 0) {
            bndVar.m6246am(this.f4376dz, 1);
        }
        if (this.f4370dA != 0) {
            bndVar.m6246am(this.f4370dA, 2);
        }
        if (this.f4371dB != 0) {
            bndVar.m6254a(this.f4371dB, 3);
        }
        if (this.f4372dC != null) {
            bndVar.m6258T(this.f4372dC, 4);
        }
        if (this.f4373dD != null) {
            bndVar.m6247a(this.f4373dD, 5);
        }
        if (this.f4374dE) {
            bndVar.m6248a(this.f4374dE, 6);
        }
        if (this.f4375dF != 0) {
            bndVar.m6249a(this.f4375dF, 7);
        }
    }

    @Override // com.kingx.cloudsdk.AbstractC4027cb
    /* renamed from: a */
    public final void mo1167a(bnc bncVar) {
        this.valueType = bncVar.m6274a(this.valueType, 0, false);
        this.f4376dz = bncVar.m6274a(this.f4376dz, 1, false);
        this.f4370dA = bncVar.m6274a(this.f4370dA, 2, false);
        this.f4371dB = bncVar.m6273a(this.f4371dB, 3, false);
        this.f4372dC = bncVar.m6259z(4, false);
        if (bDr == null) {
            bDr = r0;
            byte[] bArr = {0};
        }
        byte[] bArr2 = bDr;
        this.f4373dD = bncVar.m6284B(5, false);
        boolean z = this.f4374dE;
        this.f4374dE = bncVar.m6260y(6, false);
        this.f4375dF = bncVar.m6267a(this.f4375dF, 7, false);
    }

    @Override // com.kingx.cloudsdk.AbstractC4027cb
    /* renamed from: a */
    public final void mo1165a(StringBuilder sb, int i) {
    }
}
