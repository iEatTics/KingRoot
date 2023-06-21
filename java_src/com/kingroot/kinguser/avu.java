package com.kingroot.kinguser;

import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.kingroot.kinguser.examination.service.CloudCheckLiteInfo;
import com.kingroot.kinguser.security.ProtectRecorder;
import com.kingroot.kinguses.R;
import com.kingroot.master.app.KUApplication;
import com.tencent.securemodule.api.AppInfo;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
/* loaded from: classes.dex */
public class avu extends avk {
    private static final cce<avu> sInstance = new cce<avu>() { // from class: com.kingroot.kinguser.avu.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: Si */
        public avu create() {
            return new avu(9110201);
        }
    };
    private final Object aUf;
    private HashMap<String, C2565bq> aUg;
    private C3602so aUh;
    private HashSet<String> aUi;

    /* renamed from: Sb */
    public static avu m8758Sb() {
        return sInstance.get();
    }

    private avu(int i) {
        super(i);
        this.aUf = new Object();
        this.aUg = new HashMap<>(3);
        m8826Ry();
        synchronized (this.aUf) {
            this.aUh = new C3602so(new File(KUApplication.m13453ge().getFilesDir(), "10000.cache").getAbsolutePath());
            try {
                this.aUi = (HashSet) this.aUh.mo2254jp();
            } catch (Throwable th) {
            }
            if (this.aUi == null) {
                this.aUi = new HashSet<>();
                this.aUh.mo2255b(this.aUi);
            }
        }
    }

    @Override // com.kingroot.kinguser.avk
    /* renamed from: a */
    protected void mo8705a(@NonNull C2585br c2585br) {
        super.mo8705a(c2585br);
        synchronized (this.mLock) {
            this.aUg.clear();
            Iterator<C2565bq> it = c2585br.f2063kU.iterator();
            while (it.hasNext()) {
                C2565bq next = it.next();
                if (next.f2002kM != null) {
                    this.aUg.put(next.f2002kM, next);
                }
            }
        }
    }

    @NonNull
    /* renamed from: Sc */
    public Set<String> m8757Sc() {
        HashSet hashSet = new HashSet();
        synchronized (this.mLock) {
            Iterator<C2565bq> it = m8826Ry().f2063kU.iterator();
            while (it.hasNext()) {
                C2565bq next = it.next();
                if (next != null && !TextUtils.isEmpty(next.f2002kM) && !aff.m12088fd(next.f2002kM)) {
                    int i = 1;
                    try {
                        i = Integer.parseInt(next.f2003kN);
                    } catch (Throwable th) {
                    }
                    if (m8746hj(i) && !"M".equals(next.f2004kO)) {
                        hashSet.add(next.f2002kM);
                    }
                }
            }
        }
        return hashSet;
    }

    @NonNull
    /* renamed from: Sd */
    public Set<CloudCheckLiteInfo> m8756Sd() {
        int i;
        int i2;
        HashSet hashSet = new HashSet();
        synchronized (this.mLock) {
            Iterator<C2565bq> it = m8826Ry().f2063kU.iterator();
            while (it.hasNext()) {
                C2565bq next = it.next();
                if (next != null && !TextUtils.isEmpty(next.f2002kM) && !aff.m12088fd(next.f2002kM)) {
                    try {
                        i = Integer.parseInt(next.f2003kN);
                    } catch (Throwable th) {
                        i = 1;
                    }
                    if (m8746hj(i) && !"M".equals(next.f2004kO)) {
                        String str = next.f2002kM;
                        try {
                            i2 = Integer.valueOf(next.f2007kR).intValue();
                        } catch (NumberFormatException e) {
                            i2 = 1;
                        }
                        hashSet.add(new CloudCheckLiteInfo(str, i2, next.f2008kS));
                    }
                }
            }
        }
        return hashSet;
    }

