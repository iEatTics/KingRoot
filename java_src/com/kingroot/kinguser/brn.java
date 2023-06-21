package com.kingroot.kinguser;

import android.util.SparseArray;
import com.kingroot.kinguser.brq;
import com.p019qq.taf.jce.JceStruct;
import com.tencent.qqpim.discovery.AdRequestData;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class brn {

    /* renamed from: com.kingroot.kinguser.brn$a */
    /* loaded from: classes.dex */
    public interface InterfaceC2589a {
        /* renamed from: a */
        void mo5644a(SparseArray<List<bso>> sparseArray, int i);

        /* renamed from: c */
        void mo5642c(SparseArray<List<bso>> sparseArray);
    }

    public brn() {
        bth.m5539i("AdNetMgr()");
    }

    /* renamed from: a */
    public void m5676a(final AdRequestData adRequestData, final brq.C2601b c2601b) {
        bth.m5539i("AdNetMgr_getAds():" + adRequestData.toString());
        bte.m5554a(adRequestData, new brj() { // from class: com.kingroot.kinguser.brn.1
            @Override // com.kingroot.kinguser.brj
            /* renamed from: a */
            public void mo5670a(int i, JceStruct jceStruct) {
                if (i != 0) {
                    c2601b.bKK.mo5644a(null, 4);
                    return;
                }
                bta btaVar = (bta) jceStruct;
                if (btaVar == null) {
                    c2601b.bKK.mo5644a(null, 4);
                    return;
                }
                ArrayList<btb> arrayList = btaVar.bMx;
                if (btf.m5548cn(arrayList)) {
                    c2601b.bKK.mo5644a(null, 4);
                    return;
                }
                SparseArray<List<bso>> sparseArray = new SparseArray<>();
                Iterator<btb> it = arrayList.iterator();
                while (it.hasNext()) {
                    btb next = it.next();
                    if (next.ret == 0) {
                        int i2 = next.bJp;
                        if (btf.m5548cn(next.bMz)) {
                            bro.m5674I(i2, false);
                            bro.m5673ap(i2, 120000);
                        } else {
                            if (next.bMz.size() >= adRequestData.bJL) {
                                bro.m5674I(i2, true);
                            } else {
                                bro.m5674I(i2, false);
                            }
                            bro.m5673ap(i2, 3600000);
                            List<bso> list = sparseArray.get(i2);
                            if (list == null) {
                                list = new ArrayList<>(5);
                                sparseArray.put(i2, list);
                            }
                            Iterator<btc> it2 = next.bMz.iterator();
                            while (it2.hasNext()) {
                                bso m5677a = brn.this.m5677a(it2.next(), i2);
                                if (m5677a != null) {
                                    list.add(m5677a);
                                }
                            }
                        }
                    }
                }
                c2601b.bKK.mo5642c(sparseArray);
                bth.m5542d("shark_onCallback() end");
                c2601b.bKK.mo5644a(sparseArray, 0);
                bth.m5542d("AdNetMgr_getAds() End:" + adRequestData.toString() + " latch.errorcode:0");
            }
        }, 10000L);
    }

    /* renamed from: a */
    public bso m5677a(btc btcVar, int i) {
        if (btcVar.bMB.bMd < ((int) (System.currentTimeMillis() / 1000))) {
            bth.m5543aG(String.valueOf(btcVar.bMB.bMg) + " 广告时间过期,请调整手机本地时间为北京时间！！！");
            return null;
        }
        bso bsoVar = new bso();
        bsp bspVar = new bsp();
        bsoVar.bLV = bspVar;
        bspVar.bJp = i;
        bsoVar.f2068gw = 2;
        bsoVar.bLT = btcVar.bLT;
        bsoVar.bLU = btcVar.bLU;
        bspVar.bJA = btcVar.bJA;
        bspVar.bJB = btcVar.bMD;
        bss bssVar = btcVar.bMB;
        bspVar.bKb = bssVar.bMd;
        if (bssVar.bMe != null) {
            bspVar.bJr = bssVar.bMe.bJr;
            bspVar.bJs = bssVar.bMe.bJs;
            bspVar.bJt = bssVar.bMe.bJt;
            bspVar.bJu = bssVar.bMe.bJu;
            bspVar.bJv = bssVar.bMe.bMq;
            bspVar.bJw = bssVar.bMe.bMr;
            bspVar.bJx = bssVar.bMe.bMs;
            bspVar.videoUrl = bssVar.bMe.videoUrl;
            bspVar.bJJ = bssVar.bMe.bJJ;
            bspVar.bJq = bssVar.bMe.bMt;
        }
        if (bssVar.bMf != null) {
            bspVar.bLY = bssVar.bMf.bLY;
            bspVar.jumpUrl = bssVar.bMf.jumpUrl;
            bspVar.packageName = bssVar.bMf.packageName;
        }
        if (bssVar.bMh != null) {
            bspVar.bJC = bssVar.bMh.bMu;
            bspVar.bJD = bssVar.bMh.bMv;
            bspVar.bJE = bssVar.bMh.bJE;
        }
        bspVar.bLn = bssVar.bLn;
        bspVar.activityId = String.valueOf(bssVar.bMg);
        bspVar.uniqueKey = m5675i(i, bssVar.bMg);
        ArrayList<bsy> arrayList = btcVar.bMC;
        if (arrayList != null && !arrayList.isEmpty()) {
            bspVar.bLW = true;
            Iterator<bsy> it = arrayList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                bsy next = it.next();
                if (next.bMw == 2) {
                    bspVar.bJz = next.text;
                    bspVar.bJy = 300;
                    break;
                }
            }
        }
        return bsoVar;
    }

    /* renamed from: i */
    private String m5675i(int i, long j) {
        return btf.m5550X(btf.m5547ne(i + "|" + j));
    }
}
