package com.kingroot.kinguser;

import android.support.annotation.WorkerThread;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.alt;
import com.kingroot.kinguser.alz;
import com.kingroot.kinguser.apv;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppsListener;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class alt implements amt {
    private static final String TAG = aiq.arY + "_AppsMarketToolboxCardDist";
    private static final cce<alt> sInstance = new cce<alt>() { // from class: com.kingroot.kinguser.alt.2
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: Hn */
        public alt create() {
            return new alt();
        }
    };
    private final alz<ArrayList<AppBaseModel>> ayT;

    @InterfaceC3726ut
    /* renamed from: Hk */
    public static alt m10536Hk() {
        return sInstance.get();
    }

    private alt() {
        this.ayT = new alz<ArrayList<AppBaseModel>>() { // from class: com.kingroot.kinguser.alt.1
            @Override // com.kingroot.kinguser.alz
            /* renamed from: Ha */
            public File mo7424Ha() {
                return new File(KApplication.m13453ge().getFilesDir(), "apps_market_toolbox_card_dist.dat");
            }

            @Override // com.kingroot.kinguser.alz
            /* renamed from: Hg */
            public ArrayList<AppBaseModel> mo7423Hc() {
                return new ArrayList<>();
            }
        };
        this.ayT.m10476HQ();
    }

    @Override // com.kingroot.kinguser.amt
    @WorkerThread
    /* renamed from: Hl */
    public AppBaseModel mo10418Hl() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.ayT) {
            Iterator<AppBaseModel> it = this.ayT.m10475HR().iterator();
            while (it.hasNext()) {
                AppBaseModel next = it.next();
                if (apv.m9735LO().m9720ia(next.iconUrl)) {
                    arrayList.add(next);
                }
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            AppBaseModel appBaseModel = (AppBaseModel) it2.next();
            if (C3952zh.m1312pq().m1314du(appBaseModel.pkgName) && !akl.m11257AS().m11179gS(appBaseModel.pkgName)) {
                it2.remove();
            }
        }
        Collections.sort(arrayList, new Comparator<AppBaseModel>() { // from class: com.kingroot.kinguser.alt.3
            @Override // java.util.Comparator
            /* renamed from: a */
            public int compare(AppBaseModel appBaseModel2, AppBaseModel appBaseModel3) {
                return appBaseModel2.position - appBaseModel3.position;
            }
        });
        if (C3942yy.m1351d(arrayList)) {
            return null;
        }
        return (AppBaseModel) arrayList.get(0);
    }

    @Override // com.kingroot.kinguser.amt
    /* renamed from: Hm */
    public void mo10417Hm() {
        alq.m10547GY().mo10433a(5010021, 100, 0, new ILoadAppsListener.Stub() { // from class: com.kingroot.kinguser.distribution.appsmarket.core.AppsMarketToolboxCardDistService$4
            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppsListener
            public void onReceive(int i, List<AppBaseModel> list) {
                alz alzVar;
                alz alzVar2;
                alz alzVar3;
                alzVar = alt.this.ayT;
                synchronized (alzVar) {
                    alzVar2 = alt.this.ayT;
                    ArrayList arrayList = (ArrayList) alzVar2.m10475HR();
                    arrayList.clear();
                    for (AppBaseModel appBaseModel : list) {
                        apv.m9735LO().m9717id(appBaseModel.iconUrl);
                        arrayList.add(appBaseModel);
                    }
                    alzVar3 = alt.this.ayT;
                    alzVar3.m10473HT();
                }
            }
        });
    }

    @Override // com.kingroot.kinguser.amt
    /* renamed from: C */
    public void mo10419C(String str, int i) {
        ArrayList arrayList = new ArrayList();
        if (i == 1) {
            arrayList.add(1);
            arrayList.add("");
            arrayList.add("");
        } else if (i == 2) {
            arrayList.add("");
            arrayList.add(1);
            arrayList.add("");
        } else if (i == 3) {
            arrayList.add("");
            arrayList.add("");
            arrayList.add(1);
        }
        arrayList.add(str);
        ady.m12308tK().mo1748a(100736, 0, (List<Object>) arrayList, true);
    }
}
