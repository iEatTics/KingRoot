package com.kingroot.kinguser;
/* loaded from: classes.dex */
public class aku extends akm {
    private static cce<aku> sInstance = new cce<aku>() { // from class: com.kingroot.kinguser.aku.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: Go */
        public aku create() {
            return new aku();
        }
    };

    /* renamed from: Gn */
    public static aku m10709Gn() {
        return sInstance.get();
    }

    private aku() {
        super("PeriodicTask");
    }

    /* renamed from: a */
    public void m10708a(int i, long j) {
        this.avB.putLong(String.valueOf(i), j).commit();
    }

    /* renamed from: eS */
    public long m10707eS(int i) {
        return this.avA.getLong(String.valueOf(i), 0L);
    }
}
