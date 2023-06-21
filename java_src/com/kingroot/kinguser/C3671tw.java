package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import com.kingroot.common.utils.system.ProcessUtils;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* renamed from: com.kingroot.kinguser.tw */
/* loaded from: classes.dex */
public class C3671tw extends AbstractC3634th {

    /* renamed from: HG */
    private static InterfaceC3670tv f3581HG = null;

    /* renamed from: HH */
    private static ProcessUtils.C0577a f3582HH = null;

    /* renamed from: HI */
    private static long f3583HI = 0;

    /* renamed from: HJ */
    private static ProcessUtils.C0577a f3584HJ = null;

    /* renamed from: HK */
    private static long f3585HK = 0;
    private static Handler mHandler = new Handler(Looper.getMainLooper());

    /* renamed from: HL */
    private static ExecutorService f3586HL = Executors.newSingleThreadExecutor(new ThreadFactoryC3836wj("KServiceStatisticReceiver"));

    /* renamed from: HM */
    private static final Runnable f3587HM = new Runnable() { // from class: com.kingroot.kinguser.tw.1
        @Override // java.lang.Runnable
        public void run() {
            ProcessUtils.C0577a unused = C3671tw.f3584HJ = ProcessUtils.m13148cc(Process.myPid());
            long unused2 = C3671tw.f3585HK = aat.m12936pX();
            int m12935pY = aat.m12935pY();
            if (C3671tw.f3582HH != null && C3671tw.f3584HJ != null && C3671tw.f3582HH.mCpuTime > 0 && C3671tw.f3583HI > 0 && C3671tw.f3584HJ.mCpuTime > 0 && C3671tw.f3585HK > 0 && C3671tw.f3585HK - C3671tw.f3583HI > 0 && C3671tw.f3584HJ.mCpuTime - C3671tw.f3582HH.mCpuTime > 0) {
                final double d = ((m12935pY * 100) * (C3671tw.f3584HJ.mCpuTime - C3671tw.f3582HH.mCpuTime)) / (C3671tw.f3585HK - C3671tw.f3583HI);
                new Thread(new Runnable() { // from class: com.kingroot.kinguser.tw.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Context m13453ge = KApplication.m13453ge();
                        Intent m2103aV = C3671tw.m2103aV(9);
                        m2103aV.putExtra("extra_cpu_rate", d);
                        m2103aV.setPackage(m13453ge.getPackageName());
                        m13453ge.sendBroadcast(m2103aV);
                    }
                }).start();
            }
        }
    };

    @Override // com.kingroot.kinguser.AbstractC3634th
    public void onReceive(Context context, Intent intent) {
        boolean z;
        if (TextUtils.equals(intent.getAction(), "com.kingroot.master.action.NOTIFY_STATISTIC")) {
            InterfaceC3519rh m13449hU = KApplication.m13449hU();
            if (m13449hU == null || !(m13449hU instanceof AbstractC3518rg)) {
                z = false;
            } else {
                z = ((AbstractC3518rg) m13449hU).mo2476hQ();
            }
            if (z) {
                m2098d(intent);
            }
        }
    }

    /* renamed from: d */
    private void m2098d(final Intent intent) {
        if (intent != null) {
            f3586HL.submit(new Runnable() { // from class: com.kingroot.kinguser.tw.2
                @Override // java.lang.Runnable
                public void run() {
                    InterfaceC3519rh m13449hU;
                    try {
                        int intExtra = intent.getIntExtra("extra_type", 0);
                        int intExtra2 = intent.getIntExtra("extra_proc_flag", -1);
                        int intExtra3 = intent.getIntExtra("extra_proc_id", Process.myPid());
                        String stringExtra = intent.getStringExtra("extra_task_tag");
                        long longExtra = intent.getLongExtra("extra_task_start_time", -1L);
                        if (C3671tw.f3581HG == null && (m13449hU = KApplication.m13449hU()) != null && (m13449hU instanceof AbstractC3518rg)) {
                            InterfaceC3670tv unused = C3671tw.f3581HG = ((AbstractC3518rg) m13449hU).mo2478hO();
                        }
                        if (C3671tw.f3581HG != null) {
                            switch (intExtra) {
                                case 1:
                                    C3671tw.f3581HG.mo2110u(intExtra2, intExtra3);
                                    return;
                                case 2:
                                    C3671tw.f3581HG.mo2109v(intExtra2, intExtra3);
                                    return;
                                case 3:
                                    C3671tw.f3581HG.mo2119a(intExtra2, intExtra3, intent.getLongExtra("extra_proc_live_time", 0L), intent.getBooleanExtra("extra_proc_is_exit", true));
                                    return;
                                case 4:
                                    C3671tw.f3581HG.mo2118a(intExtra2, intExtra3, intent.getStringExtra("extra_task_tag"), intent.getLongExtra("extra_task_max_live_time", 0L));
                                    return;
                                case 5:
                                    C3671tw.f3581HG.mo2117b(intExtra2, intExtra3, intent.getLongExtra("extra_main_start_time", 0L));
                                    return;
                                case 6:
                                    C3671tw.f3581HG.mo2113d(intExtra2, intExtra3, intent.getIntExtra("extra_thread_peak_size", 0));
                                    return;
                                case 7:
                                    C3671tw.f3581HG.mo2112d(intExtra2, intExtra3, intent.getLongExtra("extra_service_run_time", 0L));
                                    return;
                                case 8:
                                    C3671tw.f3581HG.mo2111e(intExtra2, intExtra3, intent.getLongExtra("extra_service_pss", 0L));
                                    return;
                                case 9:
                                    C3671tw.f3581HG.mo2120a(intExtra2, intExtra3, intent.getDoubleExtra("extra_cpu_rate", 0.0d));
                                    return;
                                case 10:
                                case 11:
                                case 12:
                                case 13:
                                case 14:
                                case 15:
                                default:
                                    return;
                                case 16:
                                    ProcessUtils.C0577a unused2 = C3671tw.f3582HH = ProcessUtils.m13148cc(Process.myPid());
                                    long unused3 = C3671tw.f3583HI = aat.m12936pX();
                                    C3671tw.mHandler.postDelayed(C3671tw.f3587HM, 180000L);
                                    return;
                                case 17:
                                    ProcessUtils.C0577a unused4 = C3671tw.f3582HH = null;
                                    ProcessUtils.C0577a unused5 = C3671tw.f3584HJ = null;
                                    long unused6 = C3671tw.f3583HI = 0L;
                                    long unused7 = C3671tw.f3585HK = 0L;
                                    C3671tw.mHandler.removeCallbacks(C3671tw.f3587HM);
                                    return;
                                case 18:
                                    C3671tw.f3581HG.mo2116b(stringExtra, intExtra3, longExtra);
                                    return;
                                case 19:
                                    C3671tw.f3581HG.mo2114c(stringExtra, intExtra3, longExtra);
                                    return;
                                case 20:
                                    C3671tw.f3581HG.mo2115c(intExtra2, intExtra3, intent.getLongExtra("extra_main_first_start_time", 0L));
                                    return;
                            }
                        }
                    } catch (Throwable th) {
                        KApplication.m13456a(th, getClass().getName(), null);
                    }
                }
            });
        }
    }

    /* renamed from: ka */
    public static void m2097ka() {
        try {
            Context m5101ge = bzt.m5101ge();
            Intent m2103aV = m2103aV(1);
            m2103aV.setPackage(m5101ge.getPackageName());
            m5101ge.sendBroadcast(m2103aV);
        } catch (Throwable th) {
        }
    }

    /* renamed from: kb */
    public static void m2096kb() {
        try {
            Context m5101ge = bzt.m5101ge();
            Intent m2103aV = m2103aV(2);
            m2103aV.setPackage(m5101ge.getPackageName());
            m5101ge.sendBroadcast(m2103aV);
        } catch (Throwable th) {
        }
    }

    /* renamed from: a */
    public static void m2108a(long j, boolean z) {
        try {
            Context m5101ge = bzt.m5101ge();
            Intent m2103aV = m2103aV(3);
            m2103aV.putExtra("extra_proc_live_time", j);
            m2103aV.putExtra("extra_proc_is_exit", z);
            m2103aV.setPackage(m5101ge.getPackageName());
            m5101ge.sendBroadcast(m2103aV);
        } catch (Throwable th) {
        }
    }

    /* renamed from: c */
    public static void m2099c(String str, long j) {
        try {
            Context m5101ge = bzt.m5101ge();
            Intent m2103aV = m2103aV(4);
            m2103aV.putExtra("extra_task_tag", str);
            m2103aV.putExtra("extra_task_max_live_time", j);
            m2103aV.setPackage(m5101ge.getPackageName());
            m5101ge.sendBroadcast(m2103aV);
        } catch (Throwable th) {
        }
    }

    /* renamed from: t */
    public static void m2086t(long j) {
        try {
            Context m5101ge = bzt.m5101ge();
            Intent m2103aV = m2103aV(5);
            m2103aV.putExtra("extra_main_start_time", j);
            m2103aV.setPackage(m5101ge.getPackageName());
            m5101ge.sendBroadcast(m2103aV);
        } catch (Throwable th) {
        }
    }

    /* renamed from: aU */
    public static void m2104aU(int i) {
        try {
            Context m5101ge = bzt.m5101ge();
            Intent m2103aV = m2103aV(6);
            m2103aV.putExtra("extra_thread_peak_size", i);
            m2103aV.setPackage(m5101ge.getPackageName());
            m5101ge.sendBroadcast(m2103aV);
        } catch (Throwable th) {
        }
    }

    /* renamed from: u */
    public static void m2085u(long j) {
        try {
            Context m5101ge = bzt.m5101ge();
            Intent m2103aV = m2103aV(7);
            m2103aV.putExtra("extra_service_run_time", j);
            m2103aV.setPackage(m5101ge.getPackageName());
            m5101ge.sendBroadcast(m2103aV);
        } catch (Throwable th) {
        }
    }

    /* renamed from: v */
    public static void m2084v(long j) {
        try {
            Context m5101ge = bzt.m5101ge();
            Intent m2103aV = m2103aV(8);
            m2103aV.putExtra("extra_service_pss", j);
            m2103aV.setPackage(m5101ge.getPackageName());
            m5101ge.sendBroadcast(m2103aV);
        } catch (Throwable th) {
        }
    }

    /* renamed from: kc */
    public static void m2095kc() {
        try {
            Context m5101ge = bzt.m5101ge();
            Intent m2103aV = m2103aV(16);
            m2103aV.setPackage(m5101ge.getPackageName());
            m5101ge.sendBroadcast(m2103aV);
        } catch (Throwable th) {
        }
    }

    /* renamed from: kd */
    public static void m2094kd() {
        try {
            Context m5101ge = bzt.m5101ge();
            Intent m2103aV = m2103aV(17);
            m2103aV.setPackage(C3636tj.getPackageName());
            m5101ge.sendBroadcast(m2103aV);
        } catch (Throwable th) {
        }
    }

    /* renamed from: a */
    public static void m2105a(String str, long j, int i) {
        try {
            Context m5101ge = bzt.m5101ge();
            Intent m2103aV = m2103aV(18);
            m2103aV.putExtra("extra_task_tag", str);
            m2103aV.putExtra("extra_task_start_time", j);
            m2103aV.putExtra("extra_proc_id", i);
            m2103aV.setPackage(C3636tj.getPackageName());
            m5101ge.sendBroadcast(m2103aV);
        } catch (Throwable th) {
        }
    }

    /* renamed from: b */
    public static void m2100b(String str, long j, int i) {
        try {
            Context m5101ge = bzt.m5101ge();
            Intent m2103aV = m2103aV(19);
            m2103aV.putExtra("extra_task_tag", str);
            m2103aV.putExtra("extra_task_start_time", j);
            m2103aV.putExtra("extra_proc_id", i);
            m2103aV.setPackage(m5101ge.getPackageName());
            m5101ge.sendBroadcast(m2103aV);
        } catch (Throwable th) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: aV */
    public static Intent m2103aV(int i) {
        Intent intent = new Intent("com.kingroot.master.action.NOTIFY_STATISTIC");
        intent.putExtra("extra_type", i);
        intent.putExtra("extra_proc_flag", KApplication.m13450hT());
        intent.putExtra("extra_proc_id", Process.myPid());
        return intent;
    }
}
