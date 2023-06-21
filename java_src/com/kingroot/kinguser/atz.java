package com.kingroot.kinguser;

import java.util.HashSet;
import java.util.Set;
/* loaded from: classes.dex */
public class atz extends aua {
    private int aQO;
    private Set<String> aQP;

    public atz(String str, int i) {
        super(str, i);
        this.aQP = new HashSet();
    }

    /* renamed from: PF */
    public int m9107PF() {
        return this.aQO;
    }

    /* renamed from: gF */
    public void m9106gF(int i) {
        this.aQO += i;
    }

    /* renamed from: jj */
    public void m9105jj(String str) {
        this.aQP.add(str);
    }
}
