package com.kingroot.kinguser;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.kingroot.master.app.KUApplication;
/* loaded from: classes.dex */
public class bfw {
    private static cce<bfw> bnd = new cce<bfw>() { // from class: com.kingroot.kinguser.bfw.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: abi */
        public bfw create() {
            return new bfw();
        }
    };

    /* renamed from: Lc */
    private final SharedPreferences.Editor f1666Lc;
    private final SharedPreferences avA;

    private bfw() {
        this.avA = C3566rv.m2313i(KUApplication.m13453ge(), "urlcheck_setting_dao");
        this.f1666Lc = this.avA.edit();
    }

    public static bfw aaS() {
        return bnd.get();
    }

    public long aaT() {
        return this.avA.getLong("VER:5.3.0_20170922_12:04:38.145", 0L);
    }

    /* renamed from: cu */
    public void m7210cu(long j) {
        this.f1666Lc.putLong("VER:5.3.0_20170922_12:04:38.145", j).apply();
    }

    public boolean aaU() {
        return this.avA.getBoolean("VER:5.3.0_20170925_02:44:56.721", false);
    }

    /* renamed from: dS */
    public void m7206dS(boolean z) {
        this.f1666Lc.putBoolean("VER:5.3.0_20170925_02:44:56.721", z).apply();
    }

    public boolean aaV() {
        return this.avA.getBoolean("VER:5.3.0_20170925_05:14:42.603", true);
    }

    /* renamed from: dT */
    public void m7205dT(boolean z) {
        this.f1666Lc.putBoolean("VER:5.3.0_20170925_05:14:42.603", false).apply();
    }

    public boolean aaW() {
        return this.avA.getBoolean("VER:5.3.0_20170925_06:33:37.590", true);
    }

    /* renamed from: dU */
    public void m7204dU(boolean z) {
        this.f1666Lc.putBoolean("VER:5.3.0_20170925_06:33:37.590", z).apply();
    }

    public boolean aaX() {
        int i = this.avA.getInt("VER:5.3.0_20170929_09:11:54.845", 0);
        if (i > 2) {
            return false;
        }
        this.f1666Lc.putInt("VER:5.3.0_20170929_09:11:54.845", i + 1).apply();
        return true;
    }

    /* renamed from: cv */
    public void m7209cv(long j) {
        this.f1666Lc.putLong("VER:5.3.0_20170929_09:12:10.024", j).apply();
    }

    public long aaY() {
        return this.avA.getLong("VER:5.3.0_20170929_09:12:10.024", 0L);
    }

    public boolean aaZ() {
        return this.avA.getBoolean("VER:5.3.0_20171008_04:55:16.002", true);
    }

    public void aba() {
        this.f1666Lc.putBoolean("VER:5.3.0_20171008_04:55:16.002", false).apply();
    }

    public boolean abb() {
        return this.avA.getBoolean("VER:5.3.0_20171009_11:47:58.871", false);
    }

    /* renamed from: dV */
    public void m7203dV(boolean z) {
        this.f1666Lc.putBoolean("VER:5.3.0_20171009_11:47:58.871", z).apply();
    }

    /* renamed from: cw */
    public void m7208cw(long j) {
        this.f1666Lc.putLong("VER:5.3.0_20171010_10:29:06.688", j).apply();
    }

    public long abc() {
        return this.avA.getLong("VER:5.3.0_20171010_10:29:06.688", 0L);
    }

    /* renamed from: cx */
    public void m7207cx(long j) {
        this.f1666Lc.putLong("VER:5.3.0_20171011_11:28:46.229", j).apply();
    }

    public long abd() {
        return this.avA.getLong("VER:5.3.0_20171011_11:28:46.229", 0L);
    }

    /* renamed from: lk */
    public int m7201lk(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        return this.avA.getInt("VER:5.3.0_20171016_05:55:12.131" + str, 0);
    }

    /* renamed from: ll */
    public void m7200ll(String str) {
        int m7201lk;
        if (!TextUtils.isEmpty(str) && (m7201lk = m7201lk(str)) < 2) {
            this.f1666Lc.putInt("VER:5.3.0_20171016_05:55:12.131" + str, m7201lk + 1).apply();
        }
    }

    public boolean abe() {
        return this.avA.getBoolean("VER:5.3.0_20171025_03:23:44.521", true);
    }

    /* renamed from: dW */
    public void m7202dW(boolean z) {
        this.f1666Lc.putBoolean("VER:5.3.0_20171107_03:50:25.270", z);
    }

    public boolean abf() {
        return this.avA.getBoolean("VER:5.3.0_20171107_03:50:25.270", false);
    }

    public int abg() {
        return this.avA.getInt("VER:5.3.3_20180111_11:10:35.354", 0);
    }

    public void abh() {
        int i = this.avA.getInt("VER:5.3.3_20180111_11:10:35.354", 0);
        if (i <= 2) {
            this.f1666Lc.putInt("VER:5.3.3_20180111_11:10:35.354", i + 1).apply();
        }
    }
}
