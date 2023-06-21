package com.kingroot.kinguser;

import android.content.Context;
import com.kingroot.kinguser.ans;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.IOnWifiAutoDownloadListener;
import java.util.List;
/* loaded from: classes.dex */
public abstract class ans extends AbstractC3922ym {
    private IOnWifiAutoDownloadListener.Stub aDx;

    /* renamed from: ah */
    public abstract void mo8482ah(List<String> list);

    public ans(Context context) {
        super(context);
        this.aDx = new IOnWifiAutoDownloadListener.Stub() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppsMarketBasePage$1
            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.IOnWifiAutoDownloadListener
            public void onTriggerWifiAutoDownload(List<String> list) {
                ans.this.mo8482ah(list);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onResume() {
        amz.m10365II().m10357b(this.aDx);
        super.onResume();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onStop() {
        amz.m10365II().m10360a(this.aDx);
        super.onStop();
    }
}
