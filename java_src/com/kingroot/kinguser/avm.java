package com.kingroot.kinguser;

import android.content.pm.ApplicationInfo;
import android.text.TextUtils;
import com.kingroot.kinguser.aae;
import com.kingroot.kinguser.model.RootMgrAppModel;
import com.kingroot.master.app.KUApplication;
import com.p019qq.jce.wup.UniAttribute;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes.dex */
public class avm {
    private static volatile avm aTI;
    private Locale aTL;
    private HashMap<String, avn> aTJ = null;
    private final Object mLock = new Object();
    private final Object aTK = new Object();
    private volatile boolean aTM = true;
    private bed aTN = new bed(bem.LOW, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.avm.1
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            aks m11143BP = aks.m11143BP();
            long currentTimeMillis = System.currentTimeMillis();
            long m11042Dm = m11143BP.m11042Dm();
            boolean m11041Dn = m11143BP.m11041Dn();
            boolean m11044Dk = m11143BP.m11044Dk();
            if (currentTimeMillis < m11042Dm) {
                m11143BP.m10851bc(currentTimeMillis);
                return;
            }
            bbt m7780WG = bbt.m7780WG();
            if (adk.m12539b(m11042Dm, currentTimeMillis, 86400000L) && !m11041Dn) {
                if (avm.this.m8807bx(m8805dh(m11044Dk))) {
                    if (m11044Dk) {
                        m11143BP.m11043Dl();
                        m7780WG.startPrepareRootMgrList();
                    }
                    m7780WG.startPrepareRootMgrSuggestion();
                }
                m11143BP.m10884bD(true);
            } else if (adk.m12539b(m11042Dm, currentTimeMillis, 604800000L)) {
                if (avm.this.m8807bx(m8805dh(m11044Dk))) {
                    if (m11044Dk) {
                        m11143BP.m11043Dl();
                        m7780WG.startPrepareRootMgrList();
                    }
                    m7780WG.startPrepareRootMgrSuggestion();
                    m11143BP.m10884bD(true);
                } else {
                    m11143BP.m10884bD(false);
                }
                m11143BP.m10851bc(currentTimeMillis);
            }
        }

