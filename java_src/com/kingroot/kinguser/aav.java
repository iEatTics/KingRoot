package com.kingroot.kinguser;

import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import com.kingroot.common.app.KApplication;
import com.kingroot.common.utils.system.VTCmdResult;
import java.io.File;
import java.util.Locale;
/* loaded from: classes.dex */
public class aav {

    /* renamed from: Ys */
    private static long f1283Ys;

    /* renamed from: Yt */
    private static long f1284Yt;

    /* renamed from: Yu */
    private static long f1285Yu;

    /* renamed from: Ya */
    private static volatile String f1265Ya = "";

    /* renamed from: Yb */
    private static String f1266Yb = "";

    /* renamed from: Yc */
    private static volatile String f1267Yc = "";

    /* renamed from: Yd */
    private static volatile String f1268Yd = "";

    /* renamed from: Ye */
    private static String f1269Ye = "";

    /* renamed from: Yf */
    private static String f1270Yf = "";

    /* renamed from: Yg */
    private static final Object f1271Yg = new Object();

    /* renamed from: Yh */
    private static final Object f1272Yh = new Object();

    /* renamed from: Yi */
    private static final Object f1273Yi = new Object();

    /* renamed from: Yj */
    private static String f1274Yj = "tms_";
    private static String TELEPHONY_SERVICE = "[com.android.internal.telephony.ITelephony]";

    /* renamed from: Yk */
    private static String f1275Yk = "[com.android.internal.telephony.ITelephonyRegistry]";

    /* renamed from: Yl */
    private static volatile Boolean f1276Yl = null;

    /* renamed from: Ym */
    private static String f1277Ym = "";

    /* renamed from: Yn */
    private static int f1278Yn = -1;

    /* renamed from: Yo */
    private static final Object f1279Yo = new Object();

    /* renamed from: Yp */
    private static int f1280Yp = -1;

    /* renamed from: Yq */
    private static final Object f1281Yq = new Object();

    /* renamed from: Yr */
    private static byte[] f1282Yr = new byte[512];

    /* renamed from: com.kingroot.kinguser.aav$a */
    /* loaded from: classes.dex */
    public static class C0620a {

        /* renamed from: Yv */
        public long f1286Yv;

        /* renamed from: Yw */
        public long f1287Yw;
    }

    public static String getGuid() {
        if (!TextUtils.isEmpty(f1265Ya)) {
            return f1265Ya;
        }
        synchronized (f1271Yg) {
            if (!TextUtils.isEmpty(f1265Ya)) {
                return f1265Ya;
            }
            String property = C3984zy.m1231pI().getProperty("K1");
            if (!TextUtils.isEmpty(property)) {
                f1265Ya = property;
            }
            C3951zg.m1322d("common_DeviceInfoUtil", "getGuid() called with " + f1265Ya);
            return f1265Ya;
        }
    }

    /* renamed from: E */
    public static void m12932E(String str) {
        if (!TextUtils.isEmpty(str)) {
            synchronized (f1271Yg) {
                f1265Ya = str;
                C3984zy.m1231pI().setProperty("K1", f1265Ya);
            }
        }
    }

    public static String getSharkGuid() {
        return m12920dP("");
    }

    /* renamed from: dP */
    public static String m12920dP(String str) {
        if (!TextUtils.isEmpty(f1267Yc)) {
            return f1267Yc;
        }
        synchronized (f1272Yh) {
            if (!TextUtils.isEmpty(f1267Yc)) {
                return f1267Yc;
            }
            C3984zy m1231pI = C3984zy.m1231pI();
            if (TextUtils.isEmpty(str)) {
                str = "K3";
            }
            String property = m1231pI.getProperty(str);
            if (TextUtils.isEmpty(property)) {
                throw new abn("guid is null");
            }
            if (!TextUtils.isEmpty(property)) {
                f1267Yc = property;
            }
            return f1267Yc;
        }
    }

    /* renamed from: ae */
    public static String m12929ae(Context context) {
        return aay.m12881al(context);
    }

    /* renamed from: af */
    public static String m12928af(Context context) {
        return aay.m12880am(context);
    }

    /* renamed from: ag */
    public static String m12927ag(Context context) {
        String str;
        try {
            str = ((TelephonyManager) KApplication.m13453ge().getSystemService("phone")).getSubscriberId();
        } catch (Throwable th) {
            str = null;
        }
        if (str == null) {
            return "000000000000000";
        }
        return str;
    }

