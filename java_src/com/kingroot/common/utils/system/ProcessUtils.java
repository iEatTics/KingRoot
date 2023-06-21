package com.kingroot.common.utils.system;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Debug;
import android.os.Process;
import android.support.annotation.Nullable;
import android.support.p007v7.internal.widget.ActivityChooserView;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.C3563rs;
import com.kingroot.kinguser.C3942yy;
import com.kingroot.kinguser.C3952zh;
import com.kingroot.kinguser.aab;
import com.kingroot.kinguser.aat;
import com.kingroot.kinguser.abc;
import com.kingroot.kinguser.abd;
import com.kingroot.kinguser.abi;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
/* loaded from: classes.dex */
public final class ProcessUtils {

    /* renamed from: com.kingroot.common.utils.system.ProcessUtils$a */
    /* loaded from: classes.dex */
    public static class C0577a {
        public long mCpuTime;
        public long mStartTime;
    }

    /* renamed from: O */
    public static int m13153O(List<Integer> list) {
        int i;
        Debug.MemoryInfo[] processMemoryInfo;
        int size = list != null ? list.size() : 0;
        if (size == 0) {
            return 0;
        }
        int[] iArr = new int[size];
        for (int i2 = 0; i2 < size; i2++) {
            iArr[i2] = list.get(i2).intValue();
        }
        ActivityManager activityManager = (ActivityManager) KApplication.m13453ge().getSystemService("activity");
        if (activityManager == null || (processMemoryInfo = activityManager.getProcessMemoryInfo(iArr)) == null) {
            i = 0;
        } else {
            i = 0;
            for (Debug.MemoryInfo memoryInfo : processMemoryInfo) {
                i += memoryInfo.getTotalPss();
            }
        }
        return i;
    }

    /* renamed from: m */
    public static boolean m13140m(Context context, String str) {
        return abd.m12839qb() >= 8 ? m13145eh(str) : m13139n(context, str);
    }

    /* renamed from: eh */
    private static boolean m13145eh(String str) {
        String str2 = "service call activity 79 s16 " + str;
        abc m12845qK = abc.m12845qK();
        return m12845qK.isRootPermition(true) && m12845qK.m12846el(str2).success();
    }

    /* renamed from: n */
    private static boolean m13139n(Context context, String str) {
        m13138o(context, str);
        return true;
    }

    /* renamed from: o */
    private static void m13138o(Context context, String str) {
        C3952zh m1312pq = C3952zh.m1312pq();
        List<ActivityManager.RunningServiceInfo> runningServices = ((ActivityManager) context.getSystemService("activity")).getRunningServices(100);
        if (runningServices != null) {
            for (ActivityManager.RunningServiceInfo runningServiceInfo : runningServices) {
                if (runningServiceInfo.service.getPackageName().equals(str)) {
                    ServiceInfo serviceInfo = null;
                    try {
                        serviceInfo = m1312pq.getServiceInfo(runningServiceInfo.service, 0);
                    } catch (PackageManager.NameNotFoundException e) {
                    } catch (RuntimeException e2) {
                    }
                    if (serviceInfo != null && serviceInfo.permission == null && serviceInfo.exported) {
                        Intent intent = new Intent();
                        intent.setComponent(runningServiceInfo.service);
                        try {
                            context.stopService(intent);
                        } catch (Exception e3) {
                        }
                    }
                }
            }
        }
    }

    /* renamed from: cc */
    public static C0577a m13148cc(int i) {
        C0577a c0577a = new C0577a();
        c0577a.mCpuTime = aat.m12937bZ(i);
        c0577a.mStartTime = 0L;
        return c0577a;
    }

    /* renamed from: cd */
    public static String m13147cd(int i) {
        byte[] m2349h;
        try {
            String str = "";
            byte[] m2349h2 = C3563rs.m2349h(String.format(Locale.ENGLISH, "/proc/%d/cmdline", Integer.valueOf(i)), 100);
            if (m2349h2 != null) {
                str = new String(m2349h2, 0, m13150a(m2349h2, 0, (char) 0));
            }
            if (TextUtils.isEmpty(str) && (m2349h = C3563rs.m2349h(String.format(Locale.ENGLISH, "/proc/%d/status", Integer.valueOf(i)), 150)) != null) {
                int m13150a = m13150a(m2349h, 7, '\n');
                if (m13150a == 0) {
                    return "";
                }
                return new String(m2349h, 6, m13150a - 6);
            }
            return str;
        } catch (Throwable th) {
            return "";
        }
    }

