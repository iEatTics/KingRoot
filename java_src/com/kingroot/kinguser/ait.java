package com.kingroot.kinguser;

import android.text.TextUtils;
import com.kingroot.kinguses.R;
import java.io.File;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class ait {

    /* renamed from: XJ */
    private static final String f1457XJ = AbstractC3976zt.get("cdpm12");

    /* renamed from: yq */
    public static String m11569yq() {
        return aav.m12908qi() ? aba.m12854qG() + " " + f1457XJ : aba.m12855qF() + " " + f1457XJ;
    }

    /* renamed from: yr */
    public static String m11568yr() {
        return aav.m12908qi() ? aba.m12853qH() + " " + f1457XJ : aba.m12855qF() + " " + f1457XJ;
    }

    /* renamed from: a */
    public static String m11573a(List<String> list, List<String> list2, int i) {
        String m11568yr = m11568yr();
        String m11570j = m11570j(list, true);
        return String.format("%s \"%s\" \"%s\" \"%s\"  \"%s\"", m11568yr, 0, m11570j, m11570j(list2, TextUtils.isEmpty(m11570j)), Integer.valueOf(i));
    }

    /* renamed from: j */
    private static String m11570j(List<String> list, boolean z) {
        Iterator<String> it;
        if (C3942yy.m1352c(list)) {
            return "";
        }
        String str = z ? "" + aas.f1256XR + ";" : "";
        while (true) {
            String str2 = str;
            if (!list.iterator().hasNext()) {
                return str2;
            }
            str = (str2 + it.next()) + ";";
        }
    }

    /* renamed from: ao */
    public static String m11572ao(List<String> list) {
        if (list == null || list.size() == 0) {
            return null;
        }
        return String.format("%s \"%s\" \"%s\"", m11568yr(), 1, m11570j(list, false));
    }

    /* renamed from: gf */
    public static String m11571gf(String str) {
        if (!TextUtils.isEmpty(str)) {
            return String.format("%s \"%s\" \"%s\"", m11569yq(), 2, str);
        }
        return str;
    }

    /* renamed from: ys */
    public static String m11567ys() {
        if (!abc.m12845qK().isRootPermition()) {
            return "";
        }
        String m11566yt = m11566yt();
        if (TextUtils.isEmpty(m11566yt)) {
            return "";
        }
        return m11566yt + " kingroot-dev 100001";
    }

    /* renamed from: yt */
    private static String m11566yt() {
        File file = new File(C3958zl.m1295pw(), "krdem");
        if (!file.exists()) {
            try {
                C3563rs.m2348n(R.raw.krdem, "krdem");
            } catch (Exception e) {
            }
            file = new File(C3958zl.m1295pw(), "krdem");
        }
        if (file.isFile()) {
            return file.getAbsolutePath();
        }
        if (new File("/system/xbin/krdem").isFile()) {
            return "/system/xbin/krdem";
        }
        if (new File("/dev/kingroot/krdem").isFile()) {
            return "/dev/kingroot/krdem";
        }
        if (!new File("/sbin/krdem").isFile()) {
            return null;
        }
        return "/sbin/krdem";
    }
}
