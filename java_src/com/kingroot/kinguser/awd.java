package com.kingroot.kinguser;

import android.text.TextUtils;
import com.kingroot.master.app.KUApplication;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes.dex */
public class awd extends avk {
    private static final cce<awd> sInstance = new cce<awd>() { // from class: com.kingroot.kinguser.awd.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: SH */
        public awd create() {
            return new awd(9110202);
        }
    };

    /* renamed from: com.kingroot.kinguser.awd$a */
    /* loaded from: classes.dex */
    public static class C1709a {
        public long aRv;
        public long aRw;
        public long aRx;
    }

    /* renamed from: SG */
    public static awd m8685SG() {
        return sInstance.get();
    }

    protected awd(int i) {
        super(i);
    }

    /* renamed from: a */
    public void m8684a(String str, long j, long j2, long j3) {
        boolean z;
        if (!TextUtils.isEmpty(str) && aux.m8884c(j, j2, j3)) {
            synchronized (this.mLock) {
                C2565bq c2565bq = new C2565bq();
                c2565bq.f2002kM = str;
                c2565bq.f2003kN = String.valueOf(j);
                c2565bq.f2004kO = String.valueOf(j2);
                c2565bq.f2005kP = String.valueOf(j3);
                C2585br Ry = m8826Ry();
                Iterator<C2565bq> it = Ry.f2063kU.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z = true;
                        break;
                    }
                    C2565bq next = it.next();
                    if (c2565bq.f2002kM.equals(next.f2002kM)) {
                        next.f2003kN = c2565bq.f2003kN;
                        next.f2004kO = c2565bq.f2004kO;
                        next.f2005kP = c2565bq.f2005kP;
                        z = false;
                        break;
                    }
                }
                if (z) {
                    Ry.f2063kU.add(c2565bq);
                }
                m8825Rz();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x002a, code lost:
        r2 = new com.kingroot.kinguser.awd.C1709a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x002f, code lost:
        r2.aRv = java.lang.Long.parseLong(r0.f2003kN);
        r2.aRw = java.lang.Long.parseLong(r0.f2004kO);
        r2.aRx = java.lang.Long.parseLong(r0.f2005kP);
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0047, code lost:
        r0 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x004e, code lost:
        r4.remove();
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0051, code lost:
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0054, code lost:
        r0 = null;
     */
    /* renamed from: jG */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public C1709a m8683jG(String str) {
        C1709a c1709a;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        synchronized (this.mLock) {
            Iterator<C2565bq> it = m8826Ry().f2063kU.iterator();
            while (true) {
                if (!it.hasNext()) {
                    c1709a = null;
                    break;
                }
                C2565bq next = it.next();
                if (str.equals(next.f2002kM)) {
                    break;
                }
            }
        }
        return c1709a;
    }

    /* renamed from: o */
    public static void m8681o(Collection<String> collection) {
        if (!C3942yy.m1352c(collection)) {
            for (String str : collection) {
                m8682jH(str);
            }
        }
    }

    /* renamed from: jH */
    public static void m8682jH(String str) {
        C2995dj c2995dj;
        if (!TextUtils.isEmpty(str) && !"com.android.kinguser.console".equals(str)) {
            C3029eq c3029eq = new C3029eq();
            c3029eq.f2618nk = str;
            AtomicReference atomicReference = new AtomicReference();
            if (aju.m11400a(KUApplication.m13453ge(), c3029eq, atomicReference) == 0 && (c2995dj = (C2995dj) atomicReference.get()) != null) {
                m8685SG().m8684a(str, c2995dj.f2456nl, c2995dj.f2458nn, c2995dj.f2457nm);
            }
        }
    }
}
