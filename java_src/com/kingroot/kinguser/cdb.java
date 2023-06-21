package com.kingroot.kinguser;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import com.tencent.securemodule.api.AppInfo;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
/* loaded from: classes.dex */
public class cdb {
    private static PackageManager bWW = null;

    /* renamed from: W */
    public static AppInfo m4872W(Context context, String str) {
        Exception exc;
        AppInfo appInfo;
        CertificateEncodingException certificateEncodingException;
        AppInfo appInfo2;
        PackageManager.NameNotFoundException nameNotFoundException;
        AppInfo appInfo3;
        PackageInfo packageInfo;
        AppInfo appInfo4;
        try {
            packageInfo = context.getPackageManager().getPackageInfo(str, 64);
            appInfo4 = new AppInfo();
        } catch (PackageManager.NameNotFoundException e) {
            nameNotFoundException = e;
            appInfo3 = null;
        } catch (CertificateEncodingException e2) {
            certificateEncodingException = e2;
            appInfo2 = null;
        } catch (Exception e3) {
            exc = e3;
            appInfo = null;
        }
        try {
            appInfo4.pkgName = str;
            appInfo4.versionName = packageInfo.versionName;
            appInfo4.versionCode = packageInfo.versionCode;
            X509Certificate x509Certificate = (X509Certificate) m4868b(CertificateFactory.getInstance("X.509"), packageInfo.signatures[0]);
            if (x509Certificate != null) {
                appInfo4.certMd5 = cdf.m4854a(cdf.m4851b(x509Certificate.getEncoded()));
            }
            return appInfo4;
        } catch (PackageManager.NameNotFoundException e4) {
            appInfo3 = appInfo4;
            nameNotFoundException = e4;
            nameNotFoundException.printStackTrace();
            return appInfo3;
        } catch (CertificateEncodingException e5) {
            appInfo2 = appInfo4;
            certificateEncodingException = e5;
            certificateEncodingException.printStackTrace();
            return appInfo2;
        } catch (Exception e6) {
            appInfo = appInfo4;
            exc = e6;
            exc.printStackTrace();
            return appInfo;
        }
    }

    /* renamed from: X */
    private static AppInfo m4871X(Context context, String str) {
        CharSequence charSequence;
        CharSequence applicationLabel;
        try {
            Object m4861nE = cdc.m4861nE(str);
            File file = new File(str);
            DisplayMetrics displayMetrics = new DisplayMetrics();
            displayMetrics.setToDefaults();
            Object m4862a = cdc.m4862a(m4861nE, file, str, displayMetrics, 0);
            if (m4862a == null) {
                return null;
            }
            AppInfo appInfo = new AppInfo();
            appInfo.appType = 0;
            appInfo.fileSize = new File(str).length();
            appInfo.apkPath = str;
            appInfo.pkgName = (String) cdd.m4858g(m4862a, "packageName");
            appInfo.versionName = (String) cdd.m4858g(m4862a, "mVersionName");
            appInfo.versionCode = ((Integer) cdd.m4858g(m4862a, "mVersionCode")).intValue();
            ApplicationInfo applicationInfo = (ApplicationInfo) cdd.m4858g(m4862a, "applicationInfo");
            if (applicationInfo != null) {
                if (applicationInfo.labelRes != 0) {
                    try {
                        charSequence = m4870Y(context, str).getText(applicationInfo.labelRes);
                    } catch (Exception e) {
                        charSequence = null;
                    }
                } else {
                    charSequence = null;
                }
                if (charSequence == null || charSequence.length() <= 0) {
                    if (bWW == null) {
                        bWW = context.getPackageManager();
                    }
                    applicationLabel = bWW.getApplicationLabel(applicationInfo);
                } else {
                    applicationLabel = charSequence;
                }
                if (applicationLabel != null) {
                    appInfo.softName = applicationLabel.toString();
                }
            }
            cdd.m4860a(m4861nE, "collectCertificates", new Object[]{m4862a, 0});
            Signature[] signatureArr = (Signature[]) cdd.m4858g(m4862a, "mSignatures");
            if (signatureArr != null && signatureArr.length > 0) {
                try {
                    X509Certificate x509Certificate = (X509Certificate) m4868b(CertificateFactory.getInstance("X.509"), signatureArr[0]);
                    if (x509Certificate != null) {
                        appInfo.certMd5 = cdf.m4854a(cdf.m4851b(x509Certificate.getEncoded()));
                    }
                } catch (Exception e2) {
                    cdo.m4816d("AppUtil", e2);
                }
            }
            return appInfo;
        } catch (Exception e3) {
            return null;
        }
    }

