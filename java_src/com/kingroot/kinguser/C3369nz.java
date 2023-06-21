package com.kingroot.kinguser;

import android.os.Bundle;
/* renamed from: com.kingroot.kinguser.nz */
/* loaded from: classes.dex */
public class C3369nz {
    /* renamed from: c */
    public static Bundle m2780c(String str, String str2, String str3, Bundle bundle) {
        Bundle bundle2 = new Bundle();
        bundle2.putString("p1", str);
        bundle2.putString("p2", str2);
        bundle2.putString("p3", str3);
        bundle2.putInt("p4", C3371oa.getVersion());
        bundle2.putBundle("p", bundle);
        return bundle2;
    }
}
