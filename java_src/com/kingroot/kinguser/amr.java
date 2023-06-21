package com.kingroot.kinguser;

import java.util.List;
/* loaded from: classes.dex */
public class amr implements amm {
    private List<Integer> azO;
    private List<Integer> azP;
    private List<Integer> azQ;

    public amr(List<Integer> list, List<Integer> list2, List<Integer> list3) {
        this.azO = list;
        this.azP = list2;
        this.azQ = list3;
    }

    /* renamed from: Iy */
    public List<Integer> m10435Iy() {
        return this.azP;
    }

    /* renamed from: Iz */
    public List<Integer> m10434Iz() {
        return this.azQ;
    }

    /* renamed from: IA */
    public List<Integer> m10436IA() {
        return this.azO;
    }

    @Override // com.kingroot.kinguser.amm
    public int getType() {
        return 4;
    }
}
