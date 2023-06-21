package com.kingroot.kinguser;

import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.p003os.SystemProperties;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.kingroot.loader.common.KlConst;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.Locale;
/* loaded from: classes.dex */
public final class cgt {

    /* renamed from: Yj */
    private static String f2334Yj = "tms_";
    private static String TELEPHONY_SERVICE = "[com.android.internal.telephony.ITelephony]";

    /* renamed from: Yk */
    private static String f2335Yk = "[com.android.internal.telephony.ITelephonyRegistry]";

    /* renamed from: Yl */
    private static Boolean f2336Yl = null;
    private static Object cev = new Object();
    private static Integer cew = null;
    private static Integer cex = null;

    /* renamed from: com.kingroot.kinguser.cgt$a */
    /* loaded from: classes.dex */
    public static class C2810a {

        /* renamed from: Yv */
        public long f2337Yv;

        /* renamed from: Yw */
        public long f2338Yw;
    }

    /* renamed from: ae */
    public static String m4314ae(Context context) {
        String str;
        try {
            str = ((TelephonyManager) context.getSystemService("phone")).getDeviceId();
        } catch (Throwable th) {
            str = "00000000000001";
        }
        if (str == null) {
            return "00000000000000";
        }
        return str;
    }

    /* renamed from: ag */
    public static String m4313ag(Context context) {
        String str;
        try {
            str = ((TelephonyManager) context.getSystemService("phone")).getSubscriberId();
        } catch (Exception e) {
            e.printStackTrace();
            str = null;
        }
        if (str == null) {
            return "000000000000000";
        }
        return str;
    }

    /* renamed from: ah */
    public static String m4312ah(Context context) {
        WifiInfo wifiInfo;
        try {
            wifiInfo = ((WifiManager) context.getSystemService("wifi")).getConnectionInfo();
        } catch (Exception e) {
            e.printStackTrace();
            wifiInfo = null;
        }
        if (wifiInfo == null) {
            return "";
        }
        return wifiInfo.getMacAddress();
    }

    /* renamed from: aj */
    public static String m4311aj(Context context) {
        try {
            return Settings.Secure.getString(context.getContentResolver(), "android_id");
        } catch (Throwable th) {
            return "";
        }
    }

    /* renamed from: cx */
    public static int m4309cx(Context context) {
        return context.getResources().getDisplayMetrics().widthPixels;
    }

    /* renamed from: cy */
    public static int m4308cy(Context context) {
        return context.getResources().getDisplayMetrics().heightPixels;
    }

    /* renamed from: a */
    public static void m4317a(C2810a c2810a) {
        if (cei.m4774iZ()) {
            m4316a(Environment.getExternalStorageDirectory(), c2810a);
            return;
        }
        c2810a.f2337Yv = 0L;
        c2810a.f2338Yw = 0L;
    }

    /* renamed from: b */
    public static void m4310b(C2810a c2810a) {
        m4316a(Environment.getDataDirectory(), c2810a);
    }

    /* renamed from: a */
    public static void m4316a(File file, C2810a c2810a) {
        StatFs statFs;
        try {
            long blockSize = new StatFs(file.getPath()).getBlockSize();
            c2810a.f2337Yv = statFs.getAvailableBlocks() * blockSize;
            c2810a.f2338Yw = statFs.getBlockCount() * blockSize;
        } catch (Exception e) {
        }
    }

    public static String anc() {
        return Build.VERSION.INCREMENTAL;
    }

    public static String and() {
        return Build.VERSION.RELEASE;
    }

    /* renamed from: qf */
    public static String m4302qf() {
        return Build.BRAND;
    }

    public static String ane() {
        return Build.DEVICE;
    }

    public static String anf() {
        return Build.BOARD;
    }

    /* renamed from: nX */
    public static String m4303nX(String str) {
        String str2 = SystemProperties.get(str);
        if (str2 == null) {
            return "";
        }
        return str2;
    }

    /* renamed from: cz */
    public static int m4307cz(Context context) {
        return cgw.m4298nY(m4313ag(context));
    }

