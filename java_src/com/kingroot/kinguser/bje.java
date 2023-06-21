package com.kingroot.kinguser;

import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import com.kingroot.kingmaster.network.updatalist.CommonList;
import com.kingroot.kinguser.ztool.autostartmgr.AutoStartAppItemInfo;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class bje {
    private CommonList bwv;
    private PackageManager bww;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract AutoStartAppItemInfo ads();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int adt();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract List<AutoStartAppItemInfo> adu();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void adv();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean hasNext();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static bje adI() {
        biz bizVar = new biz();
        bizVar.adr();
        return bizVar;
    }

    public boolean adr() {
        this.bwv = aem.m12183ux().m12186a(null);
        this.bww = C3952zh.m1312pq();
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: bY */
    public final List<PackageInfo> m6749bY(List<PackageInfo> list) {
        ArrayList arrayList = new ArrayList();
        String m6748d = m6748d(this.bww);
        if (list != null) {
            for (PackageInfo packageInfo : list) {
                int m6744lX = m6744lX(packageInfo.packageName);
                if (!m6747i(packageInfo) && !m6745jm(m6744lX) && !m6750a(packageInfo, m6748d) && !m6746j(packageInfo)) {
                    arrayList.add(packageInfo);
                }
            }
        }
        return arrayList;
    }

    /* renamed from: i */
    private boolean m6747i(PackageInfo packageInfo) {
        return this.bww != null && afn.m12049a(this.bww, packageInfo);
    }

    /* renamed from: jm */
    private static boolean m6745jm(int i) {
        return i == 1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: lX */
    public int m6744lX(String str) {
        if (this.bwv == null) {
            return 0;
        }
        return this.bwv.m13063eQ(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public PackageManager getPackageManager() {
        return this.bww;
    }

    /* renamed from: d */
    public static String m6748d(PackageManager packageManager) {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.HOME");
        ResolveInfo resolveActivity = packageManager.resolveActivity(intent, 65536);
        if (resolveActivity == null) {
            return null;
        }
        return resolveActivity.activityInfo.packageName;
    }

    /* renamed from: a */
    protected boolean m6750a(PackageInfo packageInfo, String str) {
        if (packageInfo == null || packageInfo.packageName == null) {
            return false;
        }
        return packageInfo.packageName.equals(str);
    }

    /* renamed from: lY */
    protected boolean m6743lY(String str) {
        return bja.m6800c(this.bww, str);
    }

    /* renamed from: j */
    protected boolean m6746j(PackageInfo packageInfo) {
        if (packageInfo == null) {
            return false;
        }
        return m6743lY(packageInfo.packageName);
    }
}
