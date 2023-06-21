package com.kingroot.kinguser;

import com.tencent.feedback.eup.CrashReport;
import java.lang.Thread;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
/* loaded from: classes.dex */
public class afr {
    /* renamed from: vq */
    public static void m12030vq() {
        final Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: com.kingroot.kinguser.afr.1
            @Override // java.lang.Thread.UncaughtExceptionHandler
            public void uncaughtException(Thread thread, Throwable th) {
                if (afr.m12033e(th)) {
                    CrashReport.handleCatchException(new Thread(), th, "ignore by CrashFix " + th.getMessage(), null);
                } else {
                    defaultUncaughtExceptionHandler.uncaughtException(thread, th);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public static boolean m12033e(Throwable th) {
        if (th.toString().contains("java.util.concurrent.TimeoutException: android.os.BinderProxy.finalize() timed out after")) {
            C3840wl.m1551c(new Runnable() { // from class: com.kingroot.kinguser.afr.2
                @Override // java.lang.Runnable
                public void run() {
                    afr.m12029vr();
                }
            }, 2000L);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: vr */
    public static void m12029vr() {
        beg.m7461Zj().m7450c(new bed(bem.HIGH, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.afr.3
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                try {
                    Class<?> cls = Class.forName("java.lang.Daemons$FinalizerWatchdogDaemon");
                    Field declaredField = cls.getDeclaredField("INSTANCE");
                    if (declaredField != null) {
                        declaredField.setAccessible(true);
                        Object obj = declaredField.get(null);
                        Method method = cls.getMethod("stop", new Class[0]);
                        Method method2 = cls.getMethod("start", new Class[0]);
                        method.setAccessible(true);
                        method2.setAccessible(true);
                        method.invoke(obj, new Object[0]);
                        method2.invoke(obj, new Object[0]);
                    }
                } catch (Throwable th) {
                    CrashReport.handleCatchException(new Thread(), th, "restartFinalizerDaemon failed " + th.getMessage(), null);
                }
            }
        }));
    }
}
