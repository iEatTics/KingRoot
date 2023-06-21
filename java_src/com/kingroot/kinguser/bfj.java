package com.kingroot.kinguser;

import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bfj extends akm {
    private static cce<bfj> sInstance = new cce<bfj>() { // from class: com.kingroot.kinguser.bfj.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: aad */
        public bfj create() {
            return new bfj();
        }
    };

    /* renamed from: ZX */
    public static bfj m7283ZX() {
        return sInstance.get();
    }

    private bfj() {
        super("king_turingmm_config");
    }

    /* renamed from: ix */
    public int m7278ix(int i) {
        return this.avA.getInt("" + i, 0);
    }

    /* renamed from: aj */
    public void m7280aj(int i, int i2) {
        this.avB.putInt("" + i, i2).apply();
    }

    /* renamed from: ZY */
    public long m7282ZY() {
        return this.avA.getLong("VER:5.2.1_20170901_06:00:26.974", 0L);
    }

    /* renamed from: ZZ */
    public void m7281ZZ() {
        this.avB.putLong("VER:5.2.1_20170901_06:00:26.974", System.currentTimeMillis()).apply();
    }

    public boolean aaa() {
        return this.avA.getBoolean("VER:5.2.2_20170913_04:46:56.599", false);
    }

    /* renamed from: dN */
    public void m7279dN(boolean z) {
        this.avB.putBoolean("VER:5.2.2_20170913_04:46:56.599", z).apply();
    }

    public int aab() {
        return this.avA.getInt("VER:5.3.0_20171010_03:04:43.596", -1);
    }

    /* renamed from: iy */
    public void m7277iy(int i) {
        this.avB.putInt("VER:5.3.0_20171010_03:04:43.596", i).apply();
    }

    public void aac() {
        for (Map.Entry<String, ?> entry : this.avA.getAll().entrySet()) {
            String key = entry.getKey();
            try {
                Integer.parseInt(key);
                this.avB.putInt("" + key, 0).apply();
            } catch (NumberFormatException e) {
            }
        }
    }
}
