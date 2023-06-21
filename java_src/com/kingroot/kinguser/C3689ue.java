package com.kingroot.kinguser;

import java.util.HashMap;
import java.util.Map;
/* renamed from: com.kingroot.kinguser.ue */
/* loaded from: classes.dex */
public final class C3689ue {

    /* renamed from: Il */
    private Map<String, AbstractC3681ty> f3619Il = new HashMap();

    /* renamed from: cV */
    public synchronized AbstractC3681ty m2047cV(String str) {
        return this.f3619Il.get(str);
    }

    /* renamed from: a */
    public synchronized void m2048a(String str, AbstractC3681ty abstractC3681ty) {
        if (abstractC3681ty != null) {
            this.f3619Il.put(str, abstractC3681ty);
        }
    }

    public synchronized void remove(String str) {
        this.f3619Il.remove(str);
    }

    public synchronized int size() {
        return this.f3619Il.size();
    }

    /* renamed from: kw */
    public synchronized AbstractC3681ty m2046kw() {
        AbstractC3681ty abstractC3681ty;
        AbstractC3681ty value;
        AbstractC3681ty abstractC3681ty2;
        long j;
        abstractC3681ty = null;
        long j2 = 0;
        for (Map.Entry<String, AbstractC3681ty> entry : this.f3619Il.entrySet()) {
            if (entry != null && (value = entry.getValue()) != null) {
                long m2071kp = value.m2071kp();
                if (m2071kp > j2) {
                    abstractC3681ty2 = value;
                    j = m2071kp;
                } else {
                    abstractC3681ty2 = abstractC3681ty;
                    j = j2;
                }
                j2 = j;
                abstractC3681ty = abstractC3681ty2;
            }
        }
        return abstractC3681ty;
    }
}
