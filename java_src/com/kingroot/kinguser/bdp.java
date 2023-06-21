package com.kingroot.kinguser;

import android.support.annotation.NonNull;
import com.kingroot.kinguser.bhf;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class bdp extends bdo {
    private List<String> bjA;
    private bhf bjz;

    public bdp(String str, List<String> list) {
        super(str);
        if (this.bjz == null) {
            this.bjz = new bhf();
        }
        this.bjA = list;
        if (!C3942yy.m1351d(this.bjA)) {
            this.bjz.m7030iM(1).m7043bU(list);
        }
    }

    @Override // com.kingroot.kinguser.bdo
    /* renamed from: la */
    protected void mo7522la(@NonNull String str) {
        String[] kY = m7531kY(str);
        if (kY != null && kY.length >= 5) {
            this.bjz = new bhf();
            if (this.bjz.m7020lE(kY[0])) {
                bhf.C2278a acq = this.bjz.acq();
                this.adZ = acq.bqk;
                this.bjk = acq.bql;
                this.bjl = acq.bqm;
                try {
                    mo7516kZ(kY[1]);
                    this.mReqType = Integer.parseInt(kY[2]);
                    this.bjy = Integer.parseInt(kY[4]);
                } catch (Exception e) {
                }
            }
        }
    }

    @Override // com.kingroot.kinguser.bdo, com.kingroot.kinguser.bdm
    /* renamed from: YF */
    public String mo7521YF() {
        ArrayList arrayList = new ArrayList();
        this.bjz.m7016lx(this.adZ).m7015ly(this.bjk).m7041cA(this.bjl);
        arrayList.add(this.bjz.acp());
        arrayList.add(mo7520YG());
        arrayList.add(Integer.valueOf(m7527YI()));
        arrayList.add(Integer.valueOf(m7528YH()));
        arrayList.add(Integer.valueOf(m7526YJ()));
        return m7535bO(arrayList);
    }

    /* renamed from: YK */
    public void m7523YK() {
        if (!C3942yy.m1351d(this.bjA)) {
            for (String str : this.bjA) {
                File file = new File(str);
                if (file.exists()) {
                    asl.m9455NW().m9459D(file.getAbsolutePath(), 0);
                }
            }
        }
    }
}
