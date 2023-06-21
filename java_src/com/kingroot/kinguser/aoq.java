package com.kingroot.kinguser;

import com.kingroot.kinguser.distribution.net.download.AppDownloadClient;
/* loaded from: classes.dex */
public class aoq extends aou {
    private static final cce<aoq> sInstance = new cce<aoq>() { // from class: com.kingroot.kinguser.aoq.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: Kt */
        public aoq create() {
            return new aoq();
        }
    };

    /* renamed from: Ks */
    public static aoq m9902Ks() {
        return sInstance.get();
    }

    private aoq() {
    }

    @Override // com.kingroot.kinguser.aou
    /* renamed from: IK */
    public Class<? extends aov> mo7990IK() {
        return C1395a.class;
    }

    /* renamed from: com.kingroot.kinguser.aoq$a */
    /* loaded from: classes.dex */
    public static class C1395a extends aov {
        @Override // com.kingroot.kinguser.aov
        /* renamed from: IN */
        protected AppDownloadClient mo7983IN() {
            return aot.m9886Kw();
        }
    }
}