    /* renamed from: ah */
    public static String m12926ah(Context context) {
        try {
            WifiInfo connectionInfo = ((WifiManager) KApplication.m13453ge().getSystemService("wifi")).getConnectionInfo();
            if (connectionInfo == null) {
                return "";
            }
            return connectionInfo.getMacAddress();
        } catch (Throwable th) {
            return "";
        }
    }

    /* renamed from: ai */
    public static String m12925ai(Context context) {
        try {
            return ((TelephonyManager) KApplication.m13453ge().getSystemService("phone")).getSimSerialNumber();
        } catch (Throwable th) {
            return "";
        }
    }

    /* renamed from: aj */
    public static String m12924aj(Context context) {
        try {
            return Settings.Secure.getString(context.getContentResolver(), "android_id");
        } catch (Throwable th) {
            return "";
        }
    }

    /* renamed from: pZ */
    public static String m12917pZ() {
        return m12916qa();
    }

    /* renamed from: qa */
    public static String m12916qa() {
        return Build.MODEL;
    }

    /* renamed from: qb */
    public static int m12915qb() {
        return abd.m12839qb();
    }

    public static String getProductName() {
        return Build.PRODUCT;
    }

    /* renamed from: qc */
    public static int m12914qc() {
        DisplayMetrics displayMetrics = C3953zi.m1311pr().getDisplayMetrics();
        if (displayMetrics == null) {
            return 0;
        }
        return displayMetrics.widthPixels;
    }

    /* renamed from: qd */
    public static int m12913qd() {
        DisplayMetrics displayMetrics = C3953zi.m1311pr().getDisplayMetrics();
        if (displayMetrics == null) {
            return 0;
        }
        return displayMetrics.heightPixels;
    }

    /* renamed from: a */
    public static void m12931a(C0620a c0620a) {
        if (C3565ru.m2319iZ()) {
            m12930a(Environment.getExternalStorageDirectory(), c0620a);
            return;
        }
        c0620a.f1286Yv = 0L;
        c0620a.f1287Yw = 0L;
    }

    /* renamed from: b */
    public static void m12923b(C0620a c0620a) {
        m12930a(Environment.getDataDirectory(), c0620a);
    }

    /* renamed from: a */
    public static void m12930a(File file, C0620a c0620a) {
        StatFs statFs;
        try {
            long blockSize = new StatFs(file.getPath()).getBlockSize();
            c0620a.f1286Yv = statFs.getAvailableBlocks() * blockSize;
            c0620a.f1287Yw = statFs.getBlockCount() * blockSize;
        } catch (Exception e) {
        }
    }

    /* renamed from: qe */
    public static boolean m12912qe() {
        if (f1276Yl == null) {
            try {
                String[] split = abj.m12827Q("sh", "service list").mStdOut.split("\n");
                if (split != null && split.length > 0) {
                    int i = 0;
                    int i2 = 0;
                    for (String str : split) {
                        if (!str.contains(f1274Yj)) {
                            if (str.contains(TELEPHONY_SERVICE)) {
                                i2++;
                            } else if (str.contains(f1275Yk)) {
                                i++;
                            }
                        }
                    }
                    if (i2 > 1 || i > 1) {
                        f1276Yl = true;
                    } else {
                        f1276Yl = false;
                    }
                } else {
                    f1276Yl = false;
                }
            } catch (Exception e) {
                f1276Yl = false;
            }
        }
        if (f1276Yl == null) {
            f1276Yl = false;
        }
        return f1276Yl.booleanValue();
    }

    /* renamed from: qf */
    public static String m12911qf() {
        return Build.BRAND;
    }

    /* renamed from: qg */
    public static String m12910qg() {
        String str = Build.MANUFACTURER;
        if (str == null) {
            return "UNKNOWN";
        }
        return str;
    }

    /* renamed from: dI */
    public static String m12921dI() {
        if (TextUtils.isEmpty(f1277Ym)) {
            f1277Ym = C3563rs.m2343t(new File("/proc/version"));
            if (TextUtils.isEmpty(f1277Ym)) {
                VTCmdResult m12846el = abc.m12845qK().m12846el("cat /proc/version");
                if (m12846el == null || !m12846el.success()) {
                    return "";
                }
                f1277Ym = m12846el.mStdOut;
            }
        }
        return f1277Ym.trim();
    }

    @Deprecated
    /* renamed from: qh */
    public static boolean m12909qh() {
        return Build.MODEL.toLowerCase(Locale.ENGLISH).contains("vivo");
    }

