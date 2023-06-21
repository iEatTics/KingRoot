package com.kingroot.kinguser;

import cloudsdk.ext.p008kr.RootExtInfo;
import cloudsdk.ext.p008kr.RootInfo;
/* loaded from: classes.dex */
public class bbs {
    private static final cce<bbs> sInstance = new cce<bbs>() { // from class: com.kingroot.kinguser.bbs.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: WF */
        public bbs create() {
            return new bbs();
        }
    };
    private volatile RootInfo bfF;

    /* renamed from: WD */
    public static bbs m7785WD() {
        return sInstance.get();
    }

    /* renamed from: b */
    public static boolean m7783b(RootExtInfo rootExtInfo) {
        return rootExtInfo != null && rootExtInfo.useTime > 0 && rootExtInfo.succRate > 0 && rootExtInfo.succUsers > 0;
    }

    /* renamed from: WE */
    public RootInfo m7784WE() {
        return this.bfF;
    }

    /* renamed from: c */
    public void m7782c(RootInfo rootInfo) {
        this.bfF = rootInfo;
    }
}
