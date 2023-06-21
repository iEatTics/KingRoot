package com.kingroot.kinguser;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.security.cert.Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;
/* loaded from: classes.dex */
public class bza {
    /* renamed from: S */
    public static byw m5151S(Context context, String str) {
        byw bywVar = new byw();
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 64);
            bywVar.pkgName = str;
            bywVar.versionName = packageInfo.versionName;
            bywVar.versionCode = packageInfo.versionCode;
        } catch (Throwable th) {
        }
        return bywVar;
    }

    /* renamed from: T */
    public static String m5149T(Context context, String str) {
        try {
            return context.getPackageManager().getApplicationInfo(str, 0).sourceDir;
        } catch (PackageManager.NameNotFoundException e) {
            return "";
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
        	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:35)
        	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:202)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:45)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    /* renamed from: U */
    public static java.lang.String m5148U(android.content.Context r5, java.lang.String r6) {
        /*
            java.lang.String r1 = ""
            r0 = 0
            android.content.pm.PackageManager r2 = r5.getPackageManager()     // Catch: java.lang.Throwable -> L47
            android.content.pm.PackageManager r3 = r5.getPackageManager()     // Catch: java.lang.Throwable -> L47
            r4 = 0
            android.content.pm.ApplicationInfo r3 = r3.getApplicationInfo(r6, r4)     // Catch: java.lang.Throwable -> L47
            int r3 = r3.uid     // Catch: java.lang.Throwable -> L47
            java.lang.String[] r3 = r2.getPackagesForUid(r3)     // Catch: java.lang.Throwable -> L47
            r4 = 0
            r3 = r3[r4]     // Catch: java.lang.Throwable -> L47
            r4 = 64
            android.content.pm.PackageInfo r2 = r2.getPackageInfo(r3, r4)     // Catch: java.lang.Throwable -> L47
            android.content.pm.Signature[] r2 = r2.signatures     // Catch: java.lang.Throwable -> L47
            r3 = 0
            r3 = r2[r3]     // Catch: java.lang.Throwable -> L47
            java.io.ByteArrayInputStream r2 = new java.io.ByteArrayInputStream     // Catch: java.lang.Throwable -> L47
            byte[] r3 = r3.toByteArray()     // Catch: java.lang.Throwable -> L47
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L47
            java.lang.String r0 = "X.509"
            java.security.cert.CertificateFactory r0 = java.security.cert.CertificateFactory.getInstance(r0)     // Catch: java.lang.Throwable -> L61
            java.security.cert.Certificate r0 = r0.generateCertificate(r2)     // Catch: java.lang.Throwable -> L61
            java.security.cert.X509Certificate r0 = (java.security.cert.X509Certificate) r0     // Catch: java.lang.Throwable -> L61
            byte[] r0 = r0.getEncoded()     // Catch: java.lang.Throwable -> L61
            java.lang.String r0 = com.kingroot.kinguser.byz.m5163E(r0)     // Catch: java.lang.Throwable -> L61
            if (r2 == 0) goto L46
            r2.close()     // Catch: java.lang.Throwable -> L5b
        L46:
            return r0
        L47:
            r2 = move-exception
        L48:
            if (r0 == 0) goto L64
            r0.close()     // Catch: java.lang.Throwable -> L4f
            r0 = r1
            goto L46
        L4f:
            r0 = move-exception
            r0 = r1
            goto L46
        L52:
            r1 = move-exception
            r2 = r0
            r0 = r1
        L55:
            if (r2 == 0) goto L5a
            r2.close()     // Catch: java.lang.Throwable -> L5d
        L5a:
            throw r0
        L5b:
            r1 = move-exception
            goto L46
        L5d:
            r1 = move-exception
            goto L5a
        L5f:
            r0 = move-exception
            goto L55
        L61:
            r0 = move-exception
            r0 = r2
            goto L48
        L64:
            r0 = r1
            goto L46
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kingroot.kinguser.bza.m5148U(android.content.Context, java.lang.String):java.lang.String");
    }

    /* renamed from: S */
    public static List<String> m5150S(File file) {
        ArrayList arrayList = new ArrayList();
        JarFile jarFile = new JarFile(file);
        try {
            Certificate[] m5147a = m5147a(jarFile, jarFile.getJarEntry("AndroidManifest.xml"), new byte[8192]);
            if (m5147a != null) {
                for (Certificate certificate : m5147a) {
                    arrayList.add(byz.m5163E(certificate.getEncoded()));
                }
            }
        } catch (Exception e) {
        } finally {
            jarFile.close();
        }
        return arrayList;
    }

    /* renamed from: a */
    private static Certificate[] m5147a(JarFile jarFile, JarEntry jarEntry, byte[] bArr) {
        InputStream inputStream;
        Throwable th;
        try {
            inputStream = jarFile.getInputStream(jarEntry);
            do {
                try {
                } catch (IOException e) {
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e2) {
                        }
                    }
                    return r0;
                } catch (Throwable th2) {
                    th = th2;
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e3) {
                        }
                    }
                    throw th;
                }
            } while (inputStream.read(bArr, 0, bArr.length) != -1);
            r0 = jarEntry != null ? jarEntry.getCertificates() : null;
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e4) {
                }
            }
        } catch (IOException e5) {
            inputStream = null;
        } catch (Throwable th3) {
            inputStream = null;
            th = th3;
        }
        return r0;
    }
}
