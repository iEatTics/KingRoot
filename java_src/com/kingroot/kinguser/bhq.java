package com.kingroot.kinguser;

import com.kingroot.kinguser.bhs;
/* loaded from: classes.dex */
public class bhq extends bhs {
    private static volatile bhq bqU = null;

    private bhq() {
    }

    public static bhq acE() {
        if (bqU == null) {
            synchronized (bhq.class) {
                if (bqU == null) {
                    bqU = new bhq();
                }
            }
        }
        return bqU;
    }

    @Override // com.kingroot.kinguser.bhs
    public void acF() {
        boolean z = true;
        clearAll();
        bhs.C2287a c2287a = new bhs.C2287a(1);
        if (aks.m11143BP().m11068DM() || aks.m11143BP().m11076DE() == 0) {
            z = false;
        }
        m6968a(0, c2287a.m6964ed(z));
    }

    @Override // com.kingroot.kinguser.bhs
    protected bhs.C2288b acG() {
        return new bhs.C2288b(0);
    }
}
