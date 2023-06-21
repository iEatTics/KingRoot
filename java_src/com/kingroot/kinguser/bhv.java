package com.kingroot.kinguser;

import com.kingroot.kinguser.bhs;
/* loaded from: classes.dex */
public class bhv extends bhs {
    private static volatile bhv brR = null;

    private bhv() {
    }

    public static bhv acN() {
        if (brR == null) {
            synchronized (bhv.class) {
                if (brR == null) {
                    brR = new bhv();
                }
            }
        }
        return brR;
    }

    @Override // com.kingroot.kinguser.bhs
    protected void acF() {
        clearAll();
        m6968a(0, new bhs.C2288b(1));
        m6968a(0, new bhs.C2288b(2));
        bhs.C2287a c2287a = new bhs.C2287a(4);
        c2287a.m6964ed(acP());
        m6968a(2, c2287a);
        bhs.C2287a c2287a2 = new bhs.C2287a(3);
        c2287a2.m6964ed(acO());
        m6968a(2, c2287a2);
    }

    @Override // com.kingroot.kinguser.bhs
    protected bhs.C2288b acG() {
        return new bhs.C2288b(0);
    }

    public static boolean acO() {
        return aks.m11143BP().m11127CF();
    }

    public static boolean acP() {
        return false;
    }
}
