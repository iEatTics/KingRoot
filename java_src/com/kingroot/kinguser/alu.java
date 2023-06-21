package com.kingroot.kinguser;

import android.support.annotation.WorkerThread;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.alu;
import com.kingroot.kinguser.alz;
import com.kingroot.kinguser.anf;
import com.kingroot.kinguser.apv;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppsListener;
import com.kingroot.kinguser.distribution.net.download.AppDownloadRequest;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class alu {
    private static final String TAG = aiq.arY + "_AppsMarketToolboxDist";
    private static final cce<alu> sInstance = new cce<alu>() { // from class: com.kingroot.kinguser.alu.3
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: Hp */
        public alu create() {
            return new alu();
        }
    };
    private final alz<ArrayList<AppBaseModel>> ayT;
    private final alz<ArrayList<String>> ayU;

    /* renamed from: Ho */
    public static alu m10529Ho() {
        return sInstance.get();
    }

    private alu() {
        this.ayT = new alz<ArrayList<AppBaseModel>>() { // from class: com.kingroot.kinguser.alu.1
            @Override // com.kingroot.kinguser.alz
            /* renamed from: Ha */
            public File mo7424Ha() {
                return new File(KApplication.m13453ge().getFilesDir(), "apps_market_toolbox_dist.dat");
            }

            @Override // com.kingroot.kinguser.alz
            /* renamed from: Hg */
            public ArrayList<AppBaseModel> mo7423Hc() {
                return new ArrayList<>();
            }
        };
        this.ayU = new alz<ArrayList<String>>() { // from class: com.kingroot.kinguser.alu.2
            @Override // com.kingroot.kinguser.alz
            /* renamed from: Ha */
            public File mo7424Ha() {
                return new File(KApplication.m13453ge().getFilesDir(), "apps_market_toolbox_dist_filter_pkg.dat");
            }

            @Override // com.kingroot.kinguser.alz
            /* renamed from: Hg */
            public ArrayList<String> mo7423Hc() {
                return new ArrayList<>();
            }
        };
        this.ayT.m10476HQ();
        this.ayU.m10476HQ();
    }

    @WorkerThread
    /* renamed from: Hl */
    public AppBaseModel m10531Hl() {
        AppBaseModel appBaseModel = null;
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
        List<AppBaseModel> m10282c = anf.m10282c(arrayList, this.ayU.m10475HR());
        if (C3942yy.m1351d(m10282c)) {
            return null;
        }
        String m11226Bq = akl.m11257AS().m11226Bq();
        if (!TextUtils.isEmpty(m11226Bq)) {
            Iterator<AppBaseModel> it2 = m10282c.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                AppBaseModel next2 = it2.next();
                if (TextUtils.equals(next2.pkgName, m11226Bq)) {
                    AppDownloadRequest m10354hy = amz.m10365II().m10354hy(m11226Bq);
                    if (!adk.m12538g(akl.m11257AS().m11227Bp(), 86400000L)) {
                        if (m10354hy != null || apu.m9739j(AppDownloadRequest.m4059j(next2))) {
                            appBaseModel = next2;
                        }
                    } else {
                        akl.m11257AS().m11225Br();
                        synchronized (this.ayU) {
                            this.ayU.m10475HR().add(m11226Bq);
                            this.ayU.m10473HT();
                        }
                    }
                }
            }
        }
        if (appBaseModel == null) {
            List<AppBaseModel> m10282c2 = anf.m10282c(arrayList, this.ayU.m10475HR());
            Collections.shuffle(m10282c2);
            if (!C3942yy.m1351d(m10282c2)) {
                return m10282c2.get(0);
            }
        }
        return appBaseModel;
    }

    /* renamed from: Hm */
    public void m10530Hm() {
        alq.m10547GY().mo10433a(5010019, 100, 0, new ILoadAppsListener.Stub() { // from class: com.kingroot.kinguser.distribution.appsmarket.core.AppsMarketToolboxDist$4
            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppsListener
            public void onReceive(int i, List<AppBaseModel> list) {
                alz alzVar;
                alz alzVar2;
                alz alzVar3;
                alzVar = alu.this.ayT;
                synchronized (alzVar) {
                    alzVar2 = alu.this.ayT;
                    ArrayList arrayList = (ArrayList) alzVar2.m10475HR();
                    arrayList.clear();
                    for (AppBaseModel appBaseModel : anf.m10291aA(list)) {
                        apv.m9735LO().m9717id(appBaseModel.iconUrl);
                        arrayList.add(appBaseModel);
                    }
                    alzVar3 = alu.this.ayT;
                    alzVar3.m10473HT();
                }
            }
        });
    }
}
