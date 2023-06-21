package com.kingroot.kinguser;

import android.text.TextUtils;
import com.kingroot.common.utils.system.VTCmdResult;
import com.kingroot.kinguser.C3956zk;
import com.kingroot.loader.common.KlConst;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.kingroot.kinguser.zn */
/* loaded from: classes.dex */
public class C3966zn {

    /* renamed from: com.kingroot.kinguser.zn$a */
    /* loaded from: classes.dex */
    public static class C3968a {

        /* renamed from: WN */
        public int f4097WN = -1;

        /* renamed from: WO */
        public int f4098WO = -1;
        public int mode = -1;
        public long size = -1;

        /* renamed from: WP */
        public String f4099WP = null;

        /* renamed from: WQ */
        public int f4100WQ = -1;
    }

    /* renamed from: H */
    public static int m1279H(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return -3;
        }
        if (TextUtils.isEmpty(str)) {
            return -2;
        }
        File file = new File(str);
        if (file.exists()) {
            if (file.length() == 0) {
                return -4;
            }
            File file2 = new File(str2);
            if (file2.exists()) {
                if (file.length() == file2.length()) {
                    long m2347p = C3563rs.m2347p(file);
                    long m2347p2 = C3563rs.m2347p(file2);
                    if (m2347p != 0 && m2347p == m2347p2) {
                        return 0;
                    }
                }
                return -1;
            }
            return -2;
        }
        return -3;
    }

    /* renamed from: a */
    public static int m1277a(String str, C3968a c3968a) {
        return m1276a(null, str, c3968a);
    }

    /* renamed from: a */
    public static int m1276a(String str, String str2, C3968a c3968a) {
        int i = 0;
        C3968a m1278I = m1278I(str, str2);
        if (m1278I == null) {
            return -1;
        }
        if ((c3968a.f4097WN != -1 && m1278I.f4097WN != c3968a.f4097WN) || (c3968a.f4098WO != -1 && m1278I.f4098WO != c3968a.f4098WO)) {
            i = 1;
        }
        if (c3968a.mode != -1 && m1278I.mode != c3968a.mode) {
            i |= 2;
        } else if (c3968a.f4100WQ != -1 && (m1278I.mode & c3968a.f4100WQ) != c3968a.f4100WQ) {
            i |= 2;
        }
        if (c3968a.size != -1 && m1278I.size != c3968a.size) {
            i |= 4;
        }
        if (!TextUtils.isEmpty(c3968a.f4099WP) && !TextUtils.isEmpty(m1278I.f4099WP) && !m1278I.f4099WP.equals(c3968a.f4099WP)) {
            return i | 8;
        }
        return i;
    }

    /* renamed from: I */
    public static C3968a m1278I(String str, String str2) {
        C3968a c3968a = new C3968a();
        if (str == null) {
            str = aba.m12855qF() + " zls";
        }
        VTCmdResult m1272dB = m1272dB(str + " " + str2);
        if (!m1272dB.success()) {
            m1272dB = abj.m12827Q("sh", str + " " + str2);
        }
        if (!m1272dB.success() || m1272dB.mStdOut.trim().equals("Hehe")) {
            return null;
        }
        String[] split = m1272dB.mStdOut.split(" ");
        if (split.length >= 5) {
            try {
                c3968a.mode = Integer.parseInt(split[0].trim());
                c3968a.f4097WN = Integer.parseInt(split[1].trim());
                c3968a.f4098WO = Integer.parseInt(split[2].trim());
                c3968a.size = Long.parseLong(split[3].trim());
                c3968a.f4099WP = split[4].trim().equals(KlConst.PLUGIN_COMMON_PACKAGE_PREFIX_SPLIT_CHAR) ? null : split[4].trim();
                return c3968a;
            } catch (Exception e) {
                return null;
            }
        }
        return null;
    }

    /* renamed from: dB */
    private static VTCmdResult m1272dB(String str) {
        return abc.m12845qK().m12846el(str);
    }

    /* renamed from: a */
    public static boolean m1275a(List<String> list, C3968a c3968a) {
        for (String str : list) {
            File file = new File(str);
            if (file.exists()) {
                try {
                    if (!C3563rs.m2344s(file) && m1277a(str, c3968a) != 0) {
                        return true;
                    }
                } catch (IOException e) {
                }
            }
        }
        return false;
    }

    /* renamed from: b */
    public static void m1273b(List<String> list, C3968a c3968a) {
        for (String str : list) {
            m1274b(str, c3968a);
        }
    }

    /* renamed from: b */
    public static void m1274b(String str, C3968a c3968a) {
        try {
            if (!C3563rs.m2344s(new File(str))) {
                C3956zk.m1302a(new C3956zk.InterfaceC3957a<Object>() { // from class: com.kingroot.kinguser.zn.1
                    @Override // com.kingroot.kinguser.C3956zk.InterfaceC3957a
                    public Object execute(List<Object> list) {
                        String str2 = (String) list.get(0);
                        C3968a c3968a2 = (C3968a) list.get(1);
                        abc m12845qK = abc.m12845qK();
                        if (m12845qK.isRootPermition(true)) {
                            ArrayList arrayList = new ArrayList();
                            arrayList.addAll(aar.m12944r(str2, false));
                            if (c3968a2.f4097WN != -1 && c3968a2.f4098WO != -1) {
                                arrayList.add(String.format("chown %d.%d %s", Integer.valueOf(c3968a2.f4097WN), Integer.valueOf(c3968a2.f4098WO), str2));
                            }
                            if (c3968a2.mode != -1) {
                                arrayList.add(String.format("chmod 0%o %s", Integer.valueOf(c3968a2.mode), str2));
                            }
                            if (c3968a2.f4099WP != null) {
                                arrayList.add(String.format("chcon %1$s %2$s;/system/bin/toolbox chcon %1$s %2$s", c3968a2.f4099WP, str2));
                            }
                            arrayList.addAll(aar.m12944r(str2, true));
                            m12845qK.runRootCommands(arrayList);
                            return null;
                        }
                        return null;
                    }
                }, str, c3968a);
            }
        } catch (IOException e) {
        }
    }
}
