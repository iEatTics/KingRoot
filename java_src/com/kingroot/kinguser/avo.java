package com.kingroot.kinguser;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class avo extends avj implements InterfaceC3813vv {
    private C2585br aNa;

    public avo() {
        super(40299);
    }

    @Override // com.kingroot.kinguser.InterfaceC3813vv
    /* renamed from: mE */
    public List<String> mo1664mE() {
        if (this.aNa == null) {
            this.aNa = m8833Rw();
        }
        ArrayList arrayList = new ArrayList();
        if (this.aNa == null || this.aNa.f2063kU == null) {
            return arrayList;
        }
        Iterator<C2565bq> it = this.aNa.f2063kU.iterator();
        while (it.hasNext()) {
            C2565bq next = it.next();
            try {
                if (Integer.parseInt(next.f2002kM) == 0) {
                    arrayList.add(next.f2003kN);
                }
            } catch (Throwable th) {
            }
        }
        return arrayList;
    }

    @Override // com.kingroot.kinguser.InterfaceC3813vv
    /* renamed from: mF */
    public Map<String, List<String>> mo1663mF() {
        if (this.aNa == null) {
            this.aNa = m8833Rw();
        }
        HashMap hashMap = new HashMap();
        if (this.aNa == null || this.aNa.f2063kU == null) {
            return hashMap;
        }
        Iterator<C2565bq> it = this.aNa.f2063kU.iterator();
        while (it.hasNext()) {
            C2565bq next = it.next();
            try {
                if (Integer.parseInt(next.f2002kM) == 1) {
                    List list = (List) hashMap.get(next.f2003kN);
                    if (list == null) {
                        list = new ArrayList();
                    }
                    list.add(next.f2004kO);
                    hashMap.put(next.f2003kN, list);
                }
            } catch (Throwable th) {
            }
        }
        return hashMap;
    }

    @Override // com.kingroot.kinguser.InterfaceC3813vv
    /* renamed from: mG */
    public List<String> mo1662mG() {
        if (this.aNa == null) {
            this.aNa = m8833Rw();
        }
        ArrayList arrayList = new ArrayList();
        if (this.aNa == null || this.aNa.f2063kU == null) {
            return arrayList;
        }
        Iterator<C2565bq> it = this.aNa.f2063kU.iterator();
        while (it.hasNext()) {
            C2565bq next = it.next();
            try {
                if (Integer.parseInt(next.f2002kM) == 2) {
                    arrayList.add(next.f2003kN);
                }
            } catch (Throwable th) {
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.avj
    /* renamed from: uy */
    public void mo1472uy() {
        this.aNa = m8833Rw();
    }
}
