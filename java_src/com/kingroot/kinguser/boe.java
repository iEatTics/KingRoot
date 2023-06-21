package com.kingroot.kinguser;

import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.kingroot.loader.common.KlConst;
import java.net.InetSocketAddress;
import java.net.Proxy;
/* loaded from: classes.dex */
public class boe {
    private static InterfaceC2540a bFm;

    /* renamed from: c */
    private static String f1825c = "cmwap";

    /* renamed from: d */
    private static String f1826d = "3gwap";

    /* renamed from: e */
    private static String f1827e = "uniwap";

    /* renamed from: f */
    private static String f1828f = "ctwap";

    /* renamed from: g */
    private static volatile boolean f1829g = true;

    /* renamed from: a */
    public static String f1824a = "";

    /* renamed from: h */
    private static int f1830h = 0;

    /* renamed from: i */
    private static boolean f1831i = false;

    /* renamed from: j */
    private static String f1832j = "";
    private static BroadcastReceiver bFn = new bof();

    /* renamed from: m */
    private static volatile boolean f1833m = false;

    /* renamed from: com.kingroot.kinguser.boe$a */
    /* loaded from: classes.dex */
    public interface InterfaceC2540a {
        /* renamed from: a */
        void mo6055a(int i, String str);
    }

    /* renamed from: com.kingroot.kinguser.boe$b */
    /* loaded from: classes.dex */
    public static class C2541b extends PhoneStateListener {
    }

    /* renamed from: a */
    public static void m6093a() {
        m6091b();
        boi.agA().registerReceiver(bFn, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        TelephonyManager telephonyManager = (TelephonyManager) boi.agA().getSystemService("phone");
        if (telephonyManager != null) {
            telephonyManager.listen(new C2541b(), 257);
        }
    }

    /* renamed from: a */
    public static void m6092a(InterfaceC2540a interfaceC2540a) {
        bFm = interfaceC2540a;
    }

    public static Proxy agz() {
        if (!f1831i || TextUtils.isEmpty(f1832j)) {
            return null;
        }
        return new Proxy(Proxy.Type.HTTP, new InetSocketAddress(f1832j, 80));
    }

    /* renamed from: b */
    public static void m6091b() {
        if (f1833m) {
            return;
        }
        f1833m = true;
        synchronized (boe.class) {
            String str = f1824a;
            ConnectivityManager connectivityManager = (ConnectivityManager) boi.agA().getSystemService("connectivity");
            if (connectivityManager == null) {
                f1824a = "";
                f1830h = 0;
                f1831i = false;
                f1832j = "";
                f1829g = false;
                if (!str.equals(f1824a) && bFm != null) {
                    bFm.mo6055a(f1830h, f1824a);
                }
                f1833m = false;
                return;
            }
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo == null) {
                f1824a = "";
                f1830h = 0;
                f1831i = false;
                f1832j = "";
                f1829g = false;
                if (!str.equals(f1824a) && bFm != null) {
                    bFm.mo6055a(f1830h, f1824a);
                }
                f1833m = false;
                return;
            }
            if (activeNetworkInfo.isConnected()) {
                f1829g = true;
            } else {
                f1829g = false;
            }
            int type = activeNetworkInfo.getType();
            if (type == 1) {
                f1830h = 1;
                f1831i = false;
                f1832j = "";
                WifiInfo connectionInfo = ((WifiManager) boi.agA().getSystemService("wifi")).getConnectionInfo();
                if (connectionInfo.getBSSID() != null) {
                    int rssi = connectionInfo.getRssi();
                    if (Build.VERSION.SDK_INT >= 14) {
                        WifiManager.calculateSignalLevel(rssi, 5);
                    } else if (rssi > -100 && rssi < -55) {
                        int i = (int) (((rssi + 100) * 4.0f) / 45.0f);
                    }
                }
                f1824a = "wifi_" + connectionInfo.getSSID() + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + connectionInfo.getBSSID();
                if (!str.equals(f1824a) && bFm != null) {
                    bFm.mo6055a(f1830h, f1824a);
                }
                f1833m = false;
                return;
            }
            String extraInfo = activeNetworkInfo.getExtraInfo();
            if (extraInfo == null) {
                f1824a = "";
                f1830h = 0;
                f1831i = false;
                f1832j = "";
                if (!str.equals(f1824a) && bFm != null) {
                    bFm.mo6055a(f1830h, f1824a);
                }
                f1833m = false;
                return;
            }
            f1824a = extraInfo.trim().toLowerCase();
            if (type == 0) {
                int subtype = activeNetworkInfo.getSubtype();
                if (subtype == 1 || subtype == 2 || subtype == 4) {
                    f1830h = 2;
                } else if (subtype == 13) {
                    f1830h = 4;
                } else {
                    f1830h = 3;
                }
            }
            if (f1824a.contains(f1826d)) {
                f1831i = true;
                f1832j = "10.0.0.172";
            } else if (f1824a.contains(f1825c)) {
                f1831i = true;
                f1832j = "10.0.0.172";
            } else if (f1824a.contains(f1827e)) {
                f1831i = true;
                f1832j = "10.0.0.172";
            } else if (f1824a.contains(f1828f)) {
                f1831i = true;
                f1832j = "10.0.0.200";
            } else {
                f1831i = false;
                f1832j = "";
            }
            if (!str.equals(f1824a) && bFm != null) {
                bFm.mo6055a(f1830h, f1824a);
            }
            f1833m = false;
        }
    }

    /* renamed from: d */
    public static boolean m6090d() {
        return f1830h == 2 || f1830h == 3 || f1830h == 4;
    }

    /* renamed from: e */
    public static boolean m6089e() {
        return f1831i;
    }

    /* renamed from: f */
    public static int m6088f() {
        return f1830h;
    }

    /* renamed from: g */
    public static boolean m6087g() {
        return f1829g;
    }

    /* renamed from: h */
    public static void m6086h() {
    }
}
