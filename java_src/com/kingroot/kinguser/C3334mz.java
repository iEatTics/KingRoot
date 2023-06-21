package com.kingroot.kinguser;

import com.king.uranus.EnumC0405cg;
import com.kingroot.loader.common.KlConst;
import java.util.Locale;
/* renamed from: com.kingroot.kinguser.mz */
/* loaded from: classes.dex */
public final class C3334mz {
    public static final String TAG = "Uranus_" + C3334mz.class.getSimpleName();

    /* renamed from: wJ */
    private static C3334mz f3170wJ = new C3334mz();

    /* renamed from: wK */
    private InterfaceC3284lp f3171wK;

    private C3334mz() {
    }

    /* renamed from: eS */
    public static C3334mz m2942eS() {
        return f3170wJ;
    }

    /* renamed from: a */
    public synchronized void m2948a(InterfaceC3284lp interfaceC3284lp) {
        this.f3171wK = interfaceC3284lp;
    }

    /* renamed from: ar */
    private static String m2944ar(int i) {
        return i + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + System.currentTimeMillis();
    }

    /* renamed from: h */
    public void m2941h(int i, int i2) {
        m2939r(m2944ar(EnumC0405cg.EMID_KingCommon_Uranus_Machine_Reboot.f266id), String.format(Locale.ENGLISH, "%d|%d", Integer.valueOf(i), Integer.valueOf(i2)));
    }

    /* renamed from: a */
    public void m2946a(String str, int i, String str2, int i2, String str3, String str4) {
        m2939r(m2944ar(EnumC0405cg.EMID_KingCommon_Uranus_Inject_Result.f266id), String.format(Locale.ENGLISH, "%s|%d|%s|%d|%s|%s", str, Integer.valueOf(i), str2, Integer.valueOf(i2), str3, str4));
    }

    /* renamed from: a */
    public String m2950a(int i, int i2, boolean z, String str) {
        String m2944ar = m2944ar(EnumC0405cg.EMID_KingCommon_Uranus_Load_Task_Result.f266id);
        m2947a(m2944ar, i, i2, z, str);
        return m2944ar;
    }

    /* renamed from: a */
    public void m2947a(String str, int i, int i2, boolean z, String str2) {
        Locale locale = Locale.ENGLISH;
        Object[] objArr = new Object[4];
        objArr[0] = Integer.valueOf(i);
        objArr[1] = Integer.valueOf(i2);
        objArr[2] = Integer.valueOf(z ? 1 : 0);
        if (z) {
            str2 = "system_server";
        }
        objArr[3] = str2;
        m2939r(str, String.format(locale, "%d|%d|%d|%s", objArr));
    }

    /* renamed from: a */
    public void m2949a(int i, boolean z, int i2) {
        String m2944ar = m2944ar(EnumC0405cg.EMID_KingCommon_Uranus_Daemon_Result.f266id);
        Locale locale = Locale.ENGLISH;
        Object[] objArr = new Object[3];
        objArr[0] = Integer.valueOf(i);
        objArr[1] = Integer.valueOf(z ? 0 : 1);
        objArr[2] = Integer.valueOf(i2);
        m2939r(m2944ar, String.format(locale, "%d|%d|%d", objArr));
    }

    /* renamed from: j */
    public void m2940j(int i, boolean z) {
        m2949a(i, z, -1);
    }

    /* renamed from: bD */
    public String m2943bD(String str) {
        String m2944ar = m2944ar(EnumC0405cg.EMID_KingCommon_Uranus_Daemon_Load_Mod_Result.f266id);
        m2939r(m2944ar, String.format(Locale.ENGLISH, "%s|%d", str, -1));
        return m2944ar;
    }

    /* renamed from: a */
    public void m2945a(String str, String str2, int i) {
        m2939r(str, String.format(Locale.ENGLISH, "%s|%d", str2, Integer.valueOf(i)));
    }

    /* renamed from: r */
    private void m2939r(String str, String str2) {
        this.f3171wK.mo3164j(str, str2);
        ((InterfaceC3158hn) C3183ih.m3501a(InterfaceC3158hn.class)).mo3394g(str, str2);
    }
}