    /* renamed from: c */
    public void m8749c(Set<String> set) {
        int i;
        if (!C3942yy.m1352c(set)) {
            synchronized (this.mLock) {
                boolean z = false;
                for (String str : set) {
                    C2565bq c2565bq = this.aUg.get(str);
                    if (c2565bq != null) {
                        try {
                            i = Integer.parseInt(c2565bq.f2003kN);
                        } catch (Throwable th) {
                            i = 1;
                        }
                        if (m8746hj(i)) {
                            c2565bq.f2004kO = "M";
                            z = true;
                        }
                    }
                }
                if (z) {
                    m8825Rz();
                }
            }
        }
    }

    @NonNull
    /* renamed from: Se */
    public Set<String> m8755Se() {
        HashSet hashSet = new HashSet();
        synchronized (this.mLock) {
            Iterator<C2565bq> it = m8826Ry().f2063kU.iterator();
            while (it.hasNext()) {
                C2565bq next = it.next();
                int i = 1;
                try {
                    i = Integer.parseInt(next.f2003kN);
                } catch (Throwable th) {
                }
                if (m8746hj(i) && !"M".equals(next.f2005kP) && next.f2002kM != null) {
                    hashSet.add(next.f2002kM);
                }
            }
        }
        return hashSet;
    }

    /* renamed from: d */
    public void m8748d(Set<String> set) {
        int i;
        if (!C3942yy.m1352c(set)) {
            ProtectRecorder.m2296XX().m2291j(set);
            synchronized (this.mLock) {
                boolean z = false;
                for (String str : set) {
                    C2565bq c2565bq = this.aUg.get(str);
                    if (c2565bq != null) {
                        try {
                            i = Integer.parseInt(c2565bq.f2003kN);
                        } catch (Throwable th) {
                            i = 1;
                        }
                        if (m8746hj(i)) {
                            c2565bq.f2005kP = "M";
                            z = true;
                        }
                    }
                }
                if (z) {
                    m8825Rz();
                }
            }
        }
    }

