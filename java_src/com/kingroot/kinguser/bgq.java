package com.kingroot.kinguser;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.activitys.DisablePkgActorActivity;
import com.kingroot.kinguser.activitys.RiskPopActivity;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public class bgq {
    private static final cce<bgq> sInstance = new cce<bgq>() { // from class: com.kingroot.kinguser.bgq.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: abT */
        public bgq create() {
            return new bgq();
        }
    };
    Map<Integer, Set<Class>> boY;

    public static bgq abS() {
        return sInstance.get();
    }

    private bgq() {
        this.boY = new HashMap();
        init();
    }

    private void init() {
        HashSet hashSet = new HashSet();
        hashSet.add(DisablePkgActorActivity.class);
        this.boY.put(1, hashSet);
        hashSet.add(RiskPopActivity.class);
        this.boY.put(2, hashSet);
    }

    /* renamed from: iK */
    public boolean m7093iK(int i) {
        Context m13453ge;
        List<ActivityManager.RunningTaskInfo> runningTasks;
        try {
            m13453ge = KApplication.m13453ge();
            runningTasks = ((ActivityManager) m13453ge.getSystemService("activity")).getRunningTasks(1);
        } catch (Exception e) {
        }
        if (C3942yy.m1352c(runningTasks)) {
            return false;
        }
        ComponentName componentName = runningTasks.get(0).topActivity;
        if (TextUtils.equals(componentName.getPackageName(), m13453ge.getPackageName())) {
            for (Class cls : C3942yy.m1350e(this.boY.get(Integer.valueOf(i)))) {
                if (TextUtils.equals(cls.getName(), componentName.getClassName())) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }
}
