package com.kingroot.kinguser;

import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.kingroot.kinguser.bed;
import com.kingroot.kinguser.net.commoncloudlist.RiskControlInfo;
import com.kingroot.kinguser.security.ProtectRecorder;
import com.tencent.securemodule.api.AppInfo;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
/* loaded from: classes.dex */
public class awb extends avk {
    private HashMap<String, C2565bq> aUC;
    private bed aUD;
    private static final cce<awb> sInstance = new cce<awb>() { // from class: com.kingroot.kinguser.awb.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: Sz */
        public awb create() {
            return new awb(9110203);
        }
    };
    private static final bed aUE = new bed(bem.MEDIUM, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.awb.3
        @Override // com.kingroot.kinguser.bek
        /* renamed from: a */
        public void mo1208a(@NonNull bed.InterfaceC2117a interfaceC2117a) {
            super.mo1208a(interfaceC2117a);
            Set<String> set = (Set) interfaceC2117a.mo7445nF().get(0);
            if (!C3942yy.m1352c(set)) {
                bjg bjgVar = new bjg("autostart_enable_settings.conf");
                HashMap<String, Integer> m6735u = bjg.m6735u(bjgVar.adJ());
                boolean z = false;
                for (String str : set) {
                    if (!TextUtils.isEmpty(str)) {
                        m6735u.put(str, 1);
                        ady.m12308tK().mo1746bi(100398);
                        z = true;
                    }
                }
                if (z) {
                    bjgVar.m6736t(m6735u);
                }
                bja.m6804bW(new ArrayList(set));
            }
        }
    });
    private static final bed aUF = new bed(bem.MEDIUM, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.awb.4
        @Override // com.kingroot.kinguser.bek
        /* renamed from: a */
        public void mo1208a(@NonNull bed.InterfaceC2117a interfaceC2117a) {
            super.mo1208a(interfaceC2117a);
            Set set = (Set) interfaceC2117a.mo7445nF().get(0);
            if (!C3942yy.m1352c(set)) {
                HashSet hashSet = new HashSet();
                Iterator it = set.iterator();
                while (it.hasNext()) {
                    String str = (String) it.next();
                    if (TextUtils.isEmpty(str)) {
                        it.remove();
                    } else {
                        agy.m11867wk().m11868p(str, 0);
                        hashSet.add(str);
                    }
                }
            }
        }
    });

    /* renamed from: Sy */
    public static awb m8706Sy() {
        return sInstance.get();
    }

    private awb(int i) {
        super(i);
        this.aUC = new HashMap<>();
        this.aUD = new bed(bem.MEDIUM, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.awb.2
            @Override // com.kingroot.kinguser.bek
            /* renamed from: a */
            public void mo1208a(@NonNull bed.InterfaceC2117a interfaceC2117a) {
                super.mo1208a(interfaceC2117a);
                Set set = (Set) interfaceC2117a.mo7445nF().get(0);
                if (!C3942yy.m1352c(set)) {
                    HashSet hashSet = new HashSet();
                    Iterator it = set.iterator();
                    while (it.hasNext()) {
                        String str = (String) it.next();
                        if (TextUtils.isEmpty(str)) {
                            it.remove();
                        } else if (-1 != bbt.m7780WG().getRuleType(str)) {
                            bbt.m7780WG().updateRule(str, 0, 0L);
                            hashSet.add(str);
                            ady.m12308tK().mo1746bi(100397);
                        }
                    }
                    awb.m8706Sy().m8703d(hashSet);
                }
            }
        });
        mo8705a(m8826Ry());
    }

    @Override // com.kingroot.kinguser.avk
    /* renamed from: a */
    protected void mo8705a(@NonNull C2585br c2585br) {
        synchronized (this.mLock) {
            this.aUC.clear();
            Iterator<C2565bq> it = c2585br.f2063kU.iterator();
            while (it.hasNext()) {
                C2565bq next = it.next();
                if (next.f2002kM != null) {
                    this.aUC.put(next.f2002kM, next);
                }
            }
        }
    }

    public void banRiskAppsRoot(Set<String> set) {
        beg.m7461Zj().m7454a(this.aUD, set);
    }

    public void banRiskAppsAutoStart(Set<String> set) {
        beg.m7461Zj().m7454a(aUE, set);
    }

    /* renamed from: e */
    public void m8702e(Set<String> set) {
        beg.m7461Zj().m7454a(aUF, set);
    }

    @NonNull
    /* renamed from: bD */
    public Set<AppInfo> m8704bD(List<AppInfo> list) {
        if (C3942yy.m1352c(list)) {
            return Collections.emptySet();
        }
        HashSet hashSet = new HashSet();
        synchronized (this.mLock) {
            C2585br Ry = m8826Ry();
            boolean z = false;
            for (AppInfo appInfo : list) {
                if (!this.aUC.containsKey(appInfo.pkgName) && !aff.m12088fd(appInfo.pkgName)) {
                    C2565bq c2565bq = new C2565bq();
                    c2565bq.f2002kM = appInfo.pkgName;
                    Ry.f2063kU.add(c2565bq);
                    this.aUC.put(appInfo.pkgName, c2565bq);
                    hashSet.add(appInfo);
                    z = true;
                }
            }
            if (z) {
                m8825Rz();
            }
        }
        return hashSet;
    }

    @NonNull
    /* renamed from: f */
    public Set<String> m8701f(Set<RiskControlInfo> set) {
        boolean z;
        if (C3942yy.m1352c(set)) {
            return Collections.emptySet();
        }
        HashSet hashSet = new HashSet();
        synchronized (this.mLock) {
            C2585br Ry = m8826Ry();
            z = false;
            for (RiskControlInfo riskControlInfo : set) {
                if (!this.aUC.containsKey(riskControlInfo.packageName)) {
                    C2565bq c2565bq = new C2565bq();
                    c2565bq.f2002kM = riskControlInfo.packageName;
                    Ry.f2063kU.add(c2565bq);
                    this.aUC.put(riskControlInfo.packageName, c2565bq);
                    hashSet.add(riskControlInfo.packageName);
                    z = true;
                }
            }
        }
        if (z) {
            m8825Rz();
        }
        return hashSet;
    }

    @NonNull
    /* renamed from: g */
    public Set<String> m8700g(Set<String> set) {
        boolean z;
        if (C3942yy.m1352c(set)) {
            return Collections.emptySet();
        }
        HashSet hashSet = new HashSet();
        synchronized (this.mLock) {
            C2585br Ry = m8826Ry();
            z = false;
            for (String str : set) {
                if (!this.aUC.containsKey(str)) {
                    C2565bq c2565bq = new C2565bq();
                    c2565bq.f2002kM = str;
                    Ry.f2063kU.add(c2565bq);
                    this.aUC.put(str, c2565bq);
                    hashSet.add(str);
                    z = true;
                }
            }
        }
        if (z) {
            m8825Rz();
        }
        return hashSet;
    }

    @NonNull
    /* renamed from: Se */
    public Set<String> m8708Se() {
        HashSet hashSet = new HashSet();
        synchronized (this.mLock) {
            Iterator<C2565bq> it = m8826Ry().f2063kU.iterator();
            while (it.hasNext()) {
                C2565bq next = it.next();
                if (!"M".equals(next.f2005kP) && next.f2002kM != null) {
                    hashSet.add(next.f2002kM);
                }
            }
        }
        return hashSet;
    }

    /* renamed from: d */
    public void m8703d(Set<String> set) {
        if (!C3942yy.m1352c(set)) {
            ProtectRecorder.m2296XX().m2291j(set);
            synchronized (this.mLock) {
                boolean z = false;
                for (String str : set) {
                    C2565bq c2565bq = this.aUC.get(str);
                    if (c2565bq != null) {
                        c2565bq.f2005kP = "M";
                        z = true;
                    }
                }
                if (z) {
                    m8825Rz();
                }
            }
        }
    }

    public void removeAppInfos(List<String> list) {
        if (!C3942yy.m1352c(list)) {
            synchronized (this.mLock) {
                ArrayList arrayList = new ArrayList();
                for (String str : list) {
                    C2565bq remove = this.aUC.remove(str);
                    if (remove != null) {
                        arrayList.add(remove);
                    }
                }
                m8826Ry().f2063kU.removeAll(arrayList);
                if (arrayList.size() > 0) {
                    m8825Rz();
                }
            }
        }
    }

    /* renamed from: Sf */
    public Set<String> m8707Sf() {
        HashSet hashSet = new HashSet();
        synchronized (this.mLock) {
            Iterator<C2565bq> it = m8826Ry().f2063kU.iterator();
            while (it.hasNext()) {
                C2565bq next = it.next();
                if (!TextUtils.isEmpty(next.f2002kM)) {
                    hashSet.add(next.f2002kM);
                }
            }
        }
        return hashSet;
    }

    /* renamed from: hj */
    public static boolean m8699hj(int i) {
        return (i == 1 || i == 0) ? false : true;
    }
}
