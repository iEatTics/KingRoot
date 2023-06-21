package com.kingroot.kinguser;

import android.content.Context;
import com.tencent.securemodule.api.AppInfo;
import com.tencent.securemodule.api.QScanResultEntity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import sm.C4401am;
import sm.C4403ao;
import sm.C4404ap;
import sm.C4405aq;
import sm.C4406ar;
import sm.C4407as;
/* loaded from: classes.dex */
public class ccv {

    /* renamed from: a */
    private Context f2254a;

    public ccv(Context context) {
        this.f2254a = context;
    }

    /* renamed from: a */
    private static C4403ao m4889a(Context context, AppInfo appInfo, int i) {
        if (appInfo == null) {
            return null;
        }
        C4403ao c4403ao = new C4403ao();
        c4403ao.f5374a = i;
        c4403ao.f5375b = null;
        c4403ao.f5376c = appInfo.pkgName;
        c4403ao.f5377d = cdf.m4855a(appInfo.certMd5);
        List<byte[]> m4866g = appInfo.isUnInstalledApk ? cdb.m4866g(context, appInfo.apkPath, 5) : cdb.m4867f(context, appInfo.pkgName, 5);
        if (m4866g != null && m4866g.size() > 1) {
            c4403ao.f5392s = new ArrayList<>();
            for (byte[] bArr : m4866g) {
                c4403ao.f5392s.add(bArr);
            }
        }
        c4403ao.f5378e = appInfo.fileSize;
        c4403ao.f5379f = appInfo.softName;
        c4403ao.f5380g = appInfo.versionCode;
        c4403ao.f5381h = appInfo.versionName;
        c4403ao.f5382i = 0;
        if (appInfo.appType == 1) {
            c4403ao.f5382i |= 1;
        }
        c4403ao.f5382i |= 2;
        if (!appInfo.apkPath.startsWith("/data") && !appInfo.apkPath.startsWith("/system")) {
            c4403ao.f5382i |= 4;
        }
        c4403ao.f5383j = cdb.m4869al(appInfo.apkPath);
        c4403ao.f5384k = 0;
        c4403ao.f5385l = 0;
        c4403ao.f5386m = 0;
        c4403ao.f5387n = null;
        c4403ao.f5388o = 0;
        c4403ao.f5389p = false;
        c4403ao.f5390q = 0;
        c4403ao.f5391r = 0;
        return c4403ao;
    }

