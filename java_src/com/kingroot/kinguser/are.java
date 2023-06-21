package com.kingroot.kinguser;

import android.support.annotation.NonNull;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* loaded from: classes.dex */
public class are extends aqy<arl> {
    private final List<aqh> aLL = new ArrayList();

    /* renamed from: l */
    public void m9537l(@NonNull Collection<aqh> collection) {
        synchronized (this.aLL) {
            this.aLL.clear();
            this.aLL.addAll(collection);
        }
        m9540Nj();
    }

    @Override // com.kingroot.kinguser.aqy, com.kingroot.kinguser.aqb
    /* renamed from: My */
    public boolean mo9529My() {
        super.mo9529My();
        this.aLA.set(true);
        synchronized (this.aLL) {
            for (aqh aqhVar : this.aLL) {
                if (!aqhVar.mo9529My() && (aqhVar instanceof aqi)) {
                    this.aLA.set(false);
                }
            }
        }
        return this.aLA.get();
    }

    @Override // com.kingroot.kinguser.aqy
    /* renamed from: MK */
    public int mo9535MK() {
        return 0;
    }

    @Override // com.kingroot.kinguser.aqy
    public boolean isVisible() {
        return false;
    }

    @Override // com.kingroot.kinguser.aqy
    /* renamed from: Nb */
    protected String mo9534Nb() {
        return null;
    }

    @Override // com.kingroot.kinguser.aqy
    /* renamed from: Nc */
    protected String mo9533Nc() {
        return null;
    }

    @Override // com.kingroot.kinguser.aqy
    /* renamed from: Nd */
    protected String mo9532Nd() {
        return null;
    }

    @Override // com.kingroot.kinguser.aqy
    /* renamed from: Nf */
    protected String mo9531Nf() {
        return null;
    }

    @Override // com.kingroot.kinguser.aqy
    /* renamed from: bV */
    public void mo9538bV(long j) {
        super.mo9538bV(j);
        m9540Nj();
    }

    /* renamed from: Nj */
    private void m9540Nj() {
        for (aqh aqhVar : this.aLL) {
            aqhVar.m9591bV(m9549ML() / this.aLL.size());
        }
    }

    /* renamed from: Nk */
    public int m9539Nk() {
        return this.aLL.size();
    }
}
