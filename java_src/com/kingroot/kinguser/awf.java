package com.kingroot.kinguser;

import com.kingroot.master.app.KUApplication;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class awf {
    /* renamed from: a */
    public static void m8664a(C3005dt c3005dt) {
        if (c3005dt != null) {
            final C3004ds c3004ds = new C3004ds();
            ArrayList<C3005dt> arrayList = new ArrayList<>();
            arrayList.add(c3005dt);
            c3004ds.listDownSoftItems = arrayList;
            beg.m7461Zj().m7450c(new bed(bem.LOW, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.awf.1
                @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                public void run() {
                    super.run();
                    aju.m11403a(KUApplication.m13453ge(), C3004ds.this);
                }
            }));
        }
    }
}
