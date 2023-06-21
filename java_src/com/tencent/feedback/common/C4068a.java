package com.tencent.feedback.common;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Process;
import android.util.Log;
import com.tencent.feedback.proguard.C4119a;
import java.io.FileReader;
import java.util.List;
/* renamed from: com.tencent.feedback.common.a */
/* loaded from: classes.dex */
public final class C4068a {

    /* renamed from: a */
    private static String f4411a = null;

    /* renamed from: b */
    private static Boolean f4412b = null;

    /* renamed from: c */
    private static Boolean f4413c = null;

    /* renamed from: d */
    private static boolean f4414d = false;

    /* renamed from: e */
    private static ActivityManager f4415e;

    /* renamed from: a */
    public static String m1128a(Context context) {
        if (context == null) {
            return "";
        }
        try {
            Object obj = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.get("APPKEY_DENGTA");
            if (obj != null) {
                return obj.toString();
            }
        } catch (Throwable th) {
            C4073e.m1017a("rqdp{  no appkey !!}", new Object[0]);
        }
        return "";
    }

    /* renamed from: b */
    public static String m1126b(Context context) {
        if (context == null) {
            return null;
        }
        return context.getPackageName();
    }

    /* renamed from: c */
    public static synchronized String m1124c(Context context) {
        String packageName;
        String str;
        int i = 0;
        synchronized (C4068a.class) {
            if (context == null) {
                packageName = null;
            } else {
                try {
                    packageName = context.getPackageName();
                } catch (Throwable th) {
                    if (!C4073e.m1016a(th)) {
                        th.printStackTrace();
                    }
                    str = null;
                }
            }
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(packageName, 0);
            String str2 = packageInfo.versionName;
            int i2 = packageInfo.versionCode;
            if (str2 == null || str2.trim().length() <= 0) {
                str = "";
            } else {
                for (char c : str2.toCharArray()) {
                    if (c == '.') {
                        i++;
                    }
                }
                str = i < 3 ? str2 + "." + i2 : str2;
                C4073e.m1017a("rqdp{  version:} %s", str);
            }
        }
        return str;
    }

