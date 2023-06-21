package oicq.wlogin_sdk.request;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.support.p004v4.view.MotionEventCompat;
import android.support.p004v4.view.ViewCompat;
import java.net.Socket;
import java.security.SecureRandom;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.TreeMap;
import oicq.wlogin_sdk.p027b.C4226au;
import oicq.wlogin_sdk.report.report_t;
import oicq.wlogin_sdk.report.report_t1;
import oicq.wlogin_sdk.sharemem.WloginLoginInfo;
import oicq.wlogin_sdk.sharemem.WloginSigInfo;
import oicq.wlogin_sdk.sharemem.WloginSimpleInfo;
import oicq.wlogin_sdk.tools.C4393util;
import oicq.wlogin_sdk.tools.MD5;
/* renamed from: oicq.wlogin_sdk.request.u */
/* loaded from: classes.dex */
public class C4379u {

    /* renamed from: ao */
    public int f5297ao;

    /* renamed from: j */
    public WFastLoginInfo f5305j;

    /* renamed from: a */
    public static SecureRandom f5271a = m65m();

    /* renamed from: e */
    static Boolean f5287e = false;

    /* renamed from: t */
    public static Context f5288t = null;

    /* renamed from: u */
    public static int f5289u = 2052;

    /* renamed from: v */
    public static String f5290v = "";

    /* renamed from: w */
    static int f5291w = 0;

    /* renamed from: x */
    static int f5292x = 1;

    /* renamed from: y */
    static int f5293y = 0;

    /* renamed from: z */
    static int f5294z = 0;

    /* renamed from: A */
    public static byte[] f5245A = new byte[0];

    /* renamed from: B */
    static byte[] f5246B = new byte[0];

    /* renamed from: C */
    public static byte[] f5247C = new byte[0];

    /* renamed from: D */
    public static int f5248D = 0;

    /* renamed from: E */
    public static byte[] f5249E = new byte[0];

    /* renamed from: F */
    public static byte[] f5250F = new byte[0];

    /* renamed from: G */
    public static byte[] f5251G = new byte[0];

    /* renamed from: H */
    public static byte[] f5252H = new byte[0];

    /* renamed from: I */
    public static byte[] f5253I = new byte[0];

    /* renamed from: J */
    public static byte[] f5254J = new byte[0];

    /* renamed from: K */
    public static byte[] f5255K = "android".getBytes();

    /* renamed from: L */
    static byte[] f5256L = new byte[0];

    /* renamed from: M */
    static byte[] f5257M = new byte[0];

    /* renamed from: N */
    static byte[] f5258N = new byte[0];

    /* renamed from: O */
    static byte[] f5259O = new byte[0];

    /* renamed from: P */
    static byte[] f5260P = new byte[0];

    /* renamed from: Q */
    static byte[] f5261Q = new byte[0];

    /* renamed from: R */
    static byte[] f5262R = new byte[0];

    /* renamed from: S */
    static byte[] f5263S = new byte[0];

    /* renamed from: T */
    static int f5264T = 0;

    /* renamed from: U */
    static int f5265U = 0;

    /* renamed from: V */
    static int f5266V = 0;

    /* renamed from: W */
    static int f5267W = 0;

    /* renamed from: X */
    static int f5268X = 0;

    /* renamed from: Y */
    public static int f5269Y = 0;

    /* renamed from: Z */
    public static int f5270Z = 0;

    /* renamed from: aa */
    static byte[] f5272aa = new byte[0];

    /* renamed from: ab */
    static long f5273ab = 0;

    /* renamed from: ac */
    public static long f5274ac = 0;

    /* renamed from: ad */
    static byte[] f5275ad = new byte[4];

    /* renamed from: ae */
    static int f5276ae = 0;

    /* renamed from: af */
    static int f5277af = 0;

    /* renamed from: ag */
    public static boolean f5278ag = false;

    /* renamed from: aj */
    public static C4362d f5279aj = null;

    /* renamed from: ak */
    protected static String f5280ak = "";

    /* renamed from: al */
    public static report_t1 f5281al = new report_t1();

    /* renamed from: am */
    public static long f5282am = 0;

    /* renamed from: an */
    public static TreeMap<Long, async_context> f5283an = new TreeMap<>();

    /* renamed from: ar */
    private static Object f5286ar = new Object();

    /* renamed from: ap */
    public static boolean f5284ap = false;

    /* renamed from: aq */
    public static boolean f5285aq = true;

    /* renamed from: b */
    public byte[] f5298b = null;

    /* renamed from: c */
    public byte[] f5299c = new byte[16];

    /* renamed from: d */
    public C4226au f5300d = null;

    /* renamed from: f */
    public long f5301f = 0;

    /* renamed from: g */
    public String f5302g = "";

    /* renamed from: h */
    public long f5303h = 0;

