package com.kingroot.kinguser;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class apb extends aol {
    private static final cce<apb> aGq = new cce<apb>() { // from class: com.kingroot.kinguser.apb.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: KR */
        public apb create() {
            return new apb();
        }
    };

    /* renamed from: KQ */
    public static apb m9846KQ() {
        return aGq.get();
    }

    private apb() {
    }

    @Override // com.kingroot.kinguser.aol
    /* renamed from: Ke */
    protected String mo9752Ke() {
        return aii.m11642xL().m11641xM() ? "5010007" : "5010008";
    }

    @Override // com.kingroot.kinguser.aol
    /* renamed from: Kf */
    protected String mo9751Kf() {
        return "security_protect_app_dist";
    }

    @Override // com.kingroot.kinguser.aol
    protected String getFileName() {
        return "security_protect_app_dist_info";
    }
}
