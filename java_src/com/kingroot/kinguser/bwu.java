package com.kingroot.kinguser;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes.dex */
public class bwu {
    private int aFH = 0;
    private final int bSJ;
    private final int bSK;
    private final int bSL;
    private Object[] mValues;

    public bwu(int i, int i2, int i3) {
        this.bSJ = i;
        this.mValues = new Object[(int) Math.ceil((1.0f * i3) / i2)];
        this.bSK = i3;
        this.bSL = i2;
    }

    /* renamed from: a */
    public boolean m5280a(int i, bwv bwvVar) {
        if (i < this.bSK && i > this.aFH) {
            int i2 = i / this.bSL;
            List list = (List) this.mValues[i2];
            if (list == null) {
                list = new ArrayList();
                this.mValues[i2] = list;
            }
            list.add(bwvVar);
            this.aFH = i;
            return true;
        }
        return false;
    }

    /* renamed from: kL */
    private ArrayList<bys> m5278kL(int i) {
        ArrayList<bys> arrayList = new ArrayList<>();
        List list = (List) this.mValues[i];
        if (list == null) {
            return arrayList;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            bwv bwvVar = (bwv) list.get(i2);
            bys bysVar = new bys();
            bysVar.f2168x = bwvVar.values[0];
            bysVar.f2169y = bwvVar.values[1];
            bysVar.f2170z = bwvVar.values[2];
            bysVar.bUO = bwvVar.timestamp;
            arrayList.add(bysVar);
        }
        return arrayList;
    }

    public int aja() {
        if (this.bSJ == 1) {
            return 0;
        }
        if (this.bSJ == 4) {
            return 2;
        }
        return this.bSJ != 9 ? -1 : 4;
    }

    /* renamed from: cu */
    public ArrayList<byt> m5279cu(List<bww> list) {
        bww bwwVar;
        ArrayList<byt> arrayList = new ArrayList<>();
        for (int i = 0; i < this.mValues.length; i++) {
            List list2 = (List) this.mValues[i];
            if (list2 != null && list2.size() != 0) {
                byt bytVar = new byt();
                ArrayList<bys> m5278kL = m5278kL(i);
                HashMap hashMap = new HashMap();
                hashMap.put(Integer.valueOf(aja()), m5278kL);
                bytVar.bUQ = hashMap;
                bwv bwvVar = (bwv) list2.get(0);
                if (bwvVar != null) {
                    bytVar.bUP = bwvVar.timestamp;
                    if (list.size() > i && (bwwVar = list.get(i)) != null) {
                        bytVar.bSN = bwwVar.bSN;
                        bytVar.bSO = bwwVar.bSO;
                        bytVar.bSP = bwwVar.bSP;
                        bytVar.bSQ = bwwVar.bSQ;
                    }
                    arrayList.add(bytVar);
                }
            }
        }
        return arrayList;
    }

    public Object[] ajb() {
        return (Object[]) this.mValues.clone();
    }

    public int ajc() {
        int i = 0;
        for (int i2 = 0; i2 < this.mValues.length; i2++) {
            if (((List) this.mValues[i2]) != null) {
                i++;
            }
        }
        return i;
    }
}
