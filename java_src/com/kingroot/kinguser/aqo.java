package com.kingroot.kinguser;

import java.util.Comparator;
/* loaded from: classes.dex */
public class aqo implements Comparator<aqh> {
    @Override // java.util.Comparator
    /* renamed from: a */
    public int compare(aqh aqhVar, aqh aqhVar2) {
        if (aqhVar == null || aqhVar2 == null) {
            return aqhVar == null ? 1 : -1;
        }
        int priority = aqhVar2.getPriority() - aqhVar.getPriority();
        if (priority == 0 && (aqhVar instanceof aql) && (aqhVar2 instanceof aql)) {
            return ((aql) aqhVar2).mo9582MN() - ((aql) aqhVar).mo9582MN();
        }
        return priority;
    }
}
