package com.king.uranus;

import com.kingroot.kinguser.C3353nk;
import java.io.File;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
/* renamed from: com.king.uranus.cs */
/* loaded from: classes.dex */
public class C0406cs implements Serializable {

    /* renamed from: xk */
    private static final String[] f267xk = {"/init", "/sbin/ueventd", "/system/bin/vold", "/system/bin/netd", "/system/bin/debuggerd", "/system/bin/rild", "/system/bin/installd", "/system/bin/keystore"};

    /* renamed from: xl */
    private static final String[] f268xl = {"/system/bin/servicemanager", "/system/bin/surfaceflinger", "zygote", "zygote64", "system_server"};

    /* renamed from: xm */
    public static int f269xm = 0;

    /* renamed from: xn */
    public static int f270xn = 1;

    /* renamed from: xo */
    public static int f271xo = 2;

    /* renamed from: xp */
    public static int f272xp = 3;

    /* renamed from: ij */
    public long f273ij = System.currentTimeMillis();

    /* renamed from: ik */
    public C0408b f274ik = C0408b.m13647fk();

    /* renamed from: il */
    public ArrayList<C0407a> f275il = m13654fi();

    private C0406cs() {
    }

    /* renamed from: fh */
    public static C0406cs m13655fh() {
        return new C0406cs();
    }

    /* renamed from: fi */
    private static ArrayList<C0407a> m13654fi() {
        C0407a m13649b;
        HashSet hashSet = new HashSet();
        hashSet.addAll(Arrays.asList(f267xk));
        hashSet.addAll(Arrays.asList(f268xl));
        ArrayList<C0407a> arrayList = new ArrayList<>(hashSet.size());
        File file = new File("/proc");
        String[] list = file.list();
        if (list != null) {
            for (String str : list) {
                File file2 = new File(file, str);
                if (file2.isDirectory()) {
                    String m13652l = m13652l(file2);
                    if (m13652l != null) {
                        m13652l = m13656a(hashSet, m13652l);
                    }
                    if (m13652l != null && (m13649b = C0407a.m13649b(m13652l, new File(file2, "stat"))) != null) {
                        arrayList.add(m13649b);
                        hashSet.remove(m13652l);
                    }
                }
            }
        }
        return arrayList;
    }

    /* renamed from: l */
    private static String m13652l(File file) {
        String m2854n;
        String m2854n2;
        File file2 = new File(file, "cmdline");
        if (!file2.exists() || !file2.canRead() || (m2854n2 = C3353nk.m2854n(file2)) == null || m2854n2.length() <= 0) {
            File file3 = new File(file, "comm");
            if (!file3.exists() || !file3.canRead() || (m2854n = C3353nk.m2854n(file3)) == null || m2854n.length() <= 0) {
                return null;
            }
            return m2854n;
        }
        return m2854n2;
    }

