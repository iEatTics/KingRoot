package com.kingroot.kinguser;
/* loaded from: classes.dex */
public class akp extends akm {
    private static cce<akp> sInstance = new cce<akp>() { // from class: com.kingroot.kinguser.akp.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: BK */
        public akp create() {
            return new akp();
        }
    };

    /* renamed from: BJ */
    public static akp m11162BJ() {
        return sInstance.get();
    }

    private akp() {
        super("f_upl");
    }

    /* renamed from: l */
    public long m11161l(String str, long j) {
        return this.avA.getLong(str, j);
    }

    /* renamed from: m */
    public void m11160m(String str, long j) {
        this.avB.putLong(str, j).apply();
    }

    /* renamed from: w */
    public int m11159w(String str, int i) {
        return this.avA.getInt(str, i);
    }

    /* renamed from: x */
    public void m11158x(String str, int i) {
        this.avB.putInt(str, i).apply();
    }
}
