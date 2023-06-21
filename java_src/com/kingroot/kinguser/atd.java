package com.kingroot.kinguser;

import android.app.ActivityManager;
import android.content.Intent;
import android.text.TextUtils;
import com.kingroot.kinguser.bed;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class atd {
    private static bed aNK = new bed(bem.IMMEDIATE, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.atd.1
        @Override // com.kingroot.kinguser.bek
        /* renamed from: a */
        public void mo1208a(bed.InterfaceC2117a interfaceC2117a) {
            super.mo1208a(interfaceC2117a);
            if (interfaceC2117a.mo7445nF() != null && interfaceC2117a.mo7445nF().size() != 0) {
                Object obj = interfaceC2117a.mo7445nF().get(0);
                if (obj instanceof String) {
                    String str = (String) obj;
                    ArrayList<String> arrayList = new ArrayList<>();
                    arrayList.add("5010004");
                    arrayList.add("5010006");
                    List<AppBaseModel> m9334s = asx.m9338OK().m9334s(arrayList);
                    if (!C3942yy.m1351d(m9334s)) {
                        for (AppBaseModel appBaseModel : m9334s) {
                            if (appBaseModel != null && !TextUtils.isEmpty(appBaseModel.pkgName) && appBaseModel.pkgName.equals(str)) {
                                aks m11143BP = aks.m11143BP();
                                if (m11143BP.m10735hb(str)) {
                                    ady.m12308tK().m12317eK(str);
                                    m11143BP.m10715y(str, false);
                                }
                                m11143BP.m10733hd(appBaseModel.pkgName);
                            }
                        }
                    }
                }
            }
        }
    });
    private static bed aNL = new bed(bem.IMMEDIATE, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.atd.2
        @Override // com.kingroot.kinguser.bek
        /* renamed from: a */
        public void mo1208a(bed.InterfaceC2117a interfaceC2117a) {
            super.mo1208a(interfaceC2117a);
            if (interfaceC2117a.mo7445nF() != null && interfaceC2117a.mo7445nF().size() != 0) {
                Object obj = interfaceC2117a.mo7445nF().get(0);
                if (obj instanceof String) {
                    String str = (String) obj;
                    List<String> m9349OH = asw.m9349OH();
                    if (!C3942yy.m1351d(m9349OH) && m9349OH.contains(str)) {
                        long m10734hc = aks.m11143BP().m10734hc(str);
                        if (m10734hc != 0) {
                            ady.m12308tK().m12310h(str, System.currentTimeMillis() - m10734hc);
                            aks.m11143BP().m10718n(str, 0L);
                        }
                    }
                }
            }
        }
    });

    /* renamed from: OU */
    public static List<C2037b> m9308OU() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(ady.m12308tK().m12300tS());
        arrayList.addAll(ady.m12308tK().m12299tT());
        return arrayList;
    }

    /* renamed from: m */
    public static void m9307m(Intent intent) {
        if (intent != null) {
            ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) intent.getParcelableExtra("app_info");
            ActivityManager.RunningTaskInfo runningTaskInfo2 = (ActivityManager.RunningTaskInfo) intent.getParcelableExtra("last_app");
            if (runningTaskInfo != null) {
                String packageName = runningTaskInfo.topActivity.getPackageName();
                ArrayList arrayList = new ArrayList();
                arrayList.add(packageName);
                beg.m7461Zj().m7456a(aNK, arrayList);
            }
            if (runningTaskInfo2 != null) {
                String packageName2 = runningTaskInfo2.topActivity.getPackageName();
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(packageName2);
                beg.m7461Zj().m7456a(aNL, arrayList2);
            }
        }
    }
}
