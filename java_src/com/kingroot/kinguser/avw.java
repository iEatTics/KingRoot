package com.kingroot.kinguser;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class avw extends avj {
    private static volatile avw aUl;
    private final List<String> aUm;
    private final HashSet<String> aUn;
    private final HashSet<String> aUo;
    private final Object mLock;

    private avw() {
        super(40305);
        this.mLock = new Object();
        this.aUm = new ArrayList();
        this.aUn = new HashSet<>();
        this.aUo = new HashSet<>();
        m8728RD();
    }

    /* renamed from: Sm */
    public static avw m8727Sm() {
        if (aUl == null) {
            synchronized (avw.class) {
                if (aUl == null) {
                    aUl = new avw();
                }
            }
        }
        return aUl;
    }

    /* renamed from: RD */
    private void m8728RD() {
        synchronized (this.mLock) {
            C2585br Rw = m8833Rw();
            if (Rw != null && Rw.f2063kU != null) {
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                ArrayList arrayList3 = new ArrayList();
                Iterator<C2565bq> it = Rw.f2063kU.iterator();
                while (it.hasNext()) {
                    C2565bq next = it.next();
                    if (!TextUtils.isEmpty(next.f2002kM) && !TextUtils.isEmpty(next.f2003kN)) {
                        if (next.f2003kN.contentEquals("1")) {
                            arrayList2.add(next.f2002kM);
                        } else if (next.f2003kN.contentEquals("2")) {
                            arrayList.add(next.f2002kM);
                        } else if (next.f2003kN.contentEquals("3")) {
                            arrayList3.add(next.f2002kM);
                        }
                    }
                }
                synchronized (this.aUm) {
                    this.aUm.clear();
                    this.aUm.addAll(arrayList);
                }
                synchronized (this.aUn) {
                    this.aUn.clear();
                    this.aUn.addAll(arrayList2);
                }
                synchronized (this.aUo) {
                    this.aUo.clear();
                    this.aUo.addAll(arrayList3);
                }
            }
        }
    }

    /* renamed from: Sn */
    public List<String> m8726Sn() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.aUm) {
            arrayList.addAll(this.aUm);
        }
        return arrayList;
    }

    /* renamed from: So */
    public List<String> m8725So() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.aUn) {
            arrayList.addAll(this.aUn);
        }
        return arrayList;
    }

    /* renamed from: Sp */
    public List<String> m8724Sp() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.aUo) {
            arrayList.addAll(this.aUo);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.avj
    /* renamed from: uy */
    public void mo1472uy() {
        m8728RD();
        try {
            alb m10654GK = alb.m10654GK();
            m10654GK.syncProtectPackages(m8726Sn());
            m10654GK.syncMonitorPackages(m8725So());
            m10654GK.m10650af(m8724Sp());
        } catch (Throwable th) {
        }
    }
}
