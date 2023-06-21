package com.kingroot.kinguser;

import android.app.ActivityManager;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import com.kingroot.common.network.statics.ActionStatsID;
import com.kingroot.common.report.autostart.BootRecord;
import com.kingroot.common.utils.system.ProcessUtils;
import com.kingroot.common.utils.system.VTCmdResult;
import com.kingroot.kinguser.RunnableC3845wo;
import com.kingroot.loader.common.KlConst;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: com.kingroot.kinguser.vu */
/* loaded from: classes.dex */
public class C3803vu {
    private static final cce<C3803vu> sInstance = new cce<C3803vu>() { // from class: com.kingroot.kinguser.vu.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: mp */
        public C3803vu create() {
            return new C3803vu();
        }
    };

    /* renamed from: LA */
    private RunnableC3845wo f3789LA;

    /* renamed from: LB */
    private RunnableC3845wo f3790LB;

    /* renamed from: Lq */
    private SharedPreferences f3791Lq;

    /* renamed from: Lr */
    private SharedPreferences.Editor f3792Lr;

    /* renamed from: Ls */
    private List<Long> f3793Ls;

    /* renamed from: Lt */
    private boolean f3794Lt;

    /* renamed from: Lu */
    private List<String> f3795Lu;

    /* renamed from: Lv */
    private List<String> f3796Lv;

    /* renamed from: Lw */
    private Map<String, List<String>> f3797Lw;

    /* renamed from: Lx */
    private boolean f3798Lx;

    /* renamed from: Ly */
    private final cce<Map<Long, BootRecord>> f3799Ly;

    /* renamed from: Lz */
    private RunnableC3845wo f3800Lz;
    private Handler mHandler;

    /* renamed from: lZ */
    private static String m1685lZ() {
        return "/data/data/" + bzt.m5101ge().getPackageName();
    }

    /* renamed from: ma */
    private static String m1683ma() {
        return "/data/data-lib/" + bzt.m5101ge().getPackageName();
    }

    private C3803vu() {
        this.f3793Ls = new ArrayList();
        this.f3794Lt = false;
        this.f3795Lu = Collections.synchronizedList(new ArrayList());
        this.f3796Lv = Collections.synchronizedList(new ArrayList());
        this.f3797Lw = Collections.synchronizedMap(new HashMap());
        this.mHandler = new Handler(Looper.getMainLooper());
        this.f3798Lx = false;
        this.f3799Ly = new cce<Map<Long, BootRecord>>() { // from class: com.kingroot.kinguser.vu.2
            /* JADX INFO: Access modifiers changed from: protected */
            /* JADX WARN: Removed duplicated region for block: B:9:0x0039  */
            @Override // com.kingroot.kinguser.cce
            /* renamed from: li */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public Map<Long, BootRecord> create() {
                Map<Long, BootRecord> map;
                C3803vu.this.f3791Lq = C3566rv.m2313i(KApplication.m13453ge(), "auto_start_statistic_manager_setting");
                C3803vu.this.f3792Lr = C3803vu.this.f3791Lq.edit();
                InterfaceC3598sk m2315cE = C3566rv.m2315cE(C3803vu.m1689jk());
                try {
                } catch (Throwable th) {
                    map = null;
                }
                if (m2315cE.exists()) {
                    Object mo2254jp = m2315cE.mo2254jp();
                    if (mo2254jp instanceof Map) {
                        map = (Map) mo2254jp;
                        if (map == null) {
                            map = new HashMap<>();
                            C3803vu.this.f3792Lr.putBoolean("SA01", true);
                            C3803vu.this.f3792Lr.commit();
                        }
                        m2315cE.mo2255b(map);
                        return map;
                    }
                }
                map = null;
                if (map == null) {
                }
                m2315cE.mo2255b(map);
                return map;
            }
        };
        this.f3800Lz = new C38063();
        this.f3789LA = new RunnableC3845wo() { // from class: com.kingroot.kinguser.vu.4
            @Override // com.kingroot.kinguser.RunnableC3845wo
            /* renamed from: a */
            public void mo1543a(@NonNull RunnableC3845wo.InterfaceC3847a interfaceC3847a) {
                super.mo1543a(interfaceC3847a);
                List<Object> mo1527nF = interfaceC3847a.mo1527nF();
                if (mo1527nF != null && mo1527nF.size() >= 1) {
                    C3803vu.this.m1681mc();
                    boolean booleanValue = ((Boolean) mo1527nF.get(0)).booleanValue();
                    if (!C3803vu.this.m1675mi()) {
                        C3803vu.this.m1677mg();
                        InterfaceC3519rh m13448hV = KApplication.m13448hV();
                        C3803vu.this.m1688k(0, (m13448hV == null || !(m13448hV instanceof AbstractC3514re)) ? false : ((AbstractC3514re) m13448hV).mo2489hI());
                    }
                    BootRecord m1678mf = C3803vu.this.m1678mf();
                    if (m1678mf != null && !m1678mf.m13344mz()) {
                        C3803vu.this.m1703br(1);
                        BootRecord.InjectTimeRecord m1667z = C3803vu.this.m1667z(acu.m12569se());
                        m1667z.mIsInjectSwitchOn = booleanValue;
                        m1678mf.m13359a(m1667z);
                        C3803vu.this.m1679me();
                        if (!booleanValue) {
                            C3803vu.this.m1701c(false, 0);
                        }
                    }
                }
            }
        };
        this.f3790LB = new C38105();
    }

