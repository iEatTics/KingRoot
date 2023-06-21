package com.kingroot.kinguser;

import java.util.HashSet;
import java.util.Set;
/* loaded from: classes.dex */
public class aru {
    private static final String TAG = aiq.asa + "_RiskRootProcRecycler";
    private Set<String> aMh = new HashSet();
    private Set<String> aMi = new HashSet();

    /* renamed from: MG */
    public boolean m9506MG() {
        Set<String> m9504Nu = m9504Nu();
        Set<String> m9503Nv = m9503Nv();
        m9504Nu.addAll(bca.m7738Xa().m7737Xb());
        if (!(m9504Nu.isEmpty() && m9503Nv.isEmpty()) && bbz.m7744a(m9504Nu, m9503Nv)) {
            this.aMh = m9504Nu;
            this.aMi = m9503Nv;
            return false;
        }
        return true;
    }

    /* renamed from: Nu */
    private Set<String> m9504Nu() {
        return new HashSet(bca.m7738Xa().m7735hg(2));
    }

    /* renamed from: Nv */
    private Set<String> m9503Nv() {
        return new HashSet(bca.m7738Xa().m7734hh(2));
    }

    /* renamed from: MH */
    public boolean m9505MH() {
        bbz.m7742c(this.aMh, this.aMi);
        return true;
    }
}
