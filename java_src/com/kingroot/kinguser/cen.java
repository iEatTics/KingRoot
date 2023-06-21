package com.kingroot.kinguser;

import andhook.lib.xposed.callbacks.XCallback;
/* loaded from: classes.dex */
public class cen {
    /* renamed from: kG */
    public static final int m4768kG(int i) {
        return i % 100;
    }

    /* renamed from: kH */
    public static final int m4767kH(int i) {
        return (i % XCallback.PRIORITY_HIGHEST) - m4768kG(i);
    }

    /* renamed from: kI */
    public static final int m4766kI(int i) {
        return ((i % 1000000) - m4767kH(i)) - m4768kG(i);
    }

    /* renamed from: kY */
    public static int m4765kY(int i) {
        int i2;
        if (i != 0 && m4768kG(i) == 0) {
            switch (m4766kI(i)) {
                case -500000:
                    i2 = i - 3;
                    break;
                case -490000:
                    i2 = i - 3;
                    break;
                case -480000:
                    i2 = i - 3;
                    break;
                case -470000:
                    i2 = i - 3;
                    break;
                case -460000:
                    i2 = i - 3;
                    break;
                case -450000:
                    i2 = i - 3;
                    break;
                case -440000:
                    i2 = i - 3;
                    break;
                case -430000:
                    i2 = i - 3;
                    break;
                case -420000:
                    i2 = i - 3;
                    break;
                case -410000:
                    i2 = i - 3;
                    break;
                case -400000:
                    i2 = i - 3;
                    break;
                case -390000:
                    i2 = i - 3;
                    break;
                case -380000:
                    i2 = i - 3;
                    break;
                case -370000:
                    i2 = i - 3;
                    break;
                case -360000:
                    i2 = i - 3;
                    break;
                case -350000:
                    i2 = i - 3;
                    break;
                case -340000:
                    i2 = i - 3;
                    break;
                case -330000:
                    i2 = i - 3;
                    break;
                case -320000:
                    i2 = i - 3;
                    break;
                case -310000:
                    i2 = i - 3;
                    break;
                case -300000:
                    i2 = i - 16;
                    break;
                case -290000:
                    i2 = i - 16;
                    break;
                case -280000:
                    i2 = i - 5;
                    break;
                case -250000:
                    i2 = i - 5;
                    break;
                case -230000:
                    i2 = i - 7;
                    break;
                case -220000:
                    i2 = i - 2;
                    break;
                case -210000:
                    i2 = i - 3;
                    break;
                case -190000:
                    i2 = i - 3;
                    break;
                case -180000:
                    i2 = i - 3;
                    break;
                case -170000:
                    i2 = i - 15;
                    break;
                case -160000:
                    i2 = i - 6;
                    break;
                case -150000:
                    i2 = i - 3;
                    break;
                case -140000:
                    i2 = i - 3;
                    break;
                case -130000:
                    i2 = i - 4;
                    break;
                case -120000:
                    i2 = i - 3;
                    break;
                case -110000:
                    i2 = i - 3;
                    break;
                case -100000:
                    i2 = i - 3;
                    break;
                case -90000:
                    i2 = i - 3;
                    break;
                case -80000:
                    i2 = i - 3;
                    break;
                case -70000:
                    i2 = i - 3;
                    break;
                case -60000:
                    i2 = i - 3;
                    break;
                case -50000:
                    i2 = i - 4;
                    break;
                case -40000:
                    i2 = i - 3;
                    break;
                case XCallback.PRIORITY_LOWEST /* -10000 */:
                    i2 = i - 3;
                    break;
                default:
                    i2 = i;
                    break;
            }
            if (i2 == i) {
                switch (m4767kH(i)) {
                    case -1500:
                        return i - 5;
                    case -1400:
                        return i - 3;
                    case -1300:
                        return i - 9;
                    case -1200:
                        return i - 14;
                    case -1100:
                        return i - 13;
                    case -1000:
                        return i - 13;
                    case -900:
                        return i - 5;
                    case -800:
                        return i - 3;
                    case -400:
                        return i - 5;
                    case -300:
                        return i - 5;
                }
            }
            return i2;
        }
        return i;
    }

    /* renamed from: X */
    public static final int m4769X(String str, int i) {
        if (str != null) {
            if (str.contains("socket failed: EACCES (Permission denied)")) {
                return -350000;
            }
            if (str.contains("Permission denied")) {
                return -360000;
            }
            if (str.contains("isConnected failed: EHOSTUNREACH (No route to host)")) {
                return -370000;
            }
            if (str.contains("No route to host")) {
                return -380000;
            }
            if (str.contains("socket failed: ECONNRESET (Connection reset by peer)")) {
                return -390000;
            }
            if (str.contains("setsockopt failed: ENOPROTOOPT (Protocol not available)")) {
                return -400000;
            }
            if (str.contains("Protocol not available")) {
                return -410000;
            }
            if (str.contains("Permission denied (missing INTERNET permission?)")) {
                return -430000;
            }
            if (str.contains("failed: ENETUNREACH (Network is unreachable)")) {
                return -450000;
            }
            if (str.contains("failed: ENOTSOCK (Socket operation on non-socket)")) {
                return -460000;
            }
            if (str.contains("isConnected failed: ECONNREFUSED (Connection refused)")) {
                return -470000;
            }
            if (str.contains("isConnected failed: ECONNRESET (Connection reset by peer)")) {
                return -480000;
            }
            if (str.contains("connect failed: errno ")) {
                return -490000;
            }
            return i;
        }
        return i;
    }

    /* renamed from: kZ */
    public static boolean m4764kZ(int i) {
        int m4768kG;
        int m4766kI;
        return (i == 0 || (m4768kG = m4768kG(i)) == -17 || m4768kG == -18 || m4768kG == -7 || m4768kG == -19 || m4768kG == -2 || (m4766kI = m4766kI(i)) == -220000 || m4766kI == -230000 || m4766kI == -160000 || m4766kI == -540000) ? false : true;
    }
}
