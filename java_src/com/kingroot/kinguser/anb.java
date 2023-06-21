package com.kingroot.kinguser;

import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.distribution.appsmarket.report.ReportInfo;
import com.tencent.qqpimsecure.seachsdk.common.AppInfo;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class anb implements anc {
    private static final String TAG = aiq.arY + "_AppsMarketReporter";
    private static final cce<anc> sInstance = new cce<anc>() { // from class: com.kingroot.kinguser.anb.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: IP */
        public anc create() {
            return new anb();
        }
    };
    private final alz<ConcurrentHashMap<ReportInfo, ArrayList<Integer>>> aAa;
    private final alz<ConcurrentHashMap<String, ConcurrentHashMap<String, ReportInfo>>> aAb;
    private bed aAc;

    @InterfaceC3726ut
    /* renamed from: IO */
    public static anc m10350IO() {
        return sInstance.get();
    }

    private anb() {
        this.aAa = new alz<ConcurrentHashMap<ReportInfo, ArrayList<Integer>>>() { // from class: com.kingroot.kinguser.anb.13
            @Override // com.kingroot.kinguser.alz
            /* renamed from: Ha */
            public File mo7424Ha() {
                return new File(KApplication.m13453ge().getFilesDir(), "apps_market_business_report.dat");
            }

            @Override // com.kingroot.kinguser.alz
            /* renamed from: Hb */
            public ConcurrentHashMap<ReportInfo, ArrayList<Integer>> mo7423Hc() {
                return new ConcurrentHashMap<>();
            }
        };
        this.aAb = new alz<ConcurrentHashMap<String, ConcurrentHashMap<String, ReportInfo>>>() { // from class: com.kingroot.kinguser.anb.2
            @Override // com.kingroot.kinguser.alz
            /* renamed from: Ha */
            public File mo7424Ha() {
                return new File(KApplication.m13453ge().getFilesDir(), "apps_market_business_exposure_report.dat");
            }

            @Override // com.kingroot.kinguser.alz
            /* renamed from: Hb */
            public ConcurrentHashMap<String, ConcurrentHashMap<String, ReportInfo>> mo7423Hc() {
                return new ConcurrentHashMap<>();
            }
        };
        this.aAc = new bed(bem.MEDIUM, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.anb.4
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                synchronized (anb.this.aAb) {
                    synchronized (anb.this.aAa) {
                        final CountDownLatch countDownLatch = new CountDownLatch(1);
                        final int i = 0;
                        ArrayList arrayList = new ArrayList();
                        for (Map.Entry entry : ((ConcurrentHashMap) anb.this.aAa.m10475HR()).entrySet()) {
                            AppInfo m10345a = anb.this.m10345a((ReportInfo) entry.getKey());
                            Iterator it = ((ArrayList) entry.getValue()).iterator();
                            while (it.hasNext()) {
                                bux buxVar = new bux();
                                buxVar.appInfo = m10345a;
                                buxVar.bON = ((Integer) it.next()).intValue();
                                arrayList.add(buxVar);
                                i++;
                            }
                        }
                        ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) anb.this.aAb.m10475HR();
                        for (String str : concurrentHashMap.keySet()) {
                            for (ReportInfo reportInfo : ((ConcurrentHashMap) concurrentHashMap.get(str)).values()) {
                                if (!reportInfo.hadReportedForExposure) {
                                    bux buxVar2 = new bux();
                                    buxVar2.appInfo = anb.this.m10345a(reportInfo);
                                    buxVar2.bON = 40;
                                    arrayList.add(buxVar2);
                                    i++;
                                }
                            }
                        }
                        if (arrayList.size() != 0) {
                            btx.aid().m5499a(arrayList, new bug() { // from class: com.kingroot.kinguser.anb.4.1
                                @Override // com.kingroot.kinguser.bug
                                /* renamed from: fD */
                                public void mo5488fD(int i2) {
                                    if (i2 == 0) {
                                        ((ConcurrentHashMap) anb.this.aAa.m10475HR()).clear();
                                        anb.this.aAa.m10473HT();
                                        ConcurrentHashMap concurrentHashMap2 = (ConcurrentHashMap) anb.this.aAb.m10475HR();
                                        for (String str2 : concurrentHashMap2.keySet()) {
                                            for (ReportInfo reportInfo2 : ((ConcurrentHashMap) concurrentHashMap2.get(str2)).values()) {
                                                if (!reportInfo2.hadReportedForExposure) {
                                                    reportInfo2.hadReportedForExposure = true;
                                                }
                                            }
                                        }
                                        anb.this.aAb.m10473HT();
                                    }
                                    countDownLatch.countDown();
                                }
                            });
                            try {
                                countDownLatch.await();
                            } catch (InterruptedException e) {
                            }
                        }
                    }
                }
            }
        });
        this.aAa.m10476HQ();
        this.aAb.m10476HQ();
    }

    @Override // com.kingroot.kinguser.anc
    /* renamed from: H */
    public void mo10337H(final int i, final String str) {
        beg.m7461Zj().m7450c(new bed(bem.LOW, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.anb.6
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                ArrayList arrayList = new ArrayList();
                arrayList.add(1);
                arrayList.add("");
                arrayList.add("");
                arrayList.add(Integer.valueOf(i));
                arrayList.add(str);
                ady.m12308tK().mo1748a(100613, 0, (List<Object>) arrayList, true);
            }
        }));
    }

    @Override // com.kingroot.kinguser.anc
    /* renamed from: I */
    public void mo10336I(final int i, final String str) {
        beg.m7461Zj().m7450c(new bed(bem.LOW, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.anb.7
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                ArrayList arrayList = new ArrayList();
                arrayList.add(2);
                arrayList.add("");
                arrayList.add("");
                arrayList.add(Integer.valueOf(i));
                arrayList.add(str);
                ady.m12308tK().mo1748a(100613, 0, (List<Object>) arrayList, true);
            }
        }));
    }

    @Override // com.kingroot.kinguser.anc
    /* renamed from: d */
    public void mo10328d(int i, String str, int i2) {
        mo10329b(i, str, 0, i2);
    }

    @Override // com.kingroot.kinguser.anc
    /* renamed from: b */
    public void mo10329b(final int i, final String str, final int i2, final int i3) {
        beg.m7461Zj().m7450c(new bed(bem.LOW, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.anb.8
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                ArrayList arrayList = new ArrayList();
                arrayList.add(3);
                arrayList.add(Integer.valueOf(i3));
                if (i3 == 2) {
                    arrayList.add(Integer.valueOf(i2));
                } else {
                    arrayList.add("");
                }
                arrayList.add(Integer.valueOf(i));
                arrayList.add(str);
                ady.m12308tK().mo1748a(100613, 0, (List<Object>) arrayList, true);
            }
        }));
    }

    @Override // com.kingroot.kinguser.anc
    /* renamed from: J */
    public void mo10335J(final int i, final String str) {
        beg.m7461Zj().m7450c(new bed(bem.LOW, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.anb.9
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                ArrayList arrayList = new ArrayList();
                arrayList.add(4);
                arrayList.add("");
                arrayList.add("");
                arrayList.add(Integer.valueOf(i));
                arrayList.add(str);
                ady.m12308tK().mo1748a(100613, 0, (List<Object>) arrayList, true);
            }
        }));
    }

    @Override // com.kingroot.kinguser.anc
    /* renamed from: a */
    public void mo10332a(final int i, final String str, final int i2, final String str2) {
        beg.m7461Zj().m7450c(new bed(bem.LOW, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.anb.10
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                ArrayList arrayList = new ArrayList();
                boolean isRootPermition = abc.m12845qK().isRootPermition();
                arrayList.add(5);
                arrayList.add("");
                arrayList.add(Integer.valueOf(i2));
                arrayList.add(Integer.valueOf(i));
                arrayList.add(str);
                arrayList.add(Boolean.valueOf(isRootPermition));
                arrayList.add(aab.m13016dH(str2));
                ady.m12308tK().mo1748a(100613, 0, (List<Object>) arrayList, true);
            }
        }));
    }

    @Override // com.kingroot.kinguser.anc
    /* renamed from: K */
    public void mo10334K(final int i, final String str) {
        beg.m7461Zj().m7450c(new bed(bem.LOW, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.anb.11
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                ArrayList arrayList = new ArrayList();
                arrayList.add(6);
                arrayList.add("");
                arrayList.add("");
                arrayList.add(Integer.valueOf(i));
                arrayList.add(str);
                ady.m12308tK().mo1748a(100613, 0, (List<Object>) arrayList, true);
            }
        }));
    }

    @Override // com.kingroot.kinguser.anc
    /* renamed from: L */
    public void mo10333L(final int i, final String str) {
        beg.m7461Zj().m7450c(new bed(bem.LOW, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.anb.12
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                ArrayList arrayList = new ArrayList();
                arrayList.add(7);
                arrayList.add("");
                arrayList.add("");
                arrayList.add(Integer.valueOf(i));
                arrayList.add(str);
                ady.m12308tK().mo1748a(100613, 0, (List<Object>) arrayList, true);
            }
        }));
    }

    @Override // com.kingroot.kinguser.anc
    /* renamed from: a */
    public void mo10331a(@NonNull final ReportInfo reportInfo, final int i) {
        if (reportInfo == null) {
            C3954zj.m1308c("ERROR: reportAppInfo ReportInfo is null");
        }
        beg.m7461Zj().m7450c(new bed(bem.LOW, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.anb.3
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                AppInfo m10345a = anb.this.m10345a(reportInfo);
                ArrayList arrayList = new ArrayList();
                bux buxVar = new bux();
                buxVar.appInfo = m10345a;
                buxVar.bON = i;
                arrayList.add(buxVar);
                btx.aid().m5499a(arrayList, new bug() { // from class: com.kingroot.kinguser.anb.3.1
                    @Override // com.kingroot.kinguser.bug
                    /* renamed from: fD */
                    public void mo5488fD(int i2) {
                        if (i2 == 0) {
                            anb.this.m10349IQ();
                        } else {
                            anb.this.m10342b(reportInfo, i);
                        }
                    }
                });
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: IQ */
    public void m10349IQ() {
        synchronized (this.aAb) {
            if (this.aAa.m10475HR().size() != 0 || this.aAb.m10475HR().size() != 0) {
                beg.m7461Zj().m7450c(this.aAc);
            }
        }
    }

    @Override // com.kingroot.kinguser.anc
    /* renamed from: a */
    public void mo10330a(String str, int i, @NonNull ReportInfo reportInfo) {
        if (reportInfo == null) {
            C3954zj.m1308c("ERROR: [saveBusinessAppExposure] reportAppInfo ReportInfo is null");
        } else {
            m10344a(str, i, new ReportInfo(reportInfo), 40);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    /* renamed from: a */
    public AppInfo m10345a(@NonNull ReportInfo reportInfo) {
        AppInfo appInfo = new AppInfo();
        appInfo.categoryid = reportInfo.categoryid;
        appInfo.bOr = buv.ain();
        appInfo.channelId = reportInfo.channelId;
        appInfo.strExtend = reportInfo.strExtend;
        appInfo.businessType = reportInfo.businessType;
        appInfo.busiData = reportInfo.businessData;
        appInfo.transData = reportInfo.transData;
        appInfo.pkgName = reportInfo.pkgName;
        appInfo.appName = reportInfo.appName;
        appInfo.newVersion = reportInfo.newVersion;
        appInfo.newVersionCode = reportInfo.newVersionCode;
        appInfo.fileUrl = reportInfo.fileUrl;
        appInfo.mSize = reportInfo.size;
        appInfo.bOs = reportInfo.errorMsg;
        return appInfo;
    }

    /* renamed from: a */
    private void m10344a(final String str, final int i, @NonNull final ReportInfo reportInfo, final int i2) {
        beg.m7461Zj().m7450c(new bed(bem.LOW, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.anb.5
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                ConcurrentHashMap concurrentHashMap;
                ConcurrentHashMap concurrentHashMap2;
                if (i2 != 40 || i == -1) {
                    synchronized (anb.this.aAa) {
                        ArrayList arrayList = (ArrayList) ((ConcurrentHashMap) anb.this.aAa.m10475HR()).get(reportInfo);
                        if (arrayList == null) {
                            ArrayList arrayList2 = new ArrayList();
                            ((ConcurrentHashMap) anb.this.aAa.m10475HR()).put(reportInfo, arrayList2);
                            arrayList = arrayList2;
                        }
                        arrayList.add(Integer.valueOf(i2));
                        anb.this.aAa.m10473HT();
                    }
                    return;
                }
                synchronized (anb.this.aAb) {
                    ConcurrentHashMap concurrentHashMap3 = (ConcurrentHashMap) anb.this.aAb.m10475HR();
                    ConcurrentHashMap concurrentHashMap4 = (ConcurrentHashMap) concurrentHashMap3.get(str);
                    if (concurrentHashMap4 == null) {
                        ConcurrentHashMap concurrentHashMap5 = new ConcurrentHashMap();
                        concurrentHashMap3.put(str, concurrentHashMap5);
                        concurrentHashMap = concurrentHashMap5;
                    } else {
                        concurrentHashMap = concurrentHashMap4;
                    }
                    String str2 = i + reportInfo.pkgName;
                    if (!concurrentHashMap.containsKey(str2)) {
                        concurrentHashMap.put(str2, reportInfo);
                        String aby = bge.abw().aby();
                        for (String str3 : concurrentHashMap3.keySet()) {
                            if (!TextUtils.equals(aby, str3) && (concurrentHashMap2 = (ConcurrentHashMap) concurrentHashMap3.get(str3)) != null) {
                                for (String str4 : concurrentHashMap2.keySet()) {
                                    ReportInfo reportInfo2 = (ReportInfo) concurrentHashMap2.get(str4);
                                    if (reportInfo2 != null && reportInfo2.hadReportedForExposure) {
                                        concurrentHashMap2.remove(str4);
                                    }
                                }
                                if (concurrentHashMap2.size() == 0) {
                                    concurrentHashMap3.remove(str3);
                                }
                            }
                        }
                        for (String str5 : concurrentHashMap.keySet()) {
                            if (!str5.contains(String.valueOf(i)) && ((ReportInfo) concurrentHashMap.get(str5)).hadReportedForExposure) {
                                concurrentHashMap.remove(str5);
                            }
                        }
                        anb.this.aAb.m10473HT();
                    }
                }
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m10342b(@NonNull ReportInfo reportInfo, int i) {
        m10344a("", -1, reportInfo, i);
    }
}
