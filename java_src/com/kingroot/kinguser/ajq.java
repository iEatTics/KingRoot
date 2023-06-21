package com.kingroot.kinguser;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class ajq {
    /* renamed from: g */
    public void m11434g(boolean z, boolean z2) {
        if (abc.m12845qK().isRootPermition(true)) {
            avs m8774RY = avs.m8774RY();
            List<String> m8770hb = m8774RY.m8770hb(2);
            List<String> m8768hd = m8774RY.m8768hd(2);
            List<String> m8769hc = m8774RY.m8769hc(2);
            if (!z) {
                m8769hc.add("/system/bin/su");
                m8769hc.add("/system/xbin/su");
            }
            m8770hb.add(new String(aab.m13014dJ("656D6461656D6F6E")));
            ArrayList arrayList = new ArrayList();
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            new ajp().m11439b(m8770hb, m8769hc, arrayList);
            ajo.m11451b(m8768hd, hashMap);
            if (z2) {
                ajv.m11387zD().m11391a(m8774RY.m8771ha(2), (Map<String, Boolean>) null);
            }
            m11435a(arrayList, hashMap, hashMap2);
        }
    }

    /* renamed from: a */
    private void m11435a(List<String> list, Map<String, Integer> map, Map<String, Integer> map2) {
        for (String str : list) {
            if (!TextUtils.isEmpty(str)) {
                ady.m12308tK().m12320d(str, 2, 0);
            }
        }
        for (Map.Entry<String, Integer> entry : map.entrySet()) {
            String key = entry.getKey();
            int intValue = entry.getValue().intValue();
            if (!TextUtils.isEmpty(key) && intValue != -1) {
                ady.m12308tK().m12320d(key, 0, intValue);
            }
        }
        for (Map.Entry<String, Integer> entry2 : map2.entrySet()) {
            String key2 = entry2.getKey();
            int intValue2 = entry2.getValue().intValue();
            if (!TextUtils.isEmpty(key2) && intValue2 != -1) {
                ady.m12308tK().m12320d(key2, 1, intValue2);
            }
        }
    }
}
