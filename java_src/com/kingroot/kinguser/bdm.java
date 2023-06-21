package com.kingroot.kinguser;

import android.content.pm.PackageInfo;
import android.text.TextUtils;
import java.io.File;
import java.util.List;
/* loaded from: classes.dex */
public abstract class bdm {
    protected String adZ;
    protected int ads;
    protected String bjj;
    protected String bjk;
    protected long bjl;
    protected String mVersionName;

    /* renamed from: YF */
    public abstract String mo7521YF();

    /* renamed from: YG */
    protected abstract int[] mo7520YG();

    /* renamed from: ah */
    public abstract void mo7519ah(int i, int i2);

    /* renamed from: kZ */
    protected abstract void mo7516kZ(String str);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: bO */
    public String m7535bO(List<Object> list) {
        return C3612sw.m2222t(list);
    }

    /* renamed from: kV */
    public void m7534kV(String str) {
        this.bjj = str;
    }

    /* renamed from: YE */
    public String m7536YE() {
        return this.bjj;
    }

    /* renamed from: kW */
    public void m7533kW(String str) {
        this.adZ = str;
        m7532kX(str);
    }

    /* renamed from: kX */
    protected void m7532kX(String str) {
        this.adZ = str;
        try {
            PackageInfo packageInfo = C3952zh.m1312pq().getPackageInfo(str, 64);
            if (packageInfo != null) {
                this.bjk = aaz.m12872dZ(str);
                this.mVersionName = packageInfo.versionName;
                this.ads = packageInfo.versionCode;
                this.bjl = new File(packageInfo.applicationInfo.publicSourceDir).length();
            }
        } catch (Exception e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: kY */
    public String[] m7531kY(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return str.split("\\|");
    }
}
