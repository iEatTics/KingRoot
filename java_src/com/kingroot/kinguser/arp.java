package com.kingroot.kinguser;

import android.app.ActivityManager;
import android.content.Context;
import com.kingroot.kinguser.gamebox.common.GameBoxProcessOptimizer;
import com.kingroot.master.app.KUApplication;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class arp extends arl {
    private final Collection<atz> aLZ = new ArrayList();
    private long aMa = 0;
    private int aMb = 0;

    @Override // com.kingroot.kinguser.arl
    /* renamed from: MG */
    protected boolean mo9522MG() {
        this.aMb = 0;
        this.aMa = 0L;
        this.aLZ.clear();
        ArrayList arrayList = new ArrayList();
        Map<String, atz> m3779Ou = GameBoxProcessOptimizer.m3779Ou();
        List<String> m9426Oe = asm.m9427Od().m9426Oe();
        m9426Oe.addAll(ake.m11308Al().m11312Ak());
        for (Map.Entry<String, atz> entry : m3779Ou.entrySet()) {
            if (!m9426Oe.contains(entry.getKey())) {
                arrayList.add(entry.getValue());
            }
        }
        this.aLZ.addAll(arrayList);
        this.aMb = this.aLZ.size();
        for (atz atzVar : this.aLZ) {
            this.aMa += atzVar.m9107PF() * 1024;
        }
        return this.aMa == 0 || this.aMb == 0;
    }

    @Override // com.kingroot.kinguser.arl
    /* renamed from: LY */
    public void mo9526LY() {
        super.mo9526LY();
    }

    @Override // com.kingroot.kinguser.arl
    /* renamed from: MH */
    protected boolean mo9521MH() {
        if (abd.m12839qb() >= 5) {
            Context ge = KUApplication.m13453ge();
            ActivityManager activityManager = (ActivityManager) ge.getSystemService("activity");
            for (atz atzVar : this.aLZ) {
                switch (atzVar.mFlag) {
                    case 0:
                        if (aie.m11668xx() && abc.m12845qK().isRootPermition()) {
                            aie.m11669xw().m11672eh(atzVar.adZ);
                            break;
                        } else {
                            aie.m11669xw().m11671n(ge, atzVar.adZ);
                            activityManager.restartPackage(atzVar.adZ);
                            break;
                        }
                        break;
                    case 1:
                        activityManager.restartPackage(atzVar.adZ);
                        break;
                }
            }
        }
        return true;
    }

    /* renamed from: No */
    public long m9525No() {
        return this.aMa;
    }
}
