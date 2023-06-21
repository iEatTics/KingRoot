package com.tencent.feedback.common;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.p003os.Environmenu;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import com.tencent.feedback.proguard.C4119a;
import java.util.Locale;
/* renamed from: com.tencent.feedback.common.d */
/* loaded from: classes.dex */
public final class C4072d {

    /* renamed from: a */
    private static C4072d f4469a;

    /* renamed from: b */
    private Context f4470b;

    /* renamed from: a */
    public static synchronized C4072d m1041a(Context context) {
        C4072d c4072d;
        Context applicationContext;
        synchronized (C4072d.class) {
            if (f4469a == null && context != null) {
                if (context != null && (applicationContext = context.getApplicationContext()) != null) {
                    context = applicationContext;
                }
                f4469a = new C4072d(context);
            }
            c4072d = f4469a;
        }
        return c4072d;
    }

    private C4072d(Context context) {
        Context applicationContext;
        if (context != null && (applicationContext = context.getApplicationContext()) != null) {
            context = applicationContext;
        }
        this.f4470b = context;
    }

    /* renamed from: a */
    public static String m1042a() {
        try {
            return Build.MODEL;
        } catch (Throwable th) {
            C4073e.m1012d("rqdp{  getDeviceName error}", new Object[0]);
            if (!C4073e.m1016a(th)) {
                th.printStackTrace();
            }
            return "fail";
        }
    }

    /* renamed from: b */
    public static String m1040b() {
        try {
            return Build.VERSION.RELEASE;
        } catch (Throwable th) {
            C4073e.m1012d("rqdp{  getVersion error}", new Object[0]);
            if (!C4073e.m1016a(th)) {
                th.printStackTrace();
            }
            return "fail";
        }
    }

    /* renamed from: c */
    public static String m1038c() {
        try {
            return Build.VERSION.SDK;
        } catch (Throwable th) {
            C4073e.m1012d("rqdp{  getApiLevel error}", new Object[0]);
            if (!C4073e.m1016a(th)) {
                th.printStackTrace();
            }
            return "fail";
        }
    }

    /* renamed from: b */
    public static String m1039b(Context context) {
        String str;
        Throwable th;
        String str2 = "fail";
        if (context == null) {
            C4073e.m1012d("rqdp{  getImei but context == null!}", new Object[0]);
            return "fail";
        }
        try {
            str2 = ((TelephonyManager) context.getSystemService("phone")).getDeviceId();
            if (str2 == null) {
                str = "null";
            } else {
                str = str2.toLowerCase();
            }
        } catch (Throwable th2) {
            str = str2;
            th = th2;
        }
        try {
            C4073e.m1017a("rqdp{  IMEI:}" + str, new Object[0]);
            return str;
        } catch (Throwable th3) {
            th = th3;
            C4073e.m1012d("rqdp{  getImei error!}", new Object[0]);
            if (!C4073e.m1016a(th)) {
                th.printStackTrace();
                return str;
            }
            return str;
        }
    }

    /* renamed from: c */
    public static String m1037c(Context context) {
        String str = "fail";
        if (context == null) {
            C4073e.m1012d("rqdp{  getImsi but context == null!}", new Object[0]);
            return "fail";
        }
        try {
            str = ((TelephonyManager) context.getSystemService("phone")).getSubscriberId();
            if (str == null) {
                return "null";
            }
            return str.toLowerCase();
        } catch (Throwable th) {
            String str2 = str;
            C4073e.m1012d("rqdp{  getImsi error!}", new Object[0]);
            if (!C4073e.m1016a(th)) {
                th.printStackTrace();
                return str2;
            }
            return str2;
        }
    }

