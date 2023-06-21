package com.kingroot.kinguser;

import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public class bdz {

    /* renamed from: MW */
    public static int f1661MW = Runtime.getRuntime().availableProcessors();
    public static final int CORE_POOL_SIZE = m7485YY();
    public static final int MAXIMUM_POOL_SIZE = CORE_POOL_SIZE + 2;
    public static final int bkf = Math.max(1, CORE_POOL_SIZE / 4);
    public static final int bkg = Math.max(bkf + 2, MAXIMUM_POOL_SIZE / 4);
    public static final TimeUnit bkh = TimeUnit.SECONDS;

    /* renamed from: YY */
    private static int m7485YY() {
        int i = (f1661MW * 4) + 2;
        if (i > 16) {
            return 16;
        }
        return i;
    }
}
