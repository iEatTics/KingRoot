package com.kingroot.kinguser;

import android.app.ActivityManager;
import android.app.usage.UsageStats;
import android.content.ComponentName;
import android.content.Context;
import android.os.Build;
import com.kingroot.common.app.KApplication;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
/* loaded from: classes.dex */
public class aap {

    /* renamed from: XH */
    private static int f1245XH = 0;

    /* renamed from: XI */
    static volatile Field f1246XI = null;

    /* renamed from: ab */
    public static ActivityManager.RunningTaskInfo m12956ab(Context context) {
        List<ActivityManager.RunningTaskInfo> list;
        if (Build.VERSION.SDK_INT < 21) {
            try {
                list = ((ActivityManager) context.getSystemService("activity")).getRunningTasks(1);
            } catch (Throwable th) {
                list = null;
            }
            if (list == null || list.size() <= 0) {
                return null;
            }
            return list.get(0);
        }
        ActivityManager.RunningTaskInfo runningTaskInfo = null;
        for (int i = 0; i < 2; i++) {
            int i2 = (f1245XH + i) % 2;
            switch (i2) {
                case 0:
                    runningTaskInfo = m12953pP();
                    break;
                case 1:
                    runningTaskInfo = m12955ac(context);
                    break;
            }
            if (runningTaskInfo != null) {
                f1245XH = i2;
                return runningTaskInfo;
            }
        }
        return runningTaskInfo;
    }

    /* renamed from: pP */
    private static ActivityManager.RunningTaskInfo m12953pP() {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = getRunningAppProcesses();
        if (runningAppProcesses != null) {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (!(KApplication.m13453ge().getPackageName() + ":service").equals(runningAppProcessInfo.processName) && runningAppProcessInfo.importance == 100) {
                    ComponentName componentName = new ComponentName(runningAppProcessInfo.pkgList[0], "");
                    ActivityManager.RunningTaskInfo runningTaskInfo = new ActivityManager.RunningTaskInfo();
                    runningTaskInfo.baseActivity = componentName;
                    runningTaskInfo.topActivity = componentName;
                    return runningTaskInfo;
                }
            }
        }
        return null;
    }

    /* renamed from: ac */
    private static ActivityManager.RunningTaskInfo m12955ac(Context context) {
        String str;
        long j;
        Calendar calendar = Calendar.getInstance();
        long timeInMillis = calendar.getTimeInMillis();
        calendar.add(1, -1);
        long j2 = 0;
        String str2 = null;
        for (UsageStats usageStats : C3942yy.m1350e(abl.queryUsageStats(0, calendar.getTimeInMillis(), timeInMillis))) {
            String packageName = usageStats.getPackageName();
            long lastTimeUsed = usageStats.getLastTimeUsed();
            if (lastTimeUsed > j2) {
                str = packageName;
                j = lastTimeUsed;
            } else {
                str = str2;
                j = j2;
            }
            j2 = j;
            str2 = str;
        }
        if (str2 != null) {
            ComponentName componentName = new ComponentName(str2, "");
            ActivityManager.RunningTaskInfo runningTaskInfo = new ActivityManager.RunningTaskInfo();
            runningTaskInfo.baseActivity = componentName;
            runningTaskInfo.topActivity = componentName;
            return runningTaskInfo;
        }
        return null;
    }

    /* renamed from: ad */
    public static List<ActivityManager.RunningTaskInfo> m12954ad(Context context) {
        ActivityManager activityManager;
        List<ActivityManager.RunningTaskInfo> list;
        if (context == null || (activityManager = (ActivityManager) context.getSystemService("activity")) == null) {
            return null;
        }
        if (Build.VERSION.SDK_INT < 21) {
            try {
                list = activityManager.getRunningTasks(255);
            } catch (Exception e) {
                list = null;
            }
        } else {
            ArrayList arrayList = new ArrayList();
            List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = getRunningAppProcesses();
            if (runningAppProcesses != null) {
                for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                    try {
                        if ((m12957a(runningAppProcessInfo) & 4) > 0) {
                            ComponentName componentName = new ComponentName(runningAppProcessInfo.pkgList[0], "");
                            ActivityManager.RunningTaskInfo runningTaskInfo = new ActivityManager.RunningTaskInfo();
                            runningTaskInfo.baseActivity = componentName;
                            runningTaskInfo.topActivity = componentName;
                            arrayList.add(runningTaskInfo);
                        }
                    } catch (Exception e2) {
                    }
                }
            }
            list = arrayList;
        }
        return list;
    }

    /* renamed from: a */
    static int m12957a(ActivityManager.RunningAppProcessInfo runningAppProcessInfo) {
        try {
            if (f1246XI == null) {
                f1246XI = ActivityManager.RunningAppProcessInfo.class.getDeclaredField("flags");
            }
            Object obj = f1246XI.get(runningAppProcessInfo);
            if (obj != null && (obj instanceof Integer)) {
                return ((Integer) obj).intValue();
            }
            throw new Exception("result format error");
        } catch (IllegalAccessException e) {
            e.printStackTrace();
            throw new Exception("reflect error");
        } catch (IllegalArgumentException e2) {
            e2.printStackTrace();
            throw new Exception("reflect error");
        } catch (NoSuchFieldException e3) {
            e3.printStackTrace();
            throw new Exception("reflect error");
        } catch (SecurityException e4) {
            e4.printStackTrace();
            throw new Exception("reflect error");
        }
    }

    public static List<ActivityManager.RunningAppProcessInfo> getRunningAppProcesses() {
        try {
            return ((ActivityManager) KApplication.m13453ge().getSystemService("activity")).getRunningAppProcesses();
        } catch (Throwable th) {
            return null;
        }
    }
}
