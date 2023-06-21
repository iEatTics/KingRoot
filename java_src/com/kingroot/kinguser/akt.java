package com.kingroot.kinguser;
/* loaded from: classes.dex */
public class akt extends akm {
    private static cce<akt> sInstance = new cce<akt>() { // from class: com.kingroot.kinguser.akt.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: Gm */
        public akt create() {
            return new akt();
        }
    };

    /* renamed from: Gj */
    public static akt m10713Gj() {
        return sInstance.get();
    }

    private akt() {
        super("LittleRedDotSettingDao");
    }

    /* renamed from: Gk */
    public boolean m10712Gk() {
        return this.avA.getBoolean("VER:5.2.0_20170518_05:41:03.072", true);
    }

    /* renamed from: Gl */
    public void m10711Gl() {
        this.avB.putBoolean("VER:5.2.0_20170518_05:41:03.072", false).apply();
    }
}
