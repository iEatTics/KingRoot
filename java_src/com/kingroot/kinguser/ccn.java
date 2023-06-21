package com.kingroot.kinguser;

import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes.dex */
public class ccn {
    boolean bWY = false;
    AtomicInteger bWZ = new AtomicInteger();

    public boolean akI() {
        return this.bWY;
    }

    public void setState(int i) {
        this.bWZ.set(i);
    }
}
