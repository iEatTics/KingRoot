package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import android.os.Build;
import android.provider.Settings;
import android.text.TextUtils;
import com.kingroot.kingmaster.toolbox.cleaner.uninstall.data.TcPkgInfo;
import com.kingroot.kinguses.R;
import java.io.ByteArrayInputStream;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
/* loaded from: classes.dex */
public class afd {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.afd$a */
    /* loaded from: classes.dex */
    public static class C0801a {
        String ahg;
        String certMd5;

        public C0801a(String str, String str2) {
            this.ahg = str;
            this.certMd5 = str2;
        }
    }

    /* renamed from: e */
    public static List<TcPkgInfo> m12109e(Context context, int i) {
        List<PackageInfo> installedPackages;
        boolean z;
        ArrayList arrayList = new ArrayList();
        try {
            C3952zh m1312pq = C3952zh.m1312pq();
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            HashMap hashMap3 = new HashMap();
            HashMap hashMap4 = new HashMap();
            HashMap hashMap5 = new HashMap();
            Intent intent = new Intent("android.intent.action.MAIN");
            intent.addCategory("android.intent.category.LAUNCHER");
            List<ResolveInfo> arrayList2 = new ArrayList<>();
            try {
                arrayList2 = m1312pq.queryIntentActivities(intent, 0);
            } catch (Exception e) {
            }
            if (arrayList2 == null) {
                arrayList2 = new ArrayList<>();
            }
            for (ResolveInfo resolveInfo : arrayList2) {
                hashMap3.put(resolveInfo.activityInfo.applicationInfo.packageName, 0);
            }
            Intent intent2 = new Intent("android.intent.action.MAIN");
            List<ResolveInfo> arrayList3 = new ArrayList<>();
            try {
                arrayList3 = m1312pq.queryIntentActivities(intent2, 32);
            } catch (Exception e2) {
            }
            if (arrayList3 == null) {
                arrayList3 = new ArrayList<>();
            }
            for (ResolveInfo resolveInfo2 : arrayList3) {
                hashMap4.put(resolveInfo2.activityInfo.applicationInfo.packageName, resolveInfo2.activityInfo);
            }
            Intent intent3 = new Intent("android.intent.action.MAIN");
            intent3.addCategory("android.intent.category.HOME");
            List<ResolveInfo> arrayList4 = new ArrayList<>();
            try {
                arrayList4 = m1312pq.queryIntentActivities(intent3, 32);
            } catch (Exception e3) {
            }
            for (ResolveInfo resolveInfo3 : arrayList4) {
                if (resolveInfo3.activityInfo != null) {
                    hashMap5.put(resolveInfo3.activityInfo.applicationInfo.packageName, 0);
                }
            }
            new ArrayList();
            try {
                if (m12119I(i, 4)) {
                    installedPackages = m1312pq.getInstalledPackages(4160);
                } else {
                    installedPackages = m1312pq.getInstalledPackages(64);
                }
                boolean m12119I = m12119I(i, 8);
                boolean z2 = !m12119I(i, 2);
                boolean z3 = !m12119I(i, 1);
                int i2 = 0;
                while (true) {
                    int i3 = i2;
                    if (i3 >= installedPackages.size()) {
                        break;
                    }
                    PackageInfo packageInfo = installedPackages.get(i3);
                    if (packageInfo.applicationInfo != null && packageInfo.applicationInfo.packageName != null && packageInfo.applicationInfo.sourceDir != null && !akf.m11304gG(packageInfo.packageName) && !akf.m11303gH(packageInfo.packageName)) {
                        if ((packageInfo.applicationInfo.flags & 1) == 0) {
                            if (z3) {
                                TcPkgInfo m13060a = TcPkgInfo.m13060a(m1312pq, packageInfo, 0, true, m12119I, (ActivityInfo) hashMap4.get(packageInfo.packageName));
                                if (hashMap3.get(packageInfo.applicationInfo.packageName) == null) {
                                    if (hashMap4.get(packageInfo.applicationInfo.packageName) != null) {
                                        m13060a.hasLauncherOrMain = 0;
                                    }
                                } else {
                                    m13060a.hasLauncherOrMain = 1;
                                }
                                arrayList.add(m13060a);
                            }
                        } else if (packageInfo.signatures != null && packageInfo.signatures.length != 0) {
                            if (hashMap5.get(packageInfo.applicationInfo.packageName) != null) {
                                TcPkgInfo m13060a2 = TcPkgInfo.m13060a(m1312pq, packageInfo, 0, true, m12119I, (ActivityInfo) hashMap4.get(packageInfo.packageName));
                                m13060a2.classify = 1;
                                m13060a2.flag = 1;
                                arrayList.add(m13060a2);
                            } else if (m12118a(context, packageInfo)) {
                                TcPkgInfo m13060a3 = TcPkgInfo.m13060a(m1312pq, packageInfo, 0, true, m12119I, (ActivityInfo) hashMap4.get(packageInfo.packageName));
                                if (hashMap3.get(packageInfo.applicationInfo.packageName) == null) {
                                    if (hashMap4.get(packageInfo.applicationInfo.packageName) != null) {
                                        m13060a3.hasLauncherOrMain = 0;
                                    }
                                } else {
                                    m13060a3.hasLauncherOrMain = 1;
                                }
                                m13060a3.classify = 1;
                                if (m13060a3.appUid <= 10000 || (m13060a3.packageName != null && m12106uX().contains(m13060a3.packageName))) {
                                    m13060a3.flag = 1;
                                } else {
                                    m13060a3.flag = 0;
                                }
                                int i4 = -1;
                                if (z2) {
                                    i4 = m12116a(m13060a3);
                                }
                                if (i4 != -1 && i4 != 0) {
                                    m13060a3.classify = i4;
                                }
                                arrayList.add(m13060a3);
                            } else {
                                String valueOf = String.valueOf(packageInfo.signatures[0].hashCode());
                                List list = (List) hashMap.get(valueOf);
                                if (list == null) {
                                    list = new ArrayList();
                                    hashMap.put(valueOf, list);
                                    try {
                                        hashMap2.put(valueOf, new C0801a(m12114a(packageInfo.signatures), TcPkgInfo.m13058c(packageInfo)));
                                    } catch (RuntimeException e4) {
                                    }
                                }
                                list.add(packageInfo);
                            }
                        }
                    }
                    i2 = i3 + 1;
                }
                List<String> m12115a = m12115a(hashMap, hashMap2);
                List<String> m12106uX = m12106uX();
                for (Map.Entry entry : hashMap.entrySet()) {
                    List list2 = (List) entry.getValue();
                    if (m12115a.contains((String) entry.getKey())) {
                        z = false;
                    } else if (list2.size() >= 30) {
                        z = false;
                    } else if (m12111b(list2, m12106uX)) {
                        z = false;
                    } else {
                        z = true;
                    }
                    m12117a(m1312pq, list2, z, z2, m12119I, hashMap2, arrayList, hashMap4);
                }
                return arrayList;
            } catch (Exception e5) {
                return null;
            }
        } catch (Exception e6) {
            return null;
        }
    }