    /* renamed from: qI */
    public static List<ProcessInfo> m13135qI() {
        ArrayList arrayList = new ArrayList();
        List<ProcessInfo> m13134qJ = m13134qJ();
        if (C3942yy.m1351d(m13134qJ)) {
            return arrayList;
        }
        for (ProcessInfo processInfo : m13134qJ) {
            if (processInfo.uid >= 10000) {
                arrayList.add(processInfo);
            }
        }
        return arrayList;
    }

    /* renamed from: qJ */
    public static List<ProcessInfo> m13134qJ() {
        ProcessInfo m13146ce;
        ArrayList arrayList = new ArrayList();
        String[] list = new File("/proc").list();
        if (list != null) {
            for (String str : list) {
                if (!TextUtils.isEmpty(str)) {
                    try {
                        char charAt = str.charAt(0);
                        if (charAt <= '9' && charAt >= '0' && (m13146ce = m13146ce(Integer.parseInt(str))) != null) {
                            arrayList.add(m13146ce);
                        }
                    } catch (Exception e) {
                    }
                }
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    private static int m13150a(byte[] bArr, int i, char c) {
        int i2 = i - 1;
        while (true) {
            int i3 = i2 + 1;
            if (i2 >= bArr.length) {
                return 0;
            }
            if (i3 == bArr.length || bArr[i3] == c) {
                return i3;
            }
            i2 = i3;
        }
    }

    @Nullable
    /* renamed from: ce */
    public static ProcessInfo m13146ce(int i) {
        int i2;
        String str;
        int i3;
        String str2;
        int i4;
        try {
            String m13147cd = m13147cd(i);
            try {
                String str3 = new String(C3563rs.m2355cy(String.format(Locale.ENGLISH, "/proc/%d/status", Integer.valueOf(i))));
                HashMap hashMap = new HashMap();
                for (String str4 : str3.split("\n")) {
                    String[] split = str4.split(":");
                    if (split.length >= 2) {
                        hashMap.put(split[0].trim(), split[1].trim());
                    }
                }
                int parseInt = Integer.parseInt((String) hashMap.get("PPid"));
                try {
                    int parseInt2 = Integer.parseInt(((String) hashMap.get("Uid")).split("\\s+")[0]);
                    str2 = m13147cd;
                    i3 = parseInt;
                    i4 = parseInt2;
                } catch (Exception e) {
                    i2 = parseInt;
                    str = m13147cd;
                    i3 = i2;
                    str2 = str;
                    i4 = -1;
                    if (str2 != null) {
                    }
                    return null;
                }
            } catch (Exception e2) {
                i2 = -1;
                str = m13147cd;
            }
        } catch (Exception e3) {
            i2 = -1;
            str = null;
        }
        if (str2 != null || i3 == -1 || i4 == -1) {
            return null;
        }
        return new ProcessInfo(i, i3, str2, i4);
    }

    /* renamed from: P */
    public static final List<ProcessInfo> m13152P(List<String> list) {
        return m13141g(list, false);
    }

    /* renamed from: g */
    public static final List<ProcessInfo> m13141g(List<String> list, boolean z) {
        VTCmdResult m12831em;
        boolean z2;
        ArrayList arrayList = new ArrayList();
        try {
            m12831em = abi.m12831em("ps");
        } catch (Throwable th) {
        }
        if (m12831em == null || !m12831em.success() || TextUtils.isEmpty(m12831em.mStdOut)) {
            return arrayList;
        }
        String[] split = m12831em.mStdOut.split("\n");
        if (split == null || split.length < 1) {
            return arrayList;
        }
        String str = split[0];
        C0578b c0578b = null;
        if (TextUtils.isEmpty(str)) {
            z2 = true;
        } else if (str.contains("PID")) {
            c0578b = m13144ei(str);
            z2 = true;
        } else {
            z2 = false;
        }
        if (c0578b == null) {
            c0578b = new C0578b(0, 1, 2, 8);
        }
        for (int i = z2 ? 1 : 0; i < split.length; i++) {
            ProcessInfo m13151a = m13151a(split[i], c0578b);
            if (m13151a != null && (list == null || list.contains(m13151a.name))) {
                if (z) {
                    m13151a.loadUid();
                }
                arrayList.add(m13151a);
            }
        }
        return arrayList;
    }

    /* renamed from: f */
    public static final Map<String, Integer> m13142f(Context context, List<ProcessInfo> list) {
        HashMap hashMap;
        List<ActivityManager.RunningServiceInfo> runningServices;
        HashMap hashMap2 = null;
        try {
            hashMap = new HashMap();
            try {
                runningServices = ((ActivityManager) context.getSystemService("activity")).getRunningServices(ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
            } catch (Throwable th) {
                hashMap2 = hashMap;
            }
        } catch (Throwable th2) {
        }
        if (runningServices != null) {
            for (ActivityManager.RunningServiceInfo runningServiceInfo : runningServices) {
                if (runningServiceInfo != null && (runningServiceInfo.flags & 4) == 0) {
                    String packageName = runningServiceInfo.service.getPackageName();
                    if (list != null && hashMap.get(packageName) == null) {
                        list.add(new ProcessInfo(runningServiceInfo.uid, runningServiceInfo.pid, runningServiceInfo.service.getPackageName(), runningServiceInfo.process));
                    }
                    if (runningServiceInfo.service != null) {
                        hashMap.put(packageName, 0);
                    }
                }
            }
            hashMap2 = hashMap;
            return hashMap2;
        }
        return hashMap;
    }

    /* renamed from: ei */
    private static C0578b m13144ei(String str) {
        int i = 1;
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            String[] m13020L = aab.m13020L(str, " ");
            if (m13020L == null || m13020L.length < 1) {
                return null;
            }
            int length = m13020L.length;
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            int i5 = 8;
            int i6 = 2;
            while (i2 < length) {
                String str2 = m13020L[i2];
                if ("USER".equals(str2)) {
                    i3 = i4;
                } else if ("PID".equals(str2)) {
                    i = i4;
                } else if ("PPID".equals(str2)) {
                    i6 = i4;
                } else if ("NAME".equals(str2)) {
                    i5 = i4 + 1;
                }
                i2++;
                i4++;
            }
            return new C0578b(i3, i, i6, i5);
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: a */
    private static ProcessInfo m13151a(String str, C0578b c0578b) {
        try {
            if (TextUtils.isEmpty(str) || c0578b == null) {
                return null;
            }
            String[] m13020L = aab.m13020L(str, " ");
            if (m13020L == null || m13020L.length < 1) {
                return null;
            }
            return new ProcessInfo(m13020L[c0578b.getIndex(0)], Integer.parseInt(m13020L[c0578b.getIndex(1)]), Integer.parseInt(m13020L[c0578b.getIndex(2)]), m13020L[c0578b.getIndex(3)]);
        } catch (Throwable th) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.common.utils.system.ProcessUtils$b */
    /* loaded from: classes.dex */
    public static class C0578b {

        /* renamed from: YL */
        private int[] f1193YL = new int[4];

        public C0578b(int i, int i2, int i3, int i4) {
            this.f1193YL[0] = i;
            this.f1193YL[1] = i2;
            this.f1193YL[2] = i3;
            this.f1193YL[3] = i4;
        }

        public int getIndex(int i) {
            return this.f1193YL[i];
        }
    }

    /* loaded from: classes.dex */
    public static class ProcessInfo {
        public String name;
        public int pid;
        public String pkg;
        public int ppid;
        public int uid;
        public String user;

        public ProcessInfo(String str, int i, int i2, String str2) {
            this.user = "";
            this.name = "";
            this.user = str;
            this.pid = i;
            this.ppid = i2;
            this.name = str2;
        }

        public ProcessInfo(int i, int i2, String str, int i3) {
            this.user = "";
            this.name = "";
            this.pid = i;
            this.ppid = i2;
            this.name = str;
            this.uid = i3;
        }

        public ProcessInfo(int i, int i2, String str, String str2) {
            this.user = "";
            this.name = "";
            this.uid = i;
            this.pid = i2;
            this.pkg = str;
            this.name = str2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void loadUid() {
            this.uid = Process.getUidForName(this.user);
        }

        public String toString() {
            return "USER=" + this.user + " PID=" + this.pid + " PPID=" + this.ppid + " NAME=" + this.name + " UID=" + this.uid;
        }
    }

    /* renamed from: p */
    public static boolean m13137p(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        List<ProcessInfo> m13141g = m13141g(arrayList, true);
        return m13141g != null && m13141g.size() > 0;
    }

    /* renamed from: ej */
    public static int m13143ej(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        List<ProcessInfo> m13141g = m13141g(arrayList, true);
        if (m13141g == null || m13141g.size() <= 0) {
            return -1;
        }
        return m13141g.get(0).pid;
    }

    /* renamed from: an */
    public static boolean m13149an(Context context) {
        return m13136q(context, context.getPackageName());
    }

    /* renamed from: q */
    public static boolean m13136q(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            List<ActivityManager.RunningTaskInfo> runningTasks = ((ActivityManager) context.getSystemService("activity")).getRunningTasks(1);
            if (!C3942yy.m1351d(runningTasks)) {
                if (TextUtils.equals(runningTasks.get(0).topActivity.getPackageName(), str)) {
                    return true;
                }
            }
        } catch (Exception e) {
        }
        return false;
    }
}
