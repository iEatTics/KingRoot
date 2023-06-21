package com.kingroot.kinguser;
/* loaded from: classes.dex */
public class auw {
    private static final int[] aTf = {4, 3, 1, 5, 2, 6};

    /* renamed from: jn */
    public static int m8886jn(String str) {
        try {
            String m12872dZ = aaz.m12872dZ(str);
            int m8792jw = avp.m8801RQ().m8792jw(str);
            if (m8792jw == 0) {
                return avr.m8787RV().m8781az(str, m12872dZ);
            }
            return m8792jw;
        } catch (Exception e) {
            return 0;
        }
    }

    /* renamed from: U */
    public static int m8887U(int i, int i2) {
        int[] iArr;
        if (i == i2) {
            return 0;
        }
        for (int i3 : aTf) {
            if (i == i3) {
                return 1;
            }
            if (i2 == i3) {
                return -1;
            }
        }
        return 0;
    }

    /* renamed from: QZ */
    public static int[] m8888QZ() {
        return aTf;
    }
}
