package com.kingroot.kinguser;

import com.kingroot.loader.common.KlConst;
import java.util.Locale;
import java.util.TimeZone;
/* renamed from: com.kingroot.kinguser.zb */
/* loaded from: classes.dex */
public class C3946zb {
    /* renamed from: pi */
    public static String m1333pi() {
        return Locale.getDefault().getLanguage() + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + Locale.getDefault().getCountry();
    }

    /* renamed from: pj */
    public static boolean m1332pj() {
        String m1333pi = m1333pi();
        return "zh_CN".equals(m1333pi) || "zh_TW".equals(m1333pi) || "zh_HK".equals(m1333pi);
    }

    /* renamed from: pk */
    public static boolean m1331pk() {
        if (m1332pj()) {
            return true;
        }
        TimeZone timeZone = TimeZone.getDefault();
        return timeZone.getID().equals("Asia/Shanghai") || timeZone.getID().equals("Asia/Hong_Kong") || timeZone.getID().equals("Asia/Taipei");
    }

    /* renamed from: pl */
    public static boolean m1330pl() {
        if (m1332pj()) {
            return false;
        }
        TimeZone timeZone = TimeZone.getDefault();
        return !(timeZone.getID().equals("Asia/Shanghai") || timeZone.getID().equals("Asia/Hong_Kong") || timeZone.getID().equals("Asia/Taipei")) || C3952zh.m1312pq().m1314du("com.android.vending");
    }
}
