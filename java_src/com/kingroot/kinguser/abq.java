package com.kingroot.kinguser;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.support.annotation.NonNull;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.RunnableC3845wo;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class abq extends abo {
    private static final cce<abq> sInstance = new cce<abq>() { // from class: com.kingroot.kinguser.abq.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: rf */
        public abq create() {
            return new abq();
        }
    };

    /* renamed from: Zx */
    RunnableC3845wo f1358Zx;

    /* renamed from: Zw */
    volatile boolean f1357Zw = false;

    /* renamed from: Zy */
    int f1359Zy = 0;

    /* renamed from: Zz */
    volatile AtomicInteger f1360Zz = new AtomicInteger(0);

    /* renamed from: Zs */
    ActivityManager.RunningTaskInfo f1354Zs = null;

    /* renamed from: ZA */
    volatile boolean f1351ZA = false;

    /* renamed from: Zt */
    volatile boolean f1355Zt = false;

    /* renamed from: ZB */
    volatile boolean f1352ZB = true;

    /* renamed from: Zu */
    private boolean f1356Zu = false;

    /* renamed from: ZC */
    Runnable f1353ZC = new Runnable() { // from class: com.kingroot.kinguser.abq.3
        @Override // java.lang.Runnable
        public void run() {
            while (!abq.this.f1357Zw) {
                abq.this.m12772rd();
            }
        }
    };
    Context mContext = KApplication.m13453ge();

    /* renamed from: qY */
    public static abq m12777qY() {
        return sInstance.get();
    }

    abq() {
    }

    /* renamed from: qZ */
    public void m12776qZ() {
        if (this.f1352ZB) {
            start();
        }
    }

    protected synchronized void start() {
        if (this.f1356Zu) {
            this.f1357Zw = false;
            this.f1354Zs = null;
            if (!m12773rc()) {
                this.f1358Zx = new RunnableC3845wo() { // from class: com.kingroot.kinguser.abq.2
                    @Override // com.kingroot.kinguser.RunnableC3845wo
                    /* renamed from: a */
                    public void mo1543a(@NonNull RunnableC3845wo.InterfaceC3847a interfaceC3847a) {
                        super.mo1543a(interfaceC3847a);
                        abq.this.f1353ZC.run();
                    }
                };
                this.f1358Zx.m1539b("TaskMonitor", 5, null, false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public synchronized void stop() {
        this.f1357Zw = true;
    }

    /* renamed from: af */
    public synchronized void m12779af(boolean z) {
        this.f1351ZA = z;
        if (!z) {
            m12774rb();
        }
    }

    /* renamed from: ag */
    public synchronized void m12778ag(boolean z) {
        this.f1352ZB = z;
        if (z) {
            start();
        } else {
            stop();
        }
    }

    /* renamed from: ra */
    public synchronized void m12775ra() {
        start();
    }

    /* renamed from: rb */
    public synchronized void m12774rb() {
        if (m12773rc()) {
            this.f1360Zz.set(0);
            this.f1358Zx.m1535nA();
        } else {
            start();
        }
    }

    public void setEnable(boolean z) {
        this.f1356Zu = z;
        if (!this.f1356Zu) {
            stop();
        }
    }

    public boolean isEnable() {
        return this.f1356Zu;
    }

    /* renamed from: rc */
    boolean m12773rc() {
        return this.f1358Zx != null && this.f1358Zx.isRunning();
    }

    /* renamed from: rd */
    void m12772rd() {
        ActivityManager.RunningTaskInfo m12956ab = aap.m12956ab(this.mContext);
        if (m12956ab == null || m12956ab.topActivity == null) {
            this.f1354Zs = m12956ab;
            if (!m12771re()) {
                stop();
            }
            try {
                Thread.sleep(5000L);
                return;
            } catch (Exception e) {
                return;
            }
        }
        int a = m12794a(this.f1354Zs, m12956ab);
        if (a > 0) {
            C3951zg.m1322d("common_TopAppCommonMonitor", "top change: " + a);
            C3951zg.m1322d("common_TopAppCommonMonitor", "lastRunningTask: " + ((this.f1354Zs == null || this.f1354Zs.topActivity == null) ? "null" : this.f1354Zs.topActivity.getClassName()) + ", currentTask: " + (m12956ab.topActivity != null ? m12956ab.topActivity.getClassName() : "null"));
        }
        ActivityManager.RunningTaskInfo runningTaskInfo = this.f1354Zs;
        this.f1354Zs = m12956ab;
        if (Build.VERSION.SDK_INT < 21 && a >= 1) {
            m12791c(m12956ab, runningTaskInfo);
        }
        if (a == 2) {
            boolean c = m12790c(m12956ab.topActivity);
            if (this.f1355Zt != c) {
                if (c) {
                    m12785qV();
                } else {
                    m12786qU();
                }
                this.f1355Zt = c;
            }
            m12789d(m12956ab, runningTaskInfo);
            ArrayList<ActivityManager.RunningTaskInfo> S = m12796S(aap.m12954ad(this.mContext));
            if (S != null && S.size() > 0) {
                m12788l(S);
            }
        }
        this.f1351ZA = m12795a(m12956ab);
        try {
            if (this.f1351ZA) {
                Thread.sleep(400L);
                this.f1351ZA = m12795a(aap.m12956ab(this.mContext));
                if (this.f1351ZA) {
                    Thread.sleep(1000L);
                    this.f1351ZA = m12795a(aap.m12956ab(this.mContext));
                    if (this.f1351ZA) {
                        this.f1360Zz.set(1);
                        while (this.f1360Zz.getAndDecrement() > 0 && this.f1351ZA) {
                            Thread.sleep(30000L);
                        }
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            } else {
                Thread.sleep(500L);
                if (this.f1359Zy >= 10) {
                    this.f1359Zy = 0;
                }
                this.f1359Zy++;
            }
        } catch (Exception e2) {
        }
        this.f1359Zy++;
    }

    /* renamed from: re */
    private boolean m12771re() {
        if (Build.VERSION.SDK_INT < 21) {
            return true;
        }
        try {
            Context m13453ge = KApplication.m13453ge();
            List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = aap.getRunningAppProcesses();
            if (runningAppProcesses != null) {
                for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                    if (runningAppProcessInfo != null && runningAppProcessInfo.processName != null && !runningAppProcessInfo.processName.contains(m13453ge.getPackageName())) {
                        return true;
                    }
                }
            }
        } catch (Exception e) {
        }
        return false;
    }
}
