package com.kingroot.kinguser;
/* renamed from: com.kingroot.kinguser.mp */
/* loaded from: classes.dex */
public final class C3321mp {

    /* renamed from: we */
    private StringBuilder f3143we;

    /* renamed from: wf */
    private int f3144wf;

    /* renamed from: bx */
    private void m3039bx(String str) {
        for (int i = 0; i < this.f3144wf; i++) {
            this.f3143we.append('\t');
        }
        if (str != null) {
            this.f3143we.append(str).append(": ");
        }
    }

    public C3321mp(StringBuilder sb, int i) {
        this.f3144wf = 0;
        this.f3143we = sb;
        this.f3144wf = i;
    }

    /* renamed from: i */
    public C3321mp m3038i(int i, String str) {
        m3039bx(str);
        this.f3143we.append(i).append('\n');
        return this;
    }

    /* renamed from: q */
    public C3321mp m3037q(String str, String str2) {
        m3039bx(str2);
        if (str == null) {
            this.f3143we.append("null").append('\n');
        } else {
            this.f3143we.append(str).append('\n');
        }
        return this;
    }
}
