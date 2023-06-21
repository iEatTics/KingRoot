package com.kingroot.kinguser.gamebox.common;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.support.annotation.NonNull;
import com.kingroot.common.app.KApplication;
import com.kingroot.common.utils.system.ProcessUtils;
import com.kingroot.kinguser.C3566rv;
import com.kingroot.kinguser.C3636tj;
import com.kingroot.kinguser.C3942yy;
import com.kingroot.kinguser.C3952zh;
import com.kingroot.kinguser.InterfaceC3562rr;
import com.kingroot.kinguser.InterfaceC3598sk;
import com.kingroot.kinguser.aav;
import com.kingroot.kinguser.abc;
import com.kingroot.kinguser.abd;
import com.kingroot.kinguser.aie;
import com.kingroot.kinguser.ake;
import com.kingroot.kinguser.akf;
import com.kingroot.kinguser.asm;
import com.kingroot.kinguser.asw;
import com.kingroot.kinguser.asz;
import com.kingroot.kinguser.atz;
import com.kingroot.kinguser.bec;
import com.kingroot.kinguser.bed;
import com.kingroot.kinguser.beg;
import com.kingroot.kinguser.bek;
import com.kingroot.kinguser.bem;
import com.kingroot.kinguser.bhb;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
/* loaded from: classes.dex */
public class GameBoxProcessOptimizer {
    private static bed aND = new bed(bem.HIGH, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.gamebox.common.GameBoxProcessOptimizer.1
        @Override // com.kingroot.kinguser.bek
        /* renamed from: a */
        public void mo1208a(bed.InterfaceC2117a interfaceC2117a) {
            super.mo1208a(interfaceC2117a);
            InterfaceC3079a interfaceC3079a = null;
            List<Object> mo7445nF = interfaceC2117a.mo7445nF();
            if (mo7445nF != null && mo7445nF.size() > 0 && (mo7445nF.get(0) instanceof InterfaceC3079a)) {
                interfaceC3079a = (InterfaceC3079a) mo7445nF.get(0);
            }
            GameBoxProcessOptimizer.m3775b(interfaceC3079a);
        }
    });

    /* loaded from: classes.dex */
    public static class OptimizeResult implements InterfaceC3562rr {
        public int memoryreReleased;
        public int optimizePercent;
        public int processCountOptimized;
    }

    /* renamed from: com.kingroot.kinguser.gamebox.common.GameBoxProcessOptimizer$a */
    /* loaded from: classes.dex */
    public interface InterfaceC3079a {
        /* renamed from: Ow */
        void mo3772Ow();

        /* renamed from: Ox */
        void mo3771Ox();

        /* renamed from: b */
        void mo3770b(double d, int i);

        /* renamed from: f */
        void mo3769f(String str, int i, int i2);

        /* renamed from: gz */
        long mo3768gz(int i);
    }

    /* renamed from: a */
    public static void m3776a(InterfaceC3079a interfaceC3079a) {
        if (interfaceC3079a != null) {
            beg.m7461Zj().m7454a(aND, interfaceC3079a);
        } else {
            beg.m7461Zj().m7450c(aND);
        }
    }

    /* renamed from: Os */
    public static void m3781Os() {
        m3776a(null);
    }

    /* renamed from: b */
    public static void m3775b(InterfaceC3079a interfaceC3079a) {
        Random random;
        int i = 0;
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) KApplication.m13453ge().getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses != null && runningAppProcesses.size() != 0) {
            Map<String, atz> m3773l = m3773l(m3779Ou());
            if (interfaceC3079a != null) {
                interfaceC3079a.mo3772Ow();
            }
            if (C3942yy.m1348f(m3773l) && abd.m12839qb() >= 21) {
                if (interfaceC3079a != null) {
                    int nextInt = new Random().nextInt(4) + 4;
                    long m12902qo = aav.m12902qo() / 1024;
                    int nextInt2 = ((int) (((random.nextInt(3) + 1) * m12902qo) / 100)) / nextInt;
                    for (int i2 = 0; i2 < nextInt; i2++) {
                        try {
                            Thread.sleep(350L);
                        } catch (InterruptedException e) {
                        }
                        i += nextInt2;
                        interfaceC3079a.mo3769f("", nextInt2, Math.max(1, (int) ((i * 100) / m12902qo)));
                    }
                }
            } else {
                m3777a(KApplication.m13453ge(), new ArrayList(m3773l.values()), interfaceC3079a);
            }
            if (interfaceC3079a != null) {
                interfaceC3079a.mo3771Ox();
            }
            asz.m9328OL().m9327OM().mo9300bW(System.currentTimeMillis());
        }
    }

    /* renamed from: Ot */
    public static OptimizeResult m3780Ot() {
        try {
            Object mo2254jp = m3778Ov().mo2254jp();
            if (!(mo2254jp instanceof OptimizeResult)) {
                return null;
            }
            return (OptimizeResult) mo2254jp;
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: l */
    private static Map<String, atz> m3773l(Map<String, atz> map) {
        if (C3942yy.m1349e(map)) {
            return Collections.emptyMap();
        }
        List<String> m9349OH = asw.m9349OH();
        HashMap hashMap = new HashMap();
        for (String str : map.keySet()) {
            if (m9349OH == null || m9349OH.size() <= 0 || !m9349OH.contains(str)) {
                if (!asm.m9427Od().m9426Oe().contains(str) && !new ArrayList(ake.m11308Al().m11312Ak()).contains(str)) {
                    hashMap.put(str, map.get(str));
                }
            }
        }
        return hashMap;
    }

    @NonNull
    /* renamed from: Ou */
    public static Map<String, atz> m3779Ou() {
        atz atzVar;
        HashMap hashMap = new HashMap();
        ArrayList<ProcessUtils.ProcessInfo> arrayList = new ArrayList();
        if (abd.m12839qb() < 21) {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager) KApplication.m13453ge().getSystemService("activity")).getRunningAppProcesses()) {
                if (runningAppProcessInfo.pkgList != null && runningAppProcessInfo.pkgList.length > 0) {
                    arrayList.add(new ProcessUtils.ProcessInfo(runningAppProcessInfo.uid, runningAppProcessInfo.pid, runningAppProcessInfo.pkgList[0], runningAppProcessInfo.processName));
                }
            }
        } else {
            ProcessUtils.m13142f(KApplication.m13453ge(), arrayList);
        }
        List<ProcessUtils.ProcessInfo> m13135qI = ProcessUtils.m13135qI();
        for (ProcessUtils.ProcessInfo processInfo : arrayList) {
            String str = processInfo.pkg;
            if (!akf.m11304gG(str) && !akf.m11303gH(str) && !"com.tencent.qqpimsecure".equals(str)) {
                boolean m3774iN = m3774iN(str);
                if (!bhb.abV().equals(str) && !bhb.m7062aD(KApplication.m13453ge()).equals(str)) {
                    if (!hashMap.keySet().contains(str)) {
                        atzVar = new atz(str, m3774iN ? 1 : 0);
                        hashMap.put(str, atzVar);
                    } else {
                        atzVar = (atz) hashMap.get(str);
                    }
                    Iterator<ProcessUtils.ProcessInfo> it = m13135qI.iterator();
                    while (it.hasNext()) {
                        ProcessUtils.ProcessInfo next = it.next();
                        if (next.uid == processInfo.uid) {
                            ArrayList arrayList2 = new ArrayList();
                            arrayList2.add(Integer.valueOf(next.pid));
                            int m13153O = ProcessUtils.m13153O(arrayList2);
                            atzVar.m9105jj(next.name);
                            atzVar.m9106gF(m13153O);
                            it.remove();
                        }
                    }
                }
            }
        }
        return hashMap;
    }

    /* renamed from: iN */
    private static boolean m3774iN(String str) {
        try {
            return (C3952zh.m1312pq().getApplicationInfo(str, 0).flags & 1) != 0;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    /* renamed from: a */
    private static void m3777a(Context context, List<atz> list, InterfaceC3079a interfaceC3079a) {
        if (list != null) {
            long m12902qo = aav.m12902qo() / 1024;
            OptimizeResult optimizeResult = new OptimizeResult();
            optimizeResult.processCountOptimized = list.size();
            if (abd.m12839qb() >= 5) {
                ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
                int i = 0;
                while (true) {
                    int i2 = i;
                    if (i2 < list.size()) {
                        atz atzVar = list.get(i2);
                        optimizeResult.memoryreReleased = atzVar.m9107PF() + optimizeResult.memoryreReleased;
                        if (interfaceC3079a != null) {
                            interfaceC3079a.mo3769f(atzVar.adZ, atzVar.m9107PF(), (int) ((optimizeResult.memoryreReleased * 100) / m12902qo));
                        }
                        switch (atzVar.mFlag) {
                            case 0:
                                if (aie.m11668xx() && abc.m12845qK().isRootPermition()) {
                                    aie.m11669xw().m11672eh(atzVar.adZ);
                                    break;
                                } else {
                                    aie.m11669xw().m11671n(context, atzVar.adZ);
                                    activityManager.restartPackage(atzVar.adZ);
                                    break;
                                }
                                break;
                            case 1:
                                activityManager.restartPackage(atzVar.adZ);
                                break;
                        }
                        if (interfaceC3079a != null) {
                            try {
                                Thread.sleep(interfaceC3079a.mo3768gz(list.size()));
                            } catch (InterruptedException e) {
                            }
                        }
                        i = i2 + 1;
                    } else {
                        optimizeResult.optimizePercent = (int) ((optimizeResult.memoryreReleased * 100) / m12902qo);
                        if (interfaceC3079a != null) {
                            interfaceC3079a.mo3770b(optimizeResult.memoryreReleased, optimizeResult.optimizePercent);
                        }
                        try {
                            m3778Ov().mo2255b(optimizeResult);
                            return;
                        } catch (Exception e2) {
                            return;
                        }
                    }
                }
            }
        }
    }

    /* renamed from: Ov */
    private static InterfaceC3598sk m3778Ov() {
        return C3566rv.m2316cD(C3636tj.m2169ge().getFilesDir().getAbsolutePath() + File.separator + "gb_optimize_result");
    }
}
