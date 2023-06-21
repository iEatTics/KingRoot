package com.kingroot.kinguser;
/* loaded from: classes.dex */
public class cgw {
    /* renamed from: nY */
    public static int m4298nY(String str) {
        if (str == null) {
            return -1;
        }
        if (str.startsWith("46000") || str.startsWith("46002") || str.startsWith("46007")) {
            return 0;
        }
        if (str.startsWith("46001")) {
            return 1;
        }
        return str.startsWith("46003") ? 2 : -1;
    }
}
