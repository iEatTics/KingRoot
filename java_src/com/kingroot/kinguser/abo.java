package com.kingroot.kinguser;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Build;
import com.kingroot.common.app.KApplication;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public abstract class abo {

    /* renamed from: Zn */
    List<ActivityManager.RunningTaskInfo> f1342Zn;

    /* renamed from: Zq */
    Intent f1345Zq;

    /* renamed from: Zo */
    private final Object f1343Zo = new Object();

    /* renamed from: Zp */
    List<ResolveInfo> f1344Zp = new ArrayList();

    /* renamed from: Zr */
    volatile boolean f1346Zr = true;
    Context mContext = KApplication.m13453ge();

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public int m12794a(ActivityManager.RunningTaskInfo runningTaskInfo, ActivityManager.RunningTaskInfo runningTaskInfo2) {
        String packageName;
        if (runningTaskInfo2 == null || runningTaskInfo2.topActivity == null) {
            return 2;
        }
        String packageName2 = runningTaskInfo2.topActivity.getPackageName();
        if (runningTaskInfo == null || runningTaskInfo.topActivity == null || (packageName = runningTaskInfo.topActivity.getPackageName()) == null || !packageName.equals(packageName2)) {
            return 2;
        }
        String className = runningTaskInfo2.topActivity.getClassName();
        String className2 = runningTaskInfo.topActivity.getClassName();
        if (className2 != null && className2.equals(className)) {
            return -1;
        }
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public boolean m12795a(ActivityManager.RunningTaskInfo runningTaskInfo) {
        return runningTaskInfo != null && KApplication.m13453ge().getPackageName().equals(runningTaskInfo.topActivity.getPackageName());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: S */
    public ArrayList<ActivityManager.RunningTaskInfo> m12796S(List<ActivityManager.RunningTaskInfo> list) {
        ArrayList<ActivityManager.RunningTaskInfo> arrayList = null;
        if (this.f1342Zn == null || this.f1342Zn.size() <= 0 || list == null || list.size() <= 0) {
            this.f1342Zn = list;
        } else {
            int size = this.f1342Zn.size();
            int size2 = list.size();
            for (int i = 0; i < size2; i++) {
                ActivityManager.RunningTaskInfo runningTaskInfo = list.get(i);
                if (i < size && !m12792b(runningTaskInfo, this.f1342Zn.get(i)) && !m12793b(runningTaskInfo)) {
                    ArrayList<ActivityManager.RunningTaskInfo> arrayList2 = arrayList == null ? new ArrayList<>() : arrayList;
                    arrayList2.add(runningTaskInfo);
                    arrayList = arrayList2;
                }
            }
            this.f1342Zn = list;
        }
        return arrayList;
    }

    /* renamed from: b */
    protected boolean m12793b(ActivityManager.RunningTaskInfo runningTaskInfo) {
        if (this.f1342Zn == null || runningTaskInfo == null) {
            return false;
        }
        for (ActivityManager.RunningTaskInfo runningTaskInfo2 : this.f1342Zn) {
            if (m12792b(runningTaskInfo2, runningTaskInfo)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    protected boolean m12792b(ActivityManager.RunningTaskInfo runningTaskInfo, ActivityManager.RunningTaskInfo runningTaskInfo2) {
        return (runningTaskInfo == null || runningTaskInfo.topActivity == null || runningTaskInfo.topActivity.getPackageName() == null || runningTaskInfo2 == null || runningTaskInfo2.topActivity == null || runningTaskInfo2.topActivity.getPackageName() == null || runningTaskInfo.topActivity.getPackageName().compareTo(runningTaskInfo2.topActivity.getPackageName()) != 0) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: c */
    public boolean m12790c(ComponentName componentName) {
        if (componentName == null) {
            return false;
        }
        m12787qT();
        if (this.f1344Zp != null) {
            synchronized (this.f1343Zo) {
                if (this.f1344Zp != null) {
                    for (ResolveInfo resolveInfo : this.f1344Zp) {
                        if (resolveInfo == null || resolveInfo.activityInfo == null || resolveInfo.activityInfo.packageName == null || resolveInfo.activityInfo.name == null) {
                            return false;
                        }
                        boolean z = Build.VERSION.SDK_INT >= 21;
                        if (resolveInfo.activityInfo.packageName.equals(componentName.getPackageName()) && (z || resolveInfo.activityInfo.name.equals(componentName.getClassName()))) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    /* renamed from: qT */
    protected void m12787qT() {
        synchronized (this.f1343Zo) {
            if (this.f1345Zq == null) {
                this.f1345Zq = new Intent("android.intent.action.MAIN");
                this.f1345Zq.addCategory("android.intent.category.HOME");
            }
            if (this.f1344Zp != null) {
                if (this.f1346Zr) {
                    this.f1344Zp.clear();
                } else {
                    return;
                }
            }
            try {
                this.f1344Zp = C3952zh.m1312pq().queryIntentActivities(this.f1345Zq, 0);
                this.f1346Zr = false;
            } catch (RuntimeException e) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: c */
    public void m12791c(ActivityManager.RunningTaskInfo runningTaskInfo, ActivityManager.RunningTaskInfo runningTaskInfo2) {
        Intent intent = new Intent("com.kingroot.common.ACTION_TOP_ACTIVITY_CHANGED");
        intent.putExtra("app_info", runningTaskInfo);
        intent.putExtra("last_app", runningTaskInfo2);
        KApplication.m13453ge().sendBroadcast(intent);
        C3951zg.m1322d("common_BaseTopAppMonitor", "broadcast top activity change event");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: qU */
    public void m12786qU() {
        KApplication.m13453ge().sendBroadcast(new Intent("com.kingroot.common.ACTION_SWITCH_OUT_DESKTOP"));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: qV */
    public void m12785qV() {
        KApplication.m13453ge().sendBroadcast(new Intent("com.kingroot.common.ACTION_SWITCH_IN_DESKTOP"));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: d */
    public void m12789d(ActivityManager.RunningTaskInfo runningTaskInfo, ActivityManager.RunningTaskInfo runningTaskInfo2) {
        Intent intent = new Intent("com.kingroot.common.ACTION_TOP_APP_CHANGED");
        intent.putExtra("app_info", runningTaskInfo);
        intent.putExtra("last_app", runningTaskInfo2);
        KApplication.m13453ge().sendBroadcast(intent);
        C3951zg.m1322d("common_BaseTopAppMonitor", "broadcast top app change event");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: l */
    public void m12788l(ArrayList<ActivityManager.RunningTaskInfo> arrayList) {
        Intent intent = new Intent("com.kingroot.common.ACTION_NEW_APP_STARTED");
        intent.putParcelableArrayListExtra("app_info_list", arrayList);
        KApplication.m13453ge().sendBroadcast(intent);
        C3951zg.m1322d("common_BaseTopAppMonitor", "broadcast new app start event");
    }
}
