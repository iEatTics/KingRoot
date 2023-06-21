package com.kingroot.kinguser;

import java.io.File;
/* renamed from: com.kingroot.kinguser.nm */
/* loaded from: classes.dex */
public class C3355nm {
    /* renamed from: bN */
    public static int m2845bN(String str) {
        if (str == null) {
            return -1;
        }
        return str.lastIndexOf(File.separatorChar);
    }

    /* renamed from: bO */
    public static int m2844bO(String str) {
        int lastIndexOf;
        if (str != null && m2845bN(str) <= (lastIndexOf = str.lastIndexOf(46))) {
            return lastIndexOf;
        }
        return -1;
    }

    /* renamed from: bP */
    public static String m2843bP(String str) {
        if (str == null) {
            return null;
        }
        int m2844bO = m2844bO(str);
        if (m2844bO == -1) {
            return "";
        }
        return str.substring(m2844bO + 1);
    }

    /* renamed from: bQ */
    public static String m2842bQ(String str) {
        if (str == null) {
            return null;
        }
        int m2844bO = m2844bO(str);
        return m2844bO != -1 ? str.substring(0, m2844bO) : str;
    }
}
