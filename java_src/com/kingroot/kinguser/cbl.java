package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceStruct;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
class cbl implements cat {
    final /* synthetic */ Object aUj;
    final /* synthetic */ cbj bWK;
    final /* synthetic */ AtomicBoolean val$result;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cbl(cbj cbjVar, AtomicBoolean atomicBoolean, Object obj) {
        this.bWK = cbjVar;
        this.val$result = atomicBoolean;
        this.aUj = obj;
    }

    @Override // com.kingroot.kinguser.cat
    /* renamed from: a */
    public void mo2689a(int i, int i2, int i3, int i4, JceStruct jceStruct) {
        try {
            if (!(jceStruct instanceof C2853d)) {
                synchronized (this.aUj) {
                    this.aUj.notifyAll();
                }
                return;
            }
            this.val$result.set(i3 == 0 && i4 == 0 && ((C2853d) jceStruct).retCode == 0);
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
