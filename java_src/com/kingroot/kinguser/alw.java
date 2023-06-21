package com.kingroot.kinguser;

import android.content.pm.PackageInfo;
import android.graphics.Bitmap;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.C3942yy;
import com.kingroot.kinguser.alw;
import com.kingroot.kinguser.apv;
import com.kingroot.kinguser.distribution.appsmarket.entity.AvailUpdateInfo;
import com.kingroot.kinguser.distribution.appsmarket.entity.LocalAppInfo;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.IRequestAvailUpdateListener;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes.dex */
public class alw implements amu {
    private static final String TAG = aiq.arY + "_AppsMarketUpdateMgrService";
    private static final cce<alw> sInstance = new cce<alw>() { // from class: com.kingroot.kinguser.alw.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: Hz */
        public alw create() {
            return new alw();
        }
    };
    private final alz<ConcurrentHashMap<LocalAppInfo, AvailUpdateInfo>> ayV;
    private final alz<ConcurrentHashMap<LocalAppInfo, AvailUpdateInfo>> ayW;
    private final alz<HashSet<AvailUpdateInfo>> ayX;

    @InterfaceC3726ut
    /* renamed from: Hs */
    public static alw m10522Hs() {
        return sInstance.get();
    }

    private alw() {
        this.ayV = new alz<ConcurrentHashMap<LocalAppInfo, AvailUpdateInfo>>() { // from class: com.kingroot.kinguser.alw.2
            @Override // com.kingroot.kinguser.alz
            /* renamed from: Ha */
            public File mo7424Ha() {
                return new File(KApplication.m13453ge().getFilesDir(), "app_market_total_update_info.dat");
            }

            @Override // com.kingroot.kinguser.alz
            /* renamed from: Hb */
            public ConcurrentHashMap<LocalAppInfo, AvailUpdateInfo> mo7423Hc() {
                return new ConcurrentHashMap<>();
            }
        };
        this.ayW = new alz<ConcurrentHashMap<LocalAppInfo, AvailUpdateInfo>>() { // from class: com.kingroot.kinguser.alw.3
            @Override // com.kingroot.kinguser.alz
            /* renamed from: Ha */
            public File mo7424Ha() {
                return new File(KApplication.m13453ge().getFilesDir(), "app_market_diff_update_info.dat");
            }

            @Override // com.kingroot.kinguser.alz
            /* renamed from: Hb */
            public ConcurrentHashMap<LocalAppInfo, AvailUpdateInfo> mo7423Hc() {
                return new ConcurrentHashMap<>();
            }
        };
        this.ayX = new alz<HashSet<AvailUpdateInfo>>() { // from class: com.kingroot.kinguser.alw.4
            @Override // com.kingroot.kinguser.alz
            /* renamed from: Ha */
            public File mo7424Ha() {
                return new File(KApplication.m13453ge().getFilesDir(), "apps_update_ignore_list_name.dat");
            }

            @Override // com.kingroot.kinguser.alz
            /* renamed from: HA */
            public HashSet<AvailUpdateInfo> mo7423Hc() {
                return new HashSet<>();
            }
        };
        this.ayV.m10476HQ();
        this.ayW.m10476HQ();
        this.ayX.m10476HQ();
    }

    @Override // com.kingroot.kinguser.amu
    /* renamed from: Ht */
    public void mo10416Ht() {
        if (!alm.m10566GQ().mo9332GU() && !anf.m10296IV()) {
            Map<String, LocalAppInfo> m10521Hv = m10521Hv();
            final ConcurrentHashMap<LocalAppInfo, AvailUpdateInfo> m10514j = m10514j(m10521Hv);
            ConcurrentHashMap<LocalAppInfo, AvailUpdateInfo> m10513k = m10513k(m10521Hv);
            if (m10514j.size() > 0 && acu.m12571g(akl.m11257AS().m11249BA(), 259200000L)) {
                m10515i(m10514j);
                final ArrayList arrayList = new ArrayList();
                final ArrayList arrayList2 = new ArrayList();
                int i = 0;
                for (AvailUpdateInfo availUpdateInfo : C3942yy.m1350e(m10514j.values())) {
                    if (i == 4) {
                        break;
                    }
                    arrayList2.add(availUpdateInfo.remoteIconUrl);
                    i++;
                }
                if (i != 0) {
                    final AtomicLong atomicLong = new AtomicLong(0L);
                    for (Map.Entry<LocalAppInfo, AvailUpdateInfo> entry : m10514j.entrySet()) {
                        AvailUpdateInfo availUpdateInfo2 = m10513k.get(entry.getKey());
                        if (availUpdateInfo2 != null) {
                            atomicLong.addAndGet(entry.getValue().remoteSize - availUpdateInfo2.remoteDiffPkgSize);
                        }
                    }
                    final AtomicInteger atomicInteger = new AtomicInteger(0);
                    apv.m9735LO().m9724b(arrayList2, new apv.InterfaceC1441b() { // from class: com.kingroot.kinguser.alw.5
                        @Override // com.kingroot.kinguser.apv.InterfaceC1441b
                        /* renamed from: a */
                        public void mo4137a(String str, Bitmap bitmap) {
                            if (arrayList2.contains(str)) {
                                arrayList.add(bitmap);
                            }
                            if (atomicInteger.incrementAndGet() == arrayList2.size()) {
                                adm.m12480st().m12528a(m10514j.size(), atomicLong.get(), arrayList);
                            }
                        }

                        @Override // com.kingroot.kinguser.apv.InterfaceC1441b
                        /* renamed from: eE */
                        public void mo4136eE(String str) {
                            if (atomicInteger.incrementAndGet() == arrayList2.size()) {
                                adm.m12480st().m12528a(m10514j.size(), atomicLong.get(), arrayList);
                            }
                        }
                    });
                    return;
                }
                return;
            }
            adm.m12480st().m12481sO();
            adm.m12480st().m12482sN();
        }
    }