    /* renamed from: d */
    public static String m1122d(Context context) {
        C4073e.m1015b("rqdp{AppInfo.getUUID() Start}", new Object[0]);
        if (context == null) {
            C4073e.m1012d("context == null", new Object[0]);
            return "";
        }
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo == null || applicationInfo.metaData == null) {
                C4073e.m1012d("appInfo == null || appInfo.metaData == null", new Object[0]);
                return "";
            }
            Object obj = applicationInfo.metaData.get("com.tencent.rdm.uuid");
            String obj2 = obj != null ? obj.toString() : "";
            Log.d("rqdp{ RDMUUID }:%s", obj2);
            return obj2;
        } catch (Throwable th) {
            if (!C4073e.m1016a(th)) {
                th.printStackTrace();
            }
            C4073e.m1012d(th.toString(), new Object[0]);
            return "";
        }
    }

    /* renamed from: e */
    public static synchronized boolean m1121e(Context context) {
        boolean z = false;
        synchronized (C4068a.class) {
            C4073e.m1015b("rqdp{  Read Log Permittion! start}", new Object[0]);
            if (context != null) {
                if (f4412b == null) {
                    f4412b = Boolean.valueOf(m1123c(context, "android.permission.READ_LOGS"));
                }
                z = f4412b.booleanValue();
            }
        }
        return z;
    }

    /* renamed from: f */
    public static synchronized boolean m1120f(Context context) {
        boolean z = false;
        synchronized (C4068a.class) {
            C4073e.m1015b("rqdp{  Read write Permittion! start}", new Object[0]);
            if (context != null) {
                if (f4413c == null) {
                    f4413c = Boolean.valueOf(m1123c(context, "android.permission.WRITE_EXTERNAL_STORAGE"));
                }
                z = f4413c.booleanValue();
            }
        }
        return z;
    }

    /* renamed from: g */
    public static boolean m1119g(Context context) {
        return m1125b(context, context.getPackageName());
    }

    /* renamed from: c */
    private static boolean m1123c(Context context, String str) {
        C4073e.m1015b("rqdp{  AppInfo.isContainReadLogPermission() start}", new Object[0]);
        if (context == null || str == null || str.trim().length() <= 0) {
            return false;
        }
        try {
            String[] strArr = context.getPackageManager().getPackageInfo(context.getPackageName(), 4096).requestedPermissions;
            if (strArr != null) {
                for (String str2 : strArr) {
                    if (str.equals(str2)) {
                        C4073e.m1015b("rqdp{  AppInfo.isContainReadLogPermission() end}", new Object[0]);
                        return true;
                    }
                }
            }
            C4073e.m1015b("rqdp{  AppInfo.isContainReadLogPermission() end}", new Object[0]);
            return false;
        } catch (Throwable th) {
            try {
                if (!C4073e.m1016a(th)) {
                    th.printStackTrace();
                }
                C4073e.m1015b("rqdp{  AppInfo.isContainReadLogPermission() end}", new Object[0]);
                return false;
            } catch (Throwable th2) {
                C4073e.m1015b("rqdp{  AppInfo.isContainReadLogPermission() end}", new Object[0]);
                throw th2;
            }
        }
    }

    /* renamed from: a */
    public static String m1127a(Context context, String str) {
        if (context == null || str == null) {
            return null;
        }
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(str, 0);
            if (applicationInfo != null) {
                return applicationInfo.sourceDir;
            }
            return null;
        } catch (Throwable th) {
            if (C4073e.m1016a(th)) {
                return null;
            }
            th.printStackTrace();
            return null;
        }
    }

    /* renamed from: h */
    public static String m1118h(Context context) {
        if (context == null) {
            return null;
        }
        String m1127a = m1127a(context, context.getPackageName());
        if (m1127a == null) {
            C4073e.m1012d("rqdp{  No found the apk file on the device,please check it!}", new Object[0]);
            return null;
        }
        return C4119a.m732b(m1127a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x0070 -> B:31:0x0011). Please submit an issue!!! */
    /* renamed from: b */
    public static boolean m1125b(Context context, String str) {
        boolean z;
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        int i = 1;
        i = 1;
        i = 1;
        i = 1;
        if (context == null || str == null || str.trim().length() <= 0) {
            return false;
        }
        try {
            runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        } catch (Throwable th) {
            if (!C4073e.m1016a(th)) {
                th.printStackTrace();
            }
        }
        if (runningAppProcesses == null || runningAppProcesses.size() == 0) {
            C4073e.m1015b("rqdp{  no running proc}", new Object[0]);
            z = false;
        } else {
            loop0: for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (runningAppProcessInfo.importance == 100) {
                    for (String str2 : runningAppProcessInfo.pkgList) {
                        if (str.equals(str2)) {
                            C4073e.m1015b("rqdp{  current seen pn:}%s", runningAppProcessInfo.processName);
                            z = true;
                            break loop0;
                        }
                    }
                    continue;
                }
            }
            Object[] objArr = new Object[i];
            objArr[0] = str;
            C4073e.m1015b("rqdp{  current unseen pn:}%s", objArr);
            z = false;
            i = objArr;
        }
        return z;
    }

    /* renamed from: a */
    public static String m1129a(int i) {
        FileReader fileReader;
        String valueOf;
        int i2 = 0;
        try {
            fileReader = new FileReader("/proc/" + i + "/cmdline");
        } catch (Throwable th) {
            th = th;
            fileReader = null;
        }
        try {
            char[] cArr = new char[128];
            fileReader.read(cArr);
            while (i2 < cArr.length && cArr[i2] != 0) {
                i2++;
            }
            valueOf = new String(cArr).substring(0, i2);
            try {
                fileReader.close();
            } catch (Throwable th2) {
            }
        } catch (Throwable th3) {
            th = th3;
            try {
                if (!C4073e.m1016a(th)) {
                    th.printStackTrace();
                }
                valueOf = String.valueOf(i);
                return valueOf;
            } finally {
                if (fileReader != null) {
                    try {
                        fileReader.close();
                    } catch (Throwable th4) {
                    }
                }
            }
        }
        return valueOf;
    }

    /* renamed from: i */
    public static String m1117i(Context context) {
        int i = -1;
        try {
            i = Process.myPid();
            return m1129a(i);
        } catch (Throwable th) {
            if (!C4073e.m1016a(th)) {
                th.printStackTrace();
            }
            return i + ":" + th.getClass().getName() + ":" + th.getMessage();
        }
    }

    /* renamed from: j */
    public static boolean m1116j(Context context) {
        if (context == null) {
            return false;
        }
        if (f4415e == null) {
            f4415e = (ActivityManager) context.getSystemService("activity");
        }
        try {
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            f4415e.getMemoryInfo(memoryInfo);
            return memoryInfo.lowMemory;
        } catch (Throwable th) {
            if (!C4073e.m1016a(th)) {
                th.printStackTrace();
            }
            return false;
        }
    }
}
