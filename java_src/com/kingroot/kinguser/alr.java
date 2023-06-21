package com.kingroot.kinguser;

import android.support.annotation.WorkerThread;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.alr;
import com.kingroot.kinguser.alz;
import com.kingroot.kinguser.anf;
import com.kingroot.kinguser.apv;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppsListener;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class alr {
    private static final String TAG = aiq.arY + "_AppsMarketKrMainDist";
    private static final cce<alr> sInstance = new cce<alr>() { // from class: com.kingroot.kinguser.alr.2
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: Hh */
        public alr create() {
            return new alr();
        }
    };
    private final alz<ArrayList<AppBaseModel>> ayT;

    /* renamed from: Hd */
    public static alr m10545Hd() {
        return sInstance.get();
    }

    private alr() {
        this.ayT = new alz<ArrayList<AppBaseModel>>() { // from class: com.kingroot.kinguser.alr.1
            @Override // com.kingroot.kinguser.alz
            /* renamed from: Ha */
            public File mo7424Ha() {
                return new File(KApplication.m13453ge().getFilesDir(), "apps_market_kr_main_dist.dat");
            }

            @Override // com.kingroot.kinguser.alz
            /* renamed from: Hg */
            public ArrayList<AppBaseModel> mo7423Hc() {
                return new ArrayList<>();
            }
        };
        this.ayT.m10476HQ();
    }

    @WorkerThread
    /* renamed from: He */
    public AppBaseModel m10544He() {
        if (adk.m12538g(akl.m11257AS().m11222Bu(), 86400000L)) {
            ArrayList<AppBaseModel> arrayList = new ArrayList();
            synchronized (this.ayT) {
                Iterator<AppBaseModel> it = this.ayT.m10475HR().iterator();
                while (it.hasNext()) {
                    AppBaseModel next = it.next();
                    if (apv.m9735LO().m9720ia(next.iconUrl)) {
                        arrayList.add(next);
                    }
                }
            }
            for (AppBaseModel appBaseModel : arrayList) {
                if (m10541d(appBaseModel) && !akl.m11257AS().m11197ay(appBaseModel.bannerId)) {
                    return appBaseModel;
                }
            }
            return null;
        }
        return null;
    }

    /* renamed from: d */
    private boolean m10541d(AppBaseModel appBaseModel) {
        return System.currentTimeMillis() / 1000 <= appBaseModel.endTime;
    }

    /* renamed from: Hf */
    public void m10543Hf() {
        alq.m10547GY().mo10432a(5010020, new ILoadAppsListener.Stub() { // from class: com.kingroot.kinguser.distribution.appsmarket.core.AppsMarketKrMainDist$3
            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppsListener
            public void onReceive(int i, List<AppBaseModel> list) {
                alz alzVar;
                alz alzVar2;
                alz alzVar3;
                alzVar = alr.this.ayT;
                synchronized (alzVar) {
                    alzVar2 = alr.this.ayT;
                    ArrayList arrayList = (ArrayList) alzVar2.m10475HR();
                    arrayList.clear();
                    for (AppBaseModel appBaseModel : anf.m10291aA(list)) {
                        apv.m9735LO().m9717id(appBaseModel.iconUrl);
                        arrayList.add(appBaseModel);
                    }
                    alzVar3 = alr.this.ayT;
                    alzVar3.m10473HT();
                }
            }
        });
    }
}
