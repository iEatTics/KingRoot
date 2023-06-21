package com.kingroot.kingmaster.toolbox.cleaner.uninstall.data;

import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import com.kingroot.common.entity.BaseEntity;
import com.kingroot.kinguser.aah;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
/* loaded from: classes.dex */
public class TcPkgInfo extends BaseEntity {
    private static final long serialVersionUID = 1;
    public long appUid;
    public int classify;
    public boolean isPersonApp;
    public long pkgLastModified;
    public long pkgSize;
    public int versionCode;
    public String packageName = "";
    public String versionName = "";
    public String appName = "";
    public String appSourceDir = "";
    public String pkgCertMd5 = "";
    public int flag = -1;
    public int hasLauncherOrMain = -1;
    public String description = "";
    public boolean checkCacheFail = false;
    public int enable = 0;
    public int percent = -1;
    public int clearAction = 0;
    public int riskType = 1;

    /* renamed from: a */
    public static TcPkgInfo m13060a(PackageManager packageManager, PackageInfo packageInfo, int i, boolean z, boolean z2, ActivityInfo activityInfo) {
        TcPkgInfo tcPkgInfo = new TcPkgInfo();
        tcPkgInfo.packageName = packageInfo.packageName;
        tcPkgInfo.versionCode = packageInfo.versionCode;
        tcPkgInfo.versionName = packageInfo.versionName;
        int i2 = -1;
        try {
            i2 = packageManager.getApplicationEnabledSetting(packageInfo.packageName);
        } catch (IllegalArgumentException e) {
        }
        if (i2 < 0) {
            tcPkgInfo.enable = 2;
        } else if (i2 == 2) {
            tcPkgInfo.enable = 1;
        } else {
            tcPkgInfo.enable = 0;
        }
        if (packageInfo.applicationInfo != null) {
            tcPkgInfo.appName = packageManager.getApplicationLabel(packageInfo.applicationInfo).toString();
            if (tcPkgInfo.appName.equals(packageInfo.packageName) && activityInfo != null && activityInfo.labelRes != 0) {
                tcPkgInfo.appName = activityInfo.loadLabel(packageManager).toString();
            }
            tcPkgInfo.appSourceDir = packageInfo.applicationInfo.sourceDir;
            tcPkgInfo.appUid = packageInfo.applicationInfo.uid;
            tcPkgInfo.isPersonApp = (packageInfo.applicationInfo.flags & 1) == 0;
            if (packageInfo.applicationInfo.sourceDir != null) {
                File file = new File(packageInfo.applicationInfo.sourceDir);
                tcPkgInfo.pkgLastModified = file.lastModified();
                tcPkgInfo.pkgSize = file.length();
            }
        }
        tcPkgInfo.classify = i;
        if (z) {
            tcPkgInfo.pkgCertMd5 = m13058c(packageInfo);
        }
        return tcPkgInfo;
    }

    /* renamed from: c */
    public static String m13058c(PackageInfo packageInfo) {
        if (packageInfo.signatures != null) {
            try {
                return m13059a(CertificateFactory.getInstance("X.509"), packageInfo.signatures[0]);
            } catch (CertificateException e) {
            }
        }
        return null;
    }

    /* renamed from: a */
    private static String m13059a(CertificateFactory certificateFactory, Signature signature) {
        if (certificateFactory == null) {
            return null;
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(signature.toByteArray());
        try {
            String m13005E = aah.m13005E(((X509Certificate) certificateFactory.generateCertificate(byteArrayInputStream)).getEncoded());
            if (byteArrayInputStream != null) {
                try {
                    byteArrayInputStream.close();
                    return m13005E;
                } catch (IOException e) {
                    return m13005E;
                }
            }
            return m13005E;
        } catch (Exception e2) {
            if (byteArrayInputStream != null) {
                try {
                    byteArrayInputStream.close();
                } catch (IOException e3) {
                }
            }
            return null;
        } catch (Throwable th) {
            if (byteArrayInputStream != null) {
                try {
                    byteArrayInputStream.close();
                } catch (IOException e4) {
                }
            }
            throw th;
        }
    }
}
