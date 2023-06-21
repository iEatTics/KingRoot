package com.kingroot.kinguser;

import android.util.SparseArray;
import com.kingroot.kinguser.RunnableC3305mg;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.kingroot.kinguser.ko */
/* loaded from: classes.dex */
public class C3253ko extends RunnableC3305mg {

    /* renamed from: ue */
    final /* synthetic */ C3252kn f2963ue;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3253ko(C3252kn c3252kn) {
        this.f2963ue = c3252kn;
    }

    @Override // com.kingroot.kinguser.RunnableC3305mg
    /* renamed from: a */
    public void mo3089a(RunnableC3305mg.InterfaceC3306a interfaceC3306a) {
        int mo3136bc;
        C3248kj c3248kj;
        SparseArray<String> m3252dd = m3252dd();
        int size = m3252dd != null ? m3252dd.size() : 0;
        if (size != 0) {
            List<Object> mo3079eC = interfaceC3306a.mo3079eC();
            C3255kq c3255kq = (C3255kq) mo3079eC.get(0);
            C3255kq c3255kq2 = (C3255kq) mo3079eC.get(1);
            boolean m3545bN = C3183ih.m3497bW().m3545bN();
            InterfaceC3281lm interfaceC3281lm = (InterfaceC3281lm) C3183ih.m3501a(InterfaceC3281lm.class);
            for (int i = 0; i < size; i++) {
                int keyAt = m3252dd.keyAt(i);
                String valueAt = m3252dd.valueAt(i);
                if (C3276lh.m3184af(keyAt) == null) {
                    if (keyAt > 0) {
                        mo3136bc = interfaceC3281lm.mo3138ai(keyAt);
                    } else {
                        mo3136bc = interfaceC3281lm.mo3136bc(valueAt);
                    }
                    if (mo3136bc != 64 || m3545bN) {
                        if (mo3136bc == 32) {
                            c3248kj = new C3248kj(c3255kq, valueAt, keyAt, 0, 0);
                        } else {
                            c3248kj = new C3248kj(c3255kq2, valueAt, keyAt, 0, 0);
                        }
                        this.f2963ue.m3255b(c3248kj);
                    }
                }
            }
            C3250kl.m3274cZ();
        }
    }

    /* renamed from: dd */
    private SparseArray<String> m3252dd() {
        SparseArray<String> m3407cx = new C3217jk().m3407cx();
        InterfaceC3151hg m3548bK = C3183ih.m3497bW().m3548bK();
        if (m3548bK != null) {
            return m3548bK.m3613a(m3407cx);
        }
        return m3407cx;
    }
}
