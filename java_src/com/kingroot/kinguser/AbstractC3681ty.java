package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Process;
/* renamed from: com.kingroot.kinguser.ty */
/* loaded from: classes.dex */
public abstract class AbstractC3681ty extends AbstractC3675tx<Bundle, Bundle, Bundle> {

    /* renamed from: Ia */
    private String f3602Ia;

    /* renamed from: Ib */
    private C3684ua f3603Ib;

    /* renamed from: Ic */
    private boolean f3604Ic;
    private Context mContext;
    private long mStartTime;

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: kr */
    public abstract String mo2067kr();

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public void m2079a(Context context, String str, C3684ua c3684ua) {
        this.f3602Ia = str;
        this.f3603Ib = c3684ua;
        this.mContext = context;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: ko */
    public boolean m2072ko() {
        return this.f3604Ic;
    }

    /* renamed from: kp */
    public long m2071kp() {
        if (this.mStartTime == 0) {
            return 0L;
        }
        long currentTimeMillis = System.currentTimeMillis() - this.mStartTime;
        if (currentTimeMillis <= 0) {
            currentTimeMillis = 0;
        }
        return currentTimeMillis;
    }

    public long getStartTime() {
        return this.mStartTime;
    }

    /* renamed from: kq */
    public String m2070kq() {
        return this.f3602Ia;
    }

    public Context getContext() {
        return this.mContext;
    }

    /* renamed from: e */
    public void m2077e(Intent intent) {
        if (intent != null) {
            this.mStartTime = System.currentTimeMillis();
            C3671tw.m2105a(mo2067kr(), this.mStartTime, Process.myPid());
            super.m2080g(intent.getBundleExtra("task_key_data"));
        }
    }

    @Override // com.kingroot.kinguser.AbstractC3675tx
    /* renamed from: kl */
    protected void mo2075kl() {
        if (this.f3603Ib != null) {
            this.f3603Ib.m2065a(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3675tx
    /* renamed from: a */
    public void mo2076f(Bundle bundle) {
        if (this.f3603Ib != null) {
            this.f3603Ib.m2064a(this, bundle);
        }
    }

    @Override // com.kingroot.kinguser.AbstractC3675tx
    /* renamed from: km */
    protected void mo2074km() {
        if (this.f3603Ib != null) {
            this.f3603Ib.m2063b(this);
        }
    }

    @Override // com.kingroot.kinguser.AbstractC3675tx
    /* renamed from: kn */
    protected void mo2073kn() {
        if (this.f3603Ib != null) {
            this.f3603Ib.m2062c(this);
        }
    }
}
