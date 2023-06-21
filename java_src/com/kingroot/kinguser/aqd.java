package com.kingroot.kinguser;

import android.support.annotation.NonNull;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class aqd {
    private static final List<aqc> aLb = new ArrayList();
    private static final HashMap<String, List<aqc>> aLc = new HashMap<>();

    /* renamed from: ba */
    public static void m9599ba(List<aqc> list) {
        if (list != null) {
            synchronized (aLb) {
                aLb.clear();
                aLb.addAll(list);
            }
        }
    }

    @NonNull
    /* renamed from: MA */
    public static List<aqc> m9603MA() {
        ArrayList arrayList;
        synchronized (aLb) {
            arrayList = new ArrayList(aLb);
        }
        return arrayList;
    }

    /* renamed from: MB */
    public static int m9602MB() {
        int size;
        synchronized (aLb) {
            size = aLb.size();
        }
        return size;
    }

    @NonNull
    /* renamed from: MC */
    public static HashMap<String, List<aqc>> m9601MC() {
        HashMap<String, List<aqc>> hashMap;
        synchronized (aLc) {
            hashMap = new HashMap<>(aLc);
        }
        return hashMap;
    }

    /* renamed from: a */
    public static void m9600a(String str, aqc aqcVar) {
        boolean z;
        synchronized (aLc) {
            List<aqc> list = aLc.get(str);
            if (list == null) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(aqcVar);
                aLc.put(str, arrayList);
            } else {
                Iterator<aqc> it = list.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z = false;
                        break;
                    }
                    aqc next = it.next();
                    if (aqc.m9610a(next, aqcVar)) {
                        next.m9604e(aqcVar);
                        z = true;
                        break;
                    }
                }
                if (!z) {
                    list.add(aqcVar);
                }
            }
        }
    }

    public static void reset() {
        synchronized (aLb) {
            aLb.clear();
        }
        synchronized (aLc) {
            aLc.clear();
        }
    }
}
