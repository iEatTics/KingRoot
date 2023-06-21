package com.kingroot.common.framework.task;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import com.kingroot.kinguser.C3688ud;
import com.kingroot.kinguser.C3690uf;
import com.kingroot.kinguser.abh;
/* loaded from: classes.dex */
public class KTaskSysService extends Service {

    /* renamed from: Ik */
    private static C3688ud f803Ik;
    private long mStartTime;

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.mStartTime = System.currentTimeMillis();
        abh.m12834a(this, true);
        f803Ik = new C3688ud(this);
        C3690uf.m2045J(getApplicationContext());
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onStart(Intent intent, int i) {
        super.onStart(intent, i);
        f803Ik.m2052f(intent);
    }

    /* renamed from: kv */
    public static C3688ud m13390kv() {
        return f803Ik;
    }

    @Override // android.app.Service
    public void onDestroy() {
        abh.m12834a(this, false);
        super.onDestroy();
    }

    /* renamed from: kp */
    public long m13391kp() {
        long currentTimeMillis = System.currentTimeMillis() - this.mStartTime;
        if (currentTimeMillis > 0) {
            return currentTimeMillis;
        }
        return 0L;
    }
}
