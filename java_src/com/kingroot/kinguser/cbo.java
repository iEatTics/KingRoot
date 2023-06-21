package com.kingroot.kinguser;

import android.support.annotation.NonNull;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class cbo {
    /* synthetic */ cbo(cbp cbpVar) {
        this();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.cbo$a */
    /* loaded from: classes.dex */
    public static class C2698a {
        private static final cbo bWO = new cbo(null);
    }

    private cbo() {
    }

    public static cbo akB() {
        return C2698a.bWO;
    }

    /* renamed from: a */
    public void m5002a(ArrayList<C3048f> arrayList, @NonNull cbn cbnVar) {
        C3012e c3012e = new C3012e();
        c3012e.f2523dU = arrayList;
        C3075g c3075g = new C3075g();
        c3075g.f2696ef = new ArrayList<>();
        cav.akt().m5033a(108, c3012e, c3075g, new cbp(this, cbnVar));
    }
}
