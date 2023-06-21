package com.kingroot.kinguser;
/* loaded from: classes.dex */
public class akv extends akm {
    private static cce<akv> sInstance = new cce<akv>() { // from class: com.kingroot.kinguser.akv.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: Gw */
        public akv create() {
            return new akv();
        }
    };

    /* renamed from: Gp */
    public static akv m10705Gp() {
        return sInstance.get();
    }

    private akv() {
        super("KlPluginSettings");
    }

    /* renamed from: bM */
    public void m10698bM(long j) {
        this.avB.putLong("VER:5.0.4_20170222_11:07:17.242", j).commit();
    }

    /* renamed from: Gq */
    public long m10704Gq() {
        return this.avA.getLong("VER:5.0.4_20170222_11:07:17.242", 0L);
    }

    /* renamed from: bN */
    public void m10697bN(long j) {
        this.avB.putLong("VER:5.0.4_20170222_11:07:18.242", j).commit();
    }

    /* renamed from: Gr */
    public long m10703Gr() {
        return this.avA.getLong("VER:5.0.4_20170222_11:07:18.242", 0L);
    }

    /* renamed from: Gs */
    public boolean m10702Gs() {
        return this.avA.getBoolean("VER:5.0.4_20170222_11:07:19.242", false);
    }

    /* renamed from: cv */
    public void m10696cv(boolean z) {
        this.avB.putBoolean("VER:5.0.4_20170222_11:07:19.242", z).commit();
    }

    /* renamed from: Gt */
    public long m10701Gt() {
        return this.avA.getLong("VER:5.0.4_20170222_11:07:21.242", 0L);
    }

    /* renamed from: Gu */
    public void m10700Gu() {
        synchronized ("VER:5.0.4_20170222_11:07:20.242") {
            long currentTimeMillis = System.currentTimeMillis();
            long m10701Gt = m10701Gt();
            if (adk.m12539b(this.avA.getLong("VER:5.0.4_20170222_11:07:20.242", 0L), currentTimeMillis, 86400000L)) {
                this.avB.putLong("VER:5.0.4_20170222_11:07:20.242", currentTimeMillis);
                this.avB.putLong("VER:5.0.4_20170222_11:07:21.242", 1L);
                this.avB.commit();
            } else {
                this.avB.putLong("VER:5.0.4_20170222_11:07:21.242", m10701Gt + 1).commit();
            }
        }
    }

    /* renamed from: Gv */
    public boolean m10699Gv() {
        return true;
    }
}
