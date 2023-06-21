package com.kingroot.kinguser;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class byg {
    /* renamed from: ci */
    public static ArrayList<byl> m5173ci(Context context) {
        ArrayList<byl> arrayList = new ArrayList<>();
        int m5170d = byx.m5170d(byx.m5170d(0, m5172cn(context), 0), m5171co(context), 1);
        if (m5170d > 0) {
            byl bylVar = new byl();
            bylVar.bUx = "turingmm_xposed";
            bylVar.bUy = String.valueOf(m5170d);
            arrayList.add(bylVar);
        }
        return arrayList;
    }

    /* renamed from: cn */
    private static boolean m5172cn(Context context) {
        List<ApplicationInfo> installedApplications;
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null && (installedApplications = packageManager.getInstalledApplications(128)) != null) {
            String m5296k = bwo.m5296k(bwo.bRX);
            for (ApplicationInfo applicationInfo : installedApplications) {
                if (applicationInfo != null && m5296k.equals(applicationInfo.packageName)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    /* renamed from: co */
    private static boolean m5171co(Context context) {
        String[] split;
        try {
            String str = new String(byy.m5164cy(bwo.m5296k(bwo.bRZ)));
            if (TextUtils.isEmpty(str) || (split = str.split("\\n")) == null || split.length == 0) {
                return false;
            }
            String packageName = context.getPackageName();
            for (String str2 : split) {
                if (m5174bc(packageName, str2)) {
                    return true;
                }
            }
            return false;
        } catch (IOException e) {
            return false;
        }
    }

    /* renamed from: bc */
    private static boolean m5174bc(String str, String str2) {
        int indexOf;
        if (str2 == null || (indexOf = str2.indexOf(47)) == -1) {
            return false;
        }
        String trim = str2.substring(indexOf).trim();
        if (!trim.startsWith("/data/") || trim.startsWith("/data/data/" + str + "/")) {
            return false;
        }
        boolean endsWith = trim.endsWith(".so");
        return (endsWith || (!endsWith && trim.endsWith(".jar"))) && str2.contains(bwo.m5296k(bwo.bRY));
    }
}
