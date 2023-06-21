package com.kingroot.kinguser;

import android.annotation.TargetApi;
import android.os.Environment;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.kingroot.common.utils.system.VTCmdResult;
import com.kingroot.kinguser.C3956zk;
import com.kingroot.kinguser.C3959zm;
import com.kingroot.kinguser.C3966zn;
import com.kingroot.kinguser.RunnableC3845wo;
import com.swift.sandhook.utils.FileUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class aba {

    /* renamed from: YF */
    private static final Object f1302YF = new Object();

    /* renamed from: YG */
    private static final String f1303YG = Environment.getDataDirectory().getAbsolutePath() + File.separator + "data-lib" + File.separator + bzt.m5101ge().getPackageName() + File.separator + "ktools";

    /* renamed from: YH */
    private static final String f1304YH = "/dev" + File.separator + "ktools";

    /* renamed from: YI */
    private static final AtomicBoolean f1305YI = new AtomicBoolean(false);

    /* renamed from: YJ */
    private static RunnableC3845wo f1306YJ = new RunnableC3845wo() { // from class: com.kingroot.kinguser.aba.1
        @Override // com.kingroot.kinguser.RunnableC3845wo, java.lang.Runnable
        public void run() {
            int i = 15;
            super.run();
            String m12858qC = aba.m12858qC();
            if (new File(aba.f1303YG).exists() && C3966zn.m1279H(m12858qC, aba.f1303YG) == 0) {
                C3966zn.C3968a c3968a = new C3966zn.C3968a();
                c3968a.f4097WN = 0;
                c3968a.f4098WO = 0;
                c3968a.mode = FileUtils.FileMode.MODE_755;
                c3968a.f4099WP = "u:object_r:system_file:s0";
                int m1276a = C3966zn.m1276a(m12858qC + " zls", aba.f1303YG, c3968a) | 0;
                if (m1276a != -1 || (m1276a = C3966zn.m1276a(aba.f1303YG + " zls", aba.f1303YG, c3968a)) != -1) {
                    i = m1276a;
                }
            }
            if (i != 0) {
                aba.m12865c(m12858qC, aba.f1303YG, i);
            }
        }
    };

    /* renamed from: YK */
    private static RunnableC3845wo f1307YK = new RunnableC3845wo() { // from class: com.kingroot.kinguser.aba.3
        @Override // com.kingroot.kinguser.RunnableC3845wo
        /* renamed from: a */
        public void mo1543a(@NonNull RunnableC3845wo.InterfaceC3847a interfaceC3847a) {
            super.run();
            List<Object> mo1527nF = interfaceC3847a.mo1527nF();
            if (mo1527nF != null && mo1527nF.size() > 0) {
                String str = (String) mo1527nF.get(0);
                if (!TextUtils.isEmpty(str)) {
                    aba.m12862ef(str);
                }
            }
        }
    };

    /* renamed from: qA */
    public static String m12860qA() {
        return "ktools";
    }

    /* renamed from: qB */
    public static String m12859qB() {
        return C3958zl.m1295pw().getAbsolutePath() + File.separator + "ktools";
    }

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(9)
    /* renamed from: qC */
    public static String m12858qC() {
        String m12859qB = m12859qB();
        File file = new File(m12859qB);
        if (!file.exists()) {
            C3959zm.m1293a(new C3959zm.C3962a(m12859qB, "ktools", 1));
        } else {
            synchronized (f1305YI) {
                if (!f1305YI.getAndSet(true)) {
                    C3959zm.m1293a(new C3959zm.C3962a(m12859qB, "ktools", 1));
                }
            }
        }
        if (abd.m12839qb() >= 9 && file.exists() && !file.canExecute()) {
            file.setExecutable(true, true);
        }
        return m12859qB;
    }

    /* renamed from: qD */
    public static void m12857qD() {
        m12856qE();
        if (aav.m12908qi()) {
            m12863ee(f1304YH);
        }
    }

    /* renamed from: qE */
    private static void m12856qE() {
        f1306YJ.m1530ny();
    }

    /* renamed from: qF */
    public static String m12855qF() {
        String m12858qC;
        synchronized (f1302YF) {
            m12858qC = m12858qC();
        }
        return m12858qC;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public static boolean m12865c(String str, String str2, int i) {
        return ((Boolean) C3956zk.m1302a(new C3956zk.InterfaceC3957a<Boolean>() { // from class: com.kingroot.kinguser.aba.2
            @Override // com.kingroot.kinguser.C3956zk.InterfaceC3957a
            /* renamed from: N */
            public Boolean execute(List<Object> list) {
                int i2;
                boolean z = false;
                String str3 = (String) list.get(0);
                String str4 = (String) list.get(1);
                int intValue = ((Integer) list.get(2)).intValue();
                abc m12845qK = abc.m12845qK();
                if (m12845qK.isRootPermition(true)) {
                    ArrayList arrayList = new ArrayList(8);
                    arrayList.add(aar.m12948b(str3 + " " + aar.f1248XJ, str4, false));
                    arrayList.add(aar.m12948b(str4 + " " + aar.f1248XJ, str4, false));
                    String substring = (str4.length() <= 1 || !str4.endsWith(File.separator)) ? str4 : str4.substring(0, str4.length() - 1);
                    int i3 = 0;
                    while (true) {
                        i3 = substring.indexOf(File.separatorChar, i3 + 1);
                        if (i3 == -1) {
                            break;
                        }
                        File file = new File(substring.substring(0, i3));
                        if (!file.getAbsolutePath().equals("/data")) {
                            if (!file.exists()) {
                                arrayList.add(aas.f1263XY + file.getAbsolutePath());
                                arrayList.add(aas.f1261XW + file.getAbsolutePath());
                                arrayList.add(aas.f1262XX + file.getAbsolutePath());
                                arrayList.add(String.format("chcon u:object_r:system_data_file:s0 %1$s;/system/bin/toolbox chcon u:object_r:system_data_file:s0 %1$s", file.getAbsolutePath()));
                            } else if (!file.isDirectory()) {
                                arrayList.add(aar.m12948b(str3 + " " + aar.f1248XJ, file.getAbsolutePath(), false));
                                arrayList.add(aar.m12948b(substring + " " + aar.f1248XJ, file.getAbsolutePath(), false));
                                arrayList.add(aas.f1260XV + file.getAbsolutePath());
                                arrayList.add(aas.f1263XY + file.getAbsolutePath());
                                arrayList.add(aas.f1261XW + file.getAbsolutePath());
                                arrayList.add(aas.f1262XX + file.getAbsolutePath());
                                arrayList.add(String.format("chcon u:object_r:system_data_file:s0 %1$s;/system/bin/toolbox chcon u:object_r:system_data_file:s0 %1$s", file.getAbsolutePath()));
                            } else {
                                arrayList.add(aas.f1261XW + file.getAbsolutePath());
                                arrayList.add(aas.f1262XX + file.getAbsolutePath());
                                arrayList.add(String.format("chcon u:object_r:system_data_file:s0 %1$s;/system/bin/toolbox chcon u:object_r:system_data_file:s0 %1$s", file.getAbsolutePath()));
                            }
                        }
                    }
                    if (C3941yx.m1356B(intValue, 4)) {
                        arrayList.add(aas.f1260XV + substring);
                        arrayList.add(String.format("cat %s > %s", str3, substring));
                    }
                    if (C3941yx.m1356B(intValue, 1)) {
                        arrayList.add(aas.f1261XW + substring);
                        i2 = intValue | 2;
                    } else {
                        i2 = intValue;
                    }
                    if (C3941yx.m1356B(i2, 2)) {
                        arrayList.add(aas.f1262XX + substring);
                    }
                    if (C3941yx.m1356B(i2, 8)) {
                        arrayList.add(String.format("chcon u:object_r:system_file:s0 %1$s;/system/bin/toolbox chcon u:object_r:system_file:s0 %1$s", substring));
                    }
                    List<VTCmdResult> runRootCommands = m12845qK.runRootCommands(arrayList);
                    int i4 = 0;
                    while (true) {
                        if (i4 >= runRootCommands.size()) {
                            z = true;
                            break;
                        }
                        if (!runRootCommands.get(i4).success()) {
                            String str5 = runRootCommands.get(i4).mCmdFlag;
                            if (!str5.startsWith(aas.f1260XV) && !str5.startsWith(aas.f1255XQ) && !str5.startsWith(aas.f1263XY) && !str5.startsWith(str3) && !str5.startsWith(substring)) {
                                break;
                            }
                        }
                        i4++;
                    }
                }
                return Boolean.valueOf(z);
            }
        }, str, str2, Integer.valueOf(i))).booleanValue();
    }

    /* renamed from: qG */
    public static String m12854qG() {
        String m12858qC;
        synchronized (f1302YF) {
            File file = new File(m12858qC());
            File file2 = new File(f1304YH);
            if (file2.exists() && file2.length() == file.length()) {
                m12858qC = f1304YH;
            } else {
                m12863ee(f1304YH);
                m12858qC = m12858qC();
            }
        }
        return m12858qC;
    }

    /* renamed from: qH */
    public static String m12853qH() {
        String m12862ef;
        synchronized (f1302YF) {
            File file = new File(m12858qC());
            File file2 = new File(f1304YH);
            m12862ef = (file2.exists() && file2.length() == file.length()) ? f1304YH : m12862ef(f1304YH);
        }
        return m12862ef;
    }

    /* renamed from: ee */
    private static void m12863ee(String str) {
        if (!TextUtils.isEmpty(str)) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(str);
            f1307YK.m1545I(arrayList);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: ef */
    public static String m12862ef(String str) {
        int i = 15;
        if (TextUtils.isEmpty(str)) {
            return m12858qC();
        }
        String m12858qC = m12858qC();
        if (new File(str).exists() && C3966zn.m1279H(m12858qC, str) == 0) {
            C3966zn.C3968a c3968a = new C3966zn.C3968a();
            c3968a.f4097WN = 0;
            c3968a.f4098WO = 0;
            c3968a.mode = FileUtils.FileMode.MODE_755;
            c3968a.f4099WP = "u:object_r:system_file:s0";
            int m1276a = C3966zn.m1276a(m12858qC + " zls", str, c3968a) | 0;
            if (m1276a != -1 || (m1276a = C3966zn.m1276a(str + " zls", str, c3968a)) != -1) {
                i = m1276a;
            }
        }
        return (i == 0 || !m12865c(m12858qC, str, i)) ? m12858qC() : str;
    }
}