    /* renamed from: eZ */
    public static String m4306eZ(boolean z) {
        String sb;
        try {
            FileInputStream fileInputStream = new FileInputStream("/proc/version");
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(fileInputStream), 8192);
            StringBuilder sb2 = new StringBuilder("");
            while (true) {
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine != null) {
                        sb2.append(readLine);
                    } else {
                        try {
                            break;
                        } catch (Throwable th) {
                        }
                    }
                } catch (Throwable th2) {
                    try {
                        bufferedReader.close();
                    } catch (Throwable th3) {
                    }
                    try {
                        fileInputStream.close();
                    } catch (Throwable th4) {
                    }
                    sb = sb2.toString();
                }
            }
            bufferedReader.close();
            try {
                fileInputStream.close();
            } catch (Throwable th5) {
            }
            sb = sb2.toString();
            if (z) {
                if (sb != null && !sb.equals("")) {
                    try {
                        String substring = sb.substring(sb.indexOf("version ") + 8);
                        return substring.substring(0, substring.indexOf(" "));
                    } catch (Throwable th6) {
                    }
                }
                return "";
            }
            return sb;
        } catch (Throwable th7) {
            return "";
        }
    }

    public static String getRadioVersion() {
        try {
            return (String) Class.forName("android.os.Build").getMethod("getRadioVersion", new Class[0]).invoke(null, new Object[0]);
        } catch (Throwable th) {
            return "";
        }
    }

    public static String ang() {
        String str;
        String[] split;
        try {
            str = Build.MANUFACTURER;
        } catch (Exception e) {
        }
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String lowerCase = str.toLowerCase(Locale.ENGLISH);
        if (lowerCase.contains("huawei")) {
            return m4303nX("ro.build.version.emui");
        }
        if (lowerCase.contains("xiaomi")) {
            return m4303nX("ro.miui.ui.version.name");
        }
        if (lowerCase.contains("gionee")) {
            String m4303nX = m4303nX("ro.gn.extvernumber");
            if (TextUtils.isEmpty(m4303nX)) {
                return m4303nX("ro.build.display.id");
            }
            return m4303nX;
        } else if (lowerCase.contains("vivo")) {
            String m4303nX2 = m4303nX("ro.vivo.os.name");
            String m4303nX3 = m4303nX("ro.vivo.os.version");
            if (!TextUtils.isEmpty(m4303nX2) && !TextUtils.isEmpty(m4303nX3)) {
                return m4303nX2 + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + m4303nX3;
            }
            return m4303nX("ro.vivo.os.build.display.id");
        } else if (lowerCase.contains("meizu")) {
            return m4303nX("ro.build.display.id");
        } else {
            if (lowerCase.contains("lenovo")) {
                String m4303nX4 = m4303nX("ro.lenovo.lvp.version");
                String str2 = (TextUtils.isEmpty(m4303nX4) || (split = m4303nX4.split(KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR)) == null || split.length <= 0) ? null : split[0];
                if (TextUtils.isEmpty(str2)) {
                    return m4303nX("ro.build.version.incremental");
                }
                return str2;
            }
            if (lowerCase.contains("letv")) {
                return m4303nX("ro.letv.eui");
            }
            return null;
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
    /* renamed from: eq */
    public static java.lang.String m4305eq(boolean r7) {
        /*
            r2 = 0
            if (r7 == 0) goto L62
            java.lang.String r1 = "/sys/block/mmcblk0/device/"
            java.lang.String r0 = "MMC"
        L7:
            java.io.BufferedReader r4 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L72
            java.io.FileReader r3 = new java.io.FileReader     // Catch: java.lang.Throwable -> L72
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L72
            r5.<init>()     // Catch: java.lang.Throwable -> L72
            java.lang.StringBuilder r5 = r5.append(r1)     // Catch: java.lang.Throwable -> L72
            java.lang.String r6 = "type"
            java.lang.StringBuilder r5 = r5.append(r6)     // Catch: java.lang.Throwable -> L72
            java.lang.String r5 = r5.toString()     // Catch: java.lang.Throwable -> L72
            r3.<init>(r5)     // Catch: java.lang.Throwable -> L72
            r4.<init>(r3)     // Catch: java.lang.Throwable -> L72
            java.lang.String r3 = r4.readLine()     // Catch: java.lang.Throwable -> La2
            if (r3 == 0) goto L67
            java.lang.String r3 = r3.toUpperCase()     // Catch: java.lang.Throwable -> La2
            boolean r0 = r3.equals(r0)     // Catch: java.lang.Throwable -> La2
            if (r0 == 0) goto L67
            java.io.BufferedReader r3 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> La2
            java.io.FileReader r0 = new java.io.FileReader     // Catch: java.lang.Throwable -> La2
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> La2
            r5.<init>()     // Catch: java.lang.Throwable -> La2
            java.lang.StringBuilder r1 = r5.append(r1)     // Catch: java.lang.Throwable -> La2
            java.lang.String r5 = "cid"
            java.lang.StringBuilder r1 = r1.append(r5)     // Catch: java.lang.Throwable -> La2
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> La2
            r0.<init>(r1)     // Catch: java.lang.Throwable -> La2
            r3.<init>(r0)     // Catch: java.lang.Throwable -> La2
            java.lang.String r0 = r3.readLine()     // Catch: java.lang.Throwable -> La6
            if (r0 == 0) goto L68
            java.lang.String r0 = r0.trim()     // Catch: java.lang.Throwable -> La6
            r4.close()     // Catch: java.io.IOException -> L8f
        L5e:
            r3.close()     // Catch: java.io.IOException -> L91
        L61:
            return r0
        L62:
            java.lang.String r1 = "/sys/block/mmcblk1/device/"
            java.lang.String r0 = "SD"
            goto L7
        L67:
            r3 = r2
        L68:
            r4.close()     // Catch: java.io.IOException -> L93
        L6b:
            if (r3 == 0) goto L70
            r3.close()     // Catch: java.io.IOException -> L95
        L70:
            r0 = r2
            goto L61
        L72:
            r0 = move-exception
            r0 = r2
            r1 = r2
        L75:
            if (r1 == 0) goto L7a
            r1.close()     // Catch: java.io.IOException -> L97
        L7a:
            if (r0 == 0) goto L70
            r0.close()     // Catch: java.io.IOException -> L80
            goto L70
        L80:
            r0 = move-exception
            goto L70
        L82:
            r0 = move-exception
            r4 = r2
        L84:
            if (r4 == 0) goto L89
            r4.close()     // Catch: java.io.IOException -> L99
        L89:
            if (r2 == 0) goto L8e
            r2.close()     // Catch: java.io.IOException -> L9b
        L8e:
            throw r0
        L8f:
            r1 = move-exception
            goto L5e
        L91:
            r1 = move-exception
            goto L61
        L93:
            r0 = move-exception
            goto L6b
        L95:
            r0 = move-exception
            goto L70
        L97:
            r1 = move-exception
            goto L7a
        L99:
            r1 = move-exception
            goto L89
        L9b:
            r1 = move-exception
            goto L8e
        L9d:
            r0 = move-exception
            goto L84
        L9f:
            r0 = move-exception
            r2 = r3
            goto L84
        La2:
            r0 = move-exception
            r0 = r2
            r1 = r4
            goto L75
        La6:
            r0 = move-exception
            r0 = r3
            r1 = r4
            goto L75
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kingroot.kinguser.cgt.m4305eq(boolean):java.lang.String");
    }

    /* renamed from: k */
    public static boolean m4304k(Context context, String str, String str2) {
        try {
            return Settings.System.putString(context.getContentResolver(), str, str2);
        } catch (Throwable th) {
            return false;
        }
    }

    /* renamed from: ab */
    public static String m4315ab(Context context, String str) {
        try {
            return Settings.System.getString(context.getContentResolver(), str);
        } catch (Throwable th) {
            return null;
        }
    }
}
