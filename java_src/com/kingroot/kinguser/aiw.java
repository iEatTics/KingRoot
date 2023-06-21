package com.kingroot.kinguser;

import com.kingroot.kinguser.C3959zm;
import com.kingroot.kinguses.R;
import java.io.File;
import java.util.ArrayList;
/* loaded from: classes.dex */
public final class aiw {
    public static final String asE = AbstractC3976zt.get("fn1");
    public static final String asF = AbstractC3976zt.get("fn3");
    public static final String asG = AbstractC3976zt.get("fn5");

    /* renamed from: yE */
    public static void m11521yE() {
        String str = C3958zl.m1295pw().getAbsolutePath() + File.separator;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new C3959zm.C3962a(str + asE, (int) R.raw.su, 1));
        arrayList.add(new C3959zm.C3962a(str + "otasurvival.sh", (int) R.raw.otasurvival, 1));
        arrayList.add(new C3959zm.C3962a(aba.m12859qB(), aba.m12860qA(), 1));
        C3959zm.m1294M(arrayList);
    }
}
