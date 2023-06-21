package com.tencent.feedback.anr;

import android.content.Context;
import com.tencent.feedback.common.AbstractC4069b;
import com.tencent.feedback.common.C4071c;
import com.tencent.feedback.common.C4073e;
import com.tencent.feedback.eup.C4085b;
import com.tencent.feedback.eup.C4088c;
import com.tencent.feedback.eup.C4090e;
import com.tencent.feedback.eup.CrashReport;
import com.tencent.feedback.eup.CrashStrategyBean;
/* loaded from: classes.dex */
public class ANRReport {
    public static void startANRMonitor(Context context) {
        FileObserverC4062c.m1133a(context).startWatching();
    }

    public static void stopANRMonitor() {
        if (FileObserverC4062c.m1133a(null) != null) {
            FileObserverC4062c.m1133a(null).stopWatching();
        }
    }

    public static void uploadANRInfoAsync(final Context context, final int i, final String str, final String str2, final String str3, final long j) {
        if (i <= 0 || str == null || j <= 0) {
            C4073e.m1012d("anr args unright pid, procName ,anrTime should not be null", new Object[0]);
        } else {
            AbstractC4069b.m1113b().mo1111a(new Runnable() { // from class: com.tencent.feedback.anr.ANRReport.1
                @Override // java.lang.Runnable
                public final void run() {
                    ANRReport.uploadANRInfo(context, i, str, str2, str3, j);
                }
            });
        }
    }

    public static boolean uploadANRInfo(Context context, int i, String str, String str2, String str3, long j) {
        C4071c m1088a = C4071c.m1088a(context);
        if (m1088a == null) {
            C4073e.m1012d("commonInfo is null not init ?", new Object[0]);
            return false;
        }
        CrashStrategyBean crashRuntimeStrategy = CrashReport.getCrashRuntimeStrategy();
        if (crashRuntimeStrategy == null) {
            C4073e.m1012d("crash strategy null,not init?", new Object[0]);
            return false;
        }
        C4090e m944a = C4085b.m944a(context, m1088a.m1067h(), m1088a.m1065i(), m1088a.m1061k(), m1088a.m1043z(), str, "main", "", "ANR_RQD_EXCEPTION", "", str2, j, str3, null);
        m944a.m888a((byte) 3);
        boolean m920a = C4088c.m921a(context).m920a(m944a, crashRuntimeStrategy);
        C4073e.m1015b("sha1:%s %d", m944a.m832p(), Integer.valueOf(m944a.m838m()));
        C4073e.m1015b("handle anr %b", Boolean.valueOf(m920a));
        return m920a;
    }
}
