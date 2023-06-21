package com.kingroot.common.improve.protection;

import android.annotation.TargetApi;
import android.app.job.JobParameters;
import android.app.job.JobService;
import com.kingroot.kinguser.C3700ul;
import com.kingroot.kinguser.RunnableC3845wo;
@TargetApi(21)
/* loaded from: classes.dex */
public class KCheckServiceJob extends JobService {

    /* renamed from: It */
    private static RunnableC3845wo f813It = new RunnableC3845wo() { // from class: com.kingroot.common.improve.protection.KCheckServiceJob.1
        @Override // com.kingroot.kinguser.RunnableC3845wo, java.lang.Runnable
        public void run() {
            Runnable m2026kB = C3700ul.m2026kB();
            if (m2026kB != null) {
                m2026kB.run();
            }
        }
    };

    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters jobParameters) {
        return false;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        return false;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        f813It.m1530ny();
    }
}