    @Deprecated
    /* renamed from: qi */
    public static boolean m12908qi() {
        return Build.BRAND.toLowerCase(Locale.ENGLISH).contains("samsung");
    }

    @Deprecated
    /* renamed from: qj */
    public static boolean m12907qj() {
        return Build.BRAND.toLowerCase(Locale.ENGLISH).contains("smartisan");
    }

    @Deprecated
    /* renamed from: qk */
    public static boolean m12906qk() {
        return Build.BRAND.toLowerCase(Locale.ENGLISH).contains("oppo");
    }

    @Deprecated
    /* renamed from: ql */
    public static boolean m12905ql() {
        boolean z;
        synchronized (f1279Yo) {
            if (-1 == f1278Yn) {
                if (!TextUtils.isEmpty(C3949ze.get("ro.miui.ui.version.name"))) {
                    f1278Yn = 1;
                } else if (!TextUtils.isEmpty(C3949ze.get("ro.miui.ui.version.code"))) {
                    f1278Yn = 1;
                } else {
                    f1278Yn = 0;
                }
            }
            z = 1 == f1278Yn;
        }
        return z;
    }

    /* renamed from: qm */
    public static int m12904qm() {
        int i;
        synchronized (f1281Yq) {
            if (-1 == f1280Yp) {
                String str = C3949ze.get("ro.build.display.id");
                if (TextUtils.isEmpty(str)) {
                    i = f1280Yp;
                } else if (str.contains("Flyme OS 3")) {
                    f1280Yp = 3;
                } else if (str.contains("Flyme OS 4")) {
                    f1280Yp = 4;
                    try {
                        String[] split = str.split("Flyme OS 4.");
                        if (split != null && split.length >= 2 && Integer.parseInt(String.valueOf(split[1].charAt(0))) >= 5) {
                            f1280Yp = 45;
                        }
                    } catch (Exception e) {
                    }
                } else if (str.contains("Flyme OS 5")) {
                    f1280Yp = 5;
                } else {
                    f1280Yp = 0;
                }
            }
            i = f1280Yp;
        }
        return i;
    }

