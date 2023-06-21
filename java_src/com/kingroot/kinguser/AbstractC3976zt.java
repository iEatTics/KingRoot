package com.kingroot.kinguser;
/* renamed from: com.kingroot.kinguser.zt */
/* loaded from: classes.dex */
public abstract class AbstractC3976zt {

    /* renamed from: WK */
    private static volatile C3978zu f4105WK = null;

    public static String get(String str) {
        if (f4105WK == null) {
            synchronized (AbstractC3976zt.class) {
                if (f4105WK == null) {
                    f4105WK = new C3978zu(C3971zq.get("a4"), true);
                }
            }
        }
        return f4105WK.getProperty(str);
    }
}
