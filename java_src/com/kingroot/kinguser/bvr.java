package com.kingroot.kinguser;

import android.util.SparseArray;
/* loaded from: classes.dex */
public final class bvr {
    static SparseArray<bvs> bQK = new SparseArray<>();

    static {
        bQK.append(0, new bvs("info", "reportUserComment"));
        bQK.append(1, new bvs("softinfo", "getCategoryList"));
        bQK.append(2, new bvs("softinfo", "getSoftList"));
        bQK.append(3, new bvs("softinfo", "getMySoftList"));
        bQK.append(4, new bvs("softinfo", "getADs"));
        bQK.append(5, new bvs("softinfo", "getHotWord"));
        bQK.append(6, new bvs("softinfo", "getSoftInfo"));
        bQK.append(7, new bvs("info", "reportFBIllegaReason"));
        bQK.append(8, new bvs("cloudcheck", "getAnalyseInfo"));
        bQK.append(9, new bvs("securereport", "reportDownSoft"));
        bQK.append(10, new bvs("info", "getChangeUrl"));
    }

    /* renamed from: kJ */
    public static bvs m5375kJ(int i) {
        return bQK.get(i);
    }
}
