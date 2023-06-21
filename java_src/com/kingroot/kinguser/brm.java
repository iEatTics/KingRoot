package com.kingroot.kinguser;

import android.util.SparseArray;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public class brm {
    private final SparseArray<Map<String, brl>> bKh = new SparseArray<>();

    public brm() {
        bth.m5539i("AdLifecycleMgr()");
    }

    /* renamed from: ke */
    public List<String> m5678ke(int i) {
        ArrayList arrayList;
        synchronized (this.bKh) {
            Map<String, brl> map = this.bKh.get(i);
            arrayList = new ArrayList();
            if (map != null) {
                Set<String> keySet = map.keySet();
                ArrayList<brl> arrayList2 = new ArrayList();
                for (String str : keySet) {
                    brl brlVar = map.get(str);
                    if (brlVar.ahG()) {
                        arrayList2.add(brlVar);
                    }
                }
                Collections.sort(arrayList2);
                for (brl brlVar2 : arrayList2) {
                    if (!arrayList.contains(brlVar2.bKc)) {
                        arrayList.add(brlVar2.bKc);
                    }
                }
            }
            bth.m5539i("getReachableSortedAId() posId:" + i + " return:" + arrayList.size());
        }
        return arrayList;
    }

    /* renamed from: a */
    public void m5683a(bso bsoVar) {
        LinkedHashMap linkedHashMap;
        bth.m5539i("onCreateAd():" + bsoVar.toString());
        synchronized (this.bKh) {
            Map<String, brl> map = this.bKh.get(bsoVar.bLV.bJp);
            if (map == null) {
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                this.bKh.put(bsoVar.bLV.bJp, linkedHashMap2);
                linkedHashMap = linkedHashMap2;
            } else {
                linkedHashMap = map;
            }
            brl brlVar = linkedHashMap.get(bsoVar.bLV.uniqueKey);
            if (brlVar == null) {
                brlVar = new brr();
                linkedHashMap.put(bsoVar.bLV.uniqueKey, brlVar);
            }
            brlVar.bKc = bsoVar.bLV.activityId;
            brlVar.mState = bsoVar.f2068gw;
            brlVar.bKf = bsoVar.weight;
            brlVar.bKb = bsoVar.bLV.bKb;
            brlVar.bKe = bsoVar.bLU;
            brlVar.bKd = bsoVar.bLT;
        }
    }

    /* renamed from: b */
    public void m5681b(bso bsoVar) {
        LinkedHashMap linkedHashMap;
        bth.m5539i("onReceiveAd():" + bsoVar.toString());
        synchronized (this.bKh) {
            Map<String, brl> map = this.bKh.get(bsoVar.bLV.bJp);
            if (map == null) {
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                this.bKh.put(bsoVar.bLV.bJp, linkedHashMap2);
                linkedHashMap = linkedHashMap2;
            } else {
                linkedHashMap = map;
            }
            brl brlVar = linkedHashMap.get(bsoVar.bLV.uniqueKey);
            if (brlVar == null) {
                brlVar = new brr();
                brlVar.bKc = bsoVar.bLV.activityId;
                brlVar.bKb = bsoVar.bLV.bKb;
                brlVar.bKe = bsoVar.bLU;
                brlVar.bKd = bsoVar.bLT;
                linkedHashMap.put(bsoVar.bLV.uniqueKey, brlVar);
            } else {
                brlVar.bKc = bsoVar.bLV.activityId;
                brlVar.bKb = bsoVar.bLV.bKb;
                brlVar.bKe = bsoVar.bLU;
                brlVar.bKd = bsoVar.bLT;
            }
            brlVar.ahF();
        }
    }

    /* renamed from: a */
    public void m5682a(bsp bspVar) {
        brl brlVar;
        bth.m5539i("setAdExpired():" + bspVar.toString());
        synchronized (this.bKh) {
            Map<String, brl> map = this.bKh.get(bspVar.bJp);
            if (map != null && (brlVar = map.get(bspVar.uniqueKey)) != null) {
                brlVar.ahI();
            }
        }
    }

    /* renamed from: b */
    public brl m5680b(bsp bspVar) {
        brl brlVar;
        synchronized (this.bKh) {
            Map<String, brl> map = this.bKh.get(bspVar.bJp);
            if (map == null) {
                brlVar = null;
            } else {
                int i = 0;
                if (!map.isEmpty()) {
                    int i2 = 0;
                    for (brl brlVar2 : map.values()) {
                        i2 = Math.max(i2, brlVar2.bKf);
                    }
                    i = i2;
                }
                brlVar = map.get(bspVar.uniqueKey);
                if (brlVar != null) {
                    brlVar.mo5640kd(i);
                }
            }
        }
        return brlVar;
    }

    /* renamed from: c */
    public brl m5679c(bsp bspVar) {
        brl brlVar;
        synchronized (this.bKh) {
            Map<String, brl> map = this.bKh.get(bspVar.bJp);
            if (map == null) {
                brlVar = null;
            } else {
                brlVar = map.get(bspVar.uniqueKey);
                if (brlVar != null) {
                    brlVar.onClick();
                }
            }
        }
        return brlVar;
    }
}
