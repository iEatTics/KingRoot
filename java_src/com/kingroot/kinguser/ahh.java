package com.kingroot.kinguser;

import android.text.TextUtils;
import com.kingroot.kinguser.advance.model.DefaultSettingInfo;
import com.kingroot.kinguser.ahh;
import com.kingroot.kinguser.ala;
import com.kingroot.kinguser.bed;
import com.kingroot.kinguser.beg;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppsListener;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class ahh {
    private final List<DefaultSettingInfo> app;
    private final List<DefaultSettingInfo> apq;
    private ILoadAppsListener apr;
    private bed aps;
    private static int apo = 100;
    private static cce<ahh> apk = new cce<ahh>() { // from class: com.kingroot.kinguser.ahh.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: wZ */
        public ahh create() {
            return new ahh();
        }
    };

    private ahh() {
        this.app = new ArrayList();
        this.apq = new ArrayList();
        this.apr = new ILoadAppsListener.Stub() { // from class: com.kingroot.kinguser.advance.manager.DefSettingManagerImpl$1
            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppsListener
            public void onReceive(int i, List<AppBaseModel> list) {
                bed bedVar;
                ArrayList arrayList = new ArrayList();
                synchronized (ahh.this.apq) {
                    arrayList.addAll(ahh.this.apq);
                }
                ArrayList arrayList2 = new ArrayList();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    DefaultSettingInfo defaultSettingInfo = (DefaultSettingInfo) it.next();
                    if (!TextUtils.isEmpty(defaultSettingInfo.pkgName)) {
                        Iterator<AppBaseModel> it2 = list.iterator();
                        while (true) {
                            if (it2.hasNext()) {
                                AppBaseModel next = it2.next();
                                if (defaultSettingInfo.pkgName.equals(next.pkgName)) {
                                    it.remove();
                                    defaultSettingInfo.apy = next;
                                    arrayList2.add(defaultSettingInfo);
                                    break;
                                }
                            }
                        }
                    }
                }
                synchronized (ahh.this.apq) {
                    ahh.this.apq.clear();
                    ahh.this.apq.addAll(arrayList);
                }
                synchronized (ahh.this.app) {
                    ahh.this.app.clear();
                    ahh.this.app.addAll(arrayList2);
                }
                beg m7461Zj = beg.m7461Zj();
                bedVar = ahh.this.aps;
                m7461Zj.m7450c(bedVar);
            }
        };
        this.aps = new bed(bem.LOW, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.ahh.2
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                AppBaseModel appBaseModel;
                super.run();
                ArrayList<DefaultSettingInfo> arrayList = new ArrayList();
                synchronized (ahh.this.app) {
                    arrayList.addAll(ahh.this.app);
                }
                for (DefaultSettingInfo defaultSettingInfo : arrayList) {
                    if (defaultSettingInfo.apx && (appBaseModel = defaultSettingInfo.apy) != null && C3952zh.m1312pq().m1314du(appBaseModel.pkgName) && !aks.m11143BP().m10723hn(defaultSettingInfo.pkgName)) {
                        ahg.m11774a(defaultSettingInfo.type, new ala.C1052a(appBaseModel.pkgName, null));
                        aks.m11143BP().m10724hm(defaultSettingInfo.pkgName);
                    }
                }
                synchronized (ahh.this.apq) {
                    arrayList.clear();
                    arrayList.addAll(ahh.this.apq);
                }
                for (DefaultSettingInfo defaultSettingInfo2 : arrayList) {
                    if (defaultSettingInfo2.apx && !TextUtils.isEmpty(defaultSettingInfo2.pkgName) && C3952zh.m1312pq().m1314du(defaultSettingInfo2.pkgName) && !aks.m11143BP().m10723hn(defaultSettingInfo2.pkgName)) {
                        ahg.m11774a(defaultSettingInfo2.type, new ala.C1052a(defaultSettingInfo2.pkgName, null));
                        aks.m11143BP().m10724hm(defaultSettingInfo2.pkgName);
                    }
                }
            }
        });
    }

    /* renamed from: wY */
    public static ahh m11759wY() {
        return apk.get();
    }

    /* renamed from: wU */
    public List<DefaultSettingInfo> m11762wU() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.app) {
            arrayList.addAll(this.app);
        }
        return arrayList;
    }

    /* renamed from: wV */
    public int m11761wV() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.app) {
            arrayList.addAll(this.app);
        }
        int i = 0;
        Iterator it = arrayList.iterator();
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                i = !ahg.m11773a((DefaultSettingInfo) it.next()) ? i2 + 1 : i2;
            } else {
                return i2;
            }
        }
    }

    /* renamed from: wW */
    public List<DefaultSettingInfo> m11760wW() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.apq) {
            arrayList.addAll(this.apq);
        }
        return arrayList;
    }

    public void refresh() {
        List<DefaultSettingInfo> m11942vP = agl.m11943vO().m11942vP();
        synchronized (this.apq) {
            this.apq.clear();
            this.apq.addAll(m11942vP);
        }
        alq.m10547GY().mo10433a(5012451, apo, 0, this.apr);
    }
}
