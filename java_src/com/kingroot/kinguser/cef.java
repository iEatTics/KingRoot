package com.kingroot.kinguser;

import android.content.Context;
import android.net.NetworkInfo;
import android.net.Proxy;
import android.telephony.TelephonyManager;
/* loaded from: classes.dex */
public class cef {
    public static int bXX = 4;
    public static String bXY = null;
    public static int bXZ = 80;
    public static byte bYa = 0;
    public static boolean bYb = false;
    public static boolean bYc = false;
    public static byte bYd = 4;
    public static String bYe = "unknown";
    public static byte bYf = 9;
    public static int bYg = 17;

    /* renamed from: cr */
    public static void m4783cr(Context context) {
        if (!bYc) {
            synchronized (cef.class) {
                if (!bYc) {
                    init(context);
                    bYc = true;
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0088 A[Catch: Exception -> 0x00c3, TryCatch #1 {Exception -> 0x00c3, blocks: (B:6:0x000d, B:8:0x0014, B:10:0x001e, B:17:0x003e, B:12:0x0023, B:18:0x0047, B:20:0x004c, B:22:0x0054, B:24:0x005c, B:26:0x0064, B:47:0x00c9, B:49:0x00d1, B:51:0x00d9, B:53:0x00e1, B:61:0x0104, B:63:0x010c, B:55:0x00e9, B:57:0x00f4, B:60:0x00ff, B:32:0x007d, B:34:0x0088, B:36:0x0098, B:37:0x00a0, B:39:0x00a4, B:41:0x00ae, B:43:0x00be, B:65:0x0114, B:66:0x0119, B:59:0x00fc, B:28:0x006c, B:30:0x0077, B:31:0x007a, B:64:0x010f), top: B:70:0x000d }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void init(Context context) {
        NetworkInfo networkInfo;
        String str = null;
        try {
            networkInfo = ceb.akU().getActiveNetworkInfo();
        } catch (NullPointerException e) {
            networkInfo = null;
        }
        int i = -1;
        try {
            bXX = 0;
            bYd = (byte) 4;
            if (networkInfo != null) {
                i = networkInfo.getType();
                str = networkInfo.getExtraInfo();
                if (str == null) {
                    bXX = 0;
                } else {
                    str = str.trim().toLowerCase();
                }
            }
            if (i == 1) {
                bXX = 4;
                bYb = false;
                bYd = (byte) 3;
                bYe = "unknown";
                bYf = (byte) 9;
            } else {
                m4781nK(str);
                if (str != null) {
                    if (str.contains("cmwap") || str.contains("uniwap") || str.contains("3gwap") || str.contains("ctwap")) {
                        bYd = (byte) 1;
                        if (str.contains("3gwap")) {
                            bYd = (byte) 2;
                        }
                        bXX = 2;
                    } else if (str.contains("cmnet") || str.contains("uninet") || str.contains("3gnet") || str.contains("ctnet")) {
                        bYd = (byte) 1;
                        if (str.contains("3gnet") || str.contains("ctnet")) {
                            bYd = (byte) 2;
                        }
                        bXX = 1;
                    } else if (str.contains("#777")) {
                        bYd = (byte) 2;
                    }
                    bYb = false;
                    if (m4782kX(bXX)) {
                        bXY = Proxy.getDefaultHost();
                        bXZ = Proxy.getDefaultPort();
                        if (bXY != null) {
                            bXY = bXY.trim();
                        }
                        if (bXY != null && !"".equals(bXY)) {
                            bYb = true;
                            bXX = 2;
                            if ("10.0.0.200".equals(bXY)) {
                                bYa = (byte) 1;
                            } else {
                                bYa = (byte) 0;
                            }
                        } else {
                            bYb = false;
                            bXX = 1;
                        }
                    }
                }
                bXX = 0;
                bYb = false;
                if (m4782kX(bXX)) {
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        bYg = m4784a(context, networkInfo);
    }

    /* renamed from: kX */
    private static boolean m4782kX(int i) {
        return i == 2 || i == 0;
    }

    /* renamed from: nK */
    private static void m4781nK(String str) {
        if (str != null) {
            if (str.contains("cmwap")) {
                bYe = "cmwap";
                bYf = (byte) 0;
            } else if (str.contains("cmnet")) {
                bYe = "cmnet";
                bYf = (byte) 1;
            } else if (str.contains("3gwap")) {
                bYe = "3gwap";
                bYf = (byte) 2;
            } else if (str.contains("3gnet")) {
                bYe = "3gnet";
                bYf = (byte) 3;
            } else if (str.contains("uniwap")) {
                bYe = "uniwap";
                bYf = (byte) 4;
            } else if (str.contains("uninet")) {
                bYe = "uninet";
                bYf = (byte) 5;
            } else if (str.contains("ctwap")) {
                bYe = "ctwap";
                bYf = (byte) 6;
            } else if (str.contains("ctnet")) {
                bYe = "ctnet";
                bYf = (byte) 7;
            } else if (str.contains("#777")) {
                bYe = "#777";
                bYf = (byte) 8;
            }
        }
    }

    /* renamed from: a */
    private static int m4784a(Context context, NetworkInfo networkInfo) {
        TelephonyManager telephonyManager;
        int i = 1;
        if (networkInfo == null) {
            return 0;
        }
        try {
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (1 != networkInfo.getType()) {
            if (networkInfo.getType() == 0 && (telephonyManager = (TelephonyManager) context.getSystemService("phone")) != null) {
                switch (telephonyManager.getNetworkType()) {
                    case 1:
                        i = 2;
                        break;
                    case 2:
                        i = 3;
                        break;
                    case 3:
                        i = 4;
                        break;
                    case 4:
                        i = 8;
                        break;
                    case 5:
                        i = 9;
                        break;
                    case 6:
                        i = 10;
                        break;
                    case 7:
                        i = 11;
                        break;
                    case 8:
                        i = 5;
                        break;
                    case 9:
                        i = 6;
                        break;
                    case 10:
                        i = 7;
                        break;
                    default:
                        i = 17;
                        break;
                }
            }
            i = 0;
        }
        return i;
    }
}
