package com.kingroot.kinguser;

import android.app.Activity;
import android.support.annotation.NonNull;
import android.support.annotation.WorkerThread;
import android.text.TextUtils;
import com.kingroot.kinguser.activitys.SilentInstallAppSettingActivity;
import com.kingroot.kinguser.activitys.SilentInstallSettingActivity;
import com.kingroot.kinguser.advance.install.IInjectCallback;
import com.kingroot.kinguser.advance.model.SilentInstallLogInfo;
import com.kingroot.kinguser.agi;
import com.kingroot.kinguser.aks;
import com.kingroot.kinguser.aul;
import com.kingroot.kinguser.auu;
import com.kingroot.kinguser.net.commoncloudlist.RiskControlInfo;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class auu implements aul.InterfaceC1616a {

    /* renamed from: Zu */
    private boolean f1612Zu;
    private final WeakReference<Activity> aRz;
    private aul.InterfaceC1617b aSV;
    private int mCount;
    private final String TAG = "commonSilentInstallPagePresenter";
    private List<agi.C0901c> alI = new ArrayList();
    private IInjectCallback aSW = new IInjectCallback.Stub() { // from class: com.kingroot.kinguser.mvp.presenter.SilentInstallPagePresenter$2
        @Override // com.kingroot.kinguser.advance.install.IInjectCallback
        public void onFinish(int i) {
            boolean z = true;
            boolean z2 = i == 1;
            aul.InterfaceC1617b interfaceC1617b = auu.this.aSV;
            if (!z2 || !aks.m11143BP().m10948Fc()) {
                z = false;
            }
            interfaceC1617b.mo8131cY(z);
        }
    };
    private bed aRB = new bed(bem.IMMEDIATE, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.auu.2
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            auu.this.m8911QU();
            auu.this.aSV.mo8143a(auu.this.mCount, auu.this.f1612Zu, auu.this.f1612Zu);
            if (auu.this.alI.size() > 0) {
                auu.this.aSV.mo8134bm(auu.this.alI);
            } else {
                auu.this.aSV.mo8132cW(auu.this.f1612Zu);
            }
            auu.this.aSV.mo8146Qv();
        }
    });
    private bed aSX = new bed(bem.LOW, bec.Light_Weight, true, new bek() { // from class: com.kingroot.kinguser.auu.3
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            agy.m11867wk().m11866wl();
        }
    });

    public auu(@NonNull Activity activity, @NonNull aul.InterfaceC1617b interfaceC1617b) {
        this.aRz = new WeakReference<>(C3948zd.m1327k(activity));
        this.aSV = (aul.InterfaceC1617b) C3948zd.m1327k(interfaceC1617b);
    }

    @Override // com.kingroot.kinguser.aul.InterfaceC1616a
    /* renamed from: PJ */
    public void mo8912PJ() {
        beg.m7461Zj().m7450c(new bed(bem.IMMEDIATE, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.auu.1
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                auu.this.f1612Zu = aks.m11143BP().m10948Fc() && agt.m11907wb().m11906wc();
                if (auu.this.f1612Zu) {
                    beg.m7461Zj().m7450c(auu.this.aRB);
                    return;
                }
                auu.this.aSV.mo8143a(auu.this.mCount, false, false);
                auu.this.aSV.mo8132cW(false);
            }
        }));
    }

    @Override // com.kingroot.kinguser.aul.InterfaceC1616a
    /* renamed from: cX */
    public void mo8902cX(boolean z) {
        if (!z) {
            this.alI.clear();
            beg.m7461Zj().m7450c(this.aSX);
            aks.m11143BP().m10854bZ(false);
            this.aSV.mo8143a(0, false, false);
            this.aSV.mo8132cW(false);
            return;
        }
        this.aSV.mo8145Qw();
        aks.m11143BP().m10854bZ(true);
        agt.m11907wb().m11908a(this.aSW, true);
    }

    @Override // com.kingroot.kinguser.aul.InterfaceC1616a
    /* renamed from: Qt */
    public void mo8910Qt() {
        SilentInstallSettingActivity.m12590vw();
    }

    @Override // com.kingroot.kinguser.aul.InterfaceC1616a
    /* renamed from: Qu */
    public void mo8909Qu() {
        SilentInstallAppSettingActivity.m12591vw();
    }

    @Override // com.kingroot.kinguser.aul.InterfaceC1616a
    /* renamed from: R */
    public void mo8908R(int i, int i2) {
        agi.C0901c c0901c;
        if (i < this.alI.size() && (c0901c = this.alI.get(i)) != null) {
            c0901c.m11951db(i2);
            agy.m11867wk().m11868p(c0901c.packageName, i2);
            this.aSV.mo8146Qv();
        }
    }

    /* renamed from: a */
    private boolean m8905a(boolean z, @NonNull List<String> list, @NonNull Map<String, RiskControlInfo> map, String str) {
        if (z && list.contains(str)) {
            return true;
        }
        RiskControlInfo riskControlInfo = map.get(str);
        if (riskControlInfo != null) {
            if (TextUtils.isEmpty(riskControlInfo.aUH)) {
                return true;
            }
            String m13016dH = aab.m13016dH(aaz.m12872dZ(str));
            if (!TextUtils.isEmpty(m13016dH) && m13016dH.equalsIgnoreCase(riskControlInfo.aUH)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    /* renamed from: QU */
    public void m8911QU() {
        this.alI.clear();
        Map<String, List<SilentInstallLogInfo>> m11872ai = agy.m11867wk().m11872ai(2592000000L);
        if (!C3942yy.m1349e(m11872ai)) {
            boolean z = aks.m11143BP().m10986Eq() != 0;
            arv m9499Nz = arv.m9499Nz();
            List<String> arrayList = new ArrayList<>();
            if (z) {
                arrayList.addAll(m9499Nz.getAllRiskApps());
            }
            HashMap hashMap = new HashMap();
            for (RiskControlInfo riskControlInfo : awc.m8697SB().m8688hn(16)) {
                hashMap.put(riskControlInfo.packageName, riskControlInfo);
            }
            this.mCount = 0;
            for (String str : m11872ai.keySet()) {
                List<SilentInstallLogInfo> list = m11872ai.get(str);
                this.mCount += list.size();
                this.alI.add(agi.C0901c.m11952a(str, m8905a(z, arrayList, hashMap, str), list));
            }
        }
    }

    @Override // com.kingroot.kinguser.InterfaceC3899xt
    public void start() {
    }

    @Override // com.kingroot.kinguser.InterfaceC3899xt
    public void destroy() {
    }
}
