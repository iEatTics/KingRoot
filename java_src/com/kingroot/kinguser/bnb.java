package com.kingroot.kinguser;
/* loaded from: classes.dex */
public final class bnb {
    private StringBuilder bCL;
    private int bCM;

    /* renamed from: mt */
    private void m6286mt(String str) {
        for (int i = 0; i < this.bCM; i++) {
            this.bCL.append('\t');
        }
        if (str != null) {
            this.bCL.append(str).append(": ");
        }
    }

    public bnb(StringBuilder sb, int i) {
        this.bCM = 0;
        this.bCL = sb;
        this.bCM = i;
    }

    /* renamed from: S */
    public final bnb m6288S(int i, String str) {
        m6286mt(str);
        this.bCL.append(i).append('\n');
        return this;
    }

    /* renamed from: aR */
    public final bnb m6287aR(String str, String str2) {
        m6286mt(str2);
        if (str == null) {
            this.bCL.append("null\n");
        } else {
            this.bCL.append(str).append('\n');
        }
        return this;
    }
}
