package com.kingroot.kinguser;

import android.app.ActivityManager;
import android.os.Process;
import android.util.SparseArray;
import com.king.uranus.daemon.RunningAppProcessInfoLite;
import java.util.List;
/* renamed from: com.kingroot.kinguser.jk */
/* loaded from: classes.dex */
public final class C3217jk {

    /* renamed from: tb */
    private int f2894tb = C3258kt.m3240dj();

    /* renamed from: tc */
    private int f2895tc = Process.myUid();

    /* renamed from: cx */
    public SparseArray<String> m3407cx() {
        return C3304mf.m3091ev() < 21 ? m3406cy() : m3405cz();
    }

    /* renamed from: cy */
    private SparseArray<String> m3406cy() {
        SparseArray<String> sparseArray = new SparseArray<>();
        List<ActivityManager.RunningAppProcessInfo> m3241di = C3258kt.m3241di();
        if (m3241di != null) {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : m3241di) {
                if (!m3408a(runningAppProcessInfo.uid, runningAppProcessInfo.pid, runningAppProcessInfo.processName)) {
                    sparseArray.put(runningAppProcessInfo.pid, runningAppProcessInfo.processName);
                }
            }
        }
        return sparseArray;
    }

    /* renamed from: cz */
    private SparseArray<String> m3405cz() {
        SparseArray<String> sparseArray = new SparseArray<>();
        List<RunningAppProcessInfoLite> runningAppProcesses = C3268la.m3208dp().getRunningAppProcesses();
        if (runningAppProcesses != null) {
            for (RunningAppProcessInfoLite runningAppProcessInfoLite : runningAppProcesses) {
                if (!m3408a(runningAppProcessInfoLite.getUid(), runningAppProcessInfoLite.getPid(), runningAppProcessInfoLite.m13646fn())) {
                    sparseArray.put(runningAppProcessInfoLite.getPid(), runningAppProcessInfoLite.m13646fn());
                }
            }
        }
        return sparseArray;
    }

    /* renamed from: a */
    private boolean m3408a(int i, int i2, String str) {
        return i == this.f2894tb || i <= 10000 || i == this.f2895tc || C3258kt.m3242ac(i);
    }
}
