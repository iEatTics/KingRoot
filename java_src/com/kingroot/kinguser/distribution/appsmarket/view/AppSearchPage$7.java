package com.kingroot.kinguser.distribution.appsmarket.view;

import com.kingroot.kinguser.C3953zi;
import com.kingroot.kinguser.C3954zj;
import com.kingroot.kinguser.alv;
import com.kingroot.kinguser.amz;
import com.kingroot.kinguser.anq;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDownLoadModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AvailUpdateInfo;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppHistoryListener;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.IRequestAvailUpdateListener;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.ISearchAppsListener;
import com.kingroot.kinguses.R;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class AppSearchPage$7 extends ISearchAppsListener.Stub {
    final /* synthetic */ anq this$0;

    public AppSearchPage$7(anq anqVar) {
        this.this$0 = anqVar;
    }

    @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.ISearchAppsListener
    public void onReceive(int i, String str, int i2, int i3, int i4, final List<AppBaseModel> list) {
        int i5;
        C3953zi c3953zi;
        if (i != 0) {
            c3953zi = this.this$0.aDg;
            C3954zj.m1307c(c3953zi.getString(R.string.app_search_net_error), 0);
        } else {
            anq anqVar = this.this$0;
            i5 = this.this$0.aDc;
            anqVar.aDc = i5 + 30;
        }
        amz.m10365II().m10362a(new ILoadAppHistoryListener.Stub() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppSearchPage$7.1
            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppHistoryListener
            public void onComplete(List<AppDownLoadModel> list2) {
                ArrayList arrayList = new ArrayList();
                for (AppDownLoadModel appDownLoadModel : list2) {
                    arrayList.add(appDownLoadModel.pkgName);
                }
                AppSearchPage$7.this.this$0.m10125d(list, arrayList);
                alv.m10524Hq().mo10409a(new IRequestAvailUpdateListener.Stub() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppSearchPage.7.1.1
                    @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.IRequestAvailUpdateListener
                    public void onFetchResult(List<AvailUpdateInfo> list3, boolean z) {
                        List m10123e;
                        m10123e = AppSearchPage$7.this.this$0.m10123e(list3, list);
                        synchronized (AppSearchPage$7.this.this$0.aDf) {
                            AppSearchPage$7.this.this$0.aDf.addAll(m10123e);
                        }
                        AppSearchPage$7.this.this$0.m10146JA();
                    }

                    @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.IRequestAvailUpdateListener
                    public void onFetchDiffResult(List<AvailUpdateInfo> list3, boolean z) {
                    }
                });
            }
        });
    }
}
