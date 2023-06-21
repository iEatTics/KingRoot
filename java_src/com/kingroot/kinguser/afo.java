package com.kingroot.kinguser;

import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.text.TextUtils;
import java.io.File;
import java.util.List;
import java.util.Properties;
/* loaded from: classes.dex */
public class afo {
    private static volatile afo aia;

    /* renamed from: GA */
    private Properties f1414GA = null;

    private afo() {
        m12036vp();
    }

    /* renamed from: vn */
    public static afo m12038vn() {
        if (aia == null) {
            synchronized (afo.class) {
                if (aia == null) {
                    aia = new afo();
                }
            }
        }
        return aia;
    }

    /* renamed from: fh */
    public boolean m12042fh(String str) {
        String m12041fi;
        return (TextUtils.isEmpty(str) || (m12041fi = m12041fi(str)) == null || Integer.valueOf(m12041fi).intValue() != 2) ? false : true;
    }

    /* renamed from: vo */
    public synchronized void m12037vo() {
        m12043b(getPackageManager());
        m12039pF();
    }

    /* renamed from: fi */
    private synchronized String m12041fi(String str) {
        String property;
        property = this.f1414GA.getProperty(str);
        if (property == null) {
            if (C3952zh.m1312pq().m1314du(str)) {
                m12037vo();
            }
            property = this.f1414GA.getProperty(str);
        }
        return property;
    }

    /* renamed from: b */
    private void m12043b(PackageManager packageManager) {
        this.f1414GA.clear();
        List<PackageInfo> installedPackages = packageManager.getInstalledPackages(0);
        for (int i = 0; i < installedPackages.size(); i++) {
            this.f1414GA.setProperty(installedPackages.get(i).packageName, String.valueOf(0));
        }
        try {
            List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(new Intent("android.intent.action.MAIN"), 32);
            for (int i2 = 0; i2 < queryIntentActivities.size(); i2++) {
                this.f1414GA.setProperty(queryIntentActivities.get(i2).activityInfo.applicationInfo.packageName, String.valueOf(1));
            }
        } catch (Exception e) {
        }
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.LAUNCHER");
        try {
            List<ResolveInfo> queryIntentActivities2 = packageManager.queryIntentActivities(intent, 0);
            for (int i3 = 0; i3 < queryIntentActivities2.size(); i3++) {
                this.f1414GA.setProperty(queryIntentActivities2.get(i3).activityInfo.applicationInfo.packageName, String.valueOf(2));
            }
        } catch (Exception e2) {
        }
    }

    private PackageManager getPackageManager() {
        try {
            return C3952zh.m1312pq();
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: vp */
    private void m12036vp() {
        File file = new File(C3958zl.getCacheDir() + File.separator + "MLFiletr.conf");
        if (file.exists()) {
            this.f1414GA = C3975zs.m1260J(file.getAbsolutePath(), m12040pB());
        }
        if (this.f1414GA == null) {
            this.f1414GA = new Properties();
        }
    }

    /* renamed from: pF */
    private void m12039pF() {
        C3975zs.m1258a(C3958zl.getCacheDir() + File.separator + "MLFiletr.conf", m12040pB(), this.f1414GA);
    }

    /* renamed from: pB */
    private String m12040pB() {
        return C3974zr.m1262pD();
    }
}
