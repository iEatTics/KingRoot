package com.kingroot.kinguser;

import android.content.pm.PackageInfo;
import android.text.TextUtils;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
import com.kingroot.kinguser.distribution.net.download.AppDownloadRequest;
import com.kingroot.master.app.KUApplication;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes.dex */
public class asw {
    private static bed aNF = new bed(bem.LOW, bec.Light_Weight, true, new bek() { // from class: com.kingroot.kinguser.asw.1
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            aks.m11143BP().m10810bw(false);
            asw.m9354OC();
        }
    });
    private static bed aNG = new bed(bem.MEDIUM, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.asw.2
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            asw.m9350OG();
        }
    });

    /* renamed from: e */
    public static AppBaseModel m9345e(String str, List<AppBaseModel> list) {
        AppBaseModel appBaseModel;
        AppDownloadRequest m10354hy;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        boolean z = true;
        String m10719hr = aks.m11143BP().m10719hr(str);
        if (!TextUtils.isEmpty(m10719hr) && (m10354hy = amz.m10365II().m10354hy(m10719hr)) != null) {
            switch (m10354hy.appStatus) {
                case 1:
                    z = false;
                    break;
                case 2:
                case 3:
                case 4:
                case 9:
                    z = acu.m12571g(aks.m11143BP().m10721hp(m10719hr), 86400000L);
                    break;
                case 5:
                case 6:
                case 7:
                    z = acu.m12571g(aks.m11143BP().m10720hq(m10719hr), 86400000L);
                    break;
            }
        }
        String m10729hh = aks.m11143BP().m10729hh(str);
        if (z) {
            if (list == null || list.isEmpty()) {
                return null;
            }
            Random random = new Random();
            int size = list.size();
            do {
                appBaseModel = list.get(random.nextInt(size));
                if (size >= 2) {
                }
                aks.m11143BP().m10893ak(str, appBaseModel.pkgName);
            } while (TextUtils.equals(m10729hh, appBaseModel.pkgName));
            aks.m11143BP().m10893ak(str, appBaseModel.pkgName);
        } else {
            Iterator<AppBaseModel> it = list.iterator();
            while (true) {
                if (it.hasNext()) {
                    appBaseModel = it.next();
                    if (TextUtils.equals(appBaseModel.pkgName, m10729hh)) {
                    }
                } else {
                    appBaseModel = null;
                }
            }
        }
        return appBaseModel;
    }

    /* renamed from: OA */
    public static void m9356OA() {
        if (aks.m11143BP().m11110CW()) {
            asn.m9421Oh().m9420Oi();
            beg.m7461Zj().m7450c(aNF);
        }
    }

    /* renamed from: OB */
    public static void m9355OB() {
        if (!aks.m11143BP().m11110CW() && C3748vb.m1918R(KUApplication.m13453ge())) {
            long currentTimeMillis = System.currentTimeMillis();
            if (acu.m12573b(aks.m11143BP().m11111CV(), currentTimeMillis, 86400000L)) {
                aks.m11143BP().m10896aZ(currentTimeMillis);
                beg.m7461Zj().m7450c(aNG);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: OC */
    public static void m9354OC() {
        List<String> m9352OE;
        if (C3748vb.m1921O(KUApplication.m13453ge()) == -1) {
            m9352OE = m9353OD();
        } else {
            m9352OE = m9352OE();
            if (m9352OE.isEmpty()) {
                m9352OE = m9353OD();
            }
        }
        m9346be(m9352OE);
        if (!m9352OE.isEmpty()) {
            beg.m7461Zj().m7450c(new bed(bem.LOW, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.asw.3
                @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                public void run() {
                    super.run();
                    if (abc.m12845qK().isRootPermition(true)) {
                        ady.m12308tK().mo1746bi(100279);
                    }
                }
            }));
        }
    }

    /* renamed from: OD */
    private static List<String> m9353OD() {
        List<PackageInfo> installedPackages = C3952zh.m1312pq().getInstalledPackages(64);
        if (installedPackages == null || installedPackages.size() < 1) {
            return new ArrayList();
        }
        Set<String> m9420Oi = asn.m9421Oh().m9420Oi();
        HashSet hashSet = new HashSet();
        for (PackageInfo packageInfo : installedPackages) {
            if (!((packageInfo.applicationInfo.flags & 1) != 0)) {
                hashSet.add(packageInfo.packageName);
            }
        }
        hashSet.retainAll(m9420Oi);
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(hashSet);
        return arrayList;
    }

    /* renamed from: OE */
    private static List<String> m9352OE() {
        C2851cy c2851cy;
        List<PackageInfo> installedPackages = C3952zh.m1312pq().getInstalledPackages(64);
        if (installedPackages == null || installedPackages.size() < 1) {
            return new ArrayList();
        }
        ArrayList<C3028ep> arrayList = new ArrayList<>();
        ArrayList arrayList2 = new ArrayList();
        for (PackageInfo packageInfo : installedPackages) {
            try {
                if (!((packageInfo.applicationInfo.flags & 1) != 0)) {
                    String m12872dZ = aaz.m12872dZ(packageInfo.packageName);
                    C3028ep c3028ep = new C3028ep();
                    c3028ep.packageName = packageInfo.packageName;
                    c3028ep.cert = m12872dZ;
                    arrayList.add(c3028ep);
                }
            } catch (Exception e) {
            }
        }
        C2508bm c2508bm = new C2508bm();
        c2508bm.f1739kB = arrayList;
        AtomicReference atomicReference = new AtomicReference();
        if (aju.m11405a(KUApplication.m13453ge(), c2508bm, atomicReference) == 0 && (c2851cy = (C2851cy) atomicReference.get()) != null && c2851cy.f2408kB != null) {
            Iterator<C3028ep> it = c2851cy.f2408kB.iterator();
            while (it.hasNext()) {
                C3028ep next = it.next();
                if (next != null && next.packageName != null) {
                    arrayList2.add(next.packageName);
                }
            }
        }
        return arrayList2;
    }

    /* renamed from: OF */
    public static List<String> m9351OF() {
        List<String> m9353OD = m9353OD();
        List<String> m9352OE = m9352OE();
        m9353OD.removeAll(m9352OE);
        m9353OD.addAll(m9352OE);
        return m9353OD;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: OG */
    public static void m9350OG() {
        C2851cy c2851cy;
        List<PackageInfo> installedPackages = C3952zh.m1312pq().getInstalledPackages(64);
        if (installedPackages != null && installedPackages.size() >= 1) {
            List<String> m9349OH = m9349OH();
            List<String> m9348OI = m9348OI();
            ArrayList<C3028ep> arrayList = new ArrayList<>();
            for (PackageInfo packageInfo : installedPackages) {
                try {
                    if (!((packageInfo.applicationInfo.flags & 1) != 0) && !m9349OH.contains(packageInfo.packageName) && !m9348OI.contains(packageInfo.packageName)) {
                        String m12872dZ = aaz.m12872dZ(packageInfo.packageName);
                        C3028ep c3028ep = new C3028ep();
                        c3028ep.packageName = packageInfo.packageName;
                        c3028ep.cert = m12872dZ;
                        arrayList.add(c3028ep);
                    }
                } catch (Exception e) {
                }
            }
            C2508bm c2508bm = new C2508bm();
            c2508bm.f1739kB = arrayList;
            AtomicReference atomicReference = new AtomicReference();
            ArrayList arrayList2 = new ArrayList();
            if (aju.m11405a(KUApplication.m13453ge(), c2508bm, atomicReference) == 0 && (c2851cy = (C2851cy) atomicReference.get()) != null && c2851cy.f2408kB != null) {
                Iterator<C3028ep> it = c2851cy.f2408kB.iterator();
                while (it.hasNext()) {
                    C3028ep next = it.next();
                    if (next != null && next.packageName != null) {
                        arrayList2.add(next.packageName);
                    }
                }
            }
            if (!arrayList2.isEmpty()) {
                beg.m7461Zj().m7450c(new bed(bem.LOW, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.asw.4
                    @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                    public void run() {
                        super.run();
                        if (abc.m12845qK().isRootPermition(true)) {
                            ady.m12308tK().mo1746bi(100279);
                        }
                    }
                }));
            }
            m9346be(arrayList2);
        }
    }

    /* renamed from: iQ */
    public static void m9344iQ(String str) {
        C2851cy c2851cy;
        if (!TextUtils.isEmpty(str)) {
            if (asn.m9421Oh().m9420Oi().contains(str)) {
                m9343iR(str);
            } else if (C3748vb.m1921O(KUApplication.m13453ge()) != -1) {
                ArrayList<C3028ep> arrayList = new ArrayList<>();
                String m12872dZ = aaz.m12872dZ(str);
                C3028ep c3028ep = new C3028ep();
                c3028ep.packageName = str;
                c3028ep.cert = m12872dZ;
                arrayList.add(c3028ep);
                C2508bm c2508bm = new C2508bm();
                c2508bm.f1739kB = arrayList;
                AtomicReference atomicReference = new AtomicReference();
                ArrayList arrayList2 = new ArrayList();
                if (aju.m11405a(KUApplication.m13453ge(), c2508bm, atomicReference) == 0 && (c2851cy = (C2851cy) atomicReference.get()) != null && c2851cy.f2408kB != null) {
                    Iterator<C3028ep> it = c2851cy.f2408kB.iterator();
                    while (it.hasNext()) {
                        C3028ep next = it.next();
                        if (next != null && next.packageName != null) {
                            arrayList2.add(next.packageName);
                        }
                    }
                }
                m9346be(arrayList2);
            }
        }
    }

    /* renamed from: be */
    public static void m9346be(List<String> list) {
        m9347OJ().mo9299d(list, "gb_localAdded");
        m9347OJ().mo9298e(list, "gb_localDeleted");
    }

    /* renamed from: iR */
    public static void m9343iR(String str) {
        m9347OJ().mo9302av(str, "gb_localAdded");
        m9347OJ().mo9301aw(str, "gb_localDeleted");
    }

    /* renamed from: iS */
    public static void m9342iS(String str) {
        m9347OJ().mo9301aw(str, "gb_localAdded");
        m9347OJ().mo9302av(str, "gb_localDeleted");
    }

    /* renamed from: iT */
    public static void m9341iT(String str) {
        m9347OJ().mo9301aw(str, "gb_localAdded");
        m9347OJ().mo9301aw(str, "gb_localDeleted");
    }

    /* renamed from: OH */
    public static synchronized List<String> m9349OH() {
        List<String> mo9306OH;
        synchronized (asw.class) {
            mo9306OH = m9347OJ().mo9306OH();
        }
        return mo9306OH;
    }

    /* renamed from: OI */
    public static synchronized List<String> m9348OI() {
        List<String> mo9305OI;
        synchronized (asw.class) {
            mo9305OI = m9347OJ().mo9305OI();
        }
        return mo9305OI;
    }

    /* renamed from: OJ */
    private static ate m9347OJ() {
        return asz.m9328OL().m9327OM();
    }
}