    /* renamed from: i */
    public int f5304i = 0;

    /* renamed from: k */
    public int f5306k = 0;

    /* renamed from: l */
    public int f5307l = 5000;

    /* renamed from: m */
    public int f5308m = 0;

    /* renamed from: n */
    public byte[] f5309n = new byte[16];

    /* renamed from: o */
    public byte[] f5310o = new byte[16];

    /* renamed from: p */
    public byte[] f5311p = new byte[16];

    /* renamed from: q */
    public byte[] f5312q = new byte[0];

    /* renamed from: r */
    public byte[] f5313r = new byte[0];

    /* renamed from: s */
    public int f5314s = 0;

    /* renamed from: ah */
    Socket f5295ah = null;

    /* renamed from: ai */
    Socket f5296ai = null;

    public C4379u(Context context) {
    }

    /* renamed from: a */
    public static synchronized long m97a() {
        long j;
        synchronized (C4379u.class) {
            if (f5282am > 200) {
                f5282am = 0L;
            }
            j = f5282am + 1;
            f5282am = j;
        }
        return j;
    }

    /* renamed from: b */
    public static async_context m85b(long j) {
        async_context async_contextVar;
        Exception e;
        synchronized (f5286ar) {
            async_context async_contextVar2 = f5283an.get(Long.valueOf(j));
            if (async_contextVar2 == null) {
                try {
                    async_contextVar = new async_context();
                    try {
                        f5283an.put(Long.valueOf(j), async_contextVar);
                    } catch (Exception e2) {
                        e = e2;
                        C4393util.printException(e, "");
                        return async_contextVar;
                    }
                } catch (Exception e3) {
                    async_contextVar = async_contextVar2;
                    e = e3;
                }
            } else {
                async_contextVar = async_contextVar2;
            }
        }
        return async_contextVar;
    }

    /* renamed from: b */
    public static void m86b() {
        String format = new SimpleDateFormat("yyyyMMdd").format(new Date());
        if (format.compareTo(f5290v) != 0) {
            f5290v = format;
            new C4366h(f5288t).start();
        }
    }

    /* renamed from: c */
    public static void m82c() {
        byte[] bArr = C4393util.get_mac_addr(f5288t);
        if (bArr != null && bArr.length > 0) {
            bArr = MD5.toMD5Byte(bArr);
        }
        byte[] bArr2 = C4393util.get_imei_id(f5288t);
        if (bArr2 != null && bArr2.length > 0) {
            bArr2 = MD5.toMD5Byte(bArr2);
        }
        byte[] generateGuid = C4393util.generateGuid(f5288t);
        if (generateGuid != null && generateGuid.length > 0) {
            generateGuid = MD5.toMD5Byte(generateGuid);
        }
        if (C4393util.get_last_flag(f5288t) != 0) {
            byte[] bArr3 = C4393util.get_last_mac(f5288t);
            byte[] bArr4 = C4393util.get_last_imei(f5288t);
            byte[] bArr5 = C4393util.get_last_guid(f5288t);
            if (!Arrays.equals(bArr, bArr3)) {
                f5268X |= 1;
            }
            if (!Arrays.equals(bArr2, bArr4)) {
                f5268X |= 2;
            }
            if (!Arrays.equals(generateGuid, bArr5)) {
                f5268X |= 4;
            }
        }
        C4393util.save_cur_flag(f5288t, 1);
        C4393util.save_cur_mac(f5288t, bArr);
        C4393util.save_cur_imei(f5288t, bArr2);
        C4393util.save_cur_guid(f5288t, generateGuid);
    }

    /* renamed from: c */
    public static void m81c(long j) {
        synchronized (f5286ar) {
            try {
                f5283an.remove(Long.valueOf(j));
            } catch (Exception e) {
                C4393util.printException(e, "");
            }
        }
    }