    /* renamed from: a */
    private void m4886a(List<AppInfo> list, C4406ar c4406ar, List<AppInfo> list2, List<AppInfo> list3) {
        C4407as c4407as;
        if (list2 == null || list3 == null) {
            cdo.m4818a("CloudScanEngine", "[virus_scan]correctNativeResults(), unknowAppInfos == null || unknowAppInfos == null");
        } else if (list == null || c4406ar == null) {
            cdo.m4818a("CloudScanEngine", "[virus_scan]correctNativeResults(), appInfos == null || resp == null");
        } else {
            ArrayList<C4405aq> arrayList = c4406ar.f5421a;
            Map<Integer, C4407as> map = c4406ar.f5422b;
            if (arrayList == null || arrayList.size() == 0) {
                cdo.m4818a("CloudScanEngine", "[virus_scan]correctNativeResults(), rspApkInfoList: " + (arrayList == null ? "null" : "empty"));
                return;
            }
            int size = list.size();
            Iterator<C4405aq> it = arrayList.iterator();
            while (it.hasNext()) {
                C4405aq next = it.next();
                if (next != null && next.f5402b != 0) {
                    if (next.f5401a >= size) {
                        cdo.m4818a("CloudScanEngine", "[virus_scan]correctNativeResults(), invalid: rspApkInfo.nRefSeqNo >= nativeCount: " + next.f5401a + " " + size);
                    } else {
                        QScanResultEntity qScanResultEntity = new QScanResultEntity();
                        AppInfo appInfo = list.get(next.f5401a);
                        appInfo.scanResultEntity = qScanResultEntity;
                        if (next.f5402b == 4) {
                            cdo.m4816d("CloudScanEngine", "[virus_scan][checked] unknow: " + appInfo.pkgName + " " + appInfo.softName);
                            list3.add(appInfo);
                        } else {
                            cdo.m4816d("CloudScanEngine", "[virus_scan][checked] risk: " + appInfo.pkgName + " " + appInfo.softName);
                            list2.add(appInfo);
                        }
                        qScanResultEntity.safeLevel = next.f5402b;
                        qScanResultEntity.virusId = next.f5403c;
                        qScanResultEntity.category = next.f5404d;
                        if ((next.f5406f & 1) != 0) {
                            qScanResultEntity.isInPayList = true;
                            qScanResultEntity.isInStealAccountList = false;
                        } else {
                            qScanResultEntity.isInPayList = false;
                            if ((next.f5406f & 2) != 0) {
                                qScanResultEntity.isInStealAccountList = true;
                            } else {
                                qScanResultEntity.isInStealAccountList = false;
                            }
                        }
                        qScanResultEntity.product = next.f5408h;
                        qScanResultEntity.official = next.f5409i;
                        if (next.f5403c <= 0) {
                            qScanResultEntity.riskName = next.f5410j;
                            qScanResultEntity.riskDescription = next.f5411k;
                        } else if (map != null && (c4407as = map.get(Integer.valueOf(next.f5403c))) != null) {
                            qScanResultEntity.riskName = c4407as.f5426a;
                            qScanResultEntity.riskDescription = c4407as.f5427b;
                        }
                        qScanResultEntity.officialPkgName = next.f5414n;
                        qScanResultEntity.officialCertMd5 = next.f5415o;
                        qScanResultEntity.safeType = next.f5416p;
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public void m4888a(List<String> list, List<String> list2, ccw ccwVar) {
        m4887a(list, list2, ccwVar, (byte[]) null);
    }

    /* renamed from: a */
    public void m4887a(List<String> list, List<String> list2, ccw ccwVar, byte[] bArr) {
        List<AppInfo> m4863i;
        int i;
        int i2 = 0;
        try {
            Thread.sleep(5000L);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        if (list2 != null && list2.size() > 0) {
            i = 2;
            m4863i = cdb.m4864i(this.f2254a, list2);
        } else if (list == null || list.size() <= 0) {
            m4863i = cdb.m4863i(this.f2254a, true);
            i = 0;
        } else {
            m4863i = cdb.m4865h(this.f2254a, list);
            i = 1;
        }
        if (ccwVar != null) {
            ccwVar.mo403a();
        }
        ArrayList<AppInfo> arrayList = new ArrayList<>();
        ArrayList<AppInfo> arrayList2 = new ArrayList<>();
        if (m4863i == null || m4863i.size() == 0) {
            cdo.m4818a("CloudScanEngine", "appInfos is null or empty: " + m4863i);
            if (ccwVar != null) {
                ccwVar.mo401a(arrayList, arrayList2);
                return;
            }
            return;
        }
        cdo.m4816d("CloudScanEngine", "[virus_scan]cloudCheckV2, appInfos.size(): " + m4863i.size());
        C4401am c4401am = new C4401am();
        c4401am.f5368a = new C4404ap();
        c4401am.f5368a.f5394a = 6;
        c4401am.f5368a.f5395b = ccu.m4891c(this.f2254a, 10051, 1);
        c4401am.f5368a.f5396c = i;
        c4401am.f5368a.f5397d = 0;
        c4401am.f5368a.f5398e = 0;
        c4401am.f5368a.f5399f = null;
        c4401am.f5368a.f5400g = 0;
        c4401am.f5369b = new ArrayList<>();
        while (true) {
            int i3 = i2;
            if (i3 >= m4863i.size()) {
                break;
            }
            c4401am.f5369b.add(m4889a(this.f2254a, m4863i.get(i3), i3));
            i2 = i3 + 1;
        }
        AtomicReference<C4406ar> atomicReference = new AtomicReference<>();
        int m4883a = ccy.akK().m4883a(c4401am, atomicReference);
        if (m4883a == 0) {
            C4406ar c4406ar = atomicReference.get();
            if (c4406ar != null) {
                if (c4406ar.f5421a != null) {
                    m4886a(m4863i, c4406ar, arrayList, arrayList2);
                } else {
                    cdo.m4818a("CloudScanEngine", "[virus_scan]cloudCheckV2, scVirusCheck.vecApkInfo is null, maybe because same as local result!");
                }
            } else if (ccwVar != null) {
                ccwVar.mo402a(m4883a);
            }
        } else if (ccwVar != null) {
            ccwVar.mo402a(m4883a);
        }
        if (ccwVar != null) {
            ccwVar.mo401a(arrayList, arrayList2);
        }
    }
}
