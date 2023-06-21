package com.tencent.feedback.eup;

import andhook.lib.xposed.callbacks.XCallback;
import android.content.Context;
import android.os.Process;
import com.tencent.feedback.common.C4068a;
import com.tencent.feedback.common.C4071c;
import com.tencent.feedback.common.C4073e;
import com.tencent.feedback.proguard.C4119a;
import java.io.File;
import java.lang.Thread;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: com.tencent.feedback.eup.c */
/* loaded from: classes.dex */
public final class C4088c implements Thread.UncaughtExceptionHandler {

    /* renamed from: c */
    private static C4088c f4536c = null;

    /* renamed from: a */
    private Thread.UncaughtExceptionHandler f4537a = null;

    /* renamed from: b */
    private Context f4538b;

    /* renamed from: a */
    public static synchronized C4088c m921a(Context context) {
        C4088c c4088c;
        synchronized (C4088c.class) {
            if (f4536c == null && context != null) {
                f4536c = new C4088c(context);
            }
            c4088c = f4536c;
        }
        return c4088c;
    }

    private C4088c(Context context) {
        Context applicationContext;
        this.f4538b = null;
        if (context != null && (applicationContext = context.getApplicationContext()) != null) {
            context = applicationContext;
        }
        this.f4538b = context;
    }

    /* renamed from: a */
    public final synchronized void m922a() {
        C4073e.m1017a("rqdp{ eup regist}", new Object[0]);
        Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        if (defaultUncaughtExceptionHandler != this) {
            this.f4537a = defaultUncaughtExceptionHandler;
            Thread.setDefaultUncaughtExceptionHandler(this);
        }
    }

    /* renamed from: b */
    public final synchronized void m916b() {
        C4073e.m1017a("rqdp{ eup unregister}", new Object[0]);
        if (Thread.getDefaultUncaughtExceptionHandler() == this) {
            Thread.setDefaultUncaughtExceptionHandler(this.f4537a);
            this.f4537a = null;
        }
    }

    /* renamed from: a */
    private synchronized void m918a(Thread thread, Throwable th) {
        if (this.f4537a != null) {
            C4073e.m1015b("rqdp{ sys crhandle!}", new Object[0]);
            this.f4537a.uncaughtException(thread, th);
        } else {
            C4073e.m1015b("rqdp{ kill!}", new Object[0]);
            Process.killProcess(Process.myPid());
            System.exit(1);
        }
    }

