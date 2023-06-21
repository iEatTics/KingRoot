package com.kingroot.kinguser;

import andhook.lib.xposed.callbacks.XCallback;
/* loaded from: classes.dex */
public class bvo {
    /* renamed from: kG */
    public static final int m5379kG(int i) {
        return i % 100;
    }

    /* renamed from: kH */
    public static final int m5378kH(int i) {
        return (i % XCallback.PRIORITY_HIGHEST) - m5379kG(i);
    }

    /* renamed from: kI */
    public static final int m5377kI(int i) {
        return ((i % 1000000) - m5378kH(i)) - m5379kG(i);
    }
}
