package com.kingroot.kinguser;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Process;
import android.text.TextUtils;
import com.kingroot.common.utils.system.ProcessUtils;
import com.kingroot.common.utils.system.VTCmdResult;
import com.kingroot.master.app.KUApplication;
import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import java.util.regex.Pattern;
/* loaded from: classes.dex */
public class bfn {
    private static bfn bmW;
    private Set<String> bmX;
    private static byte[] atT = {Byte.MAX_VALUE, 69, 76, 70};
    private static final bed bmY = new bed(bem.LOW, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.bfn.1
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            if (bfn.aar()) {
                bfn.aas();
                bfn.aat();
                aks.m11143BP().m10839bi(System.currentTimeMillis());
            }
        }
    });

    private bfn() {
    }

    public static bfn aaj() {
        if (bmW == null) {
            synchronized (bfn.class) {
                if (bmW == null) {
                    bmW = new bfn();
                }
            }
        }
        return bmW;
    }

    public void aak() {
        this.bmX = m7258ld("zygote");
    }

    public Set<String> aal() {
        return this.bmX;
    }

    /* renamed from: lc */
    public static String[] m7259lc(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        File file = new File(str);
        if (file.exists() && file.isFile()) {
            return new String[]{file.getAbsolutePath(), "" + file.length(), C3563rs.getFileMD5(file)};
        }
        return null;
    }

    /* renamed from: ld */
    public static Set<String> m7258ld(String str) {
        return m7263b(m7257le(str));
    }

    /* renamed from: b */
    private static Set<String> m7263b(ProcessUtils.ProcessInfo processInfo) {
        String sb;
        HashSet hashSet = new HashSet();
        if (processInfo != null) {
            Set<String> m8817RJ = avl.m8824RC().m8817RJ();
            if (m8817RJ == null || m8817RJ.size() == 0) {
                return hashSet;
            }
            StringBuilder sb2 = new StringBuilder();
            for (String str : m8817RJ) {
                sb2.append(str);
                sb2.append("|");
            }
            String substring = sb2.toString().substring(0, sb.length() - 1);
            if (TextUtils.isEmpty(substring)) {
                return hashSet;
            }
            Pattern compile = Pattern.compile(substring, 2);
            for (String str2 : m7261iz(processInfo.pid)) {
                String m7256lf = m7256lf(str2);
                if (!TextUtils.isEmpty(m7256lf) && compile.matcher(m7256lf).find() && m7255lg(m7256lf)) {
                    hashSet.add(m7256lf);
                }
            }
        }
        return hashSet;
    }

    /* renamed from: iz */
    private static String[] m7261iz(int i) {
        String[] strArr = null;
        VTCmdResult m12846el = abc.m12845qK().m12846el("cat /proc/" + i + "/maps");
        if (m12846el != null && m12846el.success()) {
            strArr = m12846el.mStdOut.split("\n");
        }
        return strArr != null ? strArr : new String[0];
    }

    /* renamed from: le */
    private static ProcessUtils.ProcessInfo m7257le(String str) {
        List<ProcessUtils.ProcessInfo> m7260j = m7260j(str);
        if (m7260j.size() > 0) {
            return m7260j.get(0);
        }
        return null;
    }

    /* renamed from: j */
    private static List<ProcessUtils.ProcessInfo> m7260j(String... strArr) {
        try {
            return m7264P(Arrays.asList(strArr));
        } catch (UnsatisfiedLinkError e) {
            return Collections.emptyList();
        }
    }

    /* renamed from: P */
    private static synchronized List<ProcessUtils.ProcessInfo> m7264P(List<String> list) {
        List<ProcessUtils.ProcessInfo> m13134qJ;
        synchronized (bfn.class) {
            m13134qJ = ProcessUtils.m13134qJ();
            if (list != null) {
                HashSet hashSet = new HashSet();
                hashSet.addAll(list);
                ArrayList arrayList = new ArrayList();
                if (list != null && list.size() > 0) {
                    for (ProcessUtils.ProcessInfo processInfo : m13134qJ) {
                        if (hashSet.contains(processInfo.name)) {
                            arrayList.add(processInfo);
                        }
                    }
                } else {
                    arrayList.addAll(m13134qJ);
                }
                m13134qJ = arrayList;
            }
        }
        return m13134qJ;
    }

    /* renamed from: lf */
    private static String m7256lf(String str) {
        int indexOf = str.indexOf("/");
        return indexOf >= 0 ? str.substring(indexOf) : "";
    }

    /* renamed from: lg */
    private static boolean m7255lg(String str) {
        FileInputStream fileInputStream;
        File file = new File(str);
        if (!file.exists()) {
            return false;
        }
        byte[] bArr = new byte[1024];
        try {
            fileInputStream = new FileInputStream(file);
            try {
                if (fileInputStream.read(bArr, 0, atT.length) != atT.length) {
                    C3945za.m1340c(fileInputStream);
                    return false;
                }
                for (int i = 0; i < atT.length; i++) {
                    if (atT[i] != bArr[i]) {
                        C3945za.m1340c(fileInputStream);
                        return false;
                    }
                }
                C3945za.m1340c(fileInputStream);
                return true;
            } catch (Exception e) {
                C3945za.m1340c(fileInputStream);
                return false;
            } catch (Throwable th) {
                th = th;
                C3945za.m1340c(fileInputStream);
                throw th;
            }
        } catch (Exception e2) {
            fileInputStream = null;
        } catch (Throwable th2) {
            th = th2;
            fileInputStream = null;
        }
    }

    private static List<ActivityManager.RunningAppProcessInfo> aam() {
        ActivityManager activityManager;
        Context ge = KUApplication.m13453ge();
        if (ge == null || (activityManager = (ActivityManager) ge.getSystemService("activity")) == null) {
            return null;
        }
        return activityManager.getRunningAppProcesses();
    }

    /* renamed from: iA */
    static boolean m7262iA(int i) {
        boolean z = true;
        C3952zh m1312pq = C3952zh.m1312pq();
        if (m1312pq == null) {
            return false;
        }
        String[] packagesForUid = m1312pq.getPackagesForUid(i);
        if (packagesForUid != null) {
            int length = packagesForUid.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    z = false;
                    break;
                }
                ApplicationInfo applicationInfo = null;
                try {
                    applicationInfo = m1312pq.getApplicationInfo(packagesForUid[i2], 0);
                } catch (PackageManager.NameNotFoundException e) {
                }
                if (applicationInfo != null && (applicationInfo.flags & 1) != 0) {
                    break;
                }
                i2++;
            }
        }
        return z;
    }

    static List<ActivityManager.RunningAppProcessInfo> aan() {
        List<ActivityManager.RunningAppProcessInfo> aam = aam();
        if (aam != null) {
            int myUid = Process.myUid();
            LinkedList linkedList = new LinkedList();
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : aam) {
                if (runningAppProcessInfo.uid != myUid && runningAppProcessInfo.uid > 10000 && !m7262iA(runningAppProcessInfo.uid)) {
                    linkedList.add(runningAppProcessInfo);
                }
            }
            return linkedList;
        }
        return null;
    }

    private static List<ActivityManager.RunningAppProcessInfo> aao() {
        int myPid = Process.myPid();
        int myUid = Process.myUid();
        List<ActivityManager.RunningAppProcessInfo> aan = aan();
        if (aan == null) {
            return null;
        }
        LinkedList linkedList = new LinkedList();
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : aan) {
            if (runningAppProcessInfo.uid != myUid && runningAppProcessInfo.pid < myPid) {
                linkedList.add(runningAppProcessInfo);
            }
        }
        return linkedList;
    }

    public static void aap() {
        List<ActivityManager.RunningAppProcessInfo> aao = aao();
        LinkedList linkedList = new LinkedList();
        if (aao != null && aao.size() > 0) {
            String[] strArr = new String[aao.size()];
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= strArr.length) {
                    break;
                }
                strArr[i2] = aao.get(i2).processName;
                i = i2 + 1;
            }
            linkedList.add(strArr);
        }
        ahk.m11742al(linkedList);
    }

    public static void aaq() {
        beg.m7461Zj().m7450c(bmY);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean aar() {
        return Math.abs(aks.m11143BP().m11000Ec() - System.currentTimeMillis()) >= 86400000;
    }

    public static void aas() {
        Set<String> m7258ld = m7258ld("zygote");
        ArrayList arrayList = new ArrayList();
        for (String str : m7258ld) {
            String[] m7259lc = m7259lc(str);
            if (m7259lc != null && m7259lc.length == 3) {
                arrayList.add(m7259lc[0] + ";" + m7259lc[1] + ";" + m7259lc[2] + ";");
                if (arrayList.size() >= 10) {
                    break;
                }
            }
        }
        if (arrayList.size() > 0) {
            ahk.m11740e(0, arrayList);
        }
    }

    public static void aat() {
        Set<String> m7263b = m7263b(ProcessUtils.m13146ce(Process.myPid()));
        ArrayList arrayList = new ArrayList();
        for (String str : m7263b) {
            String[] m7259lc = m7259lc(str);
            if (m7259lc != null && m7259lc.length == 3) {
                arrayList.add(m7259lc[0] + ";" + m7259lc[1] + ";" + m7259lc[2] + ";");
                if (arrayList.size() >= 10) {
                    break;
                }
            }
        }
        if (arrayList.size() > 0) {
            ahk.m11739f(0, arrayList);
        }
    }
}
