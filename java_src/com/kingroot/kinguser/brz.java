package com.kingroot.kinguser;

import android.util.Log;
import com.kingroot.kinguser.brp;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class brz implements brp.InterfaceC2590a {
    private int bLi = 0;
    private boolean bLj = false;
    private Object mLock = new Object();
    private boolean bLk = false;

    /* renamed from: a */
    public void m5610a(bsp bspVar, int i, long j) {
        List<bsp> arrayList = new ArrayList<>(1);
        arrayList.add(bspVar);
        ArrayList<bsc> m5607b = m5607b(arrayList, i, j);
        if (System.currentTimeMillis() >= j) {
            m5605ce(m5607b);
            return;
        }
        Log.d("LogReportService", "直接写入数据库：" + m5607b.toString());
        brs.ahJ().ahL().m5597cj(m5607b);
        this.bLi = m5607b.size() + this.bLi;
    }

    /* renamed from: a */
    public void m5611a(bsp bspVar, int i) {
        m5610a(bspVar, i, 0L);
    }

    /* renamed from: cd */
    public void m5606cd(List<bso> list) {
        if (!btf.m5548cn(list)) {
            ArrayList<bsc> m5602ch = m5602ch(list);
            bth.m5541d("LogReportService", "try to async Report QiantuData...");
            m5605ce(m5602ch);
        }
    }

    /* renamed from: ce */
    private void m5605ce(List<bsc> list) {
        bth.m5541d("LogReportService", "asyncReportQiantuData,run");
        bte.m5553a(m5601ci(list), new brp(list, this));
    }

    public void ahQ() {
        synchronized (this.mLock) {
            if (this.bLk) {
                Log.w("LogReportService", "正在上报数据库里的数据，当前不能上报");
                return;
            }
            this.bLk = true;
            ArrayList arrayList = null;
            int i = this.bLi;
            if (this.bLj && i <= 0) {
                bth.m5541d("LogReportService", "数据库里没有钱途的数据，停止上报");
                synchronized (this.mLock) {
                    this.bLk = false;
                }
                return;
            }
            if (!this.bLj) {
                this.bLj = true;
            }
            List<bsc> actions = brs.ahJ().ahL().getActions();
            if (actions != null) {
                this.bLi = actions.size();
                long currentTimeMillis = System.currentTimeMillis();
                for (bsc bscVar : actions) {
                    if (bscVar.bLp <= currentTimeMillis) {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(bscVar);
                    }
                }
            }
            if (arrayList == null || arrayList.isEmpty()) {
                bth.m5541d("LogReportService", "数据库里没有钱途的数据，停止上报");
                synchronized (this.mLock) {
                    this.bLk = false;
                }
                return;
            }
            m5604cf(arrayList);
        }
    }

    /* renamed from: cf */
    private void m5604cf(List<bsc> list) {
        bth.m5541d("LogReportService", "准备上报数据库里钱途的数据...");
        m5609a(m5603cg(list), list);
    }

    /* renamed from: a */
    private void m5609a(ArrayList<bsq> arrayList, List<bsc> list) {
        bth.m5541d("LogReportService", "asyncReportDBQiantuData,run");
        bte.m5553a(arrayList, new brp(list, new brp.InterfaceC2590a() { // from class: com.kingroot.kinguser.brz.1
            @Override // com.kingroot.kinguser.brp.InterfaceC2590a
            /* renamed from: m */
            public void mo5600m(List<bsc> list2, boolean z) {
                if (z) {
                    brs.ahJ().ahL().m5596ck(list2);
                    brz.this.bLi -= list2.size();
                }
                synchronized (brz.this.mLock) {
                    brz.this.bLk = false;
                }
            }
        }));
    }

    /* renamed from: cg */
    private ArrayList<bsq> m5603cg(List<bsc> list) {
        ArrayList<bsq> arrayList = new ArrayList<>();
        for (bsc bscVar : list) {
            bsq bsqVar = new bsq();
            bsqVar.bLn = bscVar.bLn;
            bsqVar.f2069gw = bscVar.f2064gw;
            bsqVar.bJp = bscVar.bJp;
            bsqVar.bLo = bscVar.bLo;
            arrayList.add(bsqVar);
        }
        return arrayList;
    }

    /* renamed from: ch */
    private ArrayList<bsc> m5602ch(List<bso> list) {
        ArrayList<bsc> arrayList = new ArrayList<>();
        for (bso bsoVar : list) {
            bsc bscVar = new bsc();
            bscVar.bLn = bsoVar.bLV.bLn;
            bscVar.f2064gw = bsoVar.f2068gw;
            bscVar.bJp = bsoVar.bLV.bJp;
            bscVar.bLo = System.currentTimeMillis() / 1000;
            Log.d("LogReportService", "钱途广告平台数据上报：positionID=" + bscVar.bJp + ",phase=" + bscVar.f2064gw);
            arrayList.add(bscVar);
        }
        return arrayList;
    }

    /* renamed from: b */
    private ArrayList<bsc> m5607b(List<bsp> list, int i, long j) {
        ArrayList<bsc> arrayList = new ArrayList<>();
        for (bsp bspVar : list) {
            bsc bscVar = new bsc();
            bscVar.bLn = bspVar.bLn;
            bscVar.f2064gw = i;
            bscVar.bJp = bspVar.bJp;
            bscVar.bLo = System.currentTimeMillis() / 1000;
            bscVar.bLp = j;
            Log.d("LogReportService", "钱途广告平台数据上报：positionID=" + bscVar.bJp + ",phase=" + bscVar.f2064gw);
            arrayList.add(bscVar);
        }
        return arrayList;
    }

    /* renamed from: ci */
    private ArrayList<bsq> m5601ci(List<bsc> list) {
        ArrayList<bsq> arrayList = new ArrayList<>();
        for (bsc bscVar : list) {
            bsq bsqVar = new bsq();
            bsqVar.bLn = bscVar.bLn;
            bsqVar.f2069gw = bscVar.f2064gw;
            bsqVar.bJp = bscVar.bJp;
            bsqVar.bLo = bscVar.bLo;
            arrayList.add(bsqVar);
        }
        return arrayList;
    }

    @Override // com.kingroot.kinguser.brp.InterfaceC2590a
    /* renamed from: m */
    public void mo5600m(List<bsc> list, boolean z) {
        if (z) {
            ahQ();
            return;
        }
        Log.d("LogReportService", "钱途上报失败，以下数据将写入数据库：" + list.toString());
        brs.ahJ().ahL().m5597cj(list);
        this.bLi += list.size();
    }
}
