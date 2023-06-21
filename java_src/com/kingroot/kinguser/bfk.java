package com.kingroot.kinguser;

import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import com.p019qq.taf.jce.JceStruct;
import com.tencent.feedback.eup.CrashReport;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bfk implements bfi {
    private static final long bmP = TimeUnit.HOURS.toMillis(4);
    private static final cce<bfk> sInstance = new cce<bfk>() { // from class: com.kingroot.kinguser.bfk.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: aag */
        public bfk create() {
            return new bfk();
        }
    };

    @InterfaceC3726ut
    public static bfk aae() {
        return sInstance.get();
    }

    private bfk() {
        init();
    }

    private void init() {
        bwl aiO = bwl.aiO();
        aiO.m5318a(new bwi() { // from class: com.kingroot.kinguser.bfk.2
            @Override // com.kingroot.kinguser.bwi
            /* renamed from: a */
            public boolean mo5333a(int i, int i2, byi byiVar) {
                bfj.m7283ZX().m7280aj(i, bfj.m7283ZX().m7278ix(i) + 1);
                bfk.this.aaf();
                return true;
            }

            @Override // com.kingroot.kinguser.bwi
            public void onFailed(int i) {
            }
        });
        aiO.m5312a(new bwp() { // from class: com.kingroot.kinguser.bfk.3
            @Override // com.kingroot.kinguser.bwp
            /* renamed from: b */
            public boolean mo5295b(Throwable th, String str, byte[] bArr) {
                CrashReport.handleCatchException(Thread.currentThread(), th, str, bArr);
                return true;
            }
        });
    }

    @Override // com.kingroot.kinguser.bfi
    /* renamed from: ai */
    public void mo7270ai(int i, int i2) {
        m7268f(i, i2, 3000L);
    }

    /* renamed from: f */
    private synchronized void m7268f(int i, int i2, long j) {
        int aab;
        bfj m7283ZX = bfj.m7283ZX();
        if (m7283ZX.aaa() && m7283ZX.m7278ix(i) < 30 && (aab = m7283ZX.aab()) != -1) {
            bwl.aiO().m5316a(bwk.m5330b(KApplication.m13453ge(), i, i2).m5326cJ(j).m5322kK(aab).aiN());
        }
    }

    public synchronized void aaf() {
        if (bfj.m7283ZX().aaa() && C3748vb.m1917S(KApplication.m13453ge())) {
            String m2751fE = C3379oi.m2748fu().m2751fE();
            if (TextUtils.isEmpty(m2751fE)) {
                m2751fE = "000";
            }
            bwl.aiO().m5320a(KApplication.m13453ge(), m2751fE, new bwh() { // from class: com.kingroot.kinguser.bfk.4
                @Override // com.kingroot.kinguser.bwq
                public void onError(int i) {
                }

                @Override // com.kingroot.kinguser.bwh
                /* renamed from: a */
                public byq mo5335a(int i, byi byiVar) {
                    byq byqVar = (byq) bfk.this.m7273a(i, byiVar, new byq());
                    if (byqVar.bUG != null) {
                    }
                    return byqVar;
                }

                @Override // com.kingroot.kinguser.bwh
                /* renamed from: b */
                public byp mo5334b(int i, byi byiVar) {
                    return (byp) bfk.this.m7273a(i, byiVar, new byp());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public synchronized JceStruct m7273a(int i, byi byiVar, JceStruct jceStruct) {
        final AtomicReference atomicReference;
        m7271a(byiVar);
        final Object obj = new Object();
        atomicReference = new AtomicReference();
        if (jceStruct instanceof byq) {
            ((byq) jceStruct).errorCode = -9999;
        } else if (jceStruct instanceof byp) {
            ((byp) jceStruct).errCode = -9999;
        }
        atomicReference.set(jceStruct);
        awn.m8629Ta().m8628a(i, byiVar, jceStruct, new cat() { // from class: com.kingroot.kinguser.bfk.5
            @Override // com.kingroot.kinguser.cat
            /* renamed from: a */
            public void mo2689a(int i2, int i3, int i4, int i5, JceStruct jceStruct2) {
                if (i4 == 0 && i5 == 0 && jceStruct2 != null) {
                    atomicReference.set(jceStruct2);
                }
                synchronized (obj) {
                    obj.notify();
                }
            }
        });
        synchronized (obj) {
            try {
                obj.wait(5000L);
            } catch (InterruptedException e) {
            }
        }
        return (JceStruct) atomicReference.get();
    }

    /* renamed from: a */
    private void m7271a(byi byiVar) {
        Iterator<byj> it = byiVar.bUj.bTU.iterator();
        while (it.hasNext()) {
            it.next();
        }
        bym bymVar = byiVar.bUi;
        Iterator<byl> it2 = byiVar.bUl.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
        Iterator<byr> it3 = byiVar.bTY.iterator();
        while (it3.hasNext()) {
            byr next = it3.next();
            if (next.bUL != null) {
                Iterator<byu> it4 = next.bUL.iterator();
                while (it4.hasNext()) {
                    byu next2 = it4.next();
                    if (next2 != null) {
                        Iterator<byv> it5 = next2.bUU.iterator();
                        while (it5.hasNext()) {
                            it5.next();
                        }
                    }
                }
            }
        }
    }

    @Override // com.kingroot.kinguser.bfi
    /* renamed from: ZU */
    public synchronized void mo7276ZU() {
        if (bfj.m7283ZX().aaa() && acu.m12573b(bfj.m7283ZX().m7282ZY(), System.currentTimeMillis(), bmP)) {
            bfj.m7283ZX().m7281ZZ();
            aaf();
        }
    }

    @Override // com.kingroot.kinguser.bfi
    /* renamed from: dN */
    public void mo7269dN(boolean z) {
        bfj m7283ZX = bfj.m7283ZX();
        m7283ZX.m7279dN(z);
        if (!z) {
            m7283ZX.aac();
        }
    }

    @Override // com.kingroot.kinguser.bfi
    /* renamed from: iw */
    public void mo7267iw(int i) {
        bfj m7283ZX = bfj.m7283ZX();
        m7283ZX.aac();
        m7283ZX.m7277iy(i);
    }

    @Override // com.kingroot.kinguser.bfi
    /* renamed from: ZV */
    public boolean mo7275ZV() {
        return bfj.m7283ZX().aab() == 0;
    }

    @Override // com.kingroot.kinguser.bfi
    /* renamed from: ZW */
    public void mo7274ZW() {
        bwl.m5310bU(KApplication.m13453ge());
    }
}
