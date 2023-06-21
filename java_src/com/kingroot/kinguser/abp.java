package com.kingroot.kinguser;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.kingroot.common.app.KApplication;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class abp extends abo {
    private static final cce<abp> sInstance = new cce<abp>() { // from class: com.kingroot.kinguser.abp.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: qX */
        public abp create() {
            return new abp();
        }
    };

    /* renamed from: Zs */
    private ActivityManager.RunningTaskInfo f1347Zs;

    /* renamed from: Zt */
    private boolean f1348Zt;

    /* renamed from: Zu */
    private boolean f1349Zu = false;
    private final Handler mHandler = new Handler(Looper.getMainLooper()) { // from class: com.kingroot.kinguser.abp.2
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            switch (message.what) {
                case 0:
                    Bundle data = message.getData();
                    if (data != null) {
                        try {
                            abp.this.m12783c((ActivityManager.RunningTaskInfo) data.getParcelable("extra_runningtaskinfo"));
                            return;
                        } catch (ClassCastException e) {
                            return;
                        }
                    }
                    return;
                default:
                    return;
            }
        }
    };
    Context mContext = KApplication.m13453ge();

    /* renamed from: qW */
    public static abp m12781qW() {
        return sInstance.get();
    }

    abp() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m12783c(ActivityManager.RunningTaskInfo runningTaskInfo) {
        if (this.f1349Zu && runningTaskInfo != null && runningTaskInfo.topActivity != null) {
            if (this.f1347Zs == null) {
                this.f1347Zs = runningTaskInfo;
            }
            int a = m12794a(this.f1347Zs, runningTaskInfo);
            if (a > 0) {
                C3951zg.m1322d("common_TopAppAccessibilityMonitor", "top change: " + a);
                C3951zg.m1322d("common_TopAppAccessibilityMonitor", "lastRunningTask: pkg " + (this.f1347Zs != null ? this.f1347Zs.topActivity.getPackageName() : "null") + ", currentTask: " + (runningTaskInfo.topActivity != null ? runningTaskInfo.topActivity.getPackageName() : "null"));
                C3951zg.m1322d("common_TopAppAccessibilityMonitor", "lastRunningTask: activity " + (this.f1347Zs != null ? this.f1347Zs.topActivity.getClassName() : "null") + ", currentTask: " + (runningTaskInfo.topActivity != null ? runningTaskInfo.topActivity.getClassName() : "null"));
            }
            ActivityManager.RunningTaskInfo runningTaskInfo2 = this.f1347Zs;
            this.f1347Zs = runningTaskInfo;
            if (a >= 1) {
                m12791c(runningTaskInfo, runningTaskInfo2);
            }
            if (a == 2) {
                boolean c = m12790c(runningTaskInfo.topActivity);
                if (this.f1348Zt != c) {
                    if (c) {
                        m12785qV();
                    } else {
                        m12786qU();
                    }
                    this.f1348Zt = c;
                }
                m12789d(runningTaskInfo, runningTaskInfo2);
                ArrayList<ActivityManager.RunningTaskInfo> S = m12796S(aap.m12954ad(this.mContext));
                if (S != null && S.size() > 0) {
                    m12788l(S);
                }
            }
        }
    }

    public void setEnable(boolean z) {
        this.f1349Zu = z;
    }

    public boolean isEnable() {
        return this.f1349Zu;
    }

    /* renamed from: d */
    public void m12782d(ActivityManager.RunningTaskInfo runningTaskInfo) {
        if (this.f1349Zu) {
            Message obtainMessage = this.mHandler.obtainMessage();
            obtainMessage.what = 0;
            Bundle bundle = new Bundle();
            bundle.putParcelable("extra_runningtaskinfo", runningTaskInfo);
            obtainMessage.setData(bundle);
            obtainMessage.sendToTarget();
        }
    }
}