    /* renamed from: d */
    public static void m78d() {
        C4393util.LOGI("init start", "");
        int i = C4393util.get_saved_network_type(f5288t);
        f5269Y = 0;
        byte[] guidFromFile = C4393util.getGuidFromFile(f5288t);
        byte[] generateGuid = C4393util.generateGuid(f5288t);
        if (guidFromFile == null || guidFromFile.length <= 0) {
            if (generateGuid == null || generateGuid.length <= 0) {
                generateGuid = new String("%4;7t>;28<fc.5*6").getBytes();
                f5265U = 0;
                f5267W = 20;
            } else {
                f5265U = 1;
                f5267W = 17;
            }
            C4393util.saveGuidToFile(f5288t, generateGuid);
            f5266V = 0;
            f5264T = 1;
            guidFromFile = generateGuid;
        } else {
            if (generateGuid == null || generateGuid.length <= 0) {
                generateGuid = new String("%4;7t>;28<fc.5*6").getBytes();
            }
            if (Arrays.equals(generateGuid, guidFromFile)) {
                f5266V = 0;
            } else {
                f5266V = 1;
            }
            f5265U = 1;
            f5264T = 0;
            f5267W = 1;
        }
        m82c();
        f5269Y |= (f5267W << 24) & ViewCompat.MEASURED_STATE_MASK;
        f5269Y |= (f5268X << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK;
        f5245A = (byte[]) guidFromFile.clone();
        f5246B = (byte[]) guidFromFile.clone();
        f5257M = C4393util.get_imei_id(f5288t);
        if (f5257M != null && f5257M.length > 0) {
            f5257M = MD5.toMD5Byte(f5257M);
        }
        f5276ae = Build.VERSION.SDK_INT;
        f5258N = C4393util.get_mac_addr(f5288t);
        if (f5258N != null && f5258N.length > 0) {
            f5258N = MD5.toMD5Byte(f5258N);
        }
        f5262R = C4393util.get_bssid_addr(f5288t);
        if (f5262R != null && f5262R.length > 0) {
            f5262R = MD5.toMD5Byte(f5262R);
        }
        f5263S = C4393util.get_ssid_addr(f5288t);
        f5259O = C4393util.get_android_id(f5288t);
        if (f5259O != null && f5259O.length > 0) {
            f5259O = MD5.toMD5Byte(f5259O);
        }
        f5256L = C4393util.get_IMSI(f5288t);
        if (f5256L != null && f5256L.length > 0) {
            f5256L = MD5.toMD5Byte(f5256L);
        }
        f5247C = C4393util.get_sim_operator_name(f5288t);
        f5248D = C4393util.get_network_type(f5288t);
        if (i != f5248D) {
            C4393util.set_net_retry_type(f5288t, 0);
            C4393util.save_network_type(f5288t, f5248D);
        }
        f5250F = C4393util.get_apn_string(f5288t).getBytes();
        f5272aa = C4393util.get_ksid(f5288t);
        f5249E = C4393util.get_apk_id(f5288t);
        f5251G = C4393util.get_apk_v(f5288t, new String(f5249E));
        f5252H = C4393util.getPkgSigFromApkName(f5288t, f5288t.getPackageName());
        f5261Q = C4393util.getAppName(f5288t);
        String str = Build.VERSION.RELEASE;
        if (str == null) {
            str = "";
        }
        f5254J = str.getBytes();
        String str2 = Build.MODEL;
        if (str2 == null) {
            f5253I = new byte[0];
        } else {
            f5253I = str2.getBytes();
        }
        String str3 = Build.BRAND;
        if (str3 == null) {
            f5260P = new byte[0];
        } else {
            f5260P = str3.getBytes();
        }
        f5270Z = C4393util.isFileExist("/system/bin/su") || C4393util.isFileExist("/system/xbin/su") || C4393util.isFileExist("/sbin/su") ? 1 : 0;
        f5279aj = new C4362d(f5288t);
        f5281al = report_t.read_fromfile(f5288t);
        if (f5281al == null) {
            f5281al = new report_t1();
        }
        C4393util.LOGI("init done", "");
    }

    /* renamed from: f */
    public static long m72f() {
        return System.currentTimeMillis() / 1000;
    }

    /* renamed from: g */
    public static long m71g() {
        return (System.currentTimeMillis() / 1000) + f5274ac;
    }

    @SuppressLint({"NewApi"})
    /* renamed from: l */
    public static String m66l() {
        if (f5280ak == null || f5280ak.length() <= 0) {
            try {
                int myPid = Process.myPid();
                for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager) f5288t.getSystemService("activity")).getRunningAppProcesses()) {
                    if (runningAppProcessInfo.pid == myPid) {
                        f5280ak = runningAppProcessInfo.processName;
                        return f5280ak;
                    }
                }
            } catch (Throwable th) {
                C4393util.printThrowable(th, "");
            }
            return "";
        }
        return f5280ak;
    }

    /* renamed from: m */
    private static SecureRandom m65m() {
        try {
            return new SecureRandom();
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: a */
    public synchronized int m94a(long j, long j2, long j3, long j4, byte[] bArr, byte[] bArr2) {
        return f5279aj.m205a(j, j2, j3, j4, bArr, bArr2);
    }

    /* renamed from: a */
    public synchronized int m93a(long j, long j2, byte[] bArr) {
        return f5279aj.m204a(j, j2, bArr);
    }

    /* renamed from: a */
    public synchronized int m92a(long j, long j2, byte[][] bArr, long j3, long j4, long j5, long j6, long j7, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, byte[][] bArr6, byte[] bArr7, byte[] bArr8, byte[] bArr9, byte[] bArr10, byte[] bArr11, byte[] bArr12, byte[] bArr13, byte[] bArr14, byte[] bArr15, byte[] bArr16, byte[] bArr17, byte[] bArr18, byte[][] bArr19, long[] jArr, int i) {
        f5279aj.f5189e = this.f5297ao;
        return f5279aj.m203a(j, j2, bArr, j3, j4, j5, j6, j7, bArr2, bArr3, bArr4, bArr5, bArr6, bArr7, bArr8, bArr9, bArr10, bArr11, bArr12, bArr13, bArr14, bArr15, bArr16, bArr17, bArr18, bArr19, jArr, i);
    }

    /* renamed from: a */
    public C4379u m96a(long j) {
        C4379u c4379u = new C4379u(null);
        c4379u.f5306k = this.f5306k;
        c4379u.f5307l = this.f5307l;
        if (this.f5299c != null) {
            c4379u.f5299c = (byte[]) this.f5299c.clone();
        }
        if (this.f5309n != null && this.f5311p != null) {
            c4379u.f5309n = (byte[]) this.f5309n.clone();
            c4379u.f5311p = (byte[]) this.f5311p.clone();
        }
        if (j <= 0) {
            c4379u.f5303h = m97a();
        } else {
            c4379u.f5303h = j;
        }
        return c4379u;
    }

    /* renamed from: a */
    public synchronized WloginSigInfo m95a(long j, long j2) {
        WloginSigInfo m186c;
        C4393util.LOGI("get_siginfo appid=" + j2, j + "");
        m186c = f5279aj.m186c(j, j2);
        if (m186c != null) {
        }
        return m186c;
    }

    /* renamed from: a */
    public void m91a(Context context) {
        f5288t = context;
        byte[] bArr = C4393util.get_rand_16byte(f5271a);
        System.arraycopy(bArr, 0, this.f5299c, 0, bArr.length);
    }

    /* renamed from: a */
    public synchronized void m90a(String str) {
        f5279aj.m198a(str);
    }

    /* renamed from: a */
    public synchronized void m89a(String str, Long l) {
        f5279aj.m197a(str, l, true);
    }

    /* renamed from: a */
    public synchronized void m88a(String str, Long l, boolean z) {
        f5279aj.m197a(str, l, z);
    }

    /* renamed from: a */
    public void m87a(byte[] bArr, byte[] bArr2) {
        f5273ab = (C4393util.buf_to_int32(bArr, 0) & 4294967295L) - (System.currentTimeMillis() / 1000);
        f5274ac = f5273ab;
        f5275ad = bArr2;
    }

    /* renamed from: b */
    public synchronized int m84b(long j, long j2) {
        return f5279aj.m206a(j, j2);
    }

    /* renamed from: b */
    public synchronized long m83b(String str) {
        long j = 0;
        synchronized (this) {
            UinInfo m196a = f5279aj.m196a(str, true);
            if (m196a != null && m196a._uin.longValue() != 0) {
                j = m196a._uin.longValue();
            }
        }
        return j;
    }

    /* renamed from: c */
    public synchronized UinInfo m79c(String str) {
        return f5279aj.m196a(str, false);
    }

    /* renamed from: c */
    public void m80c(long j, long j2) {
        f5279aj.m191b(j, j2);
    }

    /* renamed from: d */
    public synchronized WloginSimpleInfo m77d(long j) {
        WloginSimpleInfo m192b;
        m192b = f5279aj.m192b(j);
        if (m192b != null) {
        }
        return m192b;
    }

    /* renamed from: d */
    public synchronized void m76d(long j, long j2) {
        f5279aj.m199a(Long.valueOf(j), Long.valueOf(j2));
    }

    /* renamed from: d */
    public synchronized void m75d(String str) {
        f5279aj.m188b(str);
    }

    /* renamed from: e */
    public synchronized String m73e(long j) {
        return f5279aj.m189b(Long.valueOf(j));
    }

    /* renamed from: e */
    public boolean m74e() {
        return this.f5306k != 0;
    }

    /* renamed from: h */
    public void m70h() {
        C4393util.LOGD("close_connect", "close_connect");
        if (this.f5295ah != null) {
            try {
                C4393util.LOGD("close_connect", this.f5295ah.toString());
                this.f5295ah.close();
            } catch (Exception e) {
                C4393util.printException(e, "");
            }
            this.f5295ah = null;
        }
    }

    /* renamed from: i */
    public void m69i() {
        C4393util.LOGD("close_transport_connect", "close_transport_connect");
        if (this.f5296ai != null) {
            try {
                C4393util.LOGD("close_transport_connect", this.f5296ai.toString());
                this.f5296ai.close();
            } catch (Exception e) {
                C4393util.printException(e, "");
            }
            this.f5296ai = null;
        }
    }

    /* renamed from: j */
    public synchronized void m68j() {
        f5279aj.m208a();
    }

    /* renamed from: k */
    public synchronized List<WloginLoginInfo> m67k() {
        return f5279aj.m194a(true);
    }
}
