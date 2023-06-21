package com.kingroot.kinguser.service;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.text.TextUtils;
import com.kingroot.kinguser.C3952zh;
import com.kingroot.kinguser.aaz;
import com.kingroot.kinguser.ady;
import com.kingroot.kinguser.ahl;
import com.kingroot.kinguser.aks;
import com.kingroot.kinguser.bec;
import com.kingroot.kinguser.bed;
import com.kingroot.kinguser.beg;
import com.kingroot.kinguser.bek;
import com.kingroot.kinguser.bem;
import com.kingroot.kinguser.bhe;
import com.kingroot.kinguser.p015ai.fore.IAntiInjectSwitcherOpObserver;
import java.util.HashMap;
/* loaded from: classes.dex */
public class KuCommonService extends Service {
    private HashMap<String, String> bjg = null;
    private bed aXt = new bed(bem.MEDIUM, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.service.KuCommonService.1
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            try {
                aks.m11143BP().m10874bI(false);
                bhe.m7054ec(true);
            } catch (Exception e) {
            }
        }
    });

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        init();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        String str;
        if (aks.m11143BP().m11047Dh()) {
            if (intent != null) {
                int intExtra = intent.getIntExtra("req_type", -1);
                int intExtra2 = intent.getIntExtra("req_CallerUid", -1);
                String[] packagesForUid = C3952zh.m1312pq().getPackagesForUid(intExtra2);
                if (packagesForUid == null || packagesForUid.length <= 0) {
                    str = "";
                } else {
                    str = packagesForUid[0];
                }
                if (intExtra2 != -1 && intExtra != -1) {
                    if (m2270Q(str, intExtra)) {
                        m2267in(intExtra);
                    }
                } else {
                    ady.m12308tK().m12334a(1, str, "", intExtra);
                }
            }
            return super.onStartCommand(intent, i, i2);
        }
        return 0;
    }

    private void init() {
        if (this.bjg == null) {
            this.bjg = new HashMap<>();
        }
        this.bjg.put("com.shuame.rootgenius", "46C5914BCBC8BC0696E9E91CDCEC6FE8");
        this.bjg.put("com.shuame.mobile", "46C5914BCBC8BC0696E9E91CDCEC6FE8");
        this.bjg.put("com.shuame.mobile.tv", "46C5914BCBC8BC0696E9E91CDCEC6FE8");
        this.bjg.put("com.shuame.sprite", "46C5914BCBC8BC0696E9E91CDCEC6FE8");
        this.bjg.put("com.tencent.qqpimsecure", "00B1208638DE0FCD3E920886D658DAF6");
    }

    /* renamed from: in */
    private int m2267in(int i) {
        switch (i) {
            case 1:
                m2268YD();
                break;
            case 2:
                m2269Rs();
                break;
        }
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0043  */
    /* renamed from: Q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean m2270Q(String str, int i) {
        String str2;
        boolean z;
        String str3 = "";
        if (!TextUtils.isEmpty(str) && this.bjg != null) {
            String str4 = this.bjg.get(str);
            if (!TextUtils.isEmpty(str4)) {
                str3 = aaz.m12872dZ(str);
                if (!TextUtils.isEmpty(str3) && str4.equalsIgnoreCase(str3)) {
                    str2 = str3;
                    z = true;
                } else if (TextUtils.isEmpty(str3)) {
                    str2 = str3;
                    z = true;
                }
                ady.m12308tK().m12334a(z ? 0 : 1, str, str2, i);
                return z;
            }
        }
        str2 = str3;
        z = false;
        ady.m12308tK().m12334a(z ? 0 : 1, str, str2, i);
        return z;
    }

    /* renamed from: YD */
    private void m2268YD() {
        beg.m7461Zj().m7450c(this.aXt);
    }

    /* renamed from: Rs */
    private void m2269Rs() {
        beg.m7461Zj().m7450c(new bed(bem.LOW, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.service.KuCommonService.2
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                ahl.m11725xm().m11734a(true, new IAntiInjectSwitcherOpObserver.Stub() { // from class: com.kingroot.kinguser.service.KuCommonService.2.1
                    @Override // com.kingroot.kinguser.p015ai.fore.IAntiInjectSwitcherOpObserver
                    public void onSwitcherOpen(int i) {
                        if (i == 0) {
                            aks.m11143BP().m10746eu(0);
                            aks.m11143BP().m10747et(1);
                            return;
                        }
                        aks.m11143BP().m10747et(0);
                    }

                    @Override // com.kingroot.kinguser.p015ai.fore.IAntiInjectSwitcherOpObserver
                    public void onSwitcherClosed() {
                    }
                });
            }
        }));
    }
}
