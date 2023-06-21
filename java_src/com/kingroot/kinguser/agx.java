package com.kingroot.kinguser;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Environment;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import com.kingroot.common.utils.system.ProcessUtils;
import com.kingroot.kinguser.advance.install.aidl.SilentInstallRequest;
import com.kingroot.kinguser.advance.model.SilentInstallLogInfo;
import com.kingroot.kinguses.R;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes.dex */
public class agx {
    /* renamed from: a */
    public static SilentInstallLogInfo m11885a(SilentInstallRequest silentInstallRequest) {
        SilentInstallLogInfo silentInstallLogInfo = new SilentInstallLogInfo();
        int i = silentInstallRequest.and;
        int i2 = silentInstallRequest.ane;
        if (i2 == 2000) {
            silentInstallLogInfo.mTime = silentInstallRequest.ang;
            silentInstallLogInfo.ane = i2;
            silentInstallLogInfo.anE = "com.android.shell";
            silentInstallLogInfo.apJ = C3953zi.m1311pr().getString(R.string.silent_install_setting_app_page_usb_item);
            silentInstallLogInfo.apM = 2;
        } else {
            List<ProcessUtils.ProcessInfo> m11886a = m11886a(i, silentInstallLogInfo);
            String m11883ag = m11883ag(m11886a);
            String m11884a = m11884a(m11886a, silentInstallLogInfo);
            if (!TextUtils.isEmpty(m11883ag)) {
                silentInstallLogInfo.apM = 2;
                m11884a = m11883ag;
            }
            silentInstallLogInfo.mTime = silentInstallRequest.ang;
            silentInstallLogInfo.ane = i2;
            if (TextUtils.isEmpty(m11884a)) {
                silentInstallLogInfo.anE = "unknown";
                silentInstallLogInfo.apM = 0;
                silentInstallLogInfo.apJ = C3953zi.m1311pr().getString(R.string.silent_install_unknown_app);
            } else {
                silentInstallLogInfo.anE = m11884a;
                silentInstallLogInfo.apJ = bgh.m7115jf(m11884a);
            }
        }
        PackageInfo packageArchiveInfo = C3952zh.m1312pq().getPackageArchiveInfo(silentInstallRequest.anf, 1);
        silentInstallLogInfo.apL = silentInstallRequest.anf;
        if (packageArchiveInfo != null) {
            ApplicationInfo applicationInfo = packageArchiveInfo.applicationInfo;
            applicationInfo.sourceDir = silentInstallRequest.anf;
            applicationInfo.publicSourceDir = silentInstallRequest.anf;
            silentInstallLogInfo.anH = packageArchiveInfo.packageName;
            silentInstallLogInfo.apK = C3952zh.m1312pq().getApplicationLabel(applicationInfo).toString();
            File file = new File(silentInstallRequest.anf);
            if (file.exists()) {
                silentInstallLogInfo.anJ = String.valueOf(file.length());
                silentInstallLogInfo.anI = aaz.m12871ea(file.getAbsolutePath());
            }
        }
        if (TextUtils.isEmpty(silentInstallLogInfo.apK)) {
            silentInstallLogInfo.apK = C3953zi.m1311pr().getString(R.string.silent_install_unknown_app);
        }
        return silentInstallLogInfo;
    }

    /* renamed from: a */
    private static List<ProcessUtils.ProcessInfo> m11886a(int i, SilentInstallLogInfo silentInstallLogInfo) {
        ArrayList arrayList = new ArrayList();
        int i2 = 20;
        while (true) {
            int i3 = i2 - 1;
            if (i2 <= 0 || i <= 1) {
                break;
            }
            try {
                ProcessUtils.ProcessInfo m11881dh = m11881dh(i);
                if (m11881dh == null) {
                    break;
                }
                i = m11881dh.ppid;
                if (!TextUtils.isEmpty(m11881dh.name)) {
                    silentInstallLogInfo.anL += m11881dh.name + ";";
                }
                arrayList.add(m11881dh);
                i2 = i3;
            } catch (Exception e) {
            }
        }
        return arrayList;
    }

