package com.kingroot.kinguser;
/* loaded from: classes.dex */
public class bef {
    private static bee bkS;
    private static int mCount;
    private static final Object mLock = new Object();

    /* renamed from: b */
    public static bee m7463b(bed bedVar) {
        synchronized (mLock) {
            if (bkS != null) {
                bee beeVar = bkS;
                bkS = beeVar.bkG;
                beeVar.bkG = null;
                beeVar.m7472a(bedVar);
                mCount--;
                return beeVar;
            }
            return new bee(bedVar);
        }
    }

    /* renamed from: e */
    public static void m7462e(bee beeVar) {
        if (beeVar != null) {
            synchronized (mLock) {
                beeVar.recycle();
                if (mCount < 20) {
                    beeVar.bkG = bkS;
                    bkS = beeVar;
                    mCount++;
                }
            }
        }
    }
}
