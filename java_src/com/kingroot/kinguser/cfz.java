package com.kingroot.kinguser;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import tmsdk.common.module.software.AppEntity;
/* loaded from: classes.dex */
public final class cfz extends cec implements cga {
    private PackageManager mPackageManager = null;
    private Context mContext = null;
    private CertificateFactory cdZ = null;

    @Override // com.kingroot.kinguser.cdw
    /* renamed from: I */
    public final void mo4351I(Context context) {
        this.mContext = context;
        this.mPackageManager = context.getPackageManager();
        try {
            this.cdZ = CertificateFactory.getInstance("X.509");
        } catch (CertificateException e) {
        }
    }

    public final PackageInfo getPackageInfo(String str, int i) {
        try {
            return this.mPackageManager.getPackageInfo(str, i);
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: ls */
    private int m4358ls(int i) {
        int i2 = 0;
        if ((i & 16) != 0) {
            i2 = 64;
        }
        if ((i & 32) != 0) {
            return i2 | 4096;
        }
        return i2;
    }

    @Override // com.kingroot.kinguser.cga
    /* renamed from: Y */
    public final AppEntity mo4352Y(String str, int i) {
        AppEntity appEntity = new AppEntity();
        appEntity.put("pkgName", str);
        return m4360a(appEntity, i);
    }

    /* renamed from: a */
    public final AppEntity m4360a(AppEntity appEntity, int i) {
        PackageInfo packageInfo = getPackageInfo((String) appEntity.get("pkgName"), m4358ls(i));
        if (packageInfo != null) {
            m4361a(packageInfo, appEntity, i);
            return appEntity;
        }
        return null;
    }

    /* renamed from: a */
    private void m4361a(PackageInfo packageInfo, AppEntity appEntity, int i) {
        if (packageInfo != null && appEntity != null) {
            if ((i & 1) != 0) {
                appEntity.put("pkgName", packageInfo.applicationInfo.packageName);
                appEntity.put("appName", this.mPackageManager.getApplicationLabel(packageInfo.applicationInfo).toString());
                appEntity.put("isSystem", Boolean.valueOf((packageInfo.applicationInfo.flags & 1) != 0));
                appEntity.put("uid", Integer.valueOf(packageInfo.applicationInfo != null ? packageInfo.applicationInfo.uid : -1));
            }
            if ((i & 2) != 0) {
                appEntity.put("pkgName", packageInfo.applicationInfo.packageName);
                appEntity.put("isSystem", Boolean.valueOf((packageInfo.applicationInfo.flags & 1) != 0));
                appEntity.put("uid", Integer.valueOf(packageInfo.applicationInfo != null ? packageInfo.applicationInfo.uid : -1));
            }
            if ((i & 4) != 0) {
                appEntity.put("icon", packageInfo.applicationInfo.loadIcon(this.mPackageManager));
            }
            if ((i & 8) != 0) {
                appEntity.put("version", packageInfo.versionName);
                appEntity.put("versionCode", Integer.valueOf(packageInfo.versionCode));
                File file = new File(packageInfo.applicationInfo.sourceDir);
                appEntity.put("size", Long.valueOf(file.length()));
                appEntity.put("lastModified", Long.valueOf(file.lastModified()));
            }
            if ((i & 16) != 0) {
                m4362a(packageInfo, appEntity);
            }
            if ((i & 32) != 0) {
                appEntity.put("permissions", packageInfo.requestedPermissions);
            }
            if ((i & 64) != 0) {
                appEntity.put("apkPath", packageInfo.applicationInfo.sourceDir);
                appEntity.put("isApk", false);
            }
        }
    }

    /* renamed from: a */
    private void m4362a(PackageInfo packageInfo, AppEntity appEntity) {
        X509Certificate x509Certificate;
        String str;
        if (packageInfo != null && packageInfo.signatures != null && packageInfo.signatures.length > 0 && (x509Certificate = (X509Certificate) m4359b(packageInfo.signatures[0])) != null) {
            try {
                str = cel.m4770Z(x509Certificate.getEncoded());
            } catch (CertificateEncodingException e) {
                e.printStackTrace();
                str = null;
            }
            appEntity.put("signatureCermMD5", str);
        }
    }

    /* renamed from: b */
    private Certificate m4359b(Signature signature) {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(signature.toByteArray());
        try {
            try {
                X509Certificate x509Certificate = (X509Certificate) this.cdZ.generateCertificate(byteArrayInputStream);
                try {
                    return x509Certificate;
                } catch (IOException e) {
                    return x509Certificate;
                }
            } finally {
                try {
                    byteArrayInputStream.close();
                } catch (IOException e2) {
                    e2.printStackTrace();
                }
            }
        } catch (CertificateException e3) {
            e3.printStackTrace();
            try {
                byteArrayInputStream.close();
                return null;
            } catch (IOException e4) {
                e4.printStackTrace();
                return null;
            }
        } catch (Exception e5) {
            e5.printStackTrace();
            try {
                byteArrayInputStream.close();
                return null;
            } catch (IOException e6) {
                e6.printStackTrace();
                return null;
            }
        }
    }

    @Override // com.kingroot.kinguser.cga
    public final NetworkInfo getActiveNetworkInfo() {
        try {
            return ((ConnectivityManager) this.mContext.getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (Exception e) {
            return null;
        }
    }
}
