package com.kingroot.kinguser;

import android.util.SparseArray;
/* loaded from: classes.dex */
public class caj {

    /* renamed from: b */
    private static SparseArray<Object> f2216b;
    private static SparseArray<cam> byJ;

    /* renamed from: com.kingroot.kinguser.caj$a */
    /* loaded from: classes.dex */
    public enum EnumC2689a {
        XXTEA2,
        BASE64
    }

    /* renamed from: com.kingroot.kinguser.caj$b */
    /* loaded from: classes.dex */
    public enum EnumC2690b {
        XXTEA2,
        XXTEA_OLD,
        SIMPLE
    }

    /* renamed from: a */
    private static void m5065a() {
        if (byJ == null) {
            byJ = new SparseArray<>();
            byJ.put(EnumC2689a.BASE64.ordinal(), cal.ako());
            byJ.put(EnumC2689a.XXTEA2.ordinal(), cao.akq());
        }
        if (f2216b == null) {
            f2216b = new SparseArray<>();
            f2216b.put(EnumC2690b.SIMPLE.ordinal(), can.akp());
            f2216b.put(EnumC2690b.XXTEA_OLD.ordinal(), cap.akr());
            f2216b.put(EnumC2690b.XXTEA2.ordinal(), cao.akq());
        }
    }

    /* renamed from: a */
    public static cam m5064a(EnumC2689a enumC2689a) {
        m5065a();
        return byJ.get(enumC2689a.ordinal());
    }
}