    /* renamed from: Y */
    private static Resources m4870Y(Context context, String str) {
        Resources resources = context.getResources();
        Object m4859f = cdd.m4859f("android.content.res.AssetManager", null);
        cdd.m4860a(m4859f, "addAssetPath", new Object[]{str});
        return (Resources) cdd.m4859f("android.content.res.Resources", new Object[]{m4859f, resources.getDisplayMetrics(), resources.getConfiguration()});
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0061, code lost:
        r0 = r1.substring(r4 + 1).trim();
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x006b, code lost:
        if (r3 == null) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x006d, code lost:
        r3.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x007b, code lost:
        r1 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x007c, code lost:
        r1.printStackTrace();
     */
    /* JADX WARN: Removed duplicated region for block: B:90:0x00be A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x00b9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: al */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String m4869al(String str) {
        ZipFile zipFile;
        BufferedReader bufferedReader;
        Throwable th;
        String readLine;
        String str2 = null;
        BufferedReader bufferedReader2 = null;
        try {
            zipFile = new ZipFile(str);
        } catch (Exception e) {
            e = e;
            zipFile = null;
            bufferedReader = null;
        } catch (Throwable th2) {
            zipFile = null;
            bufferedReader = null;
            th = th2;
        }
        try {
            if (new File(str).exists()) {
                ZipEntry entry = zipFile.getEntry("META-INF/MANIFEST.MF");
                if (entry != null) {
                    bufferedReader = new BufferedReader(new InputStreamReader(zipFile.getInputStream(entry)));
                    while (true) {
                        try {
                            try {
                                String readLine2 = bufferedReader.readLine();
                                if (readLine2 == null) {
                                    break;
                                } else if (readLine2.contains("classes.dex") && (readLine = bufferedReader.readLine()) != null && readLine.contains("SHA1-Digest") && (r4 = readLine.indexOf(":")) > 0) {
                                    break;
                                }
                            } catch (Exception e2) {
                                e = e2;
                                e.printStackTrace();
                                if (bufferedReader != null) {
                                    try {
                                        bufferedReader.close();
                                    } catch (IOException e3) {
                                        e3.printStackTrace();
                                    }
                                }
                                if (zipFile != null) {
                                    try {
                                        zipFile.close();
                                    } catch (IOException e4) {
                                        e4.printStackTrace();
                                    }
                                }
                                return str2;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (IOException e5) {
                                    e5.printStackTrace();
                                }
                            }
                            if (zipFile != null) {
                                try {
                                    zipFile.close();
                                } catch (IOException e6) {
                                    e6.printStackTrace();
                                }
                            }
                            throw th;
                        }
                    }
                } else {
                    bufferedReader = null;
                }
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (IOException e7) {
                        e7.printStackTrace();
                    }
                }
                if (zipFile != null) {
                    try {
                        zipFile.close();
                    } catch (IOException e8) {
                        e8.printStackTrace();
                    }
                }
            } else {
                if (0 != 0) {
                    try {
                        bufferedReader2.close();
                    } catch (IOException e9) {
                        e9.printStackTrace();
                    }
                }
                if (zipFile != null) {
                    try {
                        zipFile.close();
                    } catch (IOException e10) {
                        e10.printStackTrace();
                    }
                }
            }
        } catch (Exception e11) {
            e = e11;
            bufferedReader = null;
        } catch (Throwable th4) {
            bufferedReader = null;
            th = th4;
            if (bufferedReader != null) {
            }
            if (zipFile != null) {
            }
            throw th;
        }
        return str2;
        if (zipFile != null) {
            try {
                zipFile.close();
            } catch (IOException e12) {
                e12.printStackTrace();
            }
        }
        return str2;
    }

    /* renamed from: b */
    private static Certificate m4868b(CertificateFactory certificateFactory, Signature signature) {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(signature.toByteArray());
        try {
            try {
                X509Certificate x509Certificate = (X509Certificate) certificateFactory.generateCertificate(byteArrayInputStream);
                if (byteArrayInputStream != null) {
                    try {
                        byteArrayInputStream.close();
                        return x509Certificate;
                    } catch (IOException e) {
                        e.printStackTrace();
                        return x509Certificate;
                    }
                }
                return x509Certificate;
            } catch (CertificateException e2) {
                e2.printStackTrace();
                if (byteArrayInputStream != null) {
                    try {
                        byteArrayInputStream.close();
                        return null;
                    } catch (IOException e3) {
                        e3.printStackTrace();
                        return null;
                    }
                }
                return null;
            } catch (Exception e4) {
                e4.printStackTrace();
                if (byteArrayInputStream != null) {
                    try {
                        byteArrayInputStream.close();
                        return null;
                    } catch (IOException e5) {
                        e5.printStackTrace();
                        return null;
                    }
                }
                return null;
            }
        } catch (Throwable th) {
            if (byteArrayInputStream != null) {
                try {
                    byteArrayInputStream.close();
                } catch (IOException e6) {
                    e6.printStackTrace();
                }
            }
            throw th;
        }
    }

