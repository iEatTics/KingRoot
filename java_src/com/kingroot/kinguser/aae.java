package com.kingroot.kinguser;

import android.util.SparseArray;
/* loaded from: classes.dex */
public class aae {

    /* renamed from: Xp */
    private static SparseArray<aaf> f1227Xp;

    /* renamed from: Xq */
    private static SparseArray<aag> f1228Xq;

    /* renamed from: com.kingroot.kinguser.aae$a */
    /* loaded from: classes.dex */
    public enum EnumC0609a {
        XXTEA2,
        BASE64
    }

    /* renamed from: com.kingroot.kinguser.aae$b */
    /* loaded from: classes.dex */
    public enum EnumC0610b {
        XXTEA2,
        XXTEA_OLD,
        SIMPLE
    }

    static {
        if (f1227Xp == null) {
            f1227Xp = new SparseArray<>();
            f1227Xp.put(EnumC0609a.BASE64.ordinal(), aad.m13008pJ());
            f1227Xp.put(EnumC0609a.XXTEA2.ordinal(), aak.m12987pM());
        }
        if (f1228Xq == null) {
            f1228Xq = new SparseArray<>();
            f1228Xq.put(EnumC0610b.SIMPLE.ordinal(), aai.m12998pK());
            f1228Xq.put(EnumC0610b.XXTEA_OLD.ordinal(), aal.m12981pN());
            f1228Xq.put(EnumC0610b.XXTEA2.ordinal(), aak.m12987pM());
        }
    }

    /* renamed from: a */
    public static aaf m13007a(EnumC0609a enumC0609a) {
        return f1227Xp.get(enumC0609a.ordinal());
    }

    /* renamed from: a */
    public static aag m13006a(EnumC0610b enumC0610b) {
        return f1228Xq.get(enumC0610b.ordinal());
    }
}
