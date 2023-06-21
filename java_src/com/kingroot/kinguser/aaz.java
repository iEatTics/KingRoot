package com.kingroot.kinguser;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import com.kingroot.common.utils.system.VTCmdResult;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.Locale;
/* loaded from: classes.dex */
public class aaz {

    /* renamed from: YE */
    private static String f1298YE;

    @Nullable
    /* renamed from: dZ */
    public static String m12872dZ(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return m12875a(m12876a(m12868ed(str)));
        } catch (Throwable th) {
            return null;
        }
    }

    @Nullable
    /* renamed from: b */
    public static String m12874b(PackageInfo packageInfo) {
        if (packageInfo == null || packageInfo.signatures == null || packageInfo.signatures.length == 0) {
            return null;
        }
        try {
            return m12875a(m12876a(packageInfo.signatures[0]));
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: ea */
    public static String m12871ea(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return m12875a(m12876a(m12870eb(str)));
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: qy */
    public static synchronized String m12867qy() {
        String str;
        synchronized (aaz.class) {
            if (TextUtils.isEmpty(f1298YE)) {
                f1298YE = m12872dZ(bzt.m5101ge().getPackageName());
            }
            str = f1298YE;
        }
        return str;
    }

    /* renamed from: eb */
    private static Signature m12870eb(String str) {
        Signature[] signatureArr;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (abd.m12839qb() > 15) {
            try {
                PackageInfo packageArchiveInfo = C3952zh.m1312pq().getPackageArchiveInfo(str, 64);
                signatureArr = packageArchiveInfo != null ? packageArchiveInfo.signatures : null;
            } catch (Throwable th) {
                signatureArr = null;
            }
        } else {
            signatureArr = m12869ec(str);
        }
        if (signatureArr == null || signatureArr.length <= 0) {
            return null;
        }
        return signatureArr[0];
    }

    /* renamed from: ec */
    private static Signature[] m12869ec(String str) {
        try {
            Class<?> cls = Class.forName("android.content.pm.PackageParser");
            Object newInstance = cls.getConstructor(String.class).newInstance(str);
            DisplayMetrics displayMetrics = new DisplayMetrics();
            displayMetrics.setToDefaults();
            Object invoke = cls.getDeclaredMethod("parsePackage", File.class, String.class, DisplayMetrics.class, Integer.TYPE).invoke(newInstance, new File(str), str, displayMetrics, 64);
            cls.getDeclaredMethod("collectCertificates", invoke.getClass(), Integer.TYPE).invoke(newInstance, invoke, 64);
            return (Signature[]) invoke.getClass().getDeclaredField("mSignatures").get(invoke);
        } catch (Exception e) {
            return null;
        }
    }

    @Nullable
    /* renamed from: a */
    private static X509Certificate m12876a(Signature signature) {
        ByteArrayInputStream byteArrayInputStream;
        Throwable th;
        X509Certificate x509Certificate = null;
        if (signature != null) {
            try {
                CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
                byteArrayInputStream = new ByteArrayInputStream(signature.toByteArray());
                try {
                    x509Certificate = (X509Certificate) certificateFactory.generateCertificate(byteArrayInputStream);
                    C3945za.m1340c(byteArrayInputStream);
                } catch (Throwable th2) {
                    th = th2;
                    C3945za.m1340c(byteArrayInputStream);
                    throw th;
                }
            } catch (Throwable th3) {
                byteArrayInputStream = null;
                th = th3;
            }
        }
        return x509Certificate;
    }

    @Nullable
    /* renamed from: a */
    private static String m12875a(X509Certificate x509Certificate) {
        byte[] encoded;
        if (x509Certificate == null || (encoded = x509Certificate.getEncoded()) == null) {
            return null;
        }
        return aah.m13005E(encoded);
    }

    /* renamed from: ed */
    private static Signature m12868ed(String str) {
        PackageInfo packageInfo;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            packageInfo = C3952zh.m1312pq().getPackageInfo(str, 64);
        } catch (PackageManager.NameNotFoundException e) {
            packageInfo = null;
        }
        Signature[] signatureArr = packageInfo != null ? packageInfo.signatures : null;
        if (signatureArr == null || signatureArr.length <= 0) {
            return null;
        }
        return signatureArr[0];
    }

    @WorkerThread
    /* renamed from: ca */
    public static String m12873ca(int i) {
        abc m12845qK = abc.m12845qK();
        if (m12845qK.isRootPermition(false)) {
            VTCmdResult m12846el = m12845qK.m12846el(String.format(Locale.US, "export CLASSPATH=%s && /system/bin/app_process /system/bin %s %d", m12866qz(), "com.kingroot.kinguser.TellMe", Integer.valueOf(i)));
            if (m12846el.success()) {
                String trim = m12846el.mStdOut.trim();
                if (!TextUtils.isEmpty(trim) && trim.length() == 32) {
                    return trim;
                }
            }
        }
        return "";
    }

    /* renamed from: qz */
    private static String m12866qz() {
        File file = new File(C3958zl.m1295pw(), "tm.dex");
        if (!file.exists()) {
            try {
                C3563rs.m2342y("dtm", "tm.dex");
            } catch (Exception e) {
                e.printStackTrace();
            }
            file = new File(C3958zl.m1295pw(), "tm.dex");
        }
        if (!file.exists()) {
            return null;
        }
        return file.getAbsolutePath();
    }
}