    /* renamed from: f */
    public static List<byte[]> m4867f(Context context, String str, int i) {
        ArrayList arrayList = new ArrayList();
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 64);
            if (packageInfo != null && packageInfo.signatures != null && packageInfo.signatures.length > 0) {
                Signature[] signatureArr = packageInfo.signatures;
                int i2 = 0;
                while (true) {
                    int i3 = i2;
                    if (i3 >= signatureArr.length || i3 >= i) {
                        break;
                    }
                    X509Certificate x509Certificate = (X509Certificate) m4868b(CertificateFactory.getInstance("X.509"), signatureArr[i3]);
                    if (x509Certificate != null) {
                        try {
                            arrayList.add(cdf.m4851b(x509Certificate.getEncoded()));
                        } catch (CertificateEncodingException e) {
                            cdo.m4815f("AppUtil", e);
                        }
                    }
                    i2 = i3 + 1;
                }
            }
        } catch (Exception e2) {
            cdo.m4815f("AppUtil", e2);
        }
        return arrayList;
    }

    /* renamed from: g */
    public static List<byte[]> m4866g(Context context, String str, int i) {
        Object m4861nE;
        Object m4862a;
        int i2 = 0;
        ArrayList arrayList = new ArrayList();
        try {
            m4861nE = cdc.m4861nE(str);
            File file = new File(str);
            DisplayMetrics displayMetrics = new DisplayMetrics();
            displayMetrics.setToDefaults();
            m4862a = cdc.m4862a(m4861nE, file, str, displayMetrics, 0);
        } catch (Exception e) {
            cdo.m4818a("AppUtil", e);
        }
        if (m4862a == null) {
            return arrayList;
        }
        cdd.m4860a(m4861nE, "collectCertificates", new Object[]{m4862a, 0});
        Signature[] signatureArr = (Signature[]) cdd.m4858g(m4862a, "mSignatures");
        if (signatureArr != null && signatureArr.length > 0) {
            while (true) {
                int i3 = i2;
                if (i3 >= signatureArr.length || i3 >= i) {
                    break;
                }
                X509Certificate x509Certificate = (X509Certificate) m4868b(CertificateFactory.getInstance("X.509"), signatureArr[i3]);
                if (x509Certificate != null) {
                    try {
                        arrayList.add(cdf.m4851b(x509Certificate.getEncoded()));
                    } catch (CertificateEncodingException e2) {
                        cdo.m4818a("AppUtil", e2);
                    }
                }
                i2 = i3 + 1;
            }
        }
        return arrayList;
    }

    /* renamed from: h */
    public static List<AppInfo> m4865h(Context context, List<String> list) {
        AppInfo m4872W;
        ArrayList arrayList = new ArrayList();
        PackageManager packageManager = context.getPackageManager();
        for (String str : list) {
            if (str != null && (m4872W = m4872W(context, str)) != null) {
                try {
                    ApplicationInfo applicationInfo = packageManager.getApplicationInfo(str, 0);
                    boolean z = (applicationInfo.flags & 1) != 0;
                    m4872W.softName = cdp.m4814al(packageManager.getApplicationLabel(applicationInfo).toString());
                    m4872W.appType = z ? 1 : 0;
                    m4872W.fileSize = new File(applicationInfo.sourceDir).length();
                    m4872W.apkPath = applicationInfo.sourceDir;
                    arrayList.add(m4872W);
                    cdo.m4816d("CloudScan", "add app: " + str);
                } catch (Exception e) {
                    e.printStackTrace();
                    cdo.m4815f("CloudScan", "getAppInfos() exception for: " + str + ", exception: " + e);
                }
            }
        }
        return arrayList;
    }

    /* renamed from: i */
    public static List<AppInfo> m4864i(Context context, List<String> list) {
        AppInfo m4871X;
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            if (!TextUtils.isEmpty(str) && (m4871X = m4871X(context, str)) != null) {
                m4871X.isUnInstalledApk = true;
                arrayList.add(m4871X);
                cdo.m4816d("CloudScan", "scan apk: " + str);
            }
        }
        return arrayList;
    }

    /* renamed from: i */
    public static List<AppInfo> m4863i(Context context, boolean z) {
        ArrayList arrayList = new ArrayList();
        PackageManager packageManager = context.getPackageManager();
        for (ApplicationInfo applicationInfo : packageManager.getInstalledApplications(0)) {
            if (applicationInfo.packageName != null) {
                boolean z2 = (applicationInfo.flags & 1) != 0;
                if (!z2 || z) {
                    AppInfo m4872W = m4872W(context, applicationInfo.packageName);
                    if (m4872W != null) {
                        m4872W.softName = cdp.m4814al(packageManager.getApplicationLabel(applicationInfo).toString());
                        m4872W.appType = z2 ? 1 : 0;
                        m4872W.fileSize = new File(applicationInfo.sourceDir).length();
                        m4872W.apkPath = applicationInfo.sourceDir;
                        arrayList.add(m4872W);
                        cdo.m4816d("CloudScan", "add app: " + applicationInfo.packageName);
                    }
                }
            }
        }
        return arrayList;
    }
}
