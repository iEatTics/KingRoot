package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceStruct;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
class cbv implements cat {
    final /* synthetic */ Object aUj;
    final /* synthetic */ cbu bWR;
    final /* synthetic */ AtomicBoolean val$result;

    /* renamed from: yp */
    final /* synthetic */ long f2237yp;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cbv(cbu cbuVar, AtomicBoolean atomicBoolean, long j, Object obj) {
        this.bWR = cbuVar;
        this.val$result = atomicBoolean;
        this.f2237yp = j;
        this.aUj = obj;
    }

    @Override // com.kingroot.kinguser.cat
    /* renamed from: a */
    public void mo2689a(int i, int i2, int i3, int i4, JceStruct jceStruct) {
        boolean z = true;
        if (i3 == 0 && i4 == 0 && (jceStruct instanceof C3205j)) {
            try {
                C3205j c3205j = (C3205j) jceStruct;
                this.val$result.set((c3205j.retCode == 0 && c3205j.f2878et == this.f2237yp && c3205j.f2879eu == 1) ? false : false);
                synchronized (this.aUj) {
                    this.aUj.notifyAll();
                }
            } catch (Throwable th) {
                synchronized (this.aUj) {
                    this.aUj.notifyAll();
                    throw th;
                }
            }
        }
    }
}
