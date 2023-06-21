package com.kingroot.kinguser;

import android.graphics.drawable.Drawable;
import android.support.annotation.Nullable;
import com.kingroot.kinguser.aqs;
import com.kingroot.kinguses.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class aqr extends aqs {
    private final InterfaceC1465a aLo;
    List<aqs> aLp = new ArrayList();
    private long aLq = 5000;
    private final List<aqy<? extends arl>> aLr;

    /* renamed from: com.kingroot.kinguser.aqr$a */
    /* loaded from: classes.dex */
    public interface InterfaceC1465a {
        /* renamed from: e */
        void mo9573e(aqs aqsVar);

        /* renamed from: f */
        void mo9572f(aqs aqsVar);
    }

    /* renamed from: MR */
    public List<aqs> m9574MR() {
        return new ArrayList(this.aLp);
    }

    public aqr(List<aqs> list, @Nullable InterfaceC1465a interfaceC1465a) {
        this.aLo = interfaceC1465a;
        this.aLp.addAll(list);
        this.aLr = new ArrayList();
        int i = 0;
        for (aqs aqsVar : this.aLp) {
            int i2 = i;
            for (aqy<? extends arl> aqyVar : aqsVar.mo9569MV()) {
                aqyVar.m9541im(getKey());
                if (aqyVar instanceof are) {
                    i2 = ((are) aqyVar).m9539Nk();
                }
            }
            this.aLr.addAll(aqsVar.mo9569MV());
            i = i2;
        }
        for (aqy<? extends arl> aqyVar2 : this.aLr) {
            if (aqyVar2 instanceof are) {
                aqyVar2.mo9538bV(this.aLq * i);
            } else {
                aqyVar2.mo9538bV(this.aLq);
            }
        }
    }

    @Override // com.kingroot.kinguser.aqs
    /* renamed from: MS */
    public String mo9555MS() {
        return C3953zi.m1311pr().getString(R.string.examination_module_examining_auto_optimize_module_wrapper);
    }

    @Override // com.kingroot.kinguser.aqs
    /* renamed from: MT */
    public String mo9554MT() {
        return C3953zi.m1311pr().getString(R.string.examination_module_optimizing_auto_optimize_module_wrapper);
    }

    @Override // com.kingroot.kinguser.aqs
    /* renamed from: ME */
    public String mo9557ME() {
        int i = 0;
        for (aqs aqsVar : this.aLp) {
            i = aqsVar.aLy + i;
        }
        return C3953zi.m1311pr().getQuantityString(R.plurals.examination_module_showing_auto_optimize_module_wrapper, i, Integer.valueOf(i));
    }

    @Override // com.kingroot.kinguser.aqs
    /* renamed from: MF */
    public String mo9556MF() {
        int i = 0;
        for (aqs aqsVar : this.aLp) {
            i = aqsVar.aLx + i;
        }
        aqb m9524a = arq.m9524a(aro.class, false);
        if (m9524a == null || !(m9524a instanceof aro) || m9524a.mo9529My()) {
            return i == 0 ? C3953zi.m1311pr().getString(R.string.examination_module_sub_showing_optimized) : String.format(C3953zi.m1311pr().getString(R.string.examination_module_sub_showing_optimize_num_format), Integer.valueOf(i));
        }
        return String.format(C3953zi.m1311pr().getString(R.string.examination_module_sub_showing_fix_running_slow_num_format), Integer.valueOf(i));
    }

    @Override // com.kingroot.kinguser.aqs
    /* renamed from: MU */
    public String mo9553MU() {
        return C3953zi.m1311pr().getString(R.string.examination_module_result_safe);
    }

    @Override // com.kingroot.kinguser.aqs
    public Drawable getIconDrawable() {
        return C3953zi.m1311pr().getDrawable(R.drawable.main_exam_scan_icon);
    }

    @Override // com.kingroot.kinguser.aqs
    /* renamed from: MJ */
    public synchronized boolean mo9570MJ() {
        boolean z;
        z = true;
        for (aqs aqsVar : this.aLp) {
            this.aLo.mo9573e(aqsVar);
            if (!aqsVar.mo9570MJ()) {
                z = false;
            }
            this.aLo.mo9572f(aqsVar);
        }
        return z;
    }

    @Override // com.kingroot.kinguser.aqs
    /* renamed from: LY */
    public void mo9571LY() {
        for (aqs aqsVar : this.aLp) {
            aqsVar.mo9571LY();
        }
    }

    @Override // com.kingroot.kinguser.aqs, com.kingroot.kinguser.aqb
    /* renamed from: My */
    public synchronized boolean mo9529My() {
        boolean z;
        z = true;
        for (aqs aqsVar : this.aLp) {
            z = !aqsVar.mo9529My() ? false : z;
        }
        return z;
    }

    @Override // com.kingroot.kinguser.aqs
    /* renamed from: MV */
    public List<aqy<? extends arl>> mo9569MV() {
        return new ArrayList(this.aLr);
    }

    @Override // com.kingroot.kinguser.aqs
    /* renamed from: a */
    public void mo9564a(aqs.InterfaceC1466a interfaceC1466a) {
        for (aqs aqsVar : this.aLp) {
            aqsVar.mo9564a(interfaceC1466a);
        }
    }

    @Override // com.kingroot.kinguser.aqs
    /* renamed from: MW */
    public int mo9568MW() {
        int i = 0;
        Iterator<aqs> it = this.aLp.iterator();
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                i = it.next().mo9568MW() + i2;
            } else {
                return i2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.aqs
    /* renamed from: MX */
    public int mo9567MX() {
        int i = 0;
        Iterator<aqs> it = this.aLp.iterator();
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                i = it.next().mo9567MX() + i2;
            } else {
                return i2;
            }
        }
    }
}
