package com.kingroot.kinguser;
/* loaded from: classes.dex */
public class adt {
    public static volatile ado adv;

    private adt() {
    }

    /* renamed from: sY */
    public static ado m12458sY() {
        if (adv == null) {
            synchronized (adt.class) {
                if (adv == null) {
                    adv = new adu();
                }
            }
        }
        return adv;
    }
}