    /* renamed from: I */
    private static boolean m12119I(int i, int i2) {
        return (i & i2) > 0;
    }

    /* renamed from: a */
    private static void m12117a(PackageManager packageManager, List<PackageInfo> list, boolean z, boolean z2, boolean z3, HashMap<String, C0801a> hashMap, List<TcPkgInfo> list2, HashMap<String, ActivityInfo> hashMap2) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < list.size()) {
                PackageInfo packageInfo = list.get(i2);
                C0801a c0801a = hashMap.get(String.valueOf(packageInfo.signatures[0].hashCode()));
                TcPkgInfo m13060a = TcPkgInfo.m13060a(packageManager, list.get(i2), 0, c0801a == null, z3, hashMap2.get(packageInfo.packageName));
                if (packageManager.getLaunchIntentForPackage(packageInfo.applicationInfo.packageName) == null) {
                    if (hashMap2.get(packageInfo.applicationInfo.packageName) != null) {
                        m13060a.hasLauncherOrMain = 0;
                    }
                } else {
                    m13060a.hasLauncherOrMain = 1;
                }
                if (c0801a != null) {
                    m13060a.pkgCertMd5 = c0801a.certMd5;
                }
                m13060a.classify = 2;
                if (z2) {
                    int m12116a = m12116a(m13060a);
                    if (m12116a != -1 && m12116a != 0) {
                        m13060a.classify = m12116a;
                    } else if (m13060a.packageName != null && m12114a(packageInfo.signatures).startsWith("google")) {
                        m13060a.classify = 8;
                    } else if (z) {
                        m13060a.classify = 0;
                    } else {
                        m13060a.classify = 2;
                    }
                } else if (m13060a.packageName != null && m12114a(packageInfo.signatures).startsWith("google")) {
                    m13060a.classify = 8;
                } else if (z) {
                    m13060a.classify = 0;
                } else {
                    m13060a.classify = 2;
                }
                list2.add(m13060a);
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    private static int m12116a(TcPkgInfo tcPkgInfo) {
        int i = -1;
        C2857dd m12124U = afc.m12122uT().m12124U(tcPkgInfo.packageName, tcPkgInfo.pkgCertMd5);
        if (m12124U != null) {
            i = m12124U.f2430mZ;
            if (!TextUtils.isEmpty(m12124U.f2433nc)) {
                try {
                    tcPkgInfo.description = m12124U.f2433nc.replaceAll("\r\n", "");
                } catch (Exception e) {
                }
            }
            tcPkgInfo.clearAction = m12124U.clearAction;
            tcPkgInfo.checkCacheFail = false;
        } else {
            tcPkgInfo.checkCacheFail = true;
        }
        return i;
    }

    /* renamed from: a */
    private static List<String> m12115a(HashMap<String, List<PackageInfo>> hashMap, HashMap<String, C0801a> hashMap2) {
        HashMap hashMap3 = new HashMap();
        for (Map.Entry<String, C0801a> entry : hashMap2.entrySet()) {
            hashMap3.put(entry.getKey(), entry.getValue().ahg);
        }
        return m12112b(hashMap, hashMap3);
    }

    /* renamed from: b */
    private static List<String> m12112b(HashMap<String, List<PackageInfo>> hashMap, HashMap<String, String> hashMap2) {
        boolean z;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList(hashMap.entrySet());
        Collections.sort(arrayList2, new Comparator<Map.Entry<String, List<PackageInfo>>>() { // from class: com.kingroot.kinguser.afd.1
            @Override // java.util.Comparator
            /* renamed from: a */
            public int compare(Map.Entry<String, List<PackageInfo>> entry, Map.Entry<String, List<PackageInfo>> entry2) {
                return entry2.getValue().size() - entry.getValue().size();
            }
        });
        List<String> m12107uW = m12107uW();
        if (arrayList2.size() > 0) {
            for (int i = 0; i < arrayList2.size(); i++) {
                if (i == 0) {
                    arrayList.add(((Map.Entry) arrayList2.get(i)).getKey());
                } else {
                    List list = (List) ((Map.Entry) arrayList2.get(i)).getValue();
                    int i2 = 0;
                    while (true) {
                        if (i2 >= list.size()) {
                            z = false;
                            break;
                        }
                        PackageInfo packageInfo = (PackageInfo) list.get(i2);
                        if (packageInfo.applicationInfo == null || packageInfo.applicationInfo.uid >= 10000) {
                            i2++;
                        } else {
                            z = true;
                            break;
                        }
                    }
                    if (z) {
                        arrayList.add(((Map.Entry) arrayList2.get(i)).getKey());
                    }
                }
            }
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                String m12108eX = m12108eX(hashMap2.get(arrayList.get(i3)));
                if (!m12107uW.contains(m12108eX)) {
                    m12107uW.add(m12108eX(m12108eX));
                }
            }
        }
        for (Map.Entry<String, String> entry : hashMap2.entrySet()) {
            String value = entry.getValue();
            int i4 = 0;
            while (true) {
                if (i4 >= m12107uW.size()) {
                    break;
                } else if (!value.contains(m12107uW.get(i4))) {
                    i4++;
                } else {
                    String key = entry.getKey();
                    if (!arrayList.contains(key)) {
                        arrayList.add(key);
                    }
                }
            }
        }
        return arrayList;
    }

    /* renamed from: eX */
    private static String m12108eX(String str) {
        int indexOf = str.indexOf(" ");
        if (indexOf > 0) {
            return str.substring(0, indexOf);
        }
        return str;
    }

    /* renamed from: a */
    private static String m12114a(Signature[] signatureArr) {
        int i;
        int indexOf;
        if (signatureArr != null) {
            try {
                if (signatureArr.length > 0) {
                    X509Certificate x509Certificate = (X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(signatureArr[0].toByteArray()));
                    if (x509Certificate == null) {
                        return "";
                    }
                    String principal = x509Certificate.getIssuerDN().toString();
                    if (principal == null || principal.length() <= 2) {
                        return "";
                    }
                    int indexOf2 = principal.indexOf("O=");
                    if (indexOf2 >= 0 && (indexOf = principal.indexOf(",", (i = indexOf2 + 2))) > i) {
                        return principal.substring(i, indexOf).toLowerCase(Locale.US);
                    }
                    return "";
                }
            } catch (CertificateException e) {
                return "";
            }
        }
        return "";
    }

    /* renamed from: uW */
    private static List<String> m12107uW() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("google");
        arrayList.add("android");
        arrayList.add(Build.MANUFACTURER.toLowerCase(Locale.US));
        return arrayList;
    }

    /* renamed from: b */
    private static boolean m12111b(List<PackageInfo> list, List<String> list2) {
        for (int i = 0; i < list.size(); i++) {
            if (list2.contains(list.get(i).packageName)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: uX */
    private static List<String> m12106uX() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("android");
        arrayList.add("com.android.launcher");
        arrayList.add("com.android.systemui");
        arrayList.add("com.android.phone");
        arrayList.add("com.android.contacts");
        arrayList.add("com.android.nfc");
        arrayList.add("com.android.launcher");
        arrayList.add("com.android.mms");
        arrayList.add("com.android.bluetooth");
        arrayList.add("com.android.settings");
        arrayList.add("com.android.packageinstaller");
        arrayList.add("com.android.stk");
        arrayList.add("com.google.android.googlequicksearchbox");
        return arrayList;
    }

    /* renamed from: a */
    private static boolean m12118a(Context context, PackageInfo packageInfo) {
        try {
            PackageInfo packageInfo2 = C3952zh.m1312pq().getPackageInfo("android", 64);
            if (packageInfo == null || packageInfo.signatures == null) {
                return false;
            }
            return packageInfo2.signatures[0].equals(packageInfo.signatures[0]);
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    /* renamed from: cP */
    public static String m12110cP(int i) {
        String[] stringArray = C3953zi.m1311pr().getStringArray(R.array.soft_clear_type_names);
        String str = null;
        if (stringArray != null && i >= 0 && i < stringArray.length) {
            str = stringArray[i];
        }
        return str != null ? str : "";
    }

    /* renamed from: aD */
    public static String m12113aD(Context context) {
        String charSequence;
        try {
            String str = "" + Settings.Secure.getString(context.getContentResolver(), "default_input_method");
            int lastIndexOf = str.lastIndexOf("/");
            charSequence = str.subSequence(0, lastIndexOf >= 0 ? lastIndexOf : 0).toString();
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return !TextUtils.isEmpty(charSequence) ? charSequence : "";
    }
}
