package com.kingroot.kinguser;
/* loaded from: classes.dex */
public abstract class bms {
    private static volatile bmt bCt = null;

    public static String get(String str) {
        if (bCt == null) {
            synchronized (bms.class) {
                if (bCt == null) {
                    bCt = new bmt(bmr.get("a4"), true);
                }
            }
        }
        return bCt.getProperty(str);
    }
}
