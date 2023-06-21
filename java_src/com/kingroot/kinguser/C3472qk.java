package com.kingroot.kinguser;

import android.support.p007v7.widget.RecyclerView;
import android.widget.ScrollView;
/* renamed from: com.kingroot.kinguser.qk */
/* loaded from: classes.dex */
public class C3472qk {
    /* renamed from: a */
    public static InterfaceC3458qf m2595a(RecyclerView recyclerView, int i) {
        switch (i) {
            case 0:
                return new C3473ql(new C3478qn(recyclerView));
            case 1:
                return new C3455qe(new C3478qn(recyclerView));
            default:
                throw new IllegalArgumentException("orientation");
        }
    }

    /* renamed from: a */
    public static InterfaceC3458qf m2594a(ScrollView scrollView) {
        return new C3473ql(new C3482qo(scrollView));
    }
}
