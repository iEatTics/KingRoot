package com.kingroot.kinguser.distribution.appsmarket.view;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.kingroot.kinguser.C3840wl;
import com.kingroot.kinguser.ank;
import com.kingroot.kinguser.apv;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDetailModel;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppsDetailListener;
/* loaded from: classes.dex */
public class AppDetailPage$7 extends ILoadAppsDetailListener.Stub {
    final /* synthetic */ ank this$0;

    public AppDetailPage$7(ank ankVar) {
        this.this$0 = ankVar;
    }

    @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppsDetailListener
    public void onReceive(int i, AppDetailModel appDetailModel) {
        if (appDetailModel != null) {
            appDetailModel.isUpdate = this.this$0.aAX.isUpdate;
            appDetailModel.isDiff = this.this$0.aAX.isDiff;
            this.this$0.aAX = appDetailModel;
            apv.m9735LO().m9730a(this.this$0.aAX.iconUrl, new apv.InterfaceC1441b() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppDetailPage$7.1
                @Override // com.kingroot.kinguser.apv.InterfaceC1441b
                /* renamed from: a */
                public void mo4137a(final String str, final Bitmap bitmap) {
                    C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppDetailPage.7.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            ImageView imageView;
                            if (str != null && str.equals(AppDetailPage$7.this.this$0.aAX.iconUrl)) {
                                imageView = AppDetailPage$7.this.this$0.mIconView;
                                imageView.setImageBitmap(bitmap);
                            }
                        }
                    });
                }

                @Override // com.kingroot.kinguser.apv.InterfaceC1441b
                /* renamed from: eE */
                public void mo4136eE(String str) {
                }
            });
            this.this$0.getHandler().obtainMessage(0).sendToTarget();
        } else {
            this.this$0.getHandler().obtainMessage(1).sendToTarget();
        }
        this.this$0.aAX.m4179a(this.this$0.aBc);
    }
}