    /* renamed from: c */
    private static void m915c() {
        Thread thread = new Thread() { // from class: com.tencent.feedback.eup.b.1
            @Override // java.lang.Thread, java.lang.Runnable
            public final void run() {
                C4091f.m806n();
            }
        };
        thread.setName("ImmediateEUP");
        thread.start();
        try {
            thread.join(3000L);
        } catch (InterruptedException e) {
            if (!C4073e.m1016a(e)) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: a */
    private int m917a(List<C4090e> list, int i, boolean z) {
        Context context = this.f4538b;
        if (list == null || i <= 0) {
            return 0;
        }
        ArrayList arrayList = new ArrayList();
        Collections.sort(list, new Comparator<C4090e>() { // from class: com.tencent.feedback.eup.b.2
            @Override // java.util.Comparator
            public final /* synthetic */ int compare(C4090e c4090e, C4090e c4090e2) {
                C4090e c4090e3 = c4090e;
                C4090e c4090e4 = c4090e2;
                int i2 = c4090e3.m880b() ? 1 : 0;
                int i3 = c4090e4.m880b() ? 1 : 0;
                return i2 == i3 ? (int) (c4090e3.m849i() - c4090e4.m849i()) : i2 - i3;
            }
        });
        Iterator<C4090e> it = list.iterator();
        while (it.hasNext() && i > arrayList.size()) {
            C4090e next = it.next();
            if (next.m880b() && !z) {
                break;
            }
            arrayList.add(next);
            it.remove();
        }
        if (arrayList.size() > 0) {
            return C4085b.m943a(context, arrayList);
        }
        return 0;
    }

    /* renamed from: a */
    public final boolean m920a(C4090e c4090e, CrashStrategyBean crashStrategyBean) {
        C4090e c4090e2;
        int size;
        C4090e c4090e3;
        boolean z;
        if (c4090e == null && crashStrategyBean == null) {
            C4073e.m1013c("handler exception data params error", new Object[0]);
            return false;
        }
        if (crashStrategyBean.isMerged()) {
            Context context = this.f4538b;
            if (c4090e == null) {
                c4090e3 = null;
            } else {
                String m725c = C4119a.m725c((((int) c4090e.m895S()) + "\n" + c4090e.m861e() + "\n" + c4090e.m852h()).getBytes());
                if (m725c == null) {
                    C4073e.m1013c("rqdp{  md5 error!}", new Object[0]);
                    c4090e3 = null;
                } else {
                    c4090e.m853g(m725c);
                    c4090e.m882a(true);
                    c4090e.m879b(1);
                    c4090e.m886a(0);
                    List<C4090e> m947a = C4085b.m947a(context, 1, "desc", -1, m725c, -1, -1, -1, -1, -1L, -1L, null);
                    if (m947a == null || m947a.size() <= 0) {
                        C4073e.m1015b("rqdp{  new one ,no merged!}", new Object[0]);
                        c4090e3 = null;
                    } else {
                        c4090e3 = m947a.get(0);
                        if (c4090e3.m840l() == null || !c4090e3.m840l().contains(new StringBuilder().append(c4090e.m849i()).toString())) {
                            c4090e3.m879b(c4090e3.m838m() + 1);
                            if (c4090e3.m840l() == null) {
                                c4090e3.m856f("");
                            }
                            c4090e3.m856f(c4090e3.m840l() + c4090e.m849i() + "\n");
                            C4073e.m1015b("rqdp{  EUPDAO.insertOrUpdateEUP() start}", new Object[0]);
                            if (context == null || c4090e3 == null) {
                                C4073e.m1013c("rqdp{  context == null || bean == null,pls check}", new Object[0]);
                                z = false;
                            } else {
                                ArrayList arrayList = new ArrayList();
                                arrayList.add(c4090e3);
                                z = C4085b.m923b(context, arrayList);
                            }
                            if (z) {
                                C4073e.m1017a("rqdp{  eupMeg update success} %b , c:%d , at:%s up:%d", Boolean.valueOf(z), Integer.valueOf(c4090e3.m838m()), c4090e3.m840l(), Integer.valueOf(c4090e3.m846j()));
                                if (c4090e.m830q() != null) {
                                    File file = new File(c4090e.m830q());
                                    if (file.exists() && file.isFile()) {
                                        file.delete();
                                    }
                                }
                            }
                        } else {
                            C4073e.m1015b("rqdp{ already merged} %d", Long.valueOf(c4090e.m849i()));
                        }
                    }
                }
            }
            if (c4090e3 != null) {
                C4073e.m1017a("merge success return", new Object[0]);
                if (!c4090e3.m819x() && c4090e3.m838m() >= 2) {
                    C4073e.m1017a("rqdp{ may be crash too frequent! do immediate upload in merge!}", new Object[0]);
                    m915c();
                }
                return true;
            }
        }
        int maxStoredNum = crashStrategyBean.getMaxStoredNum();
        List<C4090e> m947a2 = C4085b.m947a(this.f4538b, maxStoredNum + 1, "asc", -1, null, -1, -1, -1, -1, -1L, -1L, null);
        if (m947a2 != null && m947a2.size() > 0 && (size = (m947a2.size() - maxStoredNum) + 1) > 0 && m917a(m947a2, size, c4090e.m880b()) < size) {
            C4073e.m1013c("can't add more eup!", new Object[0]);
            return false;
        }
        if (m947a2 != null && m947a2.size() > 1) {
            C4090e c4090e4 = m947a2.get(0);
            Iterator<C4090e> it = m947a2.iterator();
            while (true) {
                c4090e2 = c4090e4;
                if (!it.hasNext()) {
                    break;
                }
                c4090e4 = it.next();
                if (c4090e2.m849i() >= c4090e4.m849i() || !c4090e4.m880b()) {
                    c4090e4 = c4090e2;
                }
            }
            if (c4090e2.m880b() && c4090e.m849i() - c4090e2.m849i() < BuglyBroadcastRecevier.UPLOADLIMITED) {
                C4073e.m1013c("rqdp{ may be crash too frequent! do immediate upload in not merge!}", new Object[0]);
                m915c();
            }
        }
        C4085b.m945a(this.f4538b, c4090e, crashStrategyBean);
        if (C4068a.m1121e(this.f4538b)) {
            C4073e.m1015b("save log", new Object[0]);
            c4090e.m881a(C4119a.m747a(crashStrategyBean.getOnlyLogTag(), crashStrategyBean.getMaxLogRow()));
        } else {
            c4090e.m881a((byte[]) null);
        }
        boolean m946a = C4085b.m946a(this.f4538b, c4090e);
        C4073e.m1017a("store new eup pn:%s, isMe:%b , isNa:%b , res:%b ", c4090e.m828r(), Boolean.valueOf(c4090e.m873c()), Boolean.valueOf(c4090e.m880b()), Boolean.valueOf(m946a));
        return m946a;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(23:1|(1:3)(1:87)|(1:5)(1:86)|6|(1:8)(1:85)|9|10|11|(1:15)|16|(3:19|(2:72|73)|(14:22|23|24|25|(1:27)(1:66)|28|29|30|(2:32|(1:36))|38|(6:41|42|(1:46)|47|(1:49)|(2:51|52)(2:54|55))|61|(0)|(0)(0)))|79|25|(0)(0)|28|29|30|(0)|38|(6:41|42|(2:44|46)|47|(0)|(0)(0))|61|(0)|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x01a0, code lost:
        r3 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x01a1, code lost:
        com.tencent.feedback.common.C4073e.m1012d("get all threads stack fail", new java.lang.Object[0]);
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x01ad, code lost:
        if (com.tencent.feedback.common.C4073e.m1016a(r3) == false) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x01af, code lost:
        r3.printStackTrace();
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00ca A[Catch: Throwable -> 0x01a0, TryCatch #2 {Throwable -> 0x01a0, blocks: (B:29:0x00c4, B:31:0x00ca, B:33:0x00d3, B:35:0x00dd), top: B:81:0x00c4 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01d0  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean m919a(String str, Throwable th, String str2, byte[] bArr, boolean z) {
        CrashHandleListener m802r;
        byte[] bArr2;
        String str3;
        C4090e m944a;
        boolean z2;
        Map<String, String> m737b;
        String m1101H = C4071c.m1088a(this.f4538b).m1101H();
        String str4 = "";
        String str5 = "";
        String message = th != null ? th.getMessage() : "";
        String name = th != null ? th.getClass().getName() : "";
        C4091f m808l = C4091f.m808l();
        if (m808l == null) {
            C4073e.m1013c("rqdp{  instance == null}", new Object[0]);
            m802r = null;
        } else {
            m802r = m808l.m802r();
        }
        long time = new Date().getTime();
        try {
            str4 = C4085b.m937a(th, CrashReport.getCrashRuntimeStrategy());
        } catch (Throwable th2) {
            C4073e.m1012d("create stack from throw fail!", new Object[0]);
            if (!C4073e.m1016a(th2)) {
                th2.printStackTrace();
            }
        }
        if (str4 != null && str4.contains("\n")) {
            str5 = str4.substring(0, str4.indexOf("\n"));
        }
        C4073e.m1015b("rqdp{ stack:}%s", str4);
        if (z && m802r != null) {
            C4073e.m1015b("get crash extra...", new Object[0]);
            if (m802r != null) {
                try {
                    C4073e.m1017a("your crmsg", new Object[0]);
                    str2 = m802r.getCrashExtraMessage(false, name, str5, str4, XCallback.PRIORITY_LOWEST, time);
                } catch (Throwable th3) {
                    C4073e.m1012d("rqdp{ get extra msg error} %s", th3.toString());
                    if (!C4073e.m1016a(th3)) {
                        th3.printStackTrace();
                    }
                }
            }
            if (m802r != null) {
                try {
                    C4073e.m1017a("your crdata", new Object[0]);
                    bArr2 = m802r.getCrashExtraData(false, name, str5, str4, XCallback.PRIORITY_LOWEST, time);
                    str3 = str2;
                } catch (Throwable th4) {
                    C4073e.m1012d("rqdp{ get extra msg error} %s", th4.toString());
                    if (!C4073e.m1016a(th4)) {
                        th4.printStackTrace();
                    }
                }
                C4071c m1088a = C4071c.m1088a(this.f4538b);
                m944a = C4085b.m944a(this.f4538b, m1088a.m1067h(), m1088a.m1065i(), m1088a.m1061k(), m1088a.m1043z(), m1101H, str, str5, name, message, str4, time, str3, bArr2);
                m944a.m888a(!z ? (byte) 0 : (byte) 1);
                m737b = C4119a.m737b();
                if (m737b != null) {
                    m944a.m910D().putAll(m737b);
                    if (str != null && str.trim().length() > 0) {
                        m944a.m910D().remove(str);
                    }
                }
                if (z && m802r != null) {
                    try {
                        C4073e.m1017a("your ask2save", new Object[0]);
                        if (message != null && message.trim().length() > 0) {
                            name = name + ":" + message;
                        }
                        z2 = m802r.onCrashSaving(false, name, str5, str4, XCallback.PRIORITY_LOWEST, time, m944a.m843k(), m944a.m909E(), m944a.m820w());
                    } catch (Throwable th5) {
                        C4073e.m1012d("rqdp{ get extra msg error} %s", th5.toString());
                        if (!C4073e.m1016a(th5)) {
                            th5.printStackTrace();
                        }
                    }
                    if (z) {
                        BuglyBroadcastRecevier.brocastCrash(this.f4538b, m944a);
                    }
                    if (!z2) {
                        return m920a(m944a, CrashReport.getCrashRuntimeStrategy());
                    }
                    C4073e.m1013c("not to save", new Object[0]);
                    return false;
                }
                z2 = true;
                if (z) {
                }
                if (!z2) {
                }
            }
        }
        bArr2 = bArr;
        str3 = str2;
        C4071c m1088a2 = C4071c.m1088a(this.f4538b);
        m944a = C4085b.m944a(this.f4538b, m1088a2.m1067h(), m1088a2.m1065i(), m1088a2.m1061k(), m1088a2.m1043z(), m1101H, str, str5, name, message, str4, time, str3, bArr2);
        m944a.m888a(!z ? (byte) 0 : (byte) 1);
        m737b = C4119a.m737b();
        if (m737b != null) {
        }
        if (z) {
            C4073e.m1017a("your ask2save", new Object[0]);
            if (message != null) {
                name = name + ":" + message;
            }
            z2 = m802r.onCrashSaving(false, name, str5, str4, XCallback.PRIORITY_LOWEST, time, m944a.m843k(), m944a.m909E(), m944a.m820w());
            if (z) {
            }
            if (!z2) {
            }
        }
        z2 = true;
        if (z) {
        }
        if (!z2) {
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final synchronized void uncaughtException(Thread thread, Throwable th) {
        CrashHandleListener m802r;
        boolean z;
        if (th != null) {
            if (!C4073e.m1016a(th)) {
                th.printStackTrace();
            }
        }
        C4091f m808l = C4091f.m808l();
        if (m808l == null) {
            C4073e.m1013c("rqdp{  instance == null}", new Object[0]);
            m802r = null;
        } else {
            m802r = m808l.m802r();
        }
        if (m802r != null) {
            C4073e.m1017a("your crhandler start", new Object[0]);
            m802r.onCrashHandleStart(false);
        }
        C4073e.m1015b("rqdp{ handle eup result} %b", Boolean.valueOf(m919a(thread == null ? "" : thread.getName(), th, null, null, true)));
        if (m802r != null) {
            C4073e.m1017a("your crhandler end", new Object[0]);
            z = m802r.onCrashHandleEnd(false);
        } else {
            z = true;
        }
        if (z) {
            m918a(thread, th);
        }
    }
}