    /* renamed from: c */
    private static boolean m12922c(byte[] bArr, int i, String str) {
        int length = str.length();
        if (i + length >= bArr.length) {
            return false;
        }
        for (int i2 = 0; i2 < length; i2++) {
            if (bArr[i + i2] != str.charAt(i2)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: e */
    private static long m12918e(byte[] bArr, int i) {
        while (i < bArr.length && bArr[i] != 10) {
            if (bArr[i] >= 48 && bArr[i] <= 57) {
                int i2 = i + 1;
                while (i2 < bArr.length && bArr[i2] >= 48 && bArr[i2] <= 57) {
                    i2++;
                }
                return Integer.parseInt(new String(bArr, 0, i, i2 - i)) * 1024;
            }
            i++;
        }
        return 0L;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
        	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:35)
        	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:202)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:45)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    /* renamed from: qn */
    private static void m12903qn() {
        /*
            r2 = 0
            r1 = 0
            r4 = 0
            com.kingroot.kinguser.aav.f1283Ys = r4     // Catch: java.lang.Throwable -> L7f
            r4 = 0
            com.kingroot.kinguser.aav.f1284Yt = r4     // Catch: java.lang.Throwable -> L7f
            r4 = 0
            com.kingroot.kinguser.aav.f1285Yu = r4     // Catch: java.lang.Throwable -> L7f
            java.io.FileInputStream r0 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L7f
            java.lang.String r3 = "/proc/meminfo"
            r0.<init>(r3)     // Catch: java.lang.Throwable -> L7f
            byte[] r1 = com.kingroot.kinguser.aav.f1282Yr     // Catch: java.lang.Throwable -> L8f
            int r3 = r0.read(r1)     // Catch: java.lang.Throwable -> L8f
            r0.close()     // Catch: java.lang.Throwable -> L8f
            byte[] r1 = com.kingroot.kinguser.aav.f1282Yr     // Catch: java.lang.Throwable -> L8f
            int r4 = r1.length     // Catch: java.lang.Throwable -> L8f
            r1 = r2
        L22:
            if (r1 >= r3) goto L7b
            r5 = 3
            if (r2 >= r5) goto L7b
            byte[] r5 = com.kingroot.kinguser.aav.f1282Yr     // Catch: java.lang.Throwable -> L8f
            java.lang.String r6 = "MemTotal"
            boolean r5 = m12922c(r5, r1, r6)     // Catch: java.lang.Throwable -> L8f
            if (r5 == 0) goto L4a
            int r1 = r1 + 8
            byte[] r5 = com.kingroot.kinguser.aav.f1282Yr     // Catch: java.lang.Throwable -> L8f
            long r6 = m12918e(r5, r1)     // Catch: java.lang.Throwable -> L8f
            com.kingroot.kinguser.aav.f1283Ys = r6     // Catch: java.lang.Throwable -> L8f
            int r2 = r2 + 1
        L3d:
            if (r1 >= r4) goto L78
            byte[] r5 = com.kingroot.kinguser.aav.f1282Yr     // Catch: java.lang.Throwable -> L8f
            r5 = r5[r1]     // Catch: java.lang.Throwable -> L8f
            r6 = 10
            if (r5 == r6) goto L78
            int r1 = r1 + 1
            goto L3d
        L4a:
            byte[] r5 = com.kingroot.kinguser.aav.f1282Yr     // Catch: java.lang.Throwable -> L8f
            java.lang.String r6 = "MemFree"
            boolean r5 = m12922c(r5, r1, r6)     // Catch: java.lang.Throwable -> L8f
            if (r5 == 0) goto L61
            int r1 = r1 + 7
            byte[] r5 = com.kingroot.kinguser.aav.f1282Yr     // Catch: java.lang.Throwable -> L8f
            long r6 = m12918e(r5, r1)     // Catch: java.lang.Throwable -> L8f
            com.kingroot.kinguser.aav.f1284Yt = r6     // Catch: java.lang.Throwable -> L8f
            int r2 = r2 + 1
            goto L3d
        L61:
            byte[] r5 = com.kingroot.kinguser.aav.f1282Yr     // Catch: java.lang.Throwable -> L8f
            java.lang.String r6 = "Cached"
            boolean r5 = m12922c(r5, r1, r6)     // Catch: java.lang.Throwable -> L8f
            if (r5 == 0) goto L3d
            int r1 = r1 + 6
            byte[] r5 = com.kingroot.kinguser.aav.f1282Yr     // Catch: java.lang.Throwable -> L8f
            long r6 = m12918e(r5, r1)     // Catch: java.lang.Throwable -> L8f
            com.kingroot.kinguser.aav.f1285Yu = r6     // Catch: java.lang.Throwable -> L8f
            int r2 = r2 + 1
            goto L3d
        L78:
            int r1 = r1 + 1
            goto L22
        L7b:
            com.kingroot.kinguser.C3945za.m1340c(r0)
        L7e:
            return
        L7f:
            r0 = move-exception
            r0 = r1
        L81:
            com.kingroot.kinguser.C3945za.m1340c(r0)
            goto L7e
        L85:
            r0 = move-exception
        L86:
            com.kingroot.kinguser.C3945za.m1340c(r1)
            throw r0
        L8a:
            r1 = move-exception
            r8 = r1
            r1 = r0
            r0 = r8
            goto L86
        L8f:
            r1 = move-exception
            goto L81
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kingroot.kinguser.aav.m12903qn():void");
    }

    /* renamed from: qo */
    public static long m12902qo() {
        m12903qn();
        return f1283Ys;
    }

    /* renamed from: qp */
    public static long m12901qp() {
        m12903qn();
        return f1284Yt + f1285Yu;
    }

    /* renamed from: qq */
    public static long m12900qq() {
        m12903qn();
        return f1284Yt;
    }

    /* renamed from: qr */
    public static String m12899qr() {
        return C3949ze.get("ro.mediatek.platform");
    }

    /* renamed from: qs */
    public static String m12898qs() {
        return Build.BOARD;
    }

    /* renamed from: qt */
    public static String m12897qt() {
        if (!TextUtils.isEmpty(f1268Yd)) {
            return f1268Yd;
        }
        synchronized (f1273Yi) {
            if (!TextUtils.isEmpty(f1268Yd)) {
                return f1268Yd;
            }
            String property = C3984zy.m1231pI().getProperty("K4");
            if (!TextUtils.isEmpty(property)) {
                f1268Yd = property;
            }
            return f1268Yd;
        }
    }

    /* renamed from: dQ */
    public static void m12919dQ(String str) {
        if (!TextUtils.isEmpty(str)) {
            synchronized (f1273Yi) {
                f1268Yd = str;
                C3984zy.m1231pI().setProperty("K4", f1268Yd);
            }
        }
    }
}
