package com.kingroot.kinguser;

import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes.dex */
public class avy extends avj {
    private static final String TAG = aiq.ask + "_DumpOpenListManager";
    private static final cce<avy> sInstance = new cce<avy>() { // from class: com.kingroot.kinguser.avy.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: Sv */
        public avy create() {
            return new avy();
        }
    };
    private File aUA;
    private final AtomicLong aUB;
    private final HashMap<String, AtomicInteger> aUw;
    private final HashMap<String, avx> aUx;
    private final AtomicBoolean aUy;
    private File aUz;

    /* renamed from: Sr */
    public static avy m8721Sr() {
        return sInstance.get();
    }

    private avy() {
        super(40583);
        this.aUw = new HashMap<>();
        this.aUx = new HashMap<>();
        this.aUy = new AtomicBoolean(false);
        this.aUB = new AtomicLong(0L);
    }

    /* renamed from: Ss */
    private void m8720Ss() {
        if (!this.aUy.get()) {
            synchronized (this.aUy) {
                if (!this.aUy.get()) {
                    this.aUy.set(true);
                    m8719St();
                    m8714sb();
                }
            }
        }
    }

    /* renamed from: St */
    private void m8719St() {
        File filesDir = KApplication.m13453ge().getFilesDir();
        this.aUz = new File(filesDir, "201711071520_010.dat");
        this.aUA = new File(filesDir, "201711071520_011.dat");
        try {
            HashMap hashMap = (HashMap) C3604sq.m2244u(this.aUz);
            if (hashMap != null) {
                synchronized (this.aUw) {
                    this.aUw.putAll(hashMap);
                }
            }
        } catch (Throwable th) {
        }
        Object m2244u = C3604sq.m2244u(this.aUA);
        if (m2244u instanceof Long) {
            this.aUB.set(((Long) m2244u).longValue());
        }
    }

    /* renamed from: sb */
    private void m8714sb() {
        C2585br Rw = m8833Rw();
        ArrayList<C2565bq> arrayList = new ArrayList(C3942yy.m1350e(Rw == null ? null : Rw.f2063kU));
        long lastModified = new File(m8832Rx()).lastModified();
        HashMap hashMap = new HashMap();
        for (C2565bq c2565bq : arrayList) {
            String str = c2565bq.f2002kM + ", " + c2565bq.f2003kN + ", " + c2565bq.f2004kO + ", " + c2565bq.f2005kP + ", " + c2565bq.f2006kQ + ", " + c2565bq.f2007kR;
            if (c2565bq.f2002kM.contains("820601") && !TextUtils.isEmpty(c2565bq.f2003kN)) {
                try {
                    avx avxVar = new avx("820601", c2565bq.f2003kN, c2565bq.f2004kO, c2565bq.f2005kP, c2565bq.f2006kQ, c2565bq.f2007kR);
                    hashMap.put(avxVar.pkgName, avxVar);
                } catch (Exception e) {
                }
            }
        }
        synchronized (this.aUx) {
            this.aUx.clear();
            this.aUx.putAll(hashMap);
        }
        if (lastModified != this.aUB.get()) {
            this.aUB.set(lastModified);
            clearCache();
        }
        m8718Su();
    }

    /* renamed from: jD */
    public avx m8716jD(String str) {
        avx avxVar;
        m8720Ss();
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        synchronized (this.aUx) {
            avxVar = this.aUx.get(str);
        }
        if (avxVar != null && m8715jE(avxVar.m8723Sq()) < avxVar.aUt) {
            return avxVar;
        }
        return null;
    }

    private void clearCache() {
        synchronized (this.aUw) {
            this.aUw.clear();
        }
    }

    /* renamed from: jE */
    private int m8715jE(String str) {
        AtomicInteger atomicInteger;
        synchronized (this.aUw) {
            atomicInteger = this.aUw.get(str);
        }
        if (atomicInteger == null) {
            return 0;
        }
        return atomicInteger.get();
    }

    /* renamed from: a */
    public void m8717a(avx avxVar) {
        if (avxVar != null) {
            String m8723Sq = avxVar.m8723Sq();
            synchronized (this.aUw) {
                AtomicInteger atomicInteger = this.aUw.get(m8723Sq);
                if (atomicInteger == null) {
                    this.aUw.put(m8723Sq, new AtomicInteger(1));
                } else {
                    atomicInteger.incrementAndGet();
                }
                m8718Su();
            }
        }
    }

    /* renamed from: Su */
    private void m8718Su() {
        synchronized (this.aUw) {
            C3604sq.m2250a(this.aUw, this.aUz);
        }
        synchronized (this.aUB) {
            C3604sq.m2250a(Long.valueOf(this.aUB.get()), this.aUA);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.avj
    /* renamed from: uy */
    public void mo1472uy() {
        m8714sb();
    }
}