    @NonNull
    /* renamed from: bB */
    public Set<AppInfo> m8751bB(List<AppInfo> list) {
        if (C3942yy.m1352c(list)) {
            return Collections.emptySet();
        }
        HashSet hashSet = new HashSet();
        synchronized (this.mLock) {
            boolean z = false;
            for (AppInfo appInfo : list) {
                if (!this.aUg.containsKey(appInfo.pkgName) && appInfo.aiE() != 1 && !aff.m12088fd(appInfo.pkgName)) {
                    C2565bq c2565bq = new C2565bq();
                    c2565bq.f2002kM = appInfo.pkgName;
                    c2565bq.f2003kN = String.valueOf(appInfo.aiE());
                    c2565bq.f2007kR = String.valueOf(appInfo.m417Nx());
                    c2565bq.f2008kS = appInfo.aiF();
                    m8826Ry().f2063kU.add(c2565bq);
                    this.aUg.put(appInfo.pkgName, c2565bq);
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
    /* renamed from: bC */
    public Set<AppInfo> m8750bC(List<AppInfo> list) {
        if (C3942yy.m1352c(list)) {
            return Collections.emptySet();
        }
        HashSet hashSet = new HashSet();
        synchronized (this.mLock) {
            C2585br Ry = m8826Ry();
            Ry.f2063kU.clear();
            for (AppInfo appInfo : list) {
                if (appInfo.aiE() != 1 && !aff.m12088fd(appInfo.pkgName)) {
                    C2565bq c2565bq = this.aUg.get(appInfo.pkgName);
                    if (c2565bq == null) {
                        c2565bq = new C2565bq();
                        c2565bq.f2002kM = appInfo.pkgName;
                        c2565bq.f2003kN = String.valueOf(appInfo.aiE());
                        c2565bq.f2007kR = String.valueOf(appInfo.m417Nx());
                        c2565bq.f2008kS = appInfo.aiF();
                        hashSet.add(appInfo);
                    } else if (!String.valueOf(appInfo.aiE()).equals(c2565bq.f2003kN)) {
                        c2565bq.f2003kN = String.valueOf(appInfo.aiE());
                    }
                    Ry.f2063kU.add(c2565bq);
                }
            }
            mo8705a(Ry);
            m8825Rz();
        }
        return hashSet;
    }

    public void removeAppInfos(List<String> list) {
        if (!C3942yy.m1352c(list)) {
            synchronized (this.mLock) {
                ArrayList arrayList = new ArrayList();
                for (String str : list) {
                    C2565bq remove = this.aUg.remove(str);
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

    public int getRiskType(String str) {
        C2565bq c2565bq;
        int i;
        synchronized (this.mLock) {
            c2565bq = this.aUg.get(str);
        }
        if (c2565bq == null) {
            return 1;
        }
        try {
            i = Integer.valueOf(c2565bq.f2003kN).intValue();
        } catch (Throwable th) {
            i = 1;
        }
        return i;
    }

    /* renamed from: Sf */
    public Set<String> m8754Sf() {
        HashSet hashSet = new HashSet();
        synchronized (this.mLock) {
            Iterator<C2565bq> it = m8826Ry().f2063kU.iterator();
            while (it.hasNext()) {
                C2565bq next = it.next();
                int i = 1;
                try {
                    i = Integer.parseInt(next.f2003kN);
                } catch (Throwable th) {
                }
                if (m8746hj(i) && !TextUtils.isEmpty(next.f2002kM)) {
                    hashSet.add(next.f2002kM);
                }
            }
        }
        return hashSet;
    }

    /* renamed from: Sg */
    public Set<String> m8753Sg() {
        HashSet hashSet = new HashSet();
        synchronized (this.mLock) {
            Iterator<C2565bq> it = m8826Ry().f2063kU.iterator();
            while (it.hasNext()) {
                C2565bq next = it.next();
                int i = 1;
                try {
                    i = Integer.parseInt(next.f2003kN);
                } catch (Throwable th) {
                }
                if (i == 0 && !TextUtils.isEmpty(next.f2002kM)) {
                    hashSet.add(next.f2002kM);
                }
            }
        }
        return hashSet;
    }

    @NonNull
    /* renamed from: hi */
    public static String m8747hi(int i) {
        switch (i) {
            case 0:
            case 1:
                return "";
            case 2:
                return C3953zi.m1311pr().getString(R.string.risk_app_type_not_official);
            case 3:
                return C3953zi.m1311pr().getString(R.string.risk_app_type_pay_risk);
            case 4:
                return C3953zi.m1311pr().getString(R.string.risk_app_type_viruses);
            case 5:
                return C3953zi.m1311pr().getString(R.string.risk_app_type_steal_account_risk);
            default:
                return C3953zi.m1311pr().getString(R.string.risk_app_type_others_risk);
        }
    }

    /* renamed from: hj */
    public static boolean m8746hj(int i) {
        return (i == 1 || i == 0) ? false : true;
    }

    /* renamed from: m */
    public void m8745m(Collection<String> collection) {
        synchronized (this.aUf) {
            this.aUi.addAll(collection);
            this.aUh.mo2255b(this.aUi);
        }
    }

    /* renamed from: n */
    public void m8744n(Collection<String> collection) {
        synchronized (this.aUf) {
            this.aUi.removeAll(collection);
            this.aUh.mo2255b(this.aUi);
        }
    }

    /* renamed from: Sh */
    public void m8752Sh() {
        synchronized (this.aUf) {
            this.aUi.clear();
            this.aUh.mo2255b(this.aUi);
        }
    }

    public List<String> getCloudCheckFailedAppsCache() {
        ArrayList arrayList;
        synchronized (this.aUf) {
            arrayList = new ArrayList(this.aUi);
        }
        return arrayList;
    }
}