    /* renamed from: mb */
    public Map<Long, BootRecord> m1682mb() {
        return this.f3799Ly.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: mc */
    public synchronized void m1681mc() {
        InterfaceC3813vv mo2488hJ;
        if (!this.f3798Lx) {
            this.f3798Lx = true;
            InterfaceC3519rh m13448hV = KApplication.m13448hV();
            if (m13448hV != null && (m13448hV instanceof AbstractC3514re) && (mo2488hJ = ((AbstractC3514re) m13448hV).mo2488hJ()) != null) {
                List<String> mo1664mE = mo2488hJ.mo1664mE();
                if (!C3942yy.m1352c(mo1664mE)) {
                    this.f3795Lu.addAll(mo1664mE);
                }
                List<String> mo1662mG = mo2488hJ.mo1662mG();
                if (!C3942yy.m1352c(mo1662mG)) {
                    this.f3796Lv.addAll(mo1662mG);
                }
                Map<String, List<String>> mo1663mF = mo2488hJ.mo1663mF();
                if (!C3942yy.m1349e(mo1663mF)) {
                    this.f3797Lw.putAll(mo1663mF);
                }
            }
            for (String str : this.f3795Lu) {
            }
            for (String str2 : this.f3796Lv) {
            }
            for (String str3 : this.f3797Lw.keySet()) {
                for (String str4 : this.f3797Lw.get(str3)) {
                }
            }
        }
    }

    /* renamed from: md */
    public static C3803vu m1680md() {
        return sInstance.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: me */
    public void m1679me() {
        C3566rv.m2315cE(m1689jk()).mo2255b(m1682mb());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: jk */
    public static String m1689jk() {
        String str = C3636tj.m2169ge().getFilesDir().getAbsolutePath() + File.separator + "auto_start_report";
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
        }
        String str2 = str + File.separator + KlConst.PLUGIN_DATA_DIR_NAME;
        if (TextUtils.isEmpty(str2)) {
            return "";
        }
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: mf */
    public synchronized BootRecord m1678mf() {
        return m1682mb().get(Long.valueOf(m1676mh()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: mg */
    public synchronized BootRecord m1677mg() {
        BootRecord bootRecord;
        long m1676mh = m1676mh();
        bootRecord = m1682mb().get(Long.valueOf(m1676mh));
        if (bootRecord == null) {
            bootRecord = BootRecord.m13350mt();
            m1682mb().put(Long.valueOf(m1676mh), bootRecord);
            if (m1669mo()) {
                bootRecord.m13360T(true);
                this.f3792Lr.putBoolean("SA01", false).commit();
            }
            m1679me();
        }
        return bootRecord;
    }

    /* renamed from: mh */
    private long m1676mh() {
        int m13143ej = ProcessUtils.m13143ej("system_server");
        return m13143ej + acu.m12572ci(m13143ej);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: mi */
    public boolean m1675mi() {
        return m1682mb().get(Long.valueOf(m1676mh())) != null;
    }

    /* renamed from: com.kingroot.kinguser.vu$3 */
    /* loaded from: classes.dex */
    class C38063 extends RunnableC3845wo {
        C38063() {
        }

        @Override // com.kingroot.kinguser.RunnableC3845wo
        /* renamed from: a */
        public void mo1543a(@NonNull RunnableC3845wo.InterfaceC3847a interfaceC3847a) {
            BootRecord.AutoStartRecord m1706b;
            super.mo1543a(interfaceC3847a);
            List<Object> mo1527nF = interfaceC3847a.mo1527nF();
            if (mo1527nF != null && mo1527nF.size() >= 1) {
                C3803vu.this.m1681mc();
                int intValue = ((Integer) mo1527nF.get(0)).intValue();
                boolean booleanValue = ((Boolean) mo1527nF.get(1)).booleanValue();
                if (!C3803vu.this.f3794Lt) {
                    C3803vu.this.f3794Lt = true;
                    if (C3803vu.this.m1675mi()) {
                        BootRecord m1678mf = C3803vu.this.m1678mf();
                        if (!m1678mf.m13344mz()) {
                            m1706b = m1678mf.m13358dj(bzt.m5101ge().getPackageName());
                            if (m1706b == null) {
                                m1706b = C3803vu.this.m1706b(acu.m12572ci(Process.myPid()), intValue, booleanValue);
                            }
                            if (m1678mf.m13346mx()) {
                                m1706b.mIsKilled = true;
                            }
                            m1678mf.m13359a(m1706b);
                        } else {
                            return;
                        }
                    } else {
                        BootRecord m1677mg = C3803vu.this.m1677mg();
                        m1706b = C3803vu.this.m1706b(acu.m12572ci(Process.myPid()), intValue, booleanValue);
                        m1677mg.m13359a(m1706b);
                    }
                    if (m1706b.mAppBootupTime == 0 || m1706b.mProcRanking == 0) {
                        C3803vu.this.m1678mf().m13349mu();
                    }
                    C3803vu.this.m1679me();
                    C3803vu.this.mHandler.postDelayed(new Runnable() { // from class: com.kingroot.kinguser.vu.3.1
                        /* JADX WARN: Type inference failed for: r0v0, types: [com.kingroot.kinguser.vu$3$1$1] */
                        @Override // java.lang.Runnable
                        public void run() {
                            new Thread() { // from class: com.kingroot.kinguser.vu.3.1.1
                                @Override // java.lang.Thread, java.lang.Runnable
                                public void run() {
                                    super.run();
                                    for (String str : C3803vu.this.f3795Lu) {
                                        if (C3952zh.m1312pq().m1314du(str)) {
                                            BootRecord.AutoStartRecord m1699df = C3803vu.this.m1699df(str);
                                            BootRecord m1678mf2 = C3803vu.this.m1678mf();
                                            if (m1678mf2 != null) {
                                                m1678mf2.m13359a(m1699df);
                                                C3803vu.this.m1679me();
                                            }
                                        }
                                    }
                                    C3803vu.this.m1672ml();
                                }
                            }.start();
                        }
                    }, 90000L);
                }
            }
        }
    }

    /* renamed from: k */
    public void m1688k(int i, boolean z) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(i));
        arrayList.add(Boolean.valueOf(z));
        this.f3800Lz.m1545I(arrayList);
    }

    /* renamed from: R */
    public void m1716R(boolean z) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Boolean.valueOf(z));
        this.f3789LA.m1545I(arrayList);
    }

    /* renamed from: com.kingroot.kinguser.vu$5 */
    /* loaded from: classes.dex */
    class C38105 extends RunnableC3845wo {
        C38105() {
        }

        @Override // com.kingroot.kinguser.RunnableC3845wo
        /* renamed from: a */
        public void mo1543a(@NonNull RunnableC3845wo.InterfaceC3847a interfaceC3847a) {
            BootRecord.InjectTimeRecord m13357dk;
            super.mo1543a(interfaceC3847a);
            List<Object> mo1527nF = interfaceC3847a.mo1527nF();
            if (mo1527nF != null && mo1527nF.size() >= 1) {
                C3803vu.this.m1681mc();
                boolean booleanValue = ((Boolean) mo1527nF.get(0)).booleanValue();
                int intValue = ((Integer) mo1527nF.get(1)).intValue();
                BootRecord m1678mf = C3803vu.this.m1678mf();
                if (m1678mf != null && !m1678mf.m13344mz() && (m13357dk = m1678mf.m13357dk(bzt.m5101ge().getPackageName())) != null) {
                    C3803vu.this.m1703br(2);
                    m13357dk.mInjectFinishTime = acu.m12569se();
                    m13357dk.mInjectTryCount = intValue;
                    m13357dk.mIsSuccess = booleanValue;
                    m13357dk.mIsRoot = abc.m12845qK().isRootPermition();
                    m1678mf.m13359a(m13357dk);
                    C3803vu.this.mHandler.postDelayed(new Runnable() { // from class: com.kingroot.kinguser.vu.5.1
                        /* JADX WARN: Type inference failed for: r0v0, types: [com.kingroot.kinguser.vu$5$1$1] */
                        @Override // java.lang.Runnable
                        public void run() {
                            new Thread() { // from class: com.kingroot.kinguser.vu.5.1.1
                                @Override // java.lang.Thread, java.lang.Runnable
                                public void run() {
                                    super.run();
                                    C3803vu.this.m1703br(3);
                                    C3803vu.this.m1670mn();
                                    C3803vu.this.m1679me();
                                }
                            }.start();
                        }
                    }, 90000L);
                    C3803vu.this.m1674mj();
                    C3803vu.this.m1671mm();
                    C3803vu.this.m1679me();
                }
            }
        }
    }

    /* renamed from: c */
    public void m1701c(boolean z, int i) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Boolean.valueOf(z));
        arrayList.add(Integer.valueOf(i));
        this.f3790LB.m1545I(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: mj */
    public void m1674mj() {
        BootRecord m1678mf = m1678mf();
        if (m1678mf != null) {
            String packageName = bzt.m5101ge().getPackageName();
            for (String str : this.f3796Lv) {
                BootRecord.InjectResultRecord m13361F = m1678mf.m13361F(packageName, str);
                if (m13361F == null) {
                    m13361F = new BootRecord.InjectResultRecord();
                    m13361F.mPkg = packageName;
                    m13361F.mInjectRanking = 0;
                    m13361F.mTargetProc2Inject = str;
                    m13361F.mVersionName = m1696di(packageName);
                }
                if (m1678mf.m13346mx()) {
                    m13361F.mIsKilled = true;
                }
                if (m1717E(str, m1685lZ()) || m1717E(str, m1683ma())) {
                    m13361F.mInjectResult = true;
                }
                m1678mf.m13359a(m13361F);
            }
            m1679me();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: br */
    public void m1703br(int i) {
        List<String> list;
        boolean z;
        BootRecord.InjectResultRecord injectResultRecord;
        BootRecord m1678mf = m1678mf();
        if (m1678mf != null && !m1678mf.m13344mz()) {
            for (String str : this.f3796Lv) {
                for (String str2 : this.f3795Lu) {
                    if (C3952zh.m1312pq().m1314du(str2) && (list = this.f3797Lw.get(str2)) != null && list.size() >= 1) {
                        Iterator<String> it = list.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                z = false;
                                break;
                            } else if (m1717E(str, it.next())) {
                                z = true;
                                break;
                            }
                        }
                        BootRecord.InjectResultRecord m13361F = m1678mf.m13361F(str2, str);
                        if (m13361F == null) {
                            BootRecord.InjectResultRecord injectResultRecord2 = new BootRecord.InjectResultRecord();
                            injectResultRecord2.mTargetProc2Inject = str;
                            injectResultRecord2.mPkg = str2;
                            injectResultRecord2.mVersionName = m1696di(str2);
                            injectResultRecord = injectResultRecord2;
                        } else {
                            injectResultRecord = m13361F;
                        }
                        if (injectResultRecord.mInjectRanking == 0 && z) {
                            injectResultRecord.mInjectRanking = i;
                            injectResultRecord.mInjectResult = true;
                        }
                        m1678mf.m13359a(injectResultRecord);
                    }
                }
            }
            m1679me();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public BootRecord.AutoStartRecord m1706b(long j, int i, boolean z) {
        String packageName = bzt.m5101ge().getPackageName();
        BootRecord.AutoStartRecord autoStartRecord = new BootRecord.AutoStartRecord();
        autoStartRecord.mAppBootupTime = j;
        autoStartRecord.mBootupType = i;
        autoStartRecord.mIsKDEnable = z;
        autoStartRecord.mProcRanking = m1698dg(packageName);
        autoStartRecord.mSystemBootupTime = 0L;
        autoStartRecord.mPkg = bzt.m5101ge().getPackageName();
        autoStartRecord.mVersionName = m1696di(packageName);
        return autoStartRecord;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: df */
    public BootRecord.AutoStartRecord m1699df(String str) {
        BootRecord.AutoStartRecord autoStartRecord = new BootRecord.AutoStartRecord();
        autoStartRecord.mAppBootupTime = m1697dh(str);
        autoStartRecord.mBootupType = 0;
        autoStartRecord.mIsKDEnable = false;
        autoStartRecord.mProcRanking = m1698dg(str);
        autoStartRecord.mSystemBootupTime = 0L;
        autoStartRecord.mPkg = str;
        autoStartRecord.mVersionName = m1696di(str);
        if (autoStartRecord.mAppBootupTime == 0) {
            autoStartRecord.mProcRanking = 0;
        }
        return autoStartRecord;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: z */
    public BootRecord.InjectTimeRecord m1667z(long j) {
        BootRecord.InjectTimeRecord injectTimeRecord = new BootRecord.InjectTimeRecord();
        injectTimeRecord.mPkg = bzt.m5101ge().getPackageName();
        injectTimeRecord.mInjectStartTime = j;
        return injectTimeRecord;
    }

    /* renamed from: mk */
    public synchronized List<C2854da> m1673mk() {
        ArrayList arrayList;
        BootRecord.AutoStartRecord m13358dj;
        ArrayList arrayList2 = new ArrayList();
        if (C3942yy.m1349e(m1682mb())) {
            arrayList = arrayList2;
        } else {
            this.f3793Ls.clear();
            Iterator<Map.Entry<Long, BootRecord>> it = m1682mb().entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<Long, BootRecord> next = it.next();
                Long key = next.getKey();
                BootRecord value = next.getValue();
                if (value == null) {
                    it.remove();
                } else if (!value.m13344mz() || value.m13345my()) {
                    if (m1676mh() != key.longValue() || value.m13345my()) {
                        it.remove();
                    }
                } else if (value.m13347mw()) {
                    if (m1676mh() != key.longValue()) {
                        it.remove();
                    }
                } else if (value.isDirty()) {
                    if (m1676mh() != key.longValue()) {
                        it.remove();
                    }
                } else {
                    this.f3793Ls.add(key);
                    for (BootRecord.AutoStartRecord autoStartRecord : value.m13356mA()) {
                        if (autoStartRecord != null) {
                            String m2227a = C3612sw.m2227a(C3489qs.f3433EZ, 73, m1704b(autoStartRecord.m13343mD()));
                            C2854da c2854da = new C2854da();
                            c2854da.f2414id = ActionStatsID.EMID_KingCom_Auto_Start_After_Boot;
                            c2854da.desc = "1";
                            c2854da.f2416mO = m2227a;
                            c2854da.f2413fY = (int) System.currentTimeMillis();
                            arrayList2.add(c2854da);
                        }
                    }
                    for (BootRecord.InjectTimeRecord injectTimeRecord : value.m13355mB()) {
                        if (injectTimeRecord != null && injectTimeRecord.mIsSuccess) {
                            String m2227a2 = C3612sw.m2227a(C3489qs.f3433EZ, 73, m1704b(injectTimeRecord.m13341mD()));
                            C2854da c2854da2 = new C2854da();
                            c2854da2.f2414id = ActionStatsID.EMID_KingCom_Inject_Time_After_Boot;
                            c2854da2.desc = "1";
                            c2854da2.f2416mO = m2227a2;
                            c2854da2.f2413fY = (int) System.currentTimeMillis();
                            arrayList2.add(c2854da2);
                        }
                    }
                    for (BootRecord.InjectResultRecord injectResultRecord : value.m13354mC()) {
                        if (injectResultRecord != null && ((m13358dj = value.m13358dj(injectResultRecord.mPkg)) == null || m13358dj.mAppBootupTime != 0)) {
                            String m2227a3 = C3612sw.m2227a(C3489qs.f3433EZ, 73, m1704b(injectResultRecord.m13342mD()));
                            C2854da c2854da3 = new C2854da();
                            c2854da3.f2414id = ActionStatsID.EMID_KingCom_Inject_Result_Start_After_Boot;
                            c2854da3.desc = "1";
                            c2854da3.f2416mO = m2227a3;
                            c2854da3.f2413fY = (int) System.currentTimeMillis();
                            arrayList2.add(c2854da3);
                        }
                    }
                }
            }
            arrayList = arrayList2;
        }
        return arrayList;
    }

    @NonNull
    /* renamed from: b */
    public static String[][] m1704b(@NonNull String[][] strArr) {
        String[][] strArr2 = new String[strArr.length + 1];
        String[] strArr3 = new String[1];
        strArr3[0] = KApplication.m13443ia();
        strArr2[0] = strArr3;
        System.arraycopy(strArr, 0, strArr2, 1, strArr.length);
        return strArr2;
    }

    /* renamed from: S */
    public synchronized void m1715S(boolean z) {
        if (!C3942yy.m1349e(m1682mb())) {
            if (z) {
                for (Long l : this.f3793Ls) {
                    BootRecord bootRecord = m1682mb().get(l);
                    if (bootRecord != null) {
                        bootRecord.m13348mv();
                    }
                    if (m1676mh() != l.longValue()) {
                        m1682mb().remove(l);
                    }
                }
                m1679me();
            } else {
                this.f3793Ls.clear();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: ml */
    public void m1672ml() {
        BootRecord m1678mf = m1678mf();
        if (m1678mf != null) {
            m1678mf.m13351ms();
            if (m1678mf.m13344mz()) {
                this.f3794Lt = false;
            }
            m1679me();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: mm */
    public void m1671mm() {
        BootRecord m1678mf = m1678mf();
        if (m1678mf != null) {
            m1678mf.m13352mr();
            if (m1678mf.m13344mz()) {
                this.f3794Lt = false;
            }
            m1679me();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: mn */
    public void m1670mn() {
        BootRecord m1678mf = m1678mf();
        if (m1678mf != null) {
            m1678mf.m13353mq();
            if (m1678mf.m13344mz()) {
                this.f3794Lt = false;
            }
            m1679me();
        }
    }

    /* renamed from: E */
    private boolean m1717E(String str, String str2) {
        String str3;
        VTCmdResult m12846el = abc.m12845qK().m12846el("cat /proc/" + ProcessUtils.m13143ej(str) + "/maps");
        return m12846el.success() && (str3 = m12846el.mStdOut) != null && str3.contains(str2);
    }

    /* renamed from: dg */
    private int m1698dg(String str) {
        String[] split;
        VTCmdResult m12831em = abi.m12831em("ps");
        if (!m12831em.success()) {
            return -1;
        }
        String str2 = m12831em.mStdOut;
        if (!TextUtils.isEmpty(str2) && (split = str2.split("\n")) != null) {
            int i = 0;
            for (String str3 : split) {
                if (str3 != null && str3.contains("com.")) {
                    i++;
                    if (str3.contains(str)) {
                        return i;
                    }
                }
            }
            return 0;
        }
        return 0;
    }

    /* renamed from: dh */
    private long m1697dh(String str) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = aap.getRunningAppProcesses();
        if (runningAppProcesses == null) {
            return 0L;
        }
        ArrayList<ActivityManager.RunningAppProcessInfo> arrayList = new ArrayList();
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            String[] strArr = runningAppProcessInfo.pkgList;
            if (strArr != null) {
                for (String str2 : strArr) {
                    if (!TextUtils.isEmpty(str2) && str2.contains(str)) {
                        arrayList.add(runningAppProcessInfo);
                    }
                }
            }
        }
        if (arrayList.size() != 0) {
            long j = 0;
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo2 : arrayList) {
                j = (j == 0 || j > acu.m12572ci(runningAppProcessInfo2.pid)) ? acu.m12572ci(runningAppProcessInfo2.pid) : j;
            }
            return j;
        }
        return 0L;
    }

    /* renamed from: di */
    private String m1696di(String str) {
        try {
            PackageInfo packageInfo = C3952zh.m1312pq().getPackageInfo(str, 0);
            if (packageInfo == null) {
                return "";
            }
            return packageInfo.versionName;
        } catch (PackageManager.NameNotFoundException e) {
            return "";
        }
    }

    /* renamed from: mo */
    private boolean m1669mo() {
        return this.f3791Lq.getBoolean("SA01", true);
    }
}