    /* renamed from: ag */
    private static String m11883ag(List<ProcessUtils.ProcessInfo> list) {
        agv m11892fC;
        if (C3942yy.m1351d(list)) {
            return null;
        }
        for (ProcessUtils.ProcessInfo processInfo : list) {
            if (processInfo != null) {
                try {
                    if (processInfo.name.startsWith("k_shell/")) {
                        String[] split = processInfo.name.split(":");
                        if (split.length >= 2) {
                            ProcessUtils.ProcessInfo m11881dh = m11881dh(Integer.valueOf(split[1]).intValue());
                            return m11881dh != null ? m11882dg(m11881dh.uid) : null;
                        }
                    } else if (processInfo.name.startsWith("daemonsu:")) {
                        String[] split2 = processInfo.name.split(":");
                        if (split2.length == 2) {
                            return m11882dg(Integer.valueOf(split2[1]).intValue());
                        }
                        if (split2.length == 3) {
                            ProcessUtils.ProcessInfo m11881dh2 = m11881dh(Integer.valueOf(split2[2]).intValue());
                            if (m11881dh2 != null) {
                                return m11882dg(m11881dh2.uid);
                            }
                            return null;
                        }
                    } else if (processInfo.name.startsWith("k_worker/") || processInfo.name.startsWith("kworker/")) {
                        C0917a m11880di = m11880di(processInfo.pid);
                        if (m11880di == null || (m11892fC = agv.m11892fC(m11880di.anm)) == null || !agw.m11888a(m11880di.anm, m11892fC)) {
                            return null;
                        }
                        return KApplication.m13453ge().getPackageName();
                    }
                } catch (Exception e) {
                }
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0057 A[SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static String m11884a(List<ProcessUtils.ProcessInfo> list, SilentInstallLogInfo silentInstallLogInfo) {
        String str;
        String str2 = null;
        for (ProcessUtils.ProcessInfo processInfo : list) {
            C0917a m11880di = m11880di(processInfo.pid);
            if (m11880di != null) {
                if (TextUtils.isEmpty(silentInstallLogInfo.anK)) {
                    silentInstallLogInfo.anK = m11880di.anm;
                }
                try {
                    str = m11882dg(Integer.parseInt(m11880di.ano));
                    try {
                        silentInstallLogInfo.apM = 5;
                        if (TextUtils.isEmpty(str)) {
                            str = m11879fE(m11880di.anm);
                            silentInstallLogInfo.apM = 3;
                            if (TextUtils.isEmpty(str)) {
                                str = m11879fE(m11880di.ann);
                                silentInstallLogInfo.apM = 4;
                            }
                        }
                    } catch (Exception e) {
                        silentInstallLogInfo.apM = 0;
                        if (TextUtils.isEmpty(str)) {
                        }
                    }
                } catch (Exception e2) {
                    str = str2;
                }
                if (TextUtils.isEmpty(str)) {
                    return str;
                }
                str2 = str;
            }
        }
        return str2;
    }

    /* renamed from: fE */
    private static String m11879fE(String str) {
        if (!TextUtils.isEmpty(str) && str.startsWith(Environment.getDataDirectory().toString())) {
            Matcher matcher = Pattern.compile("\\w+(\\.\\w+)+").matcher(str);
            if (matcher.find()) {
                return matcher.group(0);
            }
            return null;
        }
        return null;
    }

    /* renamed from: dg */
    private static String m11882dg(int i) {
        String[] packagesForUid;
        if (i < 10000 || (packagesForUid = C3952zh.m1312pq().getPackagesForUid(i)) == null || packagesForUid.length == 0) {
            return null;
        }
        return packagesForUid[0];
    }

    /* renamed from: fF */
    private static String m11878fF(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(str);
        try {
            List<InterfaceC3148hd> runCommands = ((InterfaceC3157hm) C3183ih.m3501a(InterfaceC3157hm.class)).runCommands(arrayList);
            if (!C3942yy.m1351d(runCommands)) {
                InterfaceC3148hd interfaceC3148hd = runCommands.get(0);
                if (interfaceC3148hd.mo3232aW() == 0) {
                    return interfaceC3148hd.mo3233aV();
                }
            }
        } catch (Throwable th) {
        }
        return null;
    }

    /* renamed from: dh */
    private static ProcessUtils.ProcessInfo m11881dh(int i) {
        String m13147cd = ProcessUtils.m13147cd(i);
        int i2 = -1;
        int i3 = -1;
        for (String str : m11878fF(String.format("cat /proc/%d/status", Integer.valueOf(i))).split("\n")) {
            String[] split = str.split(":");
            try {
                if (split.length >= 2) {
                    String trim = split[0].trim();
                    if ("PPid".equalsIgnoreCase(trim)) {
                        i2 = Integer.parseInt(split[1].trim());
                    } else if ("Uid".equalsIgnoreCase(trim)) {
                        String[] split2 = split[1].trim().split("\t");
                        if (split2.length >= 1) {
                            i3 = Integer.parseInt(split2[0].trim());
                        }
                    }
                }
            } catch (Exception e) {
            }
            if (i2 != -1 && i3 != -1) {
                break;
            }
        }
        return new ProcessUtils.ProcessInfo(i, i2, m13147cd, i3);
    }

    /* renamed from: di */
    private static C0917a m11880di(int i) {
        String m11878fF = m11878fF(String.format(Locale.ENGLISH, aas.f1264XZ, Integer.valueOf(i)));
        if (TextUtils.isEmpty(m11878fF)) {
            return null;
        }
        String[] split = m11878fF.replace('\n', ' ').split(" ");
        if (split.length >= 4) {
            C0917a c0917a = new C0917a();
            c0917a.anl = split[0];
            c0917a.anm = split[1].equals("???") ? "" : split[1];
            c0917a.ann = split[2].equals("???") ? "" : split[2];
            try {
                c0917a.ano = split[3].equals("???") ? "0" : split[3];
            } catch (Exception e) {
            }
            return c0917a;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.agx$a */
    /* loaded from: classes.dex */
    public static class C0917a {
        String anl;
        String anm;
        String ann;
        String ano;

        private C0917a() {
        }
    }
}
