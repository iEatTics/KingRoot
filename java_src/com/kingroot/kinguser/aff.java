package com.kingroot.kinguser;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Environment;
import android.text.TextUtils;
import com.kingroot.common.utils.system.VTCmdResult;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class aff {
    public static final String ahn = AbstractC3976zt.get("c7");
    public static boolean aho = false;

    /* renamed from: d */
    public static int m12094d(ApplicationInfo applicationInfo) {
        return m12096V(applicationInfo.packageName, applicationInfo.publicSourceDir);
    }

    /* renamed from: eY */
    public static int m12093eY(String str) {
        if (m12090fb(str)) {
            try {
                PackageInfo packageInfo = C3952zh.m1312pq().getPackageInfo(str, 0);
                if (packageInfo.applicationInfo == null) {
                    return 11;
                }
                return m12096V(str, packageInfo.applicationInfo.publicSourceDir);
            } catch (PackageManager.NameNotFoundException e) {
                return 11;
            }
        }
        return -11;
    }

    /* renamed from: V */
    public static int m12096V(String str, String str2) {
        boolean z;
        int i = 0;
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if (TextUtils.isEmpty(str2)) {
            PackageInfo packageInfo = null;
            try {
                packageInfo = C3952zh.m1312pq().getPackageInfo(str, 0);
            } catch (PackageManager.NameNotFoundException e) {
            }
            if (packageInfo == null) {
                return -1;
            }
            str2 = packageInfo.applicationInfo.sourceDir;
        }
        m12085uQ();
        abc m12845qK = abc.m12845qK();
        if (m12845qK.isRootPermition(true)) {
            String str3 = ((Object) str2.subSequence(0, str2.length() - 3)) + "odex";
            String str4 = Environment.getDataDirectory() + "/data/" + str;
            ain m11609xW = ain.m11609xW();
            if (m11609xW.m11612ga(str)) {
                m11609xW.m11611gb(str);
            }
            ArrayList arrayList = new ArrayList(5);
            arrayList.add(aas.f1256XR);
            arrayList.add(ahn + str2);
            arrayList.add(ahn + str3);
            arrayList.add("pm uninstall " + str);
            arrayList.add(ahn + "-r " + str4);
            arrayList.add(aas.f1257XS);
            List<VTCmdResult> runRootCommands = m12845qK.runRootCommands(arrayList);
            if (runRootCommands != null && runRootCommands.size() == arrayList.size()) {
                int i2 = 0;
                while (true) {
                    if (i2 >= runRootCommands.size()) {
                        z = true;
                        break;
                    }
                    if (!runRootCommands.get(i2).success()) {
                        String str5 = runRootCommands.get(i2).mCmdFlag;
                        if (!str5.startsWith(ahn) && !str5.startsWith(aas.f1257XS)) {
                            z = false;
                            break;
                        }
                    }
                    i2++;
                }
            } else {
                z = false;
            }
            if (!z) {
                i = -1;
            }
        } else {
            i = -2;
        }
        m12086uP();
        return i;
    }

    /* renamed from: eZ */
    public static int m12092eZ(String str) {
        int i;
        m12085uQ();
        abc m12845qK = abc.m12845qK();
        if (m12845qK.isRootPermition(true)) {
            i = m12845qK.m12846el(new StringBuilder().append("pm disable ").append(str).toString()).success() ? 0 : -1;
        } else {
            i = -2;
        }
        m12086uP();
        return i;
    }

    /* renamed from: fa */
    public static int m12091fa(String str) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        int i = 0;
        m12085uQ();
        abc m12845qK = abc.m12845qK();
        if (m12845qK.isRootPermition(true)) {
            C3952zh c3952zh = null;
            try {
                c3952zh = C3952zh.m1312pq();
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (aho) {
                z = false;
                z2 = true;
            } else {
                z2 = m12845qK.m12846el("pm enable " + str).success();
                if (c3952zh != null) {
                    try {
                        z = c3952zh.getApplicationEnabledSetting(str) == 1;
                    } catch (IllegalArgumentException e2) {
                        z = false;
                    }
                } else {
                    z = false;
                }
            }
            if (!z2 || z) {
                z3 = z;
                z4 = z2;
            } else {
                boolean success = abc.m12845qK().m12846el("pm enable " + str).success();
                if (c3952zh != null) {
                    try {
                        z3 = c3952zh.getApplicationEnabledSetting(str) == 1;
                    } catch (IllegalArgumentException e3) {
                        z3 = z;
                    }
                } else {
                    z3 = z;
                }
                if (z3) {
                    aho = true;
                }
                z4 = success;
            }
            if (!(z3 & z4)) {
                i = -1;
            }
        } else {
            i = -2;
        }
        m12086uP();
        return i;
    }

    /* renamed from: fb */
    public static boolean m12090fb(String str) {
        boolean z = false;
        if (!TextUtils.isEmpty(str)) {
            m12085uQ();
            String str2 = Environment.getDataDirectory() + "/data/" + str;
            abc m12845qK = abc.m12845qK();
            if (m12845qK.isRootPermition(true)) {
                ain m11609xW = ain.m11609xW();
                if (m11609xW.m11612ga(str)) {
                    m11609xW.m11611gb(str);
                }
                ArrayList arrayList = new ArrayList(5);
                arrayList.add("pm uninstall " + str);
                arrayList.add(ahn + "-r " + str2);
                arrayList.add(ahn + "-r /data/app-lib/" + str + "-*");
                List<VTCmdResult> runRootCommands = m12845qK.runRootCommands(arrayList);
                if (runRootCommands != null && runRootCommands.size() == arrayList.size()) {
                    int i = 0;
                    while (true) {
                        if (i >= runRootCommands.size()) {
                            break;
                        }
                        if (runRootCommands.get(i).success()) {
                            String str3 = runRootCommands.get(i).mCmdFlag;
                            String str4 = runRootCommands.get(i).mStdOut;
                            if (str3.startsWith("pm") && str4.contains("Success")) {
                                z = true;
                                break;
                            }
                        }
                        i++;
                    }
                }
            }
            m12086uP();
        }
        return z;
    }

    /* renamed from: uP */
    private static void m12086uP() {
        C3956zk.m1301dw("wk_sl");
    }

    /* renamed from: uQ */
    private static void m12085uQ() {
        C3956zk.m1300y(536870913, "wk_sl");
    }

    /* renamed from: a */
    public static void m12095a(String str, Activity activity, int i) {
        Intent intent = new Intent("android.intent.action.DELETE", Uri.parse("package:" + str));
        if (i >= 0) {
            activity.startActivityForResult(intent, i);
        } else {
            activity.startActivity(intent);
        }
    }

    /* renamed from: fc */
    public static boolean m12089fc(String str) {
        C3952zh m1312pq = C3952zh.m1312pq();
        if (m1312pq != null) {
            try {
                m1312pq.getPackageInfo(str, 0);
                return false;
            } catch (PackageManager.NameNotFoundException e) {
                return e.getMessage() != null;
            }
        }
        return false;
    }

    /* renamed from: fd */
    public static boolean m12088fd(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            C3952zh m1312pq = C3952zh.m1312pq();
            if (m1312pq != null) {
                return m1312pq.getApplicationEnabledSetting(str) == 2;
            }
            return false;
        } catch (Throwable th) {
            return false;
        }
    }

    /* renamed from: fe */
    public static boolean m12087fe(String str) {
        try {
            return (C3952zh.m1312pq().getPackageInfo(str, 0).applicationInfo.flags & 1) == 0;
        } catch (Exception e) {
            return false;
        }
    }
}
