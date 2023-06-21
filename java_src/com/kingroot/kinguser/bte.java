package com.kingroot.kinguser;

import cloudsdk.ext.p008kr.RootConst;
import com.p019qq.taf.jce.JceStruct;
import com.tencent.qqpim.discovery.AdRequestData;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class bte {
    /* renamed from: b */
    public static void m5552b(int i, JceStruct jceStruct, JceStruct jceStruct2, brj brjVar, long j) {
        bre.ahy().ahz().mo5696a(i, jceStruct, jceStruct2, brjVar, j);
    }

    /* renamed from: a */
    public static void m5554a(AdRequestData adRequestData, brj brjVar, long j) {
        ArrayList<bsr> arrayList = new ArrayList<>();
        bsr bsrVar = new bsr();
        bsrVar.bJL = adRequestData.bJL;
        bsrVar.bJp = adRequestData.bJp;
        bsrVar.bMb = adRequestData.bJM;
        arrayList.add(bsrVar);
        bsu bsuVar = new bsu();
        bsuVar.bMn = arrayList;
        bsuVar.bMo = true;
        m5552b(RootConst.ERR_NETWORK_UNAVAILABLE, bsuVar, new bta(), brjVar, j);
    }

    /* renamed from: a */
    public static void m5553a(ArrayList<bsq> arrayList, brj brjVar) {
        bst bstVar = new bst();
        bstVar.bMl = arrayList;
        m5552b(4003, bstVar, new bsz(), brjVar, -1L);
    }
}
