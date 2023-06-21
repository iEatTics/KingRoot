package com.kingroot.kinguser;

import android.app.Activity;
import com.kingroot.kinguser.activitys.AppsMarketMainActivity;
import com.kingroot.kinguser.aug;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDownLoadModel;
import com.kingroot.kinguser.distribution.net.download.AppDownloadRequest;
import java.util.List;
/* loaded from: classes.dex */
public class aup implements aug.InterfaceC1607a {
    private static final String TAG = aiq.arY + "_AppsMarketWellChosenAppsPresenter";
    private final anp aRL;
    private int mType = 0;

    public aup(anp anpVar) {
        this.aRL = anpVar;
    }

    @Override // com.kingroot.kinguser.InterfaceC3899xt
    public void start() {
    }

    @Override // com.kingroot.kinguser.InterfaceC3899xt
    public void destroy() {
    }

    @Override // com.kingroot.kinguser.aug.InterfaceC1607a
    /* renamed from: PU */
    public void mo9054PU() {
        beg.m7461Zj().m7450c(new bed(bem.IMMEDIATE, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.aup.1
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                aup.this.aRL.m10157aH(alx.m10508HB().mo10403fj(aup.this.mType));
            }
        }));
    }

    @Override // com.kingroot.kinguser.aug.InterfaceC1607a
    /* renamed from: k */
    public void mo9048k(Activity activity) {
        AppsMarketMainActivity.m12637aL(activity);
    }

    @Override // com.kingroot.kinguser.aug.InterfaceC1607a
    /* renamed from: bk */
    public void mo9051bk(List<AppDownLoadModel> list) {
        alx.m10508HB().mo10405ax(list);
    }

    @Override // com.kingroot.kinguser.aug.InterfaceC1607a
    /* renamed from: bl */
    public void mo9050bl(List<AppDownLoadModel> list) {
        for (AppDownLoadModel appDownLoadModel : list) {
            amz.m10365II().m10359a(AppDownloadRequest.m4059j(appDownLoadModel), 1, null, true, null);
        }
    }

    @Override // com.kingroot.kinguser.aug.InterfaceC1607a
    /* renamed from: gK */
    public void mo9049gK(int i) {
        this.mType = i;
    }
}
