package com.kingroot.kinguser;

import com.tencent.tps.client.p024kr.ISharkForXMod;
import com.tencent.tps.client.p024kr.XModFeature;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class bip implements ISharkForXMod {
    @Override // com.tencent.tps.client.p024kr.ISharkForXMod
    public boolean syncReport(int i, String str, String str2, int i2, List<XModFeature> list) {
        ArrayList arrayList = new ArrayList();
        for (XModFeature xModFeature : C3942yy.m1350e(list)) {
            C2037b c2037b = new C2037b();
            c2037b.featureId = xModFeature.featureId;
            c2037b.timestamp = xModFeature.timestamp;
            c2037b.count = xModFeature.count;
            c2037b.intValues = xModFeature.intValues;
            c2037b.strValues = xModFeature.strValues;
            arrayList.add(c2037b);
        }
        C2687c c2687c = new C2687c();
        c2687c.f2194dR = i2;
        c2687c.f2197lc = str2;
        c2687c.f2196dT = str;
        c2687c.version = String.valueOf(i);
        return awn.m8629Ta().m8627b(arrayList, c2687c);
    }
}
