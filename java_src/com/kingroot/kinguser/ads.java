package com.kingroot.kinguser;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class ads implements adn {
    private HashMap<Class<? extends adq>, adq> adu = new HashMap<>();

    /* renamed from: sX */
    private synchronized void m12459sX() {
        if (this.adu.size() <= 0) {
            m12462a(new bjs());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private void m12462a(adq... adqVarArr) {
        if (adqVarArr != null) {
            int length = adqVarArr.length;
            for (int i = 0; i < length; i++) {
                try {
                    this.adu.put(adqVarArr[i].getClass(), adqVarArr[i].m12466cB(i));
                } catch (Exception e) {
                }
            }
        }
    }

    @Override // com.kingroot.kinguser.adn
    /* renamed from: sP */
    public List<adq> mo12460sP() {
        m12459sX();
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<Class<? extends adq>, adq> entry : this.adu.entrySet()) {
            arrayList.add(entry.getValue());
        }
        return arrayList;
    }

    @Override // com.kingroot.kinguser.adn
    /* renamed from: f */
    public <T extends adq> T mo12461f(Class<T> cls) {
        m12459sX();
        return cls.cast(this.adu.get(cls));
    }
}