        /* renamed from: dh */
        private List<String> m8805dh(boolean z) {
            ArrayList arrayList = new ArrayList();
            if (z) {
                List<ApplicationInfo> installedApplications = C3952zh.m1312pq().getInstalledApplications(0);
                if (installedApplications != null) {
                    for (ApplicationInfo applicationInfo : installedApplications) {
                        if (!TextUtils.isEmpty(applicationInfo.packageName)) {
                            arrayList.add(applicationInfo.packageName);
                        }
                    }
                }
            } else {
                for (RootMgrAppModel rootMgrAppModel : bbt.m7780WG().getAllAppsInfo()) {
                    if (!TextUtils.isEmpty(rootMgrAppModel.aQQ.getPackageName())) {
                        arrayList.add(rootMgrAppModel.aQQ.getPackageName());
                    }
                }
            }
            return arrayList;
        }
    });

    private avm() {
    }

    /* renamed from: RK */
    public static avm m8816RK() {
        if (aTI == null) {
            synchronized (avm.class) {
                if (aTI == null) {
                    aTI = new avm();
                }
            }
        }
        return aTI;
    }

    /* renamed from: RL */
    public HashMap<String, avn> m8815RL() {
        HashMap<String, avn> m8813RN;
        synchronized (this.mLock) {
            if (m8812RO()) {
                this.aTM = true;
            }
            m8813RN = m8813RN();
        }
        return m8813RN;
    }

    /* renamed from: bx */
    public synchronized boolean m8807bx(List<String> list) {
        boolean z;
        avn avnVar;
        if (list != null) {
            if (list.size() >= 1) {
                C3030er c3030er = new C3030er();
                c3030er.f2620pv = new ArrayList<>();
                for (String str : list) {
                    C3031es c3031es = new C3031es();
                    c3031es.appName = str;
                    c3031es.f2621px = 0;
                    try {
                        if (this.aTJ != null && (avnVar = this.aTJ.get(str)) != null) {
                            c3031es.f2621px = avnVar.aTS;
                        }
                    } catch (Throwable th) {
                    }
                    c3030er.f2620pv.add(c3031es);
                }
                AtomicReference atomicReference = new AtomicReference();
                if (aju.m11399a(KUApplication.m13453ge(), c3030er, atomicReference) == 0) {
                    C3033eu c3033eu = (C3033eu) atomicReference.get();
                    if (c3033eu != null) {
                        m8806by(c3033eu.f2631pz);
                    }
                    z = true;
                } else {
                    z = false;
                }
            }
        }
        z = false;
        return z;
    }

    /* renamed from: by */
    private void m8806by(List<C3032et> list) {
        C3033eu m8814RM;
        boolean z;
        if (!C3942yy.m1352c(list) && (m8814RM = m8814RM()) != null) {
            HashMap hashMap = new HashMap();
            for (C3032et c3032et : list) {
                hashMap.put(c3032et.appName, c3032et);
            }
            Iterator<C3032et> it = m8814RM.f2631pz.iterator();
            boolean z2 = false;
            while (it.hasNext()) {
                C3032et next = it.next();
                C3032et c3032et2 = (C3032et) hashMap.get(next.appName);
                if (c3032et2 != null) {
                    next.appName = c3032et2.appName;
                    next.f2629py = c3032et2.f2629py;
                    next.f2622kO = c3032et2.f2622kO;
                    next.f2623kP = c3032et2.f2623kP;
                    next.f2624kQ = c3032et2.f2624kQ;
                    next.f2625kR = c3032et2.f2625kR;
                    next.f2626kS = c3032et2.f2626kS;
                    next.f2627kT = c3032et2.f2627kT;
                    next.f2628px = c3032et2.f2628px;
                    hashMap.remove(next.appName);
                    z = true;
                } else {
                    z = z2;
                }
                z2 = z;
            }
            for (C3032et c3032et3 : hashMap.values()) {
                m8814RM.f2631pz.add(c3032et3);
                z2 = true;
            }
            if (z2) {
                m8810a(m8814RM, new File(KUApplication.m13453ge().getFilesDir(), String.valueOf(40246) + ".xdat"), String.valueOf(40246));
                this.aTM = true;
            }
        }
    }

    /* renamed from: ax */
    private C3033eu m8809ax(String str, String str2) {
        C2585br c2585br = (C2585br) aeq.m12174a(str, str2, new C2585br(), "UTF-8");
        if (c2585br == null || c2585br.f2063kU == null) {
            return null;
        }
        C3033eu c3033eu = new C3033eu();
        c3033eu.f2631pz = new ArrayList<>();
        Iterator<C2565bq> it = c2585br.f2063kU.iterator();
        while (it.hasNext()) {
            C2565bq next = it.next();
            C3032et c3032et = new C3032et();
            c3032et.appName = next.f2002kM;
            c3032et.f2629py = next.f2003kN;
            c3032et.f2622kO = next.f2004kO;
            c3032et.f2623kP = next.f2005kP;
            c3032et.f2624kQ = next.f2006kQ;
            c3032et.f2625kR = next.f2007kR;
            c3032et.f2626kS = next.f2008kS;
            c3032et.f2627kT = next.f2009kT;
            c3032et.f2628px = 0;
            c3033eu.f2631pz.add(c3032et);
        }
        return c3033eu;
    }

    /* renamed from: a */
    private void m8810a(C3033eu c3033eu, File file, String str) {
        try {
            UniAttribute uniAttribute = new UniAttribute();
            uniAttribute.setEncodeName("UTF-8");
            uniAttribute.put(str, c3033eu);
            byte[] mo12989C = aae.m13007a(aae.EnumC0609a.XXTEA2).mo12989C(uniAttribute.encode());
            synchronized (this.aTK) {
                C3563rs.m2362c(mo12989C, file.getAbsolutePath());
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: b */
    private C3033eu m8808b(File file, String str) {
        C3033eu c3033eu;
        if (!file.exists()) {
            return null;
        }
        int i = 0;
        try {
            try {
                try {
                    try {
                        synchronized (this.aTK) {
                            try {
                                FileInputStream fileInputStream = new FileInputStream(file);
                                int length = (int) file.length();
                                byte[] bArr = new byte[length];
                                while (i < length) {
                                    i += fileInputStream.read(bArr, i, length - i);
                                }
                                if (i != length) {
                                    C3945za.m1340c(fileInputStream);
                                    return null;
                                }
                                byte[] mo12988D = aae.m13007a(aae.EnumC0609a.XXTEA2).mo12988D(bArr);
                                if (mo12988D != null) {
                                    UniAttribute uniAttribute = new UniAttribute();
                                    uniAttribute.setEncodeName("UTF-8");
                                    uniAttribute.decode(mo12988D);
                                    c3033eu = (C3033eu) uniAttribute.getByClass(str, new C3033eu());
                                } else {
                                    c3033eu = null;
                                }
                                C3945za.m1340c(fileInputStream);
                                return c3033eu;
                            } catch (Throwable th) {
                                th = th;
                                throw th;
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                } catch (Exception e) {
                    e = e;
                    e.printStackTrace();
                    C3945za.m1340c((Closeable) null);
                    return null;
                }
            } catch (Throwable th3) {
                th = th3;
                C3945za.m1340c((Closeable) null);
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
        } catch (Throwable th4) {
            th = th4;
            C3945za.m1340c((Closeable) null);
            throw th;
        }
    }

    /* renamed from: RM */
    public C3033eu m8814RM() {
        C3033eu m8809ax;
        String str = String.valueOf(40246) + ".xdat";
        File file = new File(KUApplication.m13453ge().getFilesDir(), str);
        String valueOf = String.valueOf(40246);
        if (file.exists()) {
            m8809ax = m8808b(file, valueOf);
        } else {
            m8809ax = m8809ax(str, valueOf);
            if (m8809ax != null) {
                m8810a(m8809ax, file, valueOf);
            }
        }
        if (m8809ax == null) {
            C3033eu c3033eu = new C3033eu();
            c3033eu.f2631pz = new ArrayList<>();
            return c3033eu;
        }
        return m8809ax;
    }

    /* renamed from: RN */
    private HashMap<String, avn> m8813RN() {
        if (this.aTJ == null) {
            this.aTM = true;
            this.aTJ = new HashMap<>();
        }
        if (this.aTM) {
            this.aTJ.clear();
            C3033eu m8814RM = m8814RM();
            if (m8814RM != null && m8814RM.f2631pz != null) {
                Locale locale = C3953zi.m1311pr().getConfiguration().locale;
                Iterator<C3032et> it = m8814RM.f2631pz.iterator();
                while (it.hasNext()) {
                    C3032et next = it.next();
                    avn avnVar = new avn();
                    avnVar.adZ = next.appName;
                    avnVar.aTP = avn.m8802jv(next.f2629py);
                    if (locale.equals(Locale.SIMPLIFIED_CHINESE)) {
                        avnVar.aTQ = avn.m8802jv(next.f2622kO);
                    } else if (locale.equals(Locale.TRADITIONAL_CHINESE) || locale.equals(new Locale("zh", "HK"))) {
                        avnVar.aTQ = avn.m8802jv(next.f2623kP);
                    } else {
                        avnVar.aTQ = avn.m8802jv(next.f2624kQ);
                    }
                    avnVar.aTR = avn.m8804e(avnVar.aTQ, -1);
                    avnVar.aTS = next.f2628px;
                    this.aTJ.put(avnVar.adZ, avnVar);
                }
            }
            this.aTM = false;
        }
        return this.aTJ;
    }

    /* renamed from: RO */
    private boolean m8812RO() {
        Locale locale = C3953zi.m1311pr().getConfiguration().locale;
        if (this.aTL != null && this.aTL.getCountry().equals(locale.getCountry())) {
            return false;
        }
        this.aTL = locale;
        return true;
    }

    /* renamed from: RP */
    public void m8811RP() {
        beg.m7461Zj().m7450c(this.aTN);
    }
}