    /* renamed from: d */
    public static String m1035d(Context context) {
        String str = "fail";
        if (context == null) {
            C4073e.m1012d("rqdp{  getAndroidId but context == null!}", new Object[0]);
            return "fail";
        }
        try {
            String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
            if (string == null) {
                return "null";
            }
            try {
                return string.toLowerCase();
            } catch (Throwable th) {
                str = string;
                th = th;
                C4073e.m1012d("rqdp{  getAndroidId error!}", new Object[0]);
                if (!C4073e.m1016a(th)) {
                    th.printStackTrace();
                    return str;
                }
                return str;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* renamed from: e */
    public static String m1033e(Context context) {
        String str = "fail";
        if (context == null) {
            C4073e.m1012d("rqdp{  getMacAddress but context == null!}", new Object[0]);
            return "fail";
        }
        try {
            str = ((WifiManager) context.getSystemService("wifi")).getConnectionInfo().getMacAddress();
            if (str == null) {
                return "null";
            }
            return str.toLowerCase();
        } catch (Throwable th) {
            String str2 = str;
            if (!C4073e.m1016a(th)) {
                th.printStackTrace();
            }
            C4073e.m1012d("rqdp{  getMacAddress error!}", new Object[0]);
            return str2;
        }
    }

    /* renamed from: d */
    public static String m1036d() {
        String str = null;
        try {
            str = Build.CPU_ABI;
        } catch (Throwable th) {
            C4073e.m1013c("rqdp{  ge cuabi fa!}", new Object[0]);
            if (!C4073e.m1016a(th)) {
                th.printStackTrace();
            }
        }
        if (str == null || str.trim().length() == 0) {
            str = System.getProperty("os.arch");
        }
        return str == null ? "fail" : str;
    }

    /* renamed from: e */
    public static long m1034e() {
        try {
            StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
            return statFs.getBlockCount() * statFs.getBlockSize();
        } catch (Throwable th) {
            C4073e.m1012d("rqdp{  getDisplayMetrics error!}", new Object[0]);
            if (C4073e.m1016a(th)) {
                return -1L;
            }
            th.printStackTrace();
            return -1L;
        }
    }

    /* renamed from: f */
    public static long m1032f() {
        try {
            StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
            return statFs.getAvailableBlocks() * statFs.getBlockSize();
        } catch (Throwable th) {
            C4073e.m1012d("rqdp{  getDisplayMetrics error!}", new Object[0]);
            if (C4073e.m1016a(th)) {
                return -1L;
            }
            th.printStackTrace();
            return -1L;
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
    /* renamed from: g */
    public static long m1030g() {
        /*
            r1 = 0
            java.lang.String r0 = "/proc/meminfo"
            java.io.FileReader r3 = new java.io.FileReader     // Catch: java.lang.Throwable -> L51
            r3.<init>(r0)     // Catch: java.lang.Throwable -> L51
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> Lb4
            r0 = 2048(0x800, float:2.87E-42)
            r2.<init>(r3, r0)     // Catch: java.lang.Throwable -> Lb4
            java.lang.String r0 = r2.readLine()     // Catch: java.lang.Throwable -> Lb7
            java.lang.String r1 = ":\\s+"
            r4 = 2
            java.lang.String[] r0 = r0.split(r1, r4)     // Catch: java.lang.Throwable -> Lb7
            r1 = 1
            r0 = r0[r1]     // Catch: java.lang.Throwable -> Lb7
            java.lang.String r0 = r0.toLowerCase()     // Catch: java.lang.Throwable -> Lb7
            java.lang.String r1 = "kb"
            java.lang.String r4 = ""
            java.lang.String r0 = r0.replace(r1, r4)     // Catch: java.lang.Throwable -> Lb7
            java.lang.String r0 = r0.trim()     // Catch: java.lang.Throwable -> Lb7
            long r0 = java.lang.Long.parseLong(r0)     // Catch: java.lang.Throwable -> Lb7
            r4 = 1000(0x3e8, double:4.94E-321)
            long r0 = r0 * r4
            r2.close()     // Catch: java.io.IOException -> L3b
        L37:
            r3.close()     // Catch: java.io.IOException -> L46
        L3a:
            return r0
        L3b:
            r2 = move-exception
            boolean r4 = com.tencent.feedback.common.C4073e.m1016a(r2)
            if (r4 != 0) goto L37
            r2.printStackTrace()
            goto L37
        L46:
            r2 = move-exception
            boolean r3 = com.tencent.feedback.common.C4073e.m1016a(r2)
            if (r3 != 0) goto L3a
            r2.printStackTrace()
            goto L3a
        L51:
            r0 = move-exception
            r2 = r1
        L53:
            java.lang.String r3 = "rqdp{  getFreeMem error!}"
            r4 = 0
            java.lang.Object[] r4 = new java.lang.Object[r4]     // Catch: java.lang.Throwable -> Lb0
            com.tencent.feedback.common.C4073e.m1012d(r3, r4)     // Catch: java.lang.Throwable -> Lb0
            boolean r3 = com.tencent.feedback.common.C4073e.m1016a(r0)     // Catch: java.lang.Throwable -> Lb0
            if (r3 != 0) goto L64
            r0.printStackTrace()     // Catch: java.lang.Throwable -> Lb0
        L64:
            if (r1 == 0) goto L69
            r1.close()     // Catch: java.io.IOException -> L71
        L69:
            if (r2 == 0) goto L6e
            r2.close()     // Catch: java.io.IOException -> L7c
        L6e:
            r0 = -2
            goto L3a
        L71:
            r0 = move-exception
            boolean r1 = com.tencent.feedback.common.C4073e.m1016a(r0)
            if (r1 != 0) goto L69
            r0.printStackTrace()
            goto L69
        L7c:
            r0 = move-exception
            boolean r1 = com.tencent.feedback.common.C4073e.m1016a(r0)
            if (r1 != 0) goto L6e
            r0.printStackTrace()
            goto L6e
        L87:
            r0 = move-exception
            r2 = r1
            r3 = r1
        L8a:
            if (r2 == 0) goto L8f
            r2.close()     // Catch: java.io.IOException -> L95
        L8f:
            if (r3 == 0) goto L94
            r3.close()     // Catch: java.io.IOException -> La0
        L94:
            throw r0
        L95:
            r1 = move-exception
            boolean r2 = com.tencent.feedback.common.C4073e.m1016a(r1)
            if (r2 != 0) goto L8f
            r1.printStackTrace()
            goto L8f
        La0:
            r1 = move-exception
            boolean r2 = com.tencent.feedback.common.C4073e.m1016a(r1)
            if (r2 != 0) goto L94
            r1.printStackTrace()
            goto L94
        Lab:
            r0 = move-exception
            r2 = r1
            goto L8a
        Lae:
            r0 = move-exception
            goto L8a
        Lb0:
            r0 = move-exception
            r3 = r2
            r2 = r1
            goto L8a
        Lb4:
            r0 = move-exception
            r2 = r3
            goto L53
        Lb7:
            r0 = move-exception
            r1 = r2
            r2 = r3
            goto L53
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.feedback.common.C4072d.m1030g():long");
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
        	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:35)
        	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:202)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:45)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    /* renamed from: h */
    public static long m1029h() {
        /*
            r1 = 0
            java.lang.String r0 = "/proc/meminfo"
            java.io.FileReader r3 = new java.io.FileReader     // Catch: java.lang.Throwable -> L54
            r3.<init>(r0)     // Catch: java.lang.Throwable -> L54
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> Lb7
            r0 = 2048(0x800, float:2.87E-42)
            r2.<init>(r3, r0)     // Catch: java.lang.Throwable -> Lb7
            r2.readLine()     // Catch: java.lang.Throwable -> Lba
            java.lang.String r0 = r2.readLine()     // Catch: java.lang.Throwable -> Lba
            java.lang.String r1 = ":\\s+"
            r4 = 2
            java.lang.String[] r0 = r0.split(r1, r4)     // Catch: java.lang.Throwable -> Lba
            r1 = 1
            r0 = r0[r1]     // Catch: java.lang.Throwable -> Lba
            java.lang.String r0 = r0.toLowerCase()     // Catch: java.lang.Throwable -> Lba
            java.lang.String r1 = "kb"
            java.lang.String r4 = ""
            java.lang.String r0 = r0.replace(r1, r4)     // Catch: java.lang.Throwable -> Lba
            java.lang.String r0 = r0.trim()     // Catch: java.lang.Throwable -> Lba
            long r0 = java.lang.Long.parseLong(r0)     // Catch: java.lang.Throwable -> Lba
            r4 = 1000(0x3e8, double:4.94E-321)
            long r0 = r0 * r4
            r2.close()     // Catch: java.io.IOException -> L3e
        L3a:
            r3.close()     // Catch: java.io.IOException -> L49
        L3d:
            return r0
        L3e:
            r2 = move-exception
            boolean r4 = com.tencent.feedback.common.C4073e.m1016a(r2)
            if (r4 != 0) goto L3a
            r2.printStackTrace()
            goto L3a
        L49:
            r2 = move-exception
            boolean r3 = com.tencent.feedback.common.C4073e.m1016a(r2)
            if (r3 != 0) goto L3d
            r2.printStackTrace()
            goto L3d
        L54:
            r0 = move-exception
            r2 = r1
        L56:
            java.lang.String r3 = "rqdp{  getFreeMem error!}"
            r4 = 0
            java.lang.Object[] r4 = new java.lang.Object[r4]     // Catch: java.lang.Throwable -> Lb3
            com.tencent.feedback.common.C4073e.m1012d(r3, r4)     // Catch: java.lang.Throwable -> Lb3
            boolean r3 = com.tencent.feedback.common.C4073e.m1016a(r0)     // Catch: java.lang.Throwable -> Lb3
            if (r3 != 0) goto L67
            r0.printStackTrace()     // Catch: java.lang.Throwable -> Lb3
        L67:
            if (r1 == 0) goto L6c
            r1.close()     // Catch: java.io.IOException -> L74
        L6c:
            if (r2 == 0) goto L71
            r2.close()     // Catch: java.io.IOException -> L7f
        L71:
            r0 = -2
            goto L3d
        L74:
            r0 = move-exception
            boolean r1 = com.tencent.feedback.common.C4073e.m1016a(r0)
            if (r1 != 0) goto L6c
            r0.printStackTrace()
            goto L6c
        L7f:
            r0 = move-exception
            boolean r1 = com.tencent.feedback.common.C4073e.m1016a(r0)
            if (r1 != 0) goto L71
            r0.printStackTrace()
            goto L71
        L8a:
            r0 = move-exception
            r2 = r1
            r3 = r1
        L8d:
            if (r2 == 0) goto L92
            r2.close()     // Catch: java.io.IOException -> L98
        L92:
            if (r3 == 0) goto L97
            r3.close()     // Catch: java.io.IOException -> La3
        L97:
            throw r0
        L98:
            r1 = move-exception
            boolean r2 = com.tencent.feedback.common.C4073e.m1016a(r1)
            if (r2 != 0) goto L92
            r1.printStackTrace()
            goto L92
        La3:
            r1 = move-exception
            boolean r2 = com.tencent.feedback.common.C4073e.m1016a(r1)
            if (r2 != 0) goto L97
            r1.printStackTrace()
            goto L97
        Lae:
            r0 = move-exception
            r2 = r1
            goto L8d
        Lb1:
            r0 = move-exception
            goto L8d
        Lb3:
            r0 = move-exception
            r3 = r2
            r2 = r1
            goto L8d
        Lb7:
            r0 = move-exception
            r2 = r3
            goto L56
        Lba:
            r0 = move-exception
            r1 = r2
            r2 = r3
            goto L56
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.feedback.common.C4072d.m1029h():long");
    }

    /* renamed from: i */
    public final long m1028i() {
        if (!(Environment.getExternalStorageState().equals(Environmenu.MEDIA_MOUNTED))) {
            return 0L;
        }
        try {
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            return statFs.getBlockCount() * statFs.getBlockSize();
        } catch (Throwable th) {
            C4073e.m1012d("rqdp{  get total sd error %s}", th.toString());
            if (!C4073e.m1016a(th)) {
                th.printStackTrace();
            }
            return -2L;
        }
    }

    /* renamed from: j */
    public final long m1027j() {
        if (!(Environment.getExternalStorageState().equals(Environmenu.MEDIA_MOUNTED))) {
            return 0L;
        }
        try {
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            return statFs.getAvailableBlocks() * statFs.getBlockSize();
        } catch (Throwable th) {
            C4073e.m1012d("rqdp{  get free sd error %s}", th.toString());
            if (!C4073e.m1016a(th)) {
                th.printStackTrace();
            }
            return -2L;
        }
    }

    /* renamed from: k */
    public static String m1026k() {
        try {
            return Locale.getDefault().getCountry();
        } catch (Throwable th) {
            C4073e.m1012d("rqdp{  getCountry error!}", new Object[0]);
            if (C4073e.m1016a(th)) {
                return "fail";
            }
            th.printStackTrace();
            return "fail";
        }
    }

    /* renamed from: l */
    public static String m1025l() {
        try {
            return Build.BRAND;
        } catch (Throwable th) {
            C4073e.m1012d("rqdp{  getBrand error!}", new Object[0]);
            if (C4073e.m1016a(th)) {
                return "fail";
            }
            th.printStackTrace();
            return "fail";
        }
    }

    /* renamed from: f */
    public static String m1031f(Context context) {
        String str;
        TelephonyManager telephonyManager;
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null) {
                return "unknown";
            }
            if (activeNetworkInfo.getType() == 1) {
                return "wifi";
            }
            if (activeNetworkInfo.getType() != 0 || (telephonyManager = (TelephonyManager) context.getSystemService("phone")) == null) {
                str = "unknown";
            } else {
                switch (telephonyManager.getNetworkType()) {
                    case 1:
                        return "GPRS";
                    case 2:
                        return "EDGE";
                    case 3:
                        return "UMTS";
                    case 4:
                        return "CDMA";
                    case 5:
                        return "EVDO_0";
                    case 6:
                        return "EVDO_A";
                    case 7:
                        return "1xRTT";
                    case 8:
                        return "HSDPA";
                    case 9:
                        return "HSUPA";
                    case 10:
                        return "HSPA";
                    case 11:
                        return "iDen";
                    case 12:
                        return "EVDO_B";
                    case 13:
                        return "LTE";
                    case 14:
                        return "eHRPD";
                    case 15:
                        return "HSPA+";
                    default:
                        str = "unknown";
                        break;
                }
            }
            return str;
        } catch (Exception e) {
            if (C4073e.m1016a(e)) {
                return "unknown";
            }
            e.printStackTrace();
            return "unknown";
        }
    }

    /* renamed from: m */
    public final String m1024m() {
        return C4119a.m755a(this.f4470b, "ro.board.platform");
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
        	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:35)
        	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:202)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:45)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    /* renamed from: n */
    public static long m1023n() {
        /*
            Method dump skipped, instructions count: 352
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.feedback.common.C4072d.m1023n():long");
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
        	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:35)
        	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:202)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:45)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    /* renamed from: o */
    public static long m1022o() {
        /*
            Method dump skipped, instructions count: 276
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.feedback.common.C4072d.m1022o():long");
    }
}
