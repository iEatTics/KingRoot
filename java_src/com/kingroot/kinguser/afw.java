package com.kingroot.kinguser;

import java.util.ArrayList;
/* loaded from: classes.dex */
public class afw implements brg {
    @Override // com.kingroot.kinguser.brg
    /* renamed from: c */
    public void mo5617c(int i, String str, int i2) {
        if (str != null && !str.isEmpty()) {
            String[] strArr = {str};
            if (i2 == 1) {
                m12010c(i, strArr);
            } else if (i2 == 2) {
                C3614sy.m2213jv().mo2208a(new C3613sx(i, System.currentTimeMillis(), strArr));
            }
        }
    }

    /* renamed from: c */
    private void m12010c(int i, String[] strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            arrayList.add(str);
        }
        aea.m12291d(i, arrayList);
    }
}