    /* renamed from: a */
    public static int m13658a(C0406cs c0406cs, C0406cs c0406cs2, List<String> list) {
        if (c0406cs == null || c0406cs.f274ik == null || c0406cs.f275il == null) {
            return f269xm;
        }
        if (c0406cs2 == null || c0406cs2.f274ik == null || c0406cs2.f275il == null) {
            return f269xm;
        }
        List<String> m13657a = m13657a(c0406cs.f275il, c0406cs2.f275il);
        if (list != null) {
            list.addAll(m13657a);
        }
        if (!c0406cs.f274ik.m13648a(c0406cs2.f274ik)) {
            return f271xo;
        }
        if (m13657a.size() == 0) {
            return f270xn;
        }
        List asList = Arrays.asList(f267xk);
        List asList2 = Arrays.asList(f268xl);
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < m13657a.size(); i3++) {
            if (asList.contains(m13657a.get(i3))) {
                i++;
            } else if (asList2.contains(m13657a.get(i3))) {
                i2++;
            }
        }
        if (m13657a.contains("/init")) {
            return f271xo;
        }
        if (i >= 5 && i2 > 2) {
            return f271xo;
        }
        if (i2 > 0) {
            return f272xp;
        }
        return f270xn;
    }

    /* renamed from: a */
    public static List<String> m13657a(List<C0407a> list, List<C0407a> list2) {
        boolean z;
        ArrayList arrayList = new ArrayList();
        if (list == null || list2 == null) {
            return arrayList;
        }
        for (C0407a c0407a : list) {
            Iterator<C0407a> it = list2.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                C0407a next = it.next();
                if (c0407a.m13651a(next) && c0407a.m13650b(next)) {
                    z = true;
                    break;
                }
            }
            if (!z) {
                arrayList.add(c0407a.name);
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    private static String m13656a(Set<String> set, String str) {
        if (set == null || str == null) {
            return null;
        }
        for (String str2 : set) {
            if (str.startsWith(str2) && str.split("\u0000")[0].equals(str2)) {
                return str2;
            }
        }
        return null;
    }

    /* renamed from: fj */
    public long m13653fj() {
        return System.currentTimeMillis() - this.f273ij;
    }

    /* renamed from: com.king.uranus.cs$b */
    /* loaded from: classes.dex */
    public static class C0408b implements Serializable {

        /* renamed from: ir */
        long f281ir = 0;

        /* renamed from: is */
        long f282is = 0;

        private C0408b() {
        }

        /* renamed from: fk */
        static C0408b m13647fk() {
            C0408b c0408b = new C0408b();
            String m2854n = C3353nk.m2854n(new File("/proc/uptime"));
            if (m2854n != null && m2854n.length() > 0) {
                String[] split = m2854n.split(" ");
                if (split.length == 2) {
                    try {
                        c0408b.f281ir = Float.parseFloat(split[0]);
                        c0408b.f282is = Float.parseFloat(split[1]);
                    } catch (Exception e) {
                    }
                }
            }
            return c0408b;
        }

        /* renamed from: a */
        public boolean m13648a(C0408b c0408b) {
            return c0408b != null && this.f281ir <= c0408b.f281ir && this.f282is <= c0408b.f282is;
        }
    }

    /* renamed from: com.king.uranus.cs$a */
    /* loaded from: classes.dex */
    public static class C0407a implements Serializable {
        int pid = 0;
        String name = "";

        /* renamed from: im */
        long f276im = 0;

        /* renamed from: in */
        long f277in = 0;

        /* renamed from: io */
        long f278io = 0;

        /* renamed from: ip */
        long f279ip = 0;

        /* renamed from: iq */
        long f280iq = 0;

        private C0407a() {
        }

        /* renamed from: b */
        public static C0407a m13649b(String str, File file) {
            if (file.exists() && file.canRead()) {
                String m2854n = C3353nk.m2854n(file);
                if (m2854n == null || m2854n.length() == 0) {
                    return null;
                }
                String[] split = m2854n.split(" ");
                if (split.length > 40) {
                    try {
                        C0407a c0407a = new C0407a();
                        c0407a.name = str;
                        c0407a.pid = Integer.parseInt(split[0].trim());
                        c0407a.f276im = Long.parseLong(split[21].trim());
                        c0407a.f277in = Long.parseLong(split[13].trim());
                        c0407a.f278io = Long.parseLong(split[14].trim());
                        c0407a.f279ip = Long.parseLong(split[15].trim());
                        c0407a.f280iq = Long.parseLong(split[16].trim());
                        return c0407a;
                    } catch (Exception e) {
                    }
                }
                return null;
            }
            return null;
        }

        /* renamed from: a */
        public boolean m13651a(C0407a c0407a) {
            return c0407a != null && this.pid == c0407a.pid && this.f276im == c0407a.f276im && this.name.equals(c0407a.name);
        }

        /* renamed from: b */
        public boolean m13650b(C0407a c0407a) {
            return c0407a != null && this.f277in <= c0407a.f277in && this.f278io <= c0407a.f278io && this.f279ip <= c0407a.f279ip && this.f280iq <= c0407a.f280iq;
        }
    }
}
