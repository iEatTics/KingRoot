package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.kingroot.kinguser.C3956zk;
import com.kingroot.kinguser.net.commoncloudlist.RiskControlInfo;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.LinkedBlockingQueue;
/* loaded from: classes.dex */
public class afj extends AbstractC3634th {
    private static final C0815a ahJ = new C0815a();

    @Override // com.kingroot.kinguser.AbstractC3634th
    public void onReceive(Context context, final Intent intent) {
        if (intent != null) {
            C3956zk.m1302a(new C3956zk.InterfaceC3957a<Object>() { // from class: com.kingroot.kinguser.afj.1
                @Override // com.kingroot.kinguser.C3956zk.InterfaceC3957a
                public Object execute(List<Object> list) {
                    Uri data;
                    if ("android.intent.action.PACKAGE_REMOVED".equals(intent.getAction()) && !intent.getBooleanExtra("android.intent.extra.REPLACING", false) && (data = intent.getData()) != null) {
                        String schemeSpecificPart = data.getSchemeSpecificPart();
                        if (!TextUtils.isEmpty(schemeSpecificPart)) {
                            afj.ahJ.m12063ff(schemeSpecificPart);
                            afj.ahJ.m1530ny();
                        }
                    }
                    return null;
                }
            }, new Object[0]);
        }
    }

    /* renamed from: com.kingroot.kinguser.afj$a */
    /* loaded from: classes.dex */
    static class C0815a extends RunnableC3845wo {
        private LinkedBlockingQueue<String> ahL;

        private C0815a() {
            this.ahL = new LinkedBlockingQueue<>();
        }

        @Override // com.kingroot.kinguser.RunnableC3845wo, java.lang.Runnable
        public void run() {
            String take;
            while (true) {
                try {
                    take = this.ahL.take();
                } catch (InterruptedException e) {
                }
                if (take != null && !TextUtils.isEmpty(take)) {
                    HashSet hashSet = new HashSet();
                    boolean z = aks.m11143BP().m10986Eq() != 0;
                    List<String> allRiskApps = arv.m9499Nz().getAllRiskApps();
                    if (z) {
                        hashSet.addAll(allRiskApps);
                    }
                    for (RiskControlInfo riskControlInfo : awc.m8697SB().m8688hn(-1)) {
                        hashSet.add(riskControlInfo.packageName);
                    }
                    if (!C3942yy.m1352c(hashSet) && hashSet.contains(take)) {
                        asj.m9462NU();
                    }
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(take);
                    arv.m9499Nz().removeAppInfos(arrayList);
                    awb.m8706Sy().removeAppInfos(arrayList);
                } else {
                    return;
                }
            }
        }

        /* renamed from: ff */
        public boolean m12063ff(String str) {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            try {
                this.ahL.put(str);
                return true;
            } catch (InterruptedException e) {
                return false;
            }
        }
    }
}
