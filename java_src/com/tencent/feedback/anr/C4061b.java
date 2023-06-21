package com.tencent.feedback.anr;

import andhook.lib.xposed.callbacks.XCallback;
import android.app.ActivityManager;
import android.content.Context;
import android.os.Process;
import com.tencent.feedback.common.C4071c;
import com.tencent.feedback.common.C4073e;
import com.tencent.feedback.eup.C4085b;
import com.tencent.feedback.eup.C4088c;
import com.tencent.feedback.eup.C4090e;
import com.tencent.feedback.eup.C4091f;
import com.tencent.feedback.eup.CrashReport;
import com.tencent.feedback.eup.CrashStrategyBean;
import com.tencent.feedback.eup.jni.C4097d;
import com.tencent.feedback.proguard.C4119a;
import com.tencent.feedback.proguard.C4140u;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.tencent.feedback.anr.b */
/* loaded from: classes.dex */
public final class C4061b {

    /* renamed from: d */
    private static C4061b f4397d = null;

    /* renamed from: a */
    private AtomicInteger f4398a = new AtomicInteger(0);

    /* renamed from: b */
    private long f4399b = -1;

    /* renamed from: c */
    private Context f4400c;

    private C4061b(Context context) {
        this.f4400c = context;
        C4140u.m598a(context).m597a(new C4097d(context, context.getFilesDir().getAbsolutePath() + "/eup", C4119a.m727c() - 604800, 10, "tomb_", ".txt"));
    }

    /* renamed from: a */
    public static synchronized C4061b m1138a(Context context) {
        C4061b c4061b;
        synchronized (C4061b.class) {
            if (f4397d == null) {
                f4397d = new C4061b(context);
            }
            c4061b = f4397d;
        }
        return c4061b;
    }

    /* renamed from: a */
    public final void m1135a(String str) {
        synchronized (this) {
            if (this.f4398a.get() != 0) {
                C4073e.m1015b("anr started return ", new Object[0]);
                return;
            }
            this.f4398a.set(1);
            try {
                C4071c m1088a = C4071c.m1088a(this.f4400c);
                if (m1088a == null) {
                    C4073e.m1012d("impossiable not inited?", new Object[0]);
                    return;
                }
                CrashStrategyBean crashRuntimeStrategy = CrashReport.getCrashRuntimeStrategy();
                if (crashRuntimeStrategy == null || !C4091f.m808l().m969a()) {
                    C4073e.m1012d("impossiable crash close?", new Object[0]);
                    return;
                }
                C4073e.m1015b("read trace first dump for create time!", new Object[0]);
                C4065f m1141a = C4060a.m1141a(str, false);
                long j = m1141a != null ? m1141a.f4409c : -1L;
                if (j == -1) {
                    C4073e.m1013c("trace dump fail could not get time!", new Object[0]);
                    j = new Date().getTime();
                }
                if (Math.abs(j - this.f4399b) < 10000) {
                    C4073e.m1013c("should not process ANR too Fre in %d", Integer.valueOf((int) XCallback.PRIORITY_HIGHEST));
                    return;
                }
                this.f4399b = j;
                this.f4398a.set(1);
                Map<String, String> m737b = C4119a.m737b();
                if (m737b == null || m737b.size() <= 0) {
                    C4073e.m1013c("can't get all thread skip this anr", new Object[0]);
                    return;
                }
                ActivityManager.ProcessErrorStateInfo m1137a = m1137a(this.f4400c, 10000L);
                if (m1137a == null) {
                    C4073e.m1015b("proc error state is unvisiable , may not be mine or just wait to be killed", new Object[0]);
                } else if (m1137a.pid != Process.myPid()) {
                    C4073e.m1015b("found other process %s visiable anr error , not mine just return", m1137a.processName);
                } else {
                    C4073e.m1017a("current proc occur visiable anr start to handle", new Object[0]);
                    File file = new File(this.f4400c.getFilesDir(), "eup/eup_trace_" + j);
                    C4060a c4060a = new C4060a();
                    c4060a.f4393c = j;
                    c4060a.f4394d = file.getAbsolutePath();
                    c4060a.f4391a = m1137a.processName;
                    c4060a.f4396f = m1137a.shortMsg;
                    c4060a.f4395e = m1137a.longMsg;
                    c4060a.f4392b = m737b;
                    Object[] objArr = new Object[6];
                    objArr[0] = Long.valueOf(c4060a.f4393c);
                    objArr[1] = c4060a.f4394d;
                    objArr[2] = c4060a.f4391a;
                    objArr[3] = c4060a.f4396f;
                    objArr[4] = c4060a.f4395e;
                    objArr[5] = Integer.valueOf(c4060a.f4392b == null ? 0 : c4060a.f4392b.size());
                    C4073e.m1015b("anr tm:%d\ntr:%s\nproc:%s\nsMsg:%s\n lMsg:%s\n threads:%d", objArr);
                    if (!m1136a(this.f4400c, c4060a, m1088a, crashRuntimeStrategy)) {
                        C4073e.m1012d("record anrinfo fail", new Object[0]);
                        return;
                    }
                    this.f4398a.set(3);
                    if (m1134a(str, c4060a.f4394d, c4060a.f4391a)) {
                        C4073e.m1017a("backup trace success %s", c4060a.f4394d);
                    } else {
                        C4073e.m1013c("dump trace fail! %s", str);
                    }
                }
            } catch (Throwable th) {
                try {
                    if (!C4073e.m1016a(th)) {
                        th.printStackTrace();
                    }
                    C4073e.m1012d("handle anr error %s", th.getClass().toString());
                } finally {
                    this.f4398a.set(0);
                }
            }
        }
    }

