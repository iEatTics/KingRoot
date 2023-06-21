package com.kingroot.kinguser;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.support.annotation.Nullable;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes.dex */
public class bgh {
    private static final Pattern boL = Pattern.compile("^/data/data/([\\w\\-\\.]+)/");

    /* renamed from: a */
    public static String m7116a(Context context, int i, boolean z) {
        String str = "(Unknown)";
        try {
            str = C3953zi.m1311pr().getString(17039374);
        } catch (Exception e) {
        }
        try {
            C3952zh m1312pq = C3952zh.m1312pq();
            String[] packagesForUid = m1312pq.getPackagesForUid(i);
            if (packagesForUid != null) {
                if (packagesForUid.length == 1) {
                    try {
                        str = m1312pq.getApplicationLabel(m1312pq.getApplicationInfo(packagesForUid[0], 0)).toString();
                    } catch (PackageManager.NameNotFoundException e2) {
                    }
                } else if (packagesForUid.length > 1) {
                    str = "Multiple Packages";
                }
            }
            if (z) {
                str = str + " (" + i + ")";
                return str;
            }
            return str;
        } catch (Exception e3) {
            return str;
        }
    }

    /* renamed from: m */
    public static String m7113m(Context context, int i) {
        String str = "com.unknown.package";
        try {
            String[] packagesForUid = C3952zh.m1312pq().getPackagesForUid(i);
            if (packagesForUid != null) {
                if (packagesForUid.length == 1) {
                    str = packagesForUid[0];
                } else if (packagesForUid.length > 1) {
                    str = "Multiple packages";
                }
            }
        } catch (Exception e) {
        }
        return str;
    }

    /* renamed from: jf */
    public static String m7115jf(String str) {
        C3952zh m1312pq = C3952zh.m1312pq();
        try {
            ApplicationInfo applicationInfo = m1312pq.getApplicationInfo(str, 0);
            if (applicationInfo != null) {
                return m1312pq.getApplicationLabel(applicationInfo).toString();
            }
        } catch (PackageManager.NameNotFoundException e) {
        }
        return null;
    }

    @Nullable
    /* renamed from: lm */
    public static String m7114lm(String str) {
        try {
            Matcher matcher = boL.matcher(str);
            if (!matcher.find() || matcher.groupCount() <= 0 || C3952zh.m1312pq().getApplicationInfo(matcher.group(1), 0) == null) {
                return null;
            }
            return matcher.group(1);
        } catch (Throwable th) {
            return null;
        }
    }
}