    /* renamed from: i */
    private void m10515i(Map<LocalAppInfo, AvailUpdateInfo> map) {
        Iterator<Map.Entry<LocalAppInfo, AvailUpdateInfo>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            AvailUpdateInfo value = it.next().getValue();
            if (apu.m9742d(value) || mo10411a(value)) {
                it.remove();
            }
        }
    }

    @Override // com.kingroot.kinguser.amu
    /* renamed from: Hu */
    public void mo10415Hu() {
        if (!acu.m12571g(akl.m11257AS().m11248BB(), 43200000L)) {
        }
        beg.m7461Zj().m7450c(new bed(bem.MEDIUM, bec.Normal, false, new C12006(new CountDownLatch(2))));
    }

    /* renamed from: com.kingroot.kinguser.alw$6 */
    /* loaded from: classes.dex */
    public class C12006 extends bek {
        public final /* synthetic */ CountDownLatch val$countDownLatch;

        C12006(CountDownLatch countDownLatch) {
            this.val$countDownLatch = countDownLatch;
        }

        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            synchronized (alw.this.ayV) {
                synchronized (alw.this.ayW) {
                    final Map m10521Hv = alw.this.m10521Hv();
                    alq.m10547GY().mo10421a(new ArrayList(m10521Hv.values()), new IRequestAvailUpdateListener.Stub() { // from class: com.kingroot.kinguser.distribution.appsmarket.core.AppsMarketUpdateMgrService$6$1
                        @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.IRequestAvailUpdateListener
                        public void onFetchResult(List<AvailUpdateInfo> list, boolean z) {
                            if (z) {
                                ((ConcurrentHashMap) alw.this.ayV.m10475HR()).clear();
                                for (AvailUpdateInfo availUpdateInfo : C3942yy.m1350e(list)) {
                                    ((ConcurrentHashMap) alw.this.ayV.m10475HR()).put(m10521Hv.get(availUpdateInfo.pkgName), availUpdateInfo);
                                }
                                alw.this.ayV.m10473HT();
                                alw.this.m10518a((ConcurrentHashMap) alw.this.ayV.m10475HR());
                            }
                            alw.C12006.this.val$countDownLatch.countDown();
                        }

                        @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.IRequestAvailUpdateListener
                        public void onFetchDiffResult(List<AvailUpdateInfo> list, boolean z) {
                            if (z) {
                                ((ConcurrentHashMap) alw.this.ayW.m10475HR()).clear();
                                for (AvailUpdateInfo availUpdateInfo : C3942yy.m1350e(list)) {
                                    ((ConcurrentHashMap) alw.this.ayW.m10475HR()).put(m10521Hv.get(availUpdateInfo.pkgName), availUpdateInfo);
                                }
                                alw.this.ayW.m10473HT();
                            }
                            alw.C12006.this.val$countDownLatch.countDown();
                        }
                    });
                    try {
                        this.val$countDownLatch.await(30L, TimeUnit.SECONDS);
                    } catch (InterruptedException e) {
                    }
                }
            }
            akl.m11257AS().m11213aD(System.currentTimeMillis());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m10518a(ConcurrentHashMap<LocalAppInfo, AvailUpdateInfo> concurrentHashMap) {
        ArrayList arrayList = new ArrayList();
        HashSet<AvailUpdateInfo> m10475HR = this.ayX.m10475HR();
        Iterator<AvailUpdateInfo> it = m10475HR.iterator();
        while (it.hasNext()) {
            AvailUpdateInfo next = it.next();
            Iterator<AvailUpdateInfo> it2 = concurrentHashMap.values().iterator();
            while (true) {
                if (it2.hasNext()) {
                    AvailUpdateInfo next2 = it2.next();
                    if (TextUtils.equals(next2.pkgName, next.pkgName)) {
                        if (!anf.m10293a(next, next2)) {
                            arrayList.add(next2);
                        }
                        it.remove();
                    }
                }
            }
        }
        m10475HR.addAll(arrayList);
        this.ayX.m10473HT();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    /* renamed from: Hv */
    public synchronized Map<String, LocalAppInfo> m10521Hv() {
        HashMap hashMap;
        hashMap = new HashMap();
        for (PackageInfo packageInfo : C3952zh.m1312pq().getInstalledPackages(0)) {
            if (!"com.kingroot.kinguser".equals(packageInfo.packageName)) {
                hashMap.put(packageInfo.packageName, new LocalAppInfo(packageInfo));
            }
        }
        return hashMap;
    }

    @Override // com.kingroot.kinguser.amu
    /* renamed from: a */
    public void mo10409a(IRequestAvailUpdateListener iRequestAvailUpdateListener) {
        Map<String, LocalAppInfo> m10521Hv = m10521Hv();
        ConcurrentHashMap<LocalAppInfo, AvailUpdateInfo> m10514j = m10514j(m10521Hv);
        ConcurrentHashMap<LocalAppInfo, AvailUpdateInfo> m10513k = m10513k(m10521Hv);
        if (iRequestAvailUpdateListener != null) {
            try {
                iRequestAvailUpdateListener.onFetchResult(new ArrayList(m10514j.values()), true);
                iRequestAvailUpdateListener.onFetchDiffResult(new ArrayList(m10513k.values()), true);
            } catch (RemoteException e) {
            }
        }
    }

    @Override // com.kingroot.kinguser.amu
    /* renamed from: Hw */
    public List<AvailUpdateInfo> mo10414Hw() {
        return new ArrayList(m10513k(m10521Hv()).values());
    }

    @Override // com.kingroot.kinguser.amu
    /* renamed from: Hx */
    public List<AvailUpdateInfo> mo10413Hx() {
        return new ArrayList(m10514j(m10521Hv()).values());
    }

    @NonNull
    /* renamed from: j */
    private ConcurrentHashMap<LocalAppInfo, AvailUpdateInfo> m10514j(Map<String, LocalAppInfo> map) {
        ConcurrentHashMap<LocalAppInfo, AvailUpdateInfo> concurrentHashMap;
        synchronized (this.ayV) {
            ConcurrentHashMap<LocalAppInfo, AvailUpdateInfo> m10475HR = this.ayV.m10475HR();
            concurrentHashMap = new ConcurrentHashMap<>(m10475HR);
            Iterator<Map.Entry<LocalAppInfo, AvailUpdateInfo>> it = concurrentHashMap.entrySet().iterator();
            while (it.hasNext()) {
                LocalAppInfo key = it.next().getKey();
                if (!key.equals(map.get(key.pkgName))) {
                    it.remove();
                }
            }
            if (m10475HR.size() != concurrentHashMap.size()) {
                m10475HR.clear();
                m10475HR.putAll(concurrentHashMap);
                this.ayV.m10473HT();
            }
        }
        return concurrentHashMap;
    }

    @NonNull
    /* renamed from: k */
    private ConcurrentHashMap<LocalAppInfo, AvailUpdateInfo> m10513k(Map<String, LocalAppInfo> map) {
        ConcurrentHashMap<LocalAppInfo, AvailUpdateInfo> concurrentHashMap;
        synchronized (this.ayW) {
            ConcurrentHashMap<LocalAppInfo, AvailUpdateInfo> m10475HR = this.ayW.m10475HR();
            concurrentHashMap = new ConcurrentHashMap<>(m10475HR);
            Iterator<Map.Entry<LocalAppInfo, AvailUpdateInfo>> it = concurrentHashMap.entrySet().iterator();
            while (it.hasNext()) {
                LocalAppInfo key = it.next().getKey();
                if (!key.equals(map.get(key.pkgName))) {
                    it.remove();
                }
            }
            if (m10475HR.size() != concurrentHashMap.size()) {
                m10475HR.clear();
                m10475HR.putAll(concurrentHashMap);
                this.ayW.m10473HT();
            }
        }
        return concurrentHashMap;
    }

    @Override // com.kingroot.kinguser.amu
    /* renamed from: a */
    public void mo10410a(AvailUpdateInfo availUpdateInfo, boolean z) {
        synchronized (this.ayX) {
            if (z) {
                this.ayX.m10475HR().add(availUpdateInfo);
            } else {
                this.ayX.m10475HR().remove(availUpdateInfo);
            }
            this.ayX.m10473HT();
        }
    }

    @Override // com.kingroot.kinguser.amu
    /* renamed from: Hy */
    public List<AvailUpdateInfo> mo10412Hy() {
        ArrayList arrayList;
        synchronized (this.ayX) {
            arrayList = new ArrayList(this.ayX.m10475HR());
        }
        return arrayList;
    }

    @Override // com.kingroot.kinguser.amu
    /* renamed from: a */
    public boolean mo10411a(AvailUpdateInfo availUpdateInfo) {
        boolean z;
        synchronized (this.ayX) {
            Iterator<AvailUpdateInfo> it = this.ayX.m10475HR().iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                } else if (availUpdateInfo.equals(it.next())) {
                    z = true;
                    break;
                }
            }
        }
        return z;
    }
}
