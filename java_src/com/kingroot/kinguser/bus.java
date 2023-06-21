package com.kingroot.kinguser;
/* loaded from: classes.dex */
public class bus {
    /* renamed from: kq */
    public static byte m5465kq(int i) {
        if ((-((-i) % 100)) == -3) {
            return (byte) 2;
        }
        switch (-(((-i) / 1000) * 1000)) {
            case -5000:
            case -4000:
            case -3000:
            case -2000:
            case -1000:
                return (byte) 0;
            default:
                return (byte) 3;
        }
    }
}
