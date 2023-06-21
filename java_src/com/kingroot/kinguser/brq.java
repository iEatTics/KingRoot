package com.kingroot.kinguser;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import com.kingroot.kinguser.brn;
import com.kingroot.loader.common.KlConst;
import com.tencent.qqpim.discovery.AdDisplayModel;
import com.tencent.qqpim.discovery.AdRequestData;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class brq {
    private brn bKn;
    private brm bKo;
    private final SparseArray<List<bsp>> bKp;
    private brz bKq;
    private Context mContext;
    private Handler mHandler;
    private String TAG = "CacheMgr";
    private final List<String> bKr = new ArrayList();
    private SparseBooleanArray bKs = new SparseBooleanArray();
    private Map<String, C2601b> bKt = new HashMap(3);

    /* renamed from: com.kingroot.kinguser.brq$a */
    /* loaded from: classes.dex */
    public interface InterfaceC2600a {
        /* renamed from: i */
        void mo5641i(int i, List<AdDisplayModel> list);
    }

    public brq(Context context) {
        bth.m5539i("CacheMgr()");
        this.mContext = context.getApplicationContext();
        this.bKn = new brn();
        this.bKo = new brm();
        this.bKq = new brz();
        this.bKp = new SparseArray<>();
        HandlerThread handlerThread = new HandlerThread(getClass().getName());
        handlerThread.start();
        this.mHandler = new Handler(handlerThread.getLooper());
    }

    /* renamed from: i */
    public bsp m5646i(AdDisplayModel adDisplayModel) {
        bsp bspVar;
        if (adDisplayModel == null) {
            return null;
        }
        List<bsp> list = this.bKp.get(adDisplayModel.bJp);
        if (list != null) {
            Iterator<bsp> it = list.iterator();
            while (it.hasNext()) {
                bspVar = it.next();
                if (bspVar.uniqueKey.equals(adDisplayModel.uniqueKey)) {
                    break;
                }
            }
        }
        bspVar = null;
        bth.m5542d("findUnifiedAdData() " + (bspVar != null ? bspVar.activityId : null));
        return bspVar;
    }

    /* renamed from: j */
    public void m5645j(AdDisplayModel adDisplayModel) {
        m5664a(adDisplayModel, 0L);
    }

    /* renamed from: a */
    public void m5664a(AdDisplayModel adDisplayModel, final long j) {
        final bsp m5646i = m5646i(adDisplayModel);
        if (m5646i != null) {
            bth.m5542d("onShowAd() UnifiedAdData:" + m5646i);
            final brl m5680b = this.bKo.m5680b(m5646i);
            m5646i.bJG = m5680b.bKg;
            bth.m5542d("onShowAd() UnifiedAdData PreDisplaytime:" + m5646i.bJG);
            this.mHandler.post(new Runnable() { // from class: com.kingroot.kinguser.brq.1
                @Override // java.lang.Runnable
                public void run() {
                    if (m5680b != null) {
                        brs.ahJ().ahK().m5594a(m5646i.uniqueKey, m5680b);
                    }
                    brq.this.bKq.m5610a(m5646i, 3, j);
                }
            });
        }
    }

    /* renamed from: c */
    public void m5653c(AdDisplayModel adDisplayModel, Bundle bundle) {
        final bsp m5646i = m5646i(adDisplayModel);
        if (m5646i != null) {
            if (adDisplayModel.ahw()) {
                bre.ahy().ahB().mo5616a(m5646i.jumpUrl, false, -1, bundle);
            }
            bth.m5542d("onClickAd() UnifiedAdData:" + m5646i);
            final brl m5679c = this.bKo.m5679c(m5646i);
            this.mHandler.post(new Runnable() { // from class: com.kingroot.kinguser.brq.3
                @Override // java.lang.Runnable
                public void run() {
                    if (m5679c != null) {
                        brs.ahJ().ahK().m5594a(m5646i.uniqueKey, m5679c);
                    }
                    brq.this.bKq.m5611a(m5646i, 4);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m5660a(final AdRequestData adRequestData, final C2601b c2601b, boolean z) {
        bth.m5542d("readCachFlow() begin AdRequestData:" + adRequestData.bJp + " forceupdate=" + z);
        if (!this.bKs.get(adRequestData.bJp, false)) {
            m5663a(adRequestData);
            this.bKs.append(adRequestData.bJp, true);
        }
        if (btf.m5548cn(this.bKo.m5678ke(adRequestData.bJp)) && z) {
            if (bro.m5671kg(adRequestData.bJp)) {
                if (!btf.m5551S(this.mContext)) {
                    this.mHandler.postDelayed(new Runnable() { // from class: com.kingroot.kinguser.brq.4
                        @Override // java.lang.Runnable
                        public void run() {
                            if (!btf.m5551S(brq.this.mContext)) {
                                bth.m5542d("ReportError.NONETWORK AdRequestData:" + adRequestData.bJp);
                                c2601b.bKI.put(adRequestData.bJp, 3);
                                brq.this.m5656b(adRequestData, c2601b);
                                return;
                            }
                            brq.this.m5655b(adRequestData, c2601b, false);
                        }
                    }, 1000L);
                    return;
                } else {
                    m5655b(adRequestData, c2601b, false);
                    return;
                }
            }
            c2601b.bKI.put(adRequestData.bJp, 2);
        }
        m5656b(adRequestData, c2601b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m5655b(final AdRequestData adRequestData, final C2601b c2601b, final boolean z) {
        if (!z && !this.bKs.get(adRequestData.bJp, false)) {
            m5663a(adRequestData);
            this.bKs.append(adRequestData.bJp, true);
        }
        bth.m5542d("forceUpateFlow() begin AdRequestData:" + adRequestData.bJp);
        c2601b.bKK = new brn.InterfaceC2589a() { // from class: com.kingroot.kinguser.brq.5
            @Override // com.kingroot.kinguser.brn.InterfaceC2589a
            /* renamed from: c */
            public void mo5642c(SparseArray<List<bso>> sparseArray) {
                final ArrayList arrayList;
                bth.m5542d("网络拉取  onDataCallbackt() begin");
                bth.m5539i("本地广告过期设置  begin");
                ArrayList arrayList2 = null;
                synchronized (brq.this.bKp) {
                    List<bsp> list = (List) brq.this.bKp.get(adRequestData.bJp);
                    if (btf.m5548cn(list)) {
                        arrayList = null;
                    } else {
                        for (bsp bspVar : list) {
                            if (adRequestData.bJM != null && !adRequestData.bJM.isEmpty() && adRequestData.bJM.contains(Integer.valueOf(bspVar.bJq))) {
                                brq.this.bKo.m5682a(bspVar);
                                if (arrayList2 == null) {
                                    arrayList2 = new ArrayList(5);
                                }
                                arrayList2.add(bspVar);
                            }
                        }
                        arrayList = arrayList2;
                    }
                }
                final List<bso> list2 = sparseArray.get(adRequestData.bJp);
                if (btf.m5548cn(list2)) {
                    brq.this.mHandler.post(new Runnable() { // from class: com.kingroot.kinguser.brq.5.1
                        @Override // java.lang.Runnable
                        public void run() {
                            bth.m5539i("删除本地数据库相关数据  begin");
                            if (!btf.m5548cn(arrayList)) {
                                brs.ahJ().ahK().m5591cm(arrayList);
                            }
                        }
                    });
                    return;
                }
                bth.m5539i("更新本地缓存  begin");
                for (bso bsoVar : list2) {
                    brq.this.m5648e(bsoVar.bLV);
                    brq.this.bKo.m5681b(bsoVar);
                }
                brq.this.mHandler.post(new Runnable() { // from class: com.kingroot.kinguser.brq.5.2
                    @Override // java.lang.Runnable
                    public void run() {
                        bth.m5539i("删除和更新本地数据库相关数据  begin");
                        if (!btf.m5548cn(arrayList)) {
                            brs.ahJ().ahK().m5591cm(arrayList);
                        }
                        brs.ahJ().ahK().m5592cl(list2);
                        bth.m5539i("新数据上报  begin");
                        brq.this.bKq.m5606cd(list2);
                    }
                });
            }

            @Override // com.kingroot.kinguser.brn.InterfaceC2589a
            /* renamed from: a */
            public void mo5644a(SparseArray<List<bso>> sparseArray, int i) {
                bth.m5542d("onRequestFinished() errorcode=" + i);
                List<bso> list = null;
                if (sparseArray != null) {
                    list = sparseArray.get(adRequestData.bJp);
                }
                if (i == 0 && btf.m5548cn(list)) {
                    c2601b.bKI.put(adRequestData.bJp, 5);
                } else {
                    c2601b.bKI.put(adRequestData.bJp, Integer.valueOf(i));
                }
                if (z) {
                    brq.this.m5661a(adRequestData, c2601b, sparseArray);
                } else {
                    brq.this.m5656b(adRequestData, c2601b);
                }
            }
        };
        this.bKn.m5676a(adRequestData, c2601b);
        brw.ahO().mo5617c(264627, String.valueOf(adRequestData.bJp) + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + adRequestData.bJL, 1);
    }

    /* renamed from: a */
    public void m5659a(final AdRequestData adRequestData, final boolean z, InterfaceC2600a interfaceC2600a) {
        bth.m5542d("getAds() begin AdRequestData:" + adRequestData.toString());
        long currentTimeMillis = System.currentTimeMillis();
        String valueOf = String.valueOf(adRequestData.bJp);
        synchronized (this.bKr) {
            if (this.bKr.contains(valueOf)) {
                C2601b c2601b = this.bKt.get(valueOf);
                if (c2601b != null) {
                    c2601b.bKJ.add(interfaceC2600a);
                }
                return;
            }
            C2601b c2601b2 = new C2601b();
            c2601b2.bKG = valueOf;
            c2601b2.bKJ.add(interfaceC2600a);
            this.bKt.put(valueOf, c2601b2);
            this.bKr.add(valueOf);
            final C2601b c2601b3 = this.bKt.get(valueOf);
            c2601b3.bKI.put(adRequestData.bJp, 0);
            c2601b3.starttime = currentTimeMillis;
            if (!bro.m5672kf(adRequestData.bJp) || z) {
                this.mHandler.post(new Runnable() { // from class: com.kingroot.kinguser.brq.6
                    @Override // java.lang.Runnable
                    public void run() {
                        if (z) {
                            c2601b3.bKI.put(adRequestData.bJp, 1);
                        }
                        brq.this.m5660a(adRequestData, c2601b3, z ? false : true);
                    }
                });
            } else if (!btf.m5551S(this.mContext)) {
                this.mHandler.postDelayed(new Runnable() { // from class: com.kingroot.kinguser.brq.7
                    @Override // java.lang.Runnable
                    public void run() {
                        if (btf.m5551S(brq.this.mContext)) {
                            brq.this.m5655b(adRequestData, c2601b3, false);
                            return;
                        }
                        bth.m5542d("ReportNewError.NONETWORK AdRequestData:" + adRequestData.bJp);
                        c2601b3.bKI.put(adRequestData.bJp, 3);
                        brq.this.m5660a(adRequestData, c2601b3, false);
                    }
                }, 1000L);
            } else {
                this.mHandler.post(new Runnable() { // from class: com.kingroot.kinguser.brq.2
                    @Override // java.lang.Runnable
                    public void run() {
                        brq.this.m5655b(adRequestData, c2601b3, false);
                    }
                });
            }
        }
    }

    /* renamed from: a */
    private void m5663a(AdRequestData adRequestData) {
        bth.m5542d("readDbAds() begin" + adRequestData.bJp);
        ArrayList arrayList = null;
        bth.m5539i("查数据库|广告位=" + adRequestData.bJp);
        List<bso> m5583j = brs.ahJ().ahK().m5583j(adRequestData.bJp, adRequestData.bJM);
        ArrayList arrayList2 = new ArrayList();
        ArrayList<bso> arrayList3 = new ArrayList();
        for (bso bsoVar : m5583j) {
            if (!bsoVar.ahH()) {
                if (bsoVar.ahX()) {
                    arrayList2.add(bsoVar.bLV);
                    arrayList3.add(bsoVar);
                } else {
                    if (arrayList == null) {
                        arrayList = new ArrayList(5);
                    }
                    arrayList.add(bsoVar.bLV);
                }
            } else {
                if (arrayList == null) {
                    arrayList = new ArrayList(5);
                }
                arrayList.add(bsoVar.bLV);
            }
        }
        bth.m5539i("Add data to mAdData:" + adRequestData.bJp);
        synchronized (this.bKp) {
            List<bsp> list = this.bKp.get(adRequestData.bJp);
            if (list == null) {
                this.bKp.put(adRequestData.bJp, arrayList2);
            } else {
                list.addAll(arrayList2);
            }
        }
        for (bso bsoVar2 : arrayList3) {
            this.bKo.m5683a(bsoVar2);
        }
        bth.m5539i("查找广告数据库  End");
        if (!btf.m5548cn(arrayList)) {
            brs.ahJ().ahK().m5591cm(arrayList);
        }
        bth.m5542d("readDbAds() end" + adRequestData.bJp);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x004f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void m5661a(AdRequestData adRequestData, C2601b c2601b, SparseArray<List<bso>> sparseArray) {
        ArrayList arrayList;
        int i;
        List<bsp> list = null;
        bth.m5542d("retAssignedAData() begin");
        bth.m5539i("填充广告数据  Begin");
        if (sparseArray != null) {
            List<bso> list2 = sparseArray.get(adRequestData.bJp);
            if (!btf.m5548cn(list2)) {
                arrayList = new ArrayList();
                for (bso bsoVar : list2) {
                    if (adRequestData.bJO) {
                        c2601b.bKI.put(adRequestData.bJp, 6);
                        if (!m5647f(bsoVar.bLV)) {
                            if (list == null) {
                                list = new ArrayList<>(5);
                            }
                            list.add(bsoVar.bLV);
                        }
                    }
                    if (adRequestData.bJP || bsoVar.bLV.bJB <= System.currentTimeMillis() / 1000) {
                        AdDisplayModel m5650d = m5650d(bsoVar.bLV);
                        bth.m5539i("填充-" + bsoVar.bLV.activityId);
                        arrayList.add(m5650d);
                    }
                }
                bth.m5539i("填充广告数据   End");
                int intValue = c2601b.bKI.get(adRequestData.bJp).intValue();
                if (btf.m5548cn(arrayList)) {
                    i = intValue;
                    intValue = 0;
                } else if (intValue == 3 || intValue == 4) {
                    i = 1;
                } else {
                    i = 2;
                }
                synchronized (this.bKr) {
                    this.bKr.remove(c2601b.bKG);
                    this.bKt.remove(c2601b.bKG);
                }
                for (InterfaceC2600a interfaceC2600a : c2601b.bKJ) {
                    interfaceC2600a.mo5641i(i, arrayList);
                }
                if (!btf.m5548cn(list)) {
                    m5652cc(list);
                }
                m5662a(adRequestData, arrayList == null ? 0 : arrayList.size(), intValue, c2601b.starttime);
                bth.m5542d("retAssignedAData() End");
                if (btf.m5551S(this.mContext)) {
                    this.bKq.ahQ();
                    return;
                }
                return;
            }
        }
        arrayList = null;
        bth.m5539i("填充广告数据   End");
        int intValue2 = c2601b.bKI.get(adRequestData.bJp).intValue();
        if (btf.m5548cn(arrayList)) {
        }
        synchronized (this.bKr) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m5656b(AdRequestData adRequestData, C2601b c2601b) {
        ArrayList arrayList;
        ArrayList arrayList2;
        int i;
        bth.m5542d("retValideAData() begin");
        bth.m5539i("填充广告数据  Begin");
        List<String> m5678ke = this.bKo.m5678ke(adRequestData.bJp);
        synchronized (this.bKp) {
            List<bsp> list = this.bKp.get(adRequestData.bJp);
            arrayList = new ArrayList();
            arrayList2 = null;
            for (String str : m5678ke) {
                Iterator<bsp> it = list.iterator();
                while (true) {
                    if (it.hasNext()) {
                        bsp next = it.next();
                        if (next.activityId.equals(str)) {
                            if (adRequestData.bJO) {
                                c2601b.bKI.put(adRequestData.bJp, 6);
                                if (!m5647f(next)) {
                                    ArrayList arrayList3 = arrayList2 == null ? new ArrayList(5) : arrayList2;
                                    arrayList3.add(next);
                                    arrayList2 = arrayList3;
                                }
                            }
                            if (adRequestData.bJP || next.bJB <= System.currentTimeMillis() / 1000) {
                                if (adRequestData.bJM == null || adRequestData.bJM.isEmpty() || adRequestData.bJM.contains(Integer.valueOf(next.bJq))) {
                                    AdDisplayModel m5650d = m5650d(next);
                                    bth.m5539i("填充-" + next.activityId);
                                    if (m5650d != null) {
                                        arrayList.add(m5650d);
                                        break;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        bth.m5539i("填充广告数据   End");
        int intValue = c2601b.bKI.get(adRequestData.bJp).intValue();
        if (btf.m5548cn(arrayList)) {
            if (intValue == 3 || intValue == 4) {
                i = 1;
            } else {
                i = 2;
            }
        } else {
            i = intValue;
            intValue = 0;
        }
        synchronized (this.bKr) {
            this.bKr.remove(c2601b.bKG);
            this.bKt.remove(c2601b.bKG);
        }
        for (InterfaceC2600a interfaceC2600a : c2601b.bKJ) {
            interfaceC2600a.mo5641i(i, arrayList);
        }
        if (!btf.m5548cn(arrayList2)) {
            m5652cc(arrayList2);
        }
        m5662a(adRequestData, arrayList.size(), intValue, c2601b.starttime);
        bth.m5542d("retValideAData() End");
        if (btf.m5551S(this.mContext)) {
            this.bKq.ahQ();
        }
    }

    /* renamed from: a */
    private void m5662a(AdRequestData adRequestData, int i, int i2, long j) {
        long currentTimeMillis = System.currentTimeMillis() - j;
        bth.m5542d("featureReport() src.positionId" + adRequestData.bJp + " src.advNum=" + adRequestData.bJL + " detnum=" + i + " errorcode=" + i2 + " duration=" + currentTimeMillis);
        brw.ahO().mo5617c(264529, String.valueOf(adRequestData.bJp) + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + adRequestData.bJL + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + i + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + i2 + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + currentTimeMillis, 1);
    }

    /* renamed from: d */
    private AdDisplayModel m5650d(bsp bspVar) {
        AdDisplayModel adDisplayModel = new AdDisplayModel();
        adDisplayModel.uniqueKey = bspVar.uniqueKey;
        adDisplayModel.bJp = bspVar.bJp;
        adDisplayModel.bJo = bspVar.bLW ? 1 : 0;
        adDisplayModel.bJA = bspVar.bJA;
        adDisplayModel.bJy = bspVar.bJy;
        adDisplayModel.bJz = bspVar.bJz;
        adDisplayModel.bJq = bspVar.bJq;
        adDisplayModel.bJr = bspVar.bJr;
        adDisplayModel.bJs = bspVar.bJs;
        adDisplayModel.bJt = bspVar.bJt;
        adDisplayModel.bJu = bspVar.bJu;
        adDisplayModel.bJv = bspVar.bJv;
        adDisplayModel.bJw = bspVar.bJw;
        adDisplayModel.bJx = bspVar.bJx;
        adDisplayModel.videoUrl = bspVar.videoUrl;
        adDisplayModel.bJJ = bspVar.bJJ;
        adDisplayModel.bJB = bspVar.bJB;
        adDisplayModel.bJC = bspVar.bJC;
        adDisplayModel.bJD = bspVar.bJD;
        adDisplayModel.bJE = bspVar.bJE;
        adDisplayModel.bJG = bspVar.bJG;
        if (bspVar.bJv != null && !bspVar.bJv.isEmpty()) {
            adDisplayModel.bJH = btf.m5549aX(bspVar.bJv, "ck=");
        }
        if (bspVar.videoUrl != null && !bspVar.videoUrl.isEmpty()) {
            adDisplayModel.bJI = btf.m5549aX(bspVar.videoUrl, "ck=");
        }
        if (bspVar.bJJ != null && !bspVar.bJJ.isEmpty()) {
            adDisplayModel.bJK = btf.m5549aX(bspVar.bJJ, "ck=");
        }
        return adDisplayModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public boolean m5648e(bsp bspVar) {
        ArrayList arrayList;
        int i = 0;
        if (bspVar.bKb < ((int) (System.currentTimeMillis() / 1000))) {
            bth.m5543aG(String.valueOf(bspVar.activityId) + " 广告时间过期,请调整手机本地时间为北京时间！！！");
            return false;
        }
        synchronized (this.bKp) {
            List<bsp> list = this.bKp.get(bspVar.bJp);
            if (list == null) {
                ArrayList arrayList2 = new ArrayList(2);
                this.bKp.put(bspVar.bJp, arrayList2);
                arrayList = arrayList2;
            } else {
                arrayList = list;
            }
            while (i < arrayList.size()) {
                if (bspVar.uniqueKey.equals(arrayList.get(i).uniqueKey)) {
                    arrayList.remove(i);
                } else {
                    i++;
                }
            }
            arrayList.add(bspVar);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.brq$b */
    /* loaded from: classes.dex */
    public class C2601b {
        brn.InterfaceC2589a bKK;
        long starttime = 0;
        String bKG = null;
        List<Integer> bKH = new ArrayList();
        SparseArray<Integer> bKI = new SparseArray<>();
        List<InterfaceC2600a> bKJ = new ArrayList(2);

        public C2601b() {
        }
    }

    /* renamed from: f */
    private boolean m5647f(bsp bspVar) {
        StringBuilder sb = new StringBuilder();
        sb.append(bsn.getExternalStorageDirectory().getAbsolutePath()).append(File.separator).append("QQSecureDownload/discovery");
        if (bspVar.bJv != null && !bspVar.bJv.isEmpty()) {
            r0 = new File(new StringBuilder(String.valueOf(sb.toString())).append(File.separator).append(bsi.m5568nb(bspVar.bJv).toString()).toString()).exists();
            bth.m5539i("imageUrl1:" + bsi.m5568nb(bspVar.bJv) + " is " + (r0 ? "prepared" : "preparing"));
        }
        if (bspVar.bJw != null && !bspVar.bJw.isEmpty()) {
            if (!new File(String.valueOf(sb.toString()) + File.separator + bsi.m5568nb(bspVar.bJw).toString()).exists()) {
                r0 = false;
            }
            bth.m5539i("imageUrl2:" + bsi.m5568nb(bspVar.bJw) + " is " + (r0 ? "prepared" : "preparing"));
        }
        if (bspVar.bJx != null && !bspVar.bJx.isEmpty()) {
            if (!new File(String.valueOf(sb.toString()) + File.separator + bsi.m5568nb(bspVar.bJx).toString()).exists()) {
                r0 = false;
            }
            bth.m5539i("imageUrl3:" + bsi.m5568nb(bspVar.bJx) + " is " + (r0 ? "prepared" : "preparing"));
        }
        if (bspVar.videoUrl != null && !bspVar.videoUrl.isEmpty()) {
            if (!new File(String.valueOf(sb.toString()) + File.separator + bsi.m5568nb(bspVar.videoUrl).toString()).exists()) {
                r0 = false;
            }
            bth.m5539i("videoUrl:" + bsi.m5568nb(bspVar.videoUrl) + " is " + (r0 ? "prepared" : "preparing"));
        }
        if (bspVar.bJJ != null && !bspVar.bJJ.isEmpty()) {
            boolean z = new File(new StringBuilder(String.valueOf(sb.toString())).append(File.separator).append(bsi.m5568nb(bspVar.bJJ).toString()).toString()).exists() ? r0 : false;
            bth.m5539i("zipUrl:" + bsi.m5568nb(bspVar.bJJ) + " is " + (z ? "prepared" : "preparing"));
            r0 = z;
        }
        bth.m5539i("isMaterialPrepared() model=" + bspVar.uniqueKey + " is " + r0);
        return r0;
    }

    /* renamed from: cc */
    private void m5652cc(List<bsp> list) {
        if (!btf.m5548cn(list)) {
            StringBuilder sb = new StringBuilder();
            sb.append(bsn.getExternalStorageDirectory().getAbsolutePath()).append(File.separator).append("QQSecureDownload/discovery");
            for (bsp bspVar : list) {
                bth.m5539i("autoloadPic() model=" + bspVar.uniqueKey);
                if (bspVar.bJv != null && !bspVar.bJv.isEmpty()) {
                    bsh.ahR().m5575a(sb.toString(), bsi.m5568nb(bspVar.bJv), bspVar.bJv, btf.m5549aX(bspVar.bJv, "ck="), false, null);
                    bth.m5539i("imageUrl1_md5=" + btf.m5549aX(bspVar.bJv, "ck="));
                }
                if (bspVar.bJw != null && !bspVar.bJw.isEmpty()) {
                    bsh.ahR().m5575a(sb.toString(), bsi.m5568nb(bspVar.bJw), bspVar.bJw, btf.m5549aX(bspVar.bJw, "ck="), false, null);
                    bth.m5539i("imageUrl2_md5=" + btf.m5549aX(bspVar.bJw, "ck="));
                }
                if (bspVar.bJx != null && !bspVar.bJx.isEmpty()) {
                    bsh.ahR().m5575a(sb.toString(), bsi.m5568nb(bspVar.bJx), bspVar.bJx, btf.m5549aX(bspVar.bJx, "ck="), false, null);
                    bth.m5539i("imageUrl3_md5=" + btf.m5549aX(bspVar.bJx, "ck="));
                }
                if (bsl.ahV()) {
                    if (bspVar.videoUrl != null && !bspVar.videoUrl.isEmpty()) {
                        bsh.ahR().m5575a(sb.toString(), bsi.m5568nb(bspVar.videoUrl), bspVar.videoUrl, btf.m5549aX(bspVar.videoUrl, "ck="), false, null);
                        bth.m5539i("videoUrl_md5=" + btf.m5549aX(bspVar.videoUrl, "ck="));
                    }
                    if (bspVar.bJJ != null && !bspVar.bJJ.isEmpty()) {
                        bsh.ahR().m5575a(sb.toString(), bsi.m5568nb(bspVar.bJJ), bspVar.bJJ, btf.m5549aX(bspVar.bJJ, "ck="), false, null);
                        bth.m5539i("zipUrl_md5=" + btf.m5549aX(bspVar.bJJ, "ck="));
                    }
                } else {
                    bth.m5539i("无可用WiFi!!");
                }
            }
        }
    }
}
