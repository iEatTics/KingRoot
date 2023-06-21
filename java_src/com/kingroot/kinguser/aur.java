package com.kingroot.kinguser;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.activitys.AdvancePermActivity;
import com.kingroot.kinguser.activitys.AppDetailActivity;
import com.kingroot.kinguser.activitys.AppDownloadActivity;
import com.kingroot.kinguser.activitys.ExaminationOptDetailActivity;
import com.kingroot.kinguser.activitys.RootProcessActivity;
import com.kingroot.kinguser.activitys.SecurityProtectActivity;
import com.kingroot.kinguser.apx;
import com.kingroot.kinguser.aui;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.IReservateGameResult;
import com.kingroot.kinguser.webview.WebViewActivity;
import com.kingroot.kinguses.R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class aur implements aui.InterfaceC1610a {
    private aui.InterfaceC1611b aRX;
    private apx.InterfaceC1449a aRY;
    private WeakReference<Activity> aRz;
    private boolean aRZ = false;
    private final List<aqh> aSa = Collections.synchronizedList(new ArrayList());
    private bed aSc = new bed(bem.LOW, bec.Light_Weight, true, new bek() { // from class: com.kingroot.kinguser.aur.3
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            aeg.m12265um().mo12196uj();
        }
    });
    private bed aSd = new bed(bem.LOW, bec.Light_Weight, true, new bek() { // from class: com.kingroot.kinguser.aur.4
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            bbc.m7860Wg();
        }
    });
    private final bed aSe = new bed(bem.IMMEDIATE, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.aur.5
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            int i;
            super.run();
            synchronized (aur.this.aSa) {
                aur.this.aSb.m9691Ma();
                List<aqh> m9690Mb = aur.this.aSb.m9690Mb();
                aur.this.aRX.mo8268jk(aur.this.aSb.m9688Md());
                if (aur.this.aSb.m9689Mc()) {
                    aur.this.aRX.mo8280gO(4);
                } else {
                    aur.this.aRX.mo8280gO(2);
                }
                final int i2 = 0;
                for (aqh aqhVar : m9690Mb) {
                    boolean z = false;
                    for (aqh aqhVar2 : aur.this.aSa) {
                        z = TextUtils.equals(aqhVar2.getKey(), aqhVar.getKey()) ? true : z;
                    }
                    if (z) {
                        i = i2;
                    } else {
                        aur.this.aSa.add(aqhVar);
                        i = i2 - aqhVar.mo9576MK();
                    }
                    i2 = i;
                }
                Iterator it = aur.this.aSa.iterator();
                while (it.hasNext()) {
                    aqh aqhVar3 = (aqh) it.next();
                    if (!aqhVar3.mo9575vs()) {
                        aur.this.m9000d(aqhVar3);
                        it.remove();
                        aur.this.m9002c(aqhVar3);
                    } else if (!aqhVar3.mo9529My()) {
                        aur.this.m9002c(aqhVar3);
                    } else {
                        i2 += aqhVar3.mo9576MK();
                        aur.this.m9000d(aqhVar3);
                        it.remove();
                    }
                }
                aur.this.m9003bp(aur.this.aSa);
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.aur.5.1
                    @Override // java.lang.Runnable
                    public void run() {
                        aur.this.aRX.mo8279gP(i2);
                    }
                });
            }
        }
    });
    private bed aRT = new bed(bem.IMMEDIATE, bec.Light_Weight, true, new bek() { // from class: com.kingroot.kinguser.aur.6
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            Activity activity = (Activity) aur.this.aRz.get();
            if (activity != null) {
                try {
                    Intent intent = new Intent();
                    intent.setClass(activity, RootProcessActivity.class);
                    intent.putExtra("root_process_state", 3);
                    activity.startActivity(intent);
                    activity.finish();
                } catch (Exception e) {
                }
            }
        }
    });
    private apx aSb = new apx();

    public aur(@NonNull aui.InterfaceC1611b interfaceC1611b, Activity activity, apx.InterfaceC1449a interfaceC1449a) {
        this.aRX = (aui.InterfaceC1611b) C3948zd.m1327k(interfaceC1611b);
        this.aRz = new WeakReference<>(C3948zd.m1327k(activity));
        this.aRY = interfaceC1449a;
        this.aSb.m9685a(this.aRY);
    }

    @Override // com.kingroot.kinguser.aui.InterfaceC1610a
    /* renamed from: Qa */
    public void mo9022Qa() {
        if (RunnableC3845wo.m1529nz() != 0) {
            C3671tw.m2104aU(RunnableC3845wo.m1529nz());
        }
    }

    @Override // com.kingroot.kinguser.aui.InterfaceC1610a
    /* renamed from: Qb */
    public void mo9021Qb() {
        beg.m7461Zj().m7450c(this.aSc);
    }

    @Override // com.kingroot.kinguser.aui.InterfaceC1610a
    /* renamed from: gL */
    public void mo8997gL(int i) {
        this.aSb.m9676bU(i);
    }

    @Override // com.kingroot.kinguser.aui.InterfaceC1610a
    /* renamed from: Mc */
    public boolean mo9028Mc() {
        return this.aSb.m9689Mc();
    }

    @Override // com.kingroot.kinguser.aui.InterfaceC1610a
    /* renamed from: gM */
    public void mo8996gM(int i) {
        m9024QI();
        this.aSb.m9677bT(i);
    }

    @Override // com.kingroot.kinguser.aui.InterfaceC1610a
    /* renamed from: LY */
    public void mo9029LY() {
        this.aSb.m9693LY();
    }

    @Override // com.kingroot.kinguser.InterfaceC3899xt
    public void start() {
        acp.add(this);
        ajv.m11387zD().m11385zF();
    }

    @Override // com.kingroot.kinguser.InterfaceC3899xt
    public void destroy() {
    }

    @Override // com.kingroot.kinguser.aui.InterfaceC1610a
    /* renamed from: a */
    public void mo9009a(final String str, long j, final int i, final int i2) {
        C3840wl.m1551c(new Runnable() { // from class: com.kingroot.kinguser.aur.1
            @Override // java.lang.Runnable
            public void run() {
                Activity activity = (Activity) aur.this.aRz.get();
                if (activity != null) {
                    Intent intent = new Intent(activity, ExaminationOptDetailActivity.class);
                    intent.putExtra("opt.detail.score", i);
                    intent.putExtra("opt.detail.status", str);
                    activity.startActivityForResult(intent, i2);
                    activity.overridePendingTransition(R.anim.slide_right_in, R.anim.slide_left_out);
                }
            }
        }, j);
    }

    @Override // com.kingroot.kinguser.aui.InterfaceC1610a
    /* renamed from: g */
    public void mo8998g(final String str, final int i, final int i2) {
        C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.aur.2
            @Override // java.lang.Runnable
            public void run() {
                Activity activity = (Activity) aur.this.aRz.get();
                if (activity != null) {
                    Intent intent = new Intent(activity, ExaminationOptDetailActivity.class);
                    intent.putExtra("opt.detail.score", i);
                    intent.putExtra("opt.detail.status", str);
                    activity.startActivityForResult(intent, i2);
                }
            }
        });
    }

    @Override // com.kingroot.kinguser.aui.InterfaceC1610a
    /* renamed from: LV */
    public int mo9031LV() {
        return this.aSb.m9696LV();
    }

    @Override // com.kingroot.kinguser.aui.InterfaceC1610a
    /* renamed from: LW */
    public int mo9030LW() {
        return this.aSb.m9695LW();
    }

    @Override // com.kingroot.kinguser.aui.InterfaceC1610a
    /* renamed from: Qc */
    public void mo9020Qc() {
        adm.m12480st().m12501cy(15);
        adm.m12480st().m12476sx();
    }

    @Override // com.kingroot.kinguser.aui.InterfaceC1610a
    /* renamed from: a */
    public void mo9014a(aqb aqbVar) {
        apd.m9837an(((aqk) aqbVar).m9584KM(), "Optimi");
    }

    /* renamed from: QH */
    public boolean m9025QH() {
        if (aks.m11143BP().m11034Du()) {
            aiu aiuVar = new aiu();
            List<String> m11555yu = aiuVar.m11555yu();
            boolean z = (m11555yu == null || m11555yu.size() <= 0 || aiuVar.m11557gh(m11555yu.get(0))) ? false : true;
            aks.m11143BP().m10880bF(false);
            return z;
        }
        return false;
    }

    @Override // com.kingroot.kinguser.aui.InterfaceC1610a
    /* renamed from: Qd */
    public void mo9019Qd() {
        Activity activity = this.aRz.get();
        if (activity != null) {
            boolean z = false;
            boolean m11522yz = aiv.m11525yw().m11522yz();
            String m11096Ck = aks.m11143BP().m11096Ck();
            String m13435ij = KApplication.m13435ij();
            if (!m11096Ck.equals(m13435ij)) {
                aks.m11143BP().m10740gX(m13435ij);
                aks.m11143BP().m10881bF(System.currentTimeMillis());
                z = true;
            }
            if (m11522yz || z) {
                aeg.m12265um().m12266a(activity);
                aih.m11645xI().m11646aK(true);
                aiv.m11525yw().m11526yD();
                ain.m11609xW().m11608xX();
            }
            if (m9025QH()) {
                this.aRX.mo8317Qi();
            }
            beg.m7461Zj().m7450c(this.aSd);
        }
    }

    @Override // com.kingroot.kinguser.aui.InterfaceC1610a
    /* renamed from: Qe */
    public void mo9018Qe() {
        Activity activity = this.aRz.get();
        if (activity != null) {
            SecurityProtectActivity.m12607aL(activity);
        }
    }

    @Override // com.kingroot.kinguser.aui.InterfaceC1610a
    /* renamed from: Qf */
    public void mo9017Qf() {
        Activity activity = this.aRz.get();
        if (activity != null) {
            ady.m12308tK().mo1746bi(100477);
            AdvancePermActivity.m12650aL(activity);
        }
    }

    @Override // com.kingroot.kinguser.aui.InterfaceC1610a
    /* renamed from: Qg */
    public void mo9016Qg() {
        beg.m7461Zj().m7450c(this.aSe);
    }

    @Override // com.kingroot.kinguser.aui.InterfaceC1610a
    /* renamed from: b */
    public void mo9006b(aqh aqhVar) {
        synchronized (this.aSa) {
            if (!this.aSa.contains(aqhVar)) {
                this.aSa.add(aqhVar);
            }
        }
    }

    /* renamed from: QI */
    public void m9024QI() {
        this.aSa.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m9002c(aqh aqhVar) {
        if (aqhVar instanceof aqi) {
            m9007b(axm.m8297b(aqhVar));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public void m9000d(aqh aqhVar) {
        List<aqc> m9603MA = aqd.m9603MA();
        Iterator<aqc> it = m9603MA.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            } else if (TextUtils.equals(it.next().aKZ.getKey(), aqhVar.getKey())) {
                it.remove();
                break;
            }
        }
        aqd.m9599ba(m9603MA);
    }

    /* renamed from: b */
    private void m9007b(aqc aqcVar) {
        if (aqcVar != null) {
            for (aqc aqcVar2 : C3942yy.m1350e(aqd.m9603MA())) {
                if (aqc.m9610a(aqcVar2, aqcVar)) {
                    aqcVar2.m9604e(aqcVar);
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: bp */
    public void m9003bp(List<aqh> list) {
        if (list != null) {
            List<aqc> m9603MA = aqd.m9603MA();
            Iterator<aqc> it = m9603MA.iterator();
            while (it.hasNext()) {
                aqc next = it.next();
                if (next.type == 0 || next.type == 3) {
                    it.remove();
                }
            }
            Collections.sort(list, new aqo());
            Collections.reverse(list);
            ArrayList arrayList = new ArrayList();
            for (aqh aqhVar : list) {
                arrayList.add(axm.m8297b(aqhVar));
            }
            arrayList.addAll(m9603MA);
            aqd.m9599ba(arrayList);
        }
    }

    @Override // com.kingroot.kinguser.aui.InterfaceC1610a
    /* renamed from: Me */
    public int mo9027Me() {
        return this.aSb.m9687Me();
    }

    @Override // com.kingroot.kinguser.aui.InterfaceC1610a
    /* renamed from: gN */
    public void mo8995gN(int i) {
        switch (i) {
            case 11:
                ady.m12308tK().mo1746bi(100535);
                m8994gU(R.string.root_state_badge_desc_unroot);
                return;
            case 12:
                ady.m12308tK().mo1746bi(100536);
                m8994gU(R.string.root_state_badge_desc_root_exception);
                return;
            case 13:
                ady.m12308tK().mo1746bi(100537);
                m8993gV(R.string.root_state_badge_desc_rooted);
                return;
            case 14:
                ady.m12308tK().mo1746bi(100538);
                m8993gV(R.string.root_state_badge_desc_fixed_root);
                return;
            default:
                this.aRX.mo8290cP(true);
                return;
        }
    }

    /* renamed from: gU */
    private void m8994gU(int i) {
        boolean m9023QJ = m9023QJ();
        m9008b(i, m9023QJ, false);
        if (m9023QJ) {
            aks.m11143BP().m10885bD(System.currentTimeMillis());
        }
    }

    /* renamed from: gV */
    private void m8993gV(int i) {
        m9008b(i, !this.aRZ, true);
        if (!this.aRZ) {
            this.aRZ = true;
        }
    }

    /* renamed from: b */
    private void m9008b(int i, boolean z, boolean z2) {
        if (z) {
            this.aRX.mo8323D(C3953zi.m1311pr().getString(i), z2);
        } else {
            this.aRX.mo8290cP(z2);
        }
    }

    /* renamed from: QJ */
    private boolean m9023QJ() {
        return Math.abs(System.currentTimeMillis() - aks.m11143BP().m10976FA()) >= 172800000;
    }

    @Override // com.kingroot.kinguser.aui.InterfaceC1610a
    /* renamed from: PX */
    public boolean mo9026PX() {
        if (this.aRT.isRunning()) {
            return false;
        }
        beg.m7461Zj().m7450c(this.aRT);
        return true;
    }

    @Override // com.kingroot.kinguser.aui.InterfaceC1610a
    /* renamed from: Qh */
    public void mo9015Qh() {
        AppBaseModel m10544He;
        if (anf.m10297IU() && (m10544He = alr.m10545Hd().m10544He()) != null) {
            this.aRX.mo8263n(m10544He);
        }
    }

    @Override // com.kingroot.kinguser.aui.InterfaceC1610a
    /* renamed from: a */
    public void mo9010a(AppBaseModel appBaseModel, Context context) {
        switch (appBaseModel.jumptype) {
            case 1:
                AppDetailActivity.m12647a(context, appBaseModel);
                break;
            case 2:
                AppDownloadActivity.m12644c(context, "", appBaseModel.destCategoryId);
                break;
            case 3:
                WebViewActivity.m1566g(context, appBaseModel.jumpUrl4Banner, "");
                break;
            case 4:
                alq.m10547GY().mo10423a(appBaseModel.reservationEntity.activityId, appBaseModel.pkgName, "", "", new IReservateGameResult.Stub() { // from class: com.kingroot.kinguser.mvp.presenter.MainPagePresenter$6
                    @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.IReservateGameResult
                    public void onResult(boolean z, String str, String str2, String str3, String str4) {
                    }
                });
                WebViewActivity.m1566g(context, appBaseModel.jumpUrl4Banner, appBaseModel.appName);
                break;
        }
        ady.m12308tK().mo1746bi(100707);
    }
}
