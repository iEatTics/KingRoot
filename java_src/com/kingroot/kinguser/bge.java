package com.kingroot.kinguser;

import android.app.ActivityManager;
import com.kingroot.master.app.KUApplication;
import java.util.List;
/* loaded from: classes.dex */
public class bge {
    private static volatile bge boH;

    private bge() {
    }

    public static bge abw() {
        if (boH == null) {
            synchronized (bge.class) {
                if (boH == null) {
                    boH = new bge();
                }
            }
        }
        return boH;
    }

    public boolean abx() {
        try {
            List<ActivityManager.RunningTaskInfo> runningTasks = ((ActivityManager) KUApplication.m13453ge().getSystemService("activity")).getRunningTasks(1);
            if (!C3942yy.m1352c(runningTasks)) {
                return KUApplication.m13453ge().getPackageName().equals(runningTasks.get(0).topActivity.getPackageName());
            }
        } catch (Throwable th) {
        }
        return false;
    }

    public String aby() {
        try {
            List<ActivityManager.RunningTaskInfo> runningTasks = ((ActivityManager) KUApplication.m13453ge().getSystemService("activity")).getRunningTasks(1);
            if (!C3942yy.m1352c(runningTasks)) {
                return runningTasks.get(0).topActivity.getClassName();
            }
        } catch (Throwable th) {
        }
        return "";
    }
}
