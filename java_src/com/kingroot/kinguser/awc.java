package com.kingroot.kinguser;

import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.kingroot.kinguser.net.commoncloudlist.RiskControlInfo;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
/* loaded from: classes.dex */
public class awc extends avj {
    private static cce<awc> sInstance = new cce<awc>() { // from class: com.kingroot.kinguser.awc.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: SF */
        public awc create() {
            return new awc();
        }
    };
    private C2585br aNa;
    private final Object mLock;

    private awc() {
        super(40364);
        this.mLock = new Object();
        m8694SE();
    }

    /* renamed from: SB */
    public static awc m8697SB() {
        return sInstance.get();
    }

    /* renamed from: V */
    private boolean m8693V(int i, int i2) {
        return (i & i2) > 0;
    }

    @NonNull
    /* renamed from: Y */
    private List<RiskControlInfo> m8692Y(int i, int i2) {
        return m8691b(i, i2, false);
    }

    /* renamed from: b */
    private List<RiskControlInfo> m8691b(int i, int i2, boolean z) {
        int i3;
        C2585br m8690dl = m8690dl(z);
        ArrayList arrayList = new ArrayList();
        if (m8690dl != null && !C3942yy.m1352c(m8690dl.f2063kU)) {
            Iterator<C2565bq> it = m8690dl.f2063kU.iterator();
            while (it.hasNext()) {
                C2565bq next = it.next();
                if (next != null && !TextUtils.isEmpty(next.f2002kM) && !aff.m12088fd(next.f2002kM) && aab.m13012k(next.f2004kO, -1) == i && (i2 == 0 || m8693V(aab.m13012k(next.f2006kQ, 0), i2))) {
                    try {
                        i3 = Integer.parseInt(next.f2007kR);
                    } catch (Throwable th) {
                        i3 = 1;
                    }
                    RiskControlInfo.C3343a c3343a = new RiskControlInfo.C3343a(next.f2002kM, next.f2003kN);
                    c3343a.m2885jF(next.f2005kP);
                    c3343a.m2886hm(i3);
                    arrayList.add(c3343a.m2891SA());
                }
            }
        }
        return arrayList;
    }

    @NonNull
    /* renamed from: hn */
    public List<RiskControlInfo> m8688hn(int i) {
        return m8687v(i, false);
    }

    /* renamed from: v */
    public List<RiskControlInfo> m8687v(int i, boolean z) {
        return m8691b(0, i, z);
    }

    @NonNull
    /* renamed from: SC */
    public List<RiskControlInfo> m8696SC() {
        return m8692Y(1, 0);
    }

    @NonNull
    /* renamed from: SD */
    public List<RiskControlInfo> m8695SD() {
        return m8692Y(2, 0);
    }

    /* renamed from: dl */
    private C2585br m8690dl(boolean z) {
        C2585br c2585br;
        synchronized (this.mLock) {
            if (this.aNa == null || z) {
                this.aNa = m8833Rw();
            }
            c2585br = this.aNa;
        }
        return c2585br;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.avj
    /* renamed from: uy */
    public void mo1472uy() {
        synchronized (this.mLock) {
            this.aNa = m8833Rw();
            m8694SE();
        }
    }

    /* renamed from: SE */
    public void m8694SE() {
        beg.m7461Zj().m7450c(new bed(bem.MEDIUM, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.awc.2
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                List<RiskControlInfo> m8687v = awc.this.m8687v(2, true);
                List<RiskControlInfo> m8687v2 = awc.this.m8687v(1, true);
                List<RiskControlInfo> m8687v3 = awc.this.m8687v(16, true);
                HashSet hashSet = new HashSet();
                hashSet.addAll(m8687v);
                hashSet.addAll(m8687v2);
                hashSet.addAll(m8687v3);
                Set<String> m8701f = awb.m8706Sy().m8701f(hashSet);
                awb.m8706Sy().banRiskAppsAutoStart(m8701f);
                awb.m8706Sy().banRiskAppsRoot(m8701f);
                awb.m8706Sy().m8702e(m8701f);
            }
        }));
    }

    /* renamed from: h */
    public void m8689h(Set<String> set) {
        List<RiskControlInfo> m8687v = m8687v(2, true);
        List<RiskControlInfo> m8687v2 = m8687v(1, true);
        List<RiskControlInfo> m8687v3 = m8687v(16, true);
        HashSet hashSet = new HashSet();
        for (RiskControlInfo riskControlInfo : m8687v) {
            if (riskControlInfo != null && !TextUtils.isEmpty(riskControlInfo.packageName)) {
                hashSet.add(riskControlInfo.packageName);
            }
        }
        for (RiskControlInfo riskControlInfo2 : m8687v2) {
            if (riskControlInfo2 != null && !TextUtils.isEmpty(riskControlInfo2.packageName)) {
                hashSet.add(riskControlInfo2.packageName);
            }
        }
        for (RiskControlInfo riskControlInfo3 : m8687v3) {
            if (riskControlInfo3 != null && !TextUtils.isEmpty(riskControlInfo3.packageName)) {
                hashSet.add(riskControlInfo3.packageName);
            }
        }
        HashSet hashSet2 = new HashSet();
        for (String str : set) {
            if (hashSet.contains(str)) {
                hashSet2.add(str);
            }
        }
        Set<String> m8700g = awb.m8706Sy().m8700g(hashSet2);
        awb.m8706Sy().banRiskAppsAutoStart(m8700g);
        awb.m8706Sy().banRiskAppsRoot(m8700g);
        awb.m8706Sy().m8702e(m8700g);
    }
}
