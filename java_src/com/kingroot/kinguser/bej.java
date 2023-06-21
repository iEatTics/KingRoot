package com.kingroot.kinguser;
/* loaded from: classes.dex */
public class bej {
    private static bed blf;
    private static int mCount;
    private static final Object mLock = new Object();

    /* renamed from: c */
    public static bed m7421c(bek bekVar) {
        synchronized (mLock) {
            if (blf != null) {
                bed bedVar = blf;
                blf = bedVar.bkv;
                bedVar.bkv = null;
                bedVar.m7478a(bekVar);
                mCount--;
                return bedVar;
            }
            bed bedVar2 = new bed(bekVar);
            bedVar2.bkD = true;
            return bedVar2;
        }
    }

    /* renamed from: g */
    public static void m7420g(bed bedVar) {
        if (bedVar != null) {
            bedVar.recycle();
            synchronized (mLock) {
                if (mCount < 20 && bedVar.bkD) {
                    bedVar.bkv = blf;
                    blf = bedVar;
                    mCount++;
                }
            }
        }
    }
}
