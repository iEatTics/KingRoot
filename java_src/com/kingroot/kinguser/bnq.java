package com.kingroot.kinguser;

import java.util.HashMap;
/* loaded from: classes.dex */
public class bnq {
    public static bnq bEO;

    /* renamed from: d */
    static final /* synthetic */ boolean f1783d;

    /* renamed from: e */
    private static int f1784e;
    public HashMap<String, C2534a> bEP = new HashMap<>();

    /* renamed from: c */
    public final String f1785c = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";

    /* renamed from: com.kingroot.kinguser.bnq$a */
    /* loaded from: classes.dex */
    public static class C2534a {
        public bnp bEN;
        public bwd bEr;

        /* renamed from: c */
        public String f1786c;
    }

    static {
        f1783d = !bnq.class.desiredAssertionStatus();
        f1784e = 0;
    }

    public static bnq agp() {
        if (bEO == null) {
            bEO = new bnq();
        }
        return bEO;
    }

    /* renamed from: b */
    public static int m6166b() {
        int i = f1784e + 1;
        f1784e = i;
        return i;
    }

    /* renamed from: a */
    public String m6167a(C2534a c2534a) {
        int m6166b = m6166b();
        try {
            this.bEP.put("" + m6166b, c2534a);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return "" + m6166b;
    }

    /* renamed from: c */
    public String m6165c() {
        int ceil = (int) Math.ceil((Math.random() * 20.0d) + 3.0d);
        char[] charArray = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".toCharArray();
        int length = charArray.length;
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < ceil; i++) {
            stringBuffer.append(charArray[(int) (Math.random() * length)]);
        }
        return stringBuffer.toString();
    }
}
