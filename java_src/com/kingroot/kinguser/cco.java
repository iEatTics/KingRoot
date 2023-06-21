package com.kingroot.kinguser;

import java.util.List;
/* loaded from: classes.dex */
public class cco {
    private List<Long> bXa;

    /* renamed from: o */
    public boolean m4955o(int i, long j) {
        if (cfd.m4643lg(i) || cfd.m4642lh(i) || this.bXa == null) {
            return true;
        }
        return this.bXa.contains(Long.valueOf(j));
    }

    public String toString() {
        return "mVipIdents|" + this.bXa;
    }
}