    /* renamed from: a */
    private static ActivityManager.ProcessErrorStateInfo m1137a(Context context, long j) {
        long j2 = 10000 < 0 ? 0L : 10000L;
        C4073e.m1015b("to find!", new Object[0]);
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        long j3 = j2 / 500;
        int i = 0;
        while (true) {
            C4073e.m1015b("waiting!", new Object[0]);
            List<ActivityManager.ProcessErrorStateInfo> processesInErrorState = activityManager.getProcessesInErrorState();
            if (processesInErrorState != null) {
                for (ActivityManager.ProcessErrorStateInfo processErrorStateInfo : processesInErrorState) {
                    if (processErrorStateInfo.condition == 2) {
                        C4073e.m1015b("found!", new Object[0]);
                        return processErrorStateInfo;
                    }
                }
            }
            try {
                Thread.sleep(500L);
            } catch (InterruptedException e) {
                if (!C4073e.m1016a(e)) {
                    e.printStackTrace();
                }
            }
            int i2 = i + 1;
            if (i >= j3) {
                C4073e.m1015b("end!", new Object[0]);
                return null;
            }
            i = i2;
        }
    }

    /* renamed from: a */
    private static boolean m1136a(Context context, C4060a c4060a, C4071c c4071c, CrashStrategyBean crashStrategyBean) {
        if (context == null || c4060a == null || c4071c == null || crashStrategyBean == null) {
            C4073e.m1012d("args error %s %s %s %s ", new StringBuilder().append(context).toString(), new StringBuilder().append(c4060a).toString(), new StringBuilder().append(c4071c).toString(), new StringBuilder().append(crashStrategyBean).toString());
            return true;
        } else if (c4060a.f4392b == null || c4060a.f4392b.get("main") == null) {
            C4073e.m1012d("error can't get stacks of anr %s ,drop this anr error", new StringBuilder().append(c4060a.f4392b).toString());
            return false;
        } else {
            try {
                String str = c4060a.f4392b.get("main");
                int indexOf = str.indexOf("\n");
                C4090e m944a = C4085b.m944a(context, c4071c.m1067h(), c4071c.m1065i(), c4071c.m1061k(), c4071c.m1044y(), c4060a.f4391a, "main", indexOf > 0 ? str.substring(0, indexOf) : "unknown", "ANR_RQD_EXCEPTION", c4060a.f4396f, str, c4060a.f4393c, c4060a.f4395e, null);
                m944a.m910D().putAll(c4060a.f4392b);
                m944a.m888a((byte) 3);
                m944a.m850h(c4060a.f4394d);
                boolean m920a = C4088c.m921a(context).m920a(m944a, crashStrategyBean);
                C4073e.m1015b("sha1:%s %d", m944a.m832p(), Integer.valueOf(m944a.m838m()));
                C4073e.m1015b("handle anr %b", Boolean.valueOf(m920a));
                return m920a;
            } catch (Throwable th) {
                if (!C4073e.m1016a(th)) {
                    th.printStackTrace();
                }
                C4073e.m1012d("recordANR error %s", th.getClass().getName() + ":" + th.getMessage());
                return false;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:79:0x01d6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static boolean m1134a(String str, String str2, String str3) {
        BufferedWriter bufferedWriter;
        C4065f m1142a = C4060a.m1142a(str3, str, true);
        if (m1142a == null || m1142a.f4410d == null || m1142a.f4410d.size() <= 0) {
            C4073e.m1012d("not found trace dump for %s", str3);
            return false;
        }
        File file = new File(str2);
        try {
            if (!file.exists()) {
                if (!file.getParentFile().exists()) {
                    file.getParentFile().mkdirs();
                }
                file.createNewFile();
            }
            if (!file.exists() || !file.canWrite()) {
                C4073e.m1012d("backup file create fail %s", str2);
                return false;
            }
            BufferedWriter bufferedWriter2 = null;
            try {
                bufferedWriter = new BufferedWriter(new FileWriter(file, false));
            } catch (IOException e) {
                e = e;
            } catch (Throwable th) {
                th = th;
                bufferedWriter = null;
            }
            try {
                String[] strArr = m1142a.f4410d.get("main");
                if (strArr != null && strArr.length >= 3) {
                    bufferedWriter.write("\"main\" tid=" + strArr[2] + " :\n" + strArr[0] + "\n" + strArr[1] + "\n\n");
                    bufferedWriter.flush();
                }
                for (Map.Entry<String, String[]> entry : m1142a.f4410d.entrySet()) {
                    if (!entry.getKey().equals("main") && entry.getValue() != null && entry.getValue().length >= 3) {
                        bufferedWriter.write("\"" + entry.getKey() + "\" tid=" + entry.getValue()[2] + " :\n" + entry.getValue()[0] + "\n" + entry.getValue()[1] + "\n\n");
                        bufferedWriter.flush();
                    }
                }
                try {
                    bufferedWriter.close();
                } catch (IOException e2) {
                    if (!C4073e.m1016a(e2)) {
                        e2.printStackTrace();
                    }
                }
                return true;
            } catch (IOException e3) {
                e = e3;
                bufferedWriter2 = bufferedWriter;
                try {
                    if (!C4073e.m1016a(e)) {
                        e.printStackTrace();
                    }
                    C4073e.m1012d("dump trace fail %s", e.getClass().getName() + ":" + e.getMessage());
                    if (bufferedWriter2 != null) {
                        try {
                            bufferedWriter2.close();
                        } catch (IOException e4) {
                            if (!C4073e.m1016a(e4)) {
                                e4.printStackTrace();
                            }
                        }
                    }
                    return false;
                } catch (Throwable th2) {
                    th = th2;
                    bufferedWriter = bufferedWriter2;
                    if (bufferedWriter != null) {
                        try {
                            bufferedWriter.close();
                        } catch (IOException e5) {
                            if (!C4073e.m1016a(e5)) {
                                e5.printStackTrace();
                            }
                        }
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                if (bufferedWriter != null) {
                }
                throw th;
            }
        } catch (Exception e6) {
            if (!C4073e.m1016a(e6)) {
                e6.printStackTrace();
            }
            C4073e.m1012d("backup file create error! %s  %s", e6.getClass().getName() + ":" + e6.getMessage(), str2);
            return false;
        }
    }

    /* renamed from: a */
    public final boolean m1139a() {
        return this.f4398a.get() != 0;
    }
}
