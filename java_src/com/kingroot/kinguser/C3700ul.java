package com.kingroot.kinguser;

import android.annotation.TargetApi;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.support.annotation.Nullable;
import com.kingroot.common.app.KApplication;
import com.kingroot.common.improve.protection.KCheckServiceJob;
@TargetApi(21)
/* renamed from: com.kingroot.kinguser.ul */
/* loaded from: classes.dex */
public class C3700ul {

    /* renamed from: IE */
    private static final int f3630IE;

    /* renamed from: IF */
    private static long f3631IF;

    /* renamed from: Iy */
    private static Runnable f3632Iy;

    static {
        f3630IE = KApplication.m13437ih() ? 30000 : 600000;
        f3631IF = f3630IE;
    }

    /* renamed from: a */
    public static void m2027a(Context context, Runnable runnable) {
        try {
            if (abd.m12839qb() >= 21) {
                f3632Iy = (Runnable) C3948zd.m1327k(runnable);
                if (((JobScheduler) context.getSystemService("jobscheduler")).schedule(m2028N(context)) < 0) {
                }
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: N */
    private static JobInfo m2028N(Context context) {
        JobInfo.Builder builder = new JobInfo.Builder(100, new ComponentName(context.getPackageName(), KCheckServiceJob.class.getName()));
        builder.setPeriodic(f3631IF);
        builder.setPersisted(true);
        return builder.build();
    }

    @Nullable
    /* renamed from: kB */
    public static Runnable m2026kB() {
        return f3632Iy;
    }

    /* renamed from: y */
    public static void m2025y(long j) {
        if (!KApplication.m13437ih()) {
            f3631IF = j;
        }
    }
}
