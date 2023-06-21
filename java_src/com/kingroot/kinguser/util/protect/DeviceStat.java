package com.kingroot.kinguser.util.protect;

import android.text.TextUtils;
import com.kingroot.kinguser.C3563rs;
import com.kingroot.kinguser.InterfaceC3562rr;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class DeviceStat implements InterfaceC3562rr {
    private static final long serialVersionUID = 1;
    public long currentTime = System.currentTimeMillis();
    public Uptime uptime = Uptime.acC();
    public ArrayList<ProcStat> procStatList = acy();

    private DeviceStat() {
    }

    public static DeviceStat acx() {
        return new DeviceStat();
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0092, code lost:
        if (r2.length() > 0) goto L30;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static ArrayList<ProcStat> acy() {
        String str;
        ProcStat m1982k;
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(acz());
        arrayList.addAll(acA());
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        arrayList2.addAll(arrayList);
        ArrayList<ProcStat> arrayList3 = new ArrayList<>(arrayList.size());
        File file = new File("/proc");
        String[] list = file.list();
        if (list == null) {
            return arrayList3;
        }
        for (int i = 0; i < list.length && arrayList2.size() != 0; i++) {
            File file2 = new File(file, list[i]);
            if (file2.isDirectory()) {
                File file3 = new File(file2, "cmdline");
                String str2 = (!file3.exists() || !file3.canRead() || (str2 = C3563rs.m2343t(file3)) == null || str2.length() <= 0) ? null : null;
                if (str2 == null) {
                    File file4 = new File(file2, "comm");
                    if (file4.exists()) {
                        if (file4.canRead()) {
                            str = C3563rs.m2343t(file4);
                            if (str != null) {
                            }
                        }
                    }
                }
                str = str2;
                if (str != null) {
                    str = m1986h(arrayList2, str);
                }
                if (str != null && (m1982k = ProcStat.m1982k(str, new File(file2, "stat"))) != null) {
                    arrayList3.add(m1982k);
                    arrayList2.remove(str);
                }
            }
        }
        return arrayList3;
    }

    /* renamed from: a */
    public static int m1987a(DeviceStat deviceStat, DeviceStat deviceStat2, List<String> list) {
        if (deviceStat == null || deviceStat.uptime == null || deviceStat.procStatList == null || deviceStat2 == null || deviceStat2.uptime == null || deviceStat2.procStatList == null) {
            return 0;
        }
        List<String> m1985j = m1985j(deviceStat.procStatList, deviceStat2.procStatList);
        if (list != null) {
            list.addAll(m1985j);
        }
        if (deviceStat.uptime.m1981a(deviceStat2.uptime)) {
            if (m1985j.size() == 0) {
                return 1;
            }
            List<String> acz = acz();
            List<String> acA = acA();
            int i = 0;
            int i2 = 0;
            for (int i3 = 0; i3 < m1985j.size(); i3++) {
                if (acz.contains(m1985j.get(i3))) {
                    i++;
                } else if (acA.contains(m1985j.get(i3))) {
                    i2++;
                }
            }
            if (m1985j.contains("/init")) {
                return 2;
            }
            if (i < 5 || i2 <= 2) {
                return i2 > 0 ? 3 : 1;
            }
            return 2;
        }
        return 2;
    }

    public static List<String> acz() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("/init");
        arrayList.add("/sbin/ueventd");
        arrayList.add("/system/bin/vold");
        arrayList.add("/system/bin/netd");
        arrayList.add("/system/bin/debuggerd");
        arrayList.add("/system/bin/rild");
        arrayList.add("/system/bin/installd");
        arrayList.add("/system/bin/keystore");
        return arrayList;
    }

    public static List<String> acA() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("/system/bin/servicemanager");
        arrayList.add("/system/bin/surfaceflinger");
        arrayList.add("zygote");
        arrayList.add("system_server");
        return arrayList;
    }

    /* renamed from: j */
    public static List<String> m1985j(List<ProcStat> list, List<ProcStat> list2) {
        boolean z;
        ArrayList arrayList = new ArrayList();
        if (list == null || list2 == null) {
            return arrayList;
        }
        for (ProcStat procStat : list) {
            Iterator<ProcStat> it = list2.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                ProcStat next = it.next();
                if (procStat.m1984a(next) && procStat.m1983b(next)) {
                    z = true;
                    break;
                }
            }
            if (!z) {
                arrayList.add(procStat.name);
            }
        }
        return arrayList;
    }

    /* renamed from: h */
    private static String m1986h(List<String> list, String str) {
        if (list == null || str == null) {
            return null;
        }
        for (int i = 0; i < list.size(); i++) {
            if (str.startsWith(list.get(i)) && str.split("\u0000")[0].equals(list.get(i))) {
                return list.get(i);
            }
        }
        return null;
    }

    public long acB() {
        return System.currentTimeMillis() - this.currentTime;
    }

    /* loaded from: classes.dex */
    public static class Uptime implements InterfaceC3562rr {
        private static final long serialVersionUID = 1;
        long boottime = 0;
        long idletime = 0;

        private Uptime() {
        }

        static Uptime acC() {
            Uptime uptime = new Uptime();
            String m2343t = C3563rs.m2343t(new File("/proc/uptime"));
            if (m2343t != null && m2343t.length() > 0) {
                String[] split = m2343t.split(" ");
                if (split.length == 2) {
                    try {
                        uptime.boottime = Float.parseFloat(split[0]);
                        uptime.idletime = Float.parseFloat(split[1]);
                    } catch (Exception e) {
                    }
                }
            }
            return uptime;
        }

        /* renamed from: a */
        public boolean m1981a(Uptime uptime) {
            return uptime != null && this.boottime <= uptime.boottime && this.idletime <= uptime.idletime;
        }
    }

    /* loaded from: classes.dex */
    public static class ProcStat implements InterfaceC3562rr {
        private static final long serialVersionUID = 1;
        int pid = 0;
        String name = "";
        long starttime = 0;
        long utime = 0;
        long stime = 0;
        long cutime = 0;
        long cstime = 0;

        private ProcStat() {
        }

        /* renamed from: k */
        public static ProcStat m1982k(String str, File file) {
            if (file.exists() && file.canRead()) {
                String m2343t = C3563rs.m2343t(file);
                if (TextUtils.isEmpty(m2343t)) {
                    return null;
                }
                String[] split = m2343t.split(" ");
                if (split.length > 40) {
                    try {
                        ProcStat procStat = new ProcStat();
                        procStat.name = str;
                        procStat.pid = Integer.parseInt(split[0].trim());
                        procStat.starttime = Long.parseLong(split[21].trim());
                        procStat.utime = Long.parseLong(split[13].trim());
                        procStat.stime = Long.parseLong(split[14].trim());
                        procStat.cutime = Long.parseLong(split[15].trim());
                        procStat.cstime = Long.parseLong(split[16].trim());
                        return procStat;
                    } catch (Exception e) {
                        return null;
                    }
                }
                return null;
            }
            return null;
        }

        /* renamed from: a */
        public boolean m1984a(ProcStat procStat) {
            return procStat != null && this.pid == procStat.pid && this.starttime == procStat.starttime && this.name.equals(procStat.name);
        }

        /* renamed from: b */
        public boolean m1983b(ProcStat procStat) {
            return procStat != null && this.utime <= procStat.utime && this.stime <= procStat.stime && this.cutime <= procStat.cutime && this.cstime <= procStat.cstime;
        }
    }
}
