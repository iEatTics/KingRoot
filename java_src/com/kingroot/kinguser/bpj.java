package com.kingroot.kinguser;

import java.util.concurrent.Future;
/* loaded from: classes.dex */
public class bpj {
    private Future bHz;

    public bpj(Future future) {
        this.bHz = future;
    }

    /* renamed from: a */
    public boolean m5900a() {
        if (this.bHz != null) {
            try {
                return this.bHz.cancel(false);
            } catch (Throwable th) {
                th.printStackTrace();
                return false;
            }
        }
        return false;
    }
}
