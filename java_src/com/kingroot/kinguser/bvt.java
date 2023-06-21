package com.kingroot.kinguser;

import com.p019qq.jce.wup.UniPacket;
import java.util.HashMap;
/* loaded from: classes.dex */
public class bvt {
    private static String TAG = "WupSessionHelperImpl";

    /* renamed from: a */
    public Object m5373a(UniPacket uniPacket, String str, Object obj) {
        if (str == null) {
            str = "";
        }
        try {
            return uniPacket.getByClass(str, obj);
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: a */
    public bvp m5374a(int i, String str, Object obj) {
        bvs m5375kJ = bvr.m5375kJ(i);
        bvp bvpVar = new bvp();
        bvpVar.bQE = m5375kJ.bQE;
        bvpVar.bQF = m5375kJ.bQF;
        bvpVar.bQD = i;
        HashMap<String, Object> hashMap = new HashMap<>(3);
        hashMap.put(str, obj);
        bvpVar.bQG = hashMap;
        return bvpVar;
    }
}
