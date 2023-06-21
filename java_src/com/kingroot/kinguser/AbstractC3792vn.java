package com.kingroot.kinguser;

import android.support.annotation.NonNull;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: com.kingroot.kinguser.vn */
/* loaded from: classes.dex */
public abstract class AbstractC3792vn extends AbstractC3789vm<C2037b> {
    @Override // com.kingroot.kinguser.AbstractC3789vm
    /* renamed from: a */
    protected /* synthetic */ C2037b mo1760a(int i, ArrayList arrayList) {
        return m1759b(i, (ArrayList<Integer>) arrayList);
    }

    @Override // com.kingroot.kinguser.AbstractC3789vm
    @NonNull
    /* renamed from: A */
    protected List<C2037b> mo1762A(List<C3795vp> list) {
        ArrayList arrayList = new ArrayList();
        for (C3795vp c3795vp : C3942yy.m1350e(list)) {
            if (c3795vp != null && (c3795vp.f3777Lf > 0 || c3795vp.desc != null)) {
                C2037b c2037b = new C2037b();
                c2037b.featureId = c3795vp.f3779gN;
                if (c3795vp.desc != null) {
                    try {
                        c2037b.count = Integer.parseInt(c3795vp.desc);
                    } catch (Exception e) {
                    }
                } else {
                    c2037b.count = c3795vp.f3777Lf;
                }
                c2037b.timestamp = (int) (c3795vp.f3778Lg / 1000);
                if (c3795vp.errorCode != 0) {
                    c2037b.intValues = new ArrayList<>();
                    c2037b.intValues.add(Integer.valueOf(c3795vp.errorCode));
                }
                arrayList.add(c2037b);
            }
        }
        return arrayList;
    }

    @Override // com.kingroot.kinguser.AbstractC3789vm
    /* renamed from: bq */
    protected List<C2037b> mo1758bq(int i) {
        return m1761C(m1771lx().mo2205aS(i));
    }

    /* renamed from: b */
    protected C2037b m1759b(int i, ArrayList<Integer> arrayList) {
        if (arrayList == null) {
            return null;
        }
        C2037b c2037b = new C2037b();
        c2037b.featureId = i;
        c2037b.intValues = arrayList;
        c2037b.count = 1;
        c2037b.timestamp = (int) (System.currentTimeMillis() / 1000);
        return c2037b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3789vm
    /* renamed from: v */
    public C2037b mo1757u(int i, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        C2037b c2037b = new C2037b();
        c2037b.featureId = i;
        c2037b.strValues = new ArrayList<>();
        Collections.addAll(c2037b.strValues, str.split("\\|"));
        c2037b.count = 1;
        c2037b.timestamp = (int) (System.currentTimeMillis() / 1000);
        return c2037b;
    }

    /* renamed from: C */
    private List<C2037b> m1761C(List<C3613sx> list) {
        ArrayList arrayList = new ArrayList();
        for (C3613sx c3613sx : C3942yy.m1350e(list)) {
            C2037b c2037b = new C2037b();
            c2037b.featureId = c3613sx.f3535GM;
            c2037b.count = Integer.parseInt(c3613sx.f3534Bk);
            c2037b.timestamp = (int) (c3613sx.mTime / 1000);
            c2037b.strValues = new ArrayList<>();
            Collections.addAll(c2037b.strValues, C3612sw.m2226a(c3613sx.f3537GO, getProductId(), getChannel()).split("\\|"));
            arrayList.add(c2037b);
        }
        return arrayList;
    }
}
