package com.kingroot.kinguser;

import android.graphics.Bitmap;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.aea;
import com.kingroot.kinguser.apv;
import com.kingroot.kinguser.p013ad.SplashDisplayModel;
import com.tencent.qqpim.discovery.AdDisplayModel;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArrayList;
import kingcom.module.network.shark.conch.entity.SplashScreenEntity;
/* loaded from: classes.dex */
public class bgz {
    private static cce<bgz> sInstance = new cce<bgz>() { // from class: com.kingroot.kinguser.bgz.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: acg */
        public bgz create() {
            return new bgz();
        }
    };
    private List<SplashScreenEntity> bpj;
    private apv.InterfaceC1441b bpk;

    private bgz() {
        this.bpk = new apv.InterfaceC1441b() { // from class: com.kingroot.kinguser.bgz.3
            @Override // com.kingroot.kinguser.apv.InterfaceC1441b
            /* renamed from: a */
            public void mo4137a(String str, Bitmap bitmap) {
                ady.m12308tK().mo1746bi(100424);
                for (SplashScreenEntity splashScreenEntity : bgz.this.bpj) {
                    if (str.equals(splashScreenEntity.picDownloadUrl)) {
                        aea.m12293b(true, splashScreenEntity.taskID, splashScreenEntity.conchSeqno);
                        return;
                    }
                }
            }

            @Override // com.kingroot.kinguser.apv.InterfaceC1441b
            /* renamed from: eE */
            public void mo4136eE(String str) {
                for (SplashScreenEntity splashScreenEntity : bgz.this.bpj) {
                    if (str.equals(splashScreenEntity.picDownloadUrl)) {
                        aea.m12293b(false, splashScreenEntity.taskID, splashScreenEntity.conchSeqno);
                        return;
                    }
                }
            }
        };
        this.bpj = acc();
    }

    public static bgz aca() {
        return sInstance.get();
    }

    @Nullable
    /* renamed from: f */
    public SplashDisplayModel m7072f(AdDisplayModel adDisplayModel) {
        if (acu.m12571g(aks.m11143BP().m10958FS(), 86400000L)) {
            aks.m11143BP().m10877bH(System.currentTimeMillis());
            afz.m12007vG().clearAll();
        }
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(acf());
        if (adDisplayModel != null && apv.m9735LO().m9720ia(adDisplayModel.bJv)) {
            arrayList.add(new SplashDisplayModel(adDisplayModel));
        }
        if (C3942yy.m1351d(arrayList)) {
            return null;
        }
        Collections.sort(arrayList, new Comparator<SplashDisplayModel>() { // from class: com.kingroot.kinguser.bgz.2
            @Override // java.util.Comparator
            /* renamed from: a */
            public int compare(SplashDisplayModel splashDisplayModel, SplashDisplayModel splashDisplayModel2) {
                if (splashDisplayModel.aju != splashDisplayModel2.aju) {
                    return splashDisplayModel.aju - splashDisplayModel2.aju;
                }
                if (splashDisplayModel.type == splashDisplayModel2.type) {
                    if (splashDisplayModel.type == 2) {
                        return splashDisplayModel.priority - splashDisplayModel2.priority;
                    }
                    return splashDisplayModel.ajw.bJp - splashDisplayModel2.ajw.bJp;
                }
                return splashDisplayModel.priority - splashDisplayModel2.priority;
            }
        });
        return (SplashDisplayModel) arrayList.get(0);
    }

    /* renamed from: b */
    public void m7077b(SplashScreenEntity splashScreenEntity) {
        if (!m7067j(splashScreenEntity)) {
            afz.m12007vG().clearAll();
            aks.m11143BP().m10765eP(splashScreenEntity.timeInterval);
            this.bpj.add(splashScreenEntity);
            m7074d(splashScreenEntity);
            acd();
        }
    }

    /* renamed from: cy */
    public void m7075cy(long j) {
        ArrayList arrayList = new ArrayList();
        for (SplashScreenEntity splashScreenEntity : this.bpj) {
            if (splashScreenEntity.taskID == j) {
                m7076c(splashScreenEntity);
                arrayList.add(splashScreenEntity);
            }
        }
        this.bpj.removeAll(arrayList);
        acd();
    }

    /* renamed from: c */
    private void m7076c(SplashScreenEntity splashScreenEntity) {
        File m9719ib = apv.m9735LO().m9719ib(splashScreenEntity.picDownloadUrl);
        if (m9719ib != null && m9719ib.exists()) {
            m9719ib.delete();
        }
    }

    private File acb() {
        return new File(KApplication.m13453ge().getFilesDir(), "splash_screen_list.dat");
    }

    private List<SplashScreenEntity> acc() {
        File acb = acb();
        if (acb.exists()) {
            Object m2244u = C3604sq.m2244u(acb);
            if (m2244u instanceof List) {
                return (List) m2244u;
            }
        }
        return new CopyOnWriteArrayList();
    }

    private void acd() {
        ace();
        C3604sq.m2250a(this.bpj, acb());
    }

    private void ace() {
        ArrayList arrayList = new ArrayList();
        for (SplashScreenEntity splashScreenEntity : this.bpj) {
            if (m7067j(splashScreenEntity)) {
                m7076c(splashScreenEntity);
                arrayList.add(splashScreenEntity);
            }
        }
        this.bpj.removeAll(arrayList);
    }

    /* renamed from: d */
    private void m7074d(SplashScreenEntity splashScreenEntity) {
        apv.m9735LO().m9730a(splashScreenEntity.picDownloadUrl, this.bpk);
        ady.m12308tK().mo1746bi(100423);
        aea.m12290d(splashScreenEntity.taskID, splashScreenEntity.conchSeqno);
    }

    private List<SplashDisplayModel> acf() {
        ArrayList arrayList = new ArrayList();
        for (SplashScreenEntity splashScreenEntity : this.bpj) {
            aea.m12292c(m7069h(splashScreenEntity), splashScreenEntity.taskID, splashScreenEntity.conchSeqno);
            if (m7071f(splashScreenEntity)) {
                if (m7073e(splashScreenEntity)) {
                    if (apv.m9735LO().m9720ia(splashScreenEntity.picDownloadUrl)) {
                        SplashDisplayModel splashDisplayModel = new SplashDisplayModel(splashScreenEntity);
                        if (!arrayList.contains(splashDisplayModel)) {
                            arrayList.add(splashDisplayModel);
                        }
                        aea.m12297a(aea.EnumC0766a.SUCCESS, splashScreenEntity.taskID, splashScreenEntity.conchSeqno);
                    } else {
                        aea.m12297a(aea.EnumC0766a.PIC_NOT_FOUND, splashScreenEntity.taskID, splashScreenEntity.conchSeqno);
                    }
                } else {
                    aea.m12297a(aea.EnumC0766a.LANGUAGE_NO_MATCHED, splashScreenEntity.taskID, splashScreenEntity.conchSeqno);
                }
            } else if (m7070g(splashScreenEntity)) {
                aea.m12297a(aea.EnumC0766a.NO_REACH_TIME, splashScreenEntity.taskID, splashScreenEntity.conchSeqno);
            }
        }
        return arrayList;
    }

    /* renamed from: e */
    private boolean m7073e(SplashScreenEntity splashScreenEntity) {
        Locale locale = C3953zi.m1311pr().getConfiguration().locale;
        String language = locale.getLanguage();
        if (language.equals("zh")) {
            String country = locale.getCountry();
            if (country.equals("CN") && splashScreenEntity.language == 1) {
                return true;
            }
            if ((country.equals("TW") || country.equals("HK")) && splashScreenEntity.language == 2) {
                return true;
            }
        } else if (language.equals("es") && splashScreenEntity.language == 3) {
            return true;
        } else {
            if (language.equals("pt") && splashScreenEntity.language == 4) {
                return true;
            }
            if (language.equals("in") && splashScreenEntity.language == 5) {
                return true;
            }
            if (language.equals("hi") && splashScreenEntity.language == 6) {
                return true;
            }
            if (language.equals("ru") && splashScreenEntity.language == 7) {
                return true;
            }
            if (language.equals("en") && splashScreenEntity.language == 8) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: f */
    private boolean m7071f(SplashScreenEntity splashScreenEntity) {
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        return currentTimeMillis >= splashScreenEntity.beginTime && currentTimeMillis <= splashScreenEntity.endTime;
    }

    /* renamed from: g */
    private boolean m7070g(SplashScreenEntity splashScreenEntity) {
        return System.currentTimeMillis() / 1000 < splashScreenEntity.beginTime;
    }

    /* renamed from: h */
    private boolean m7069h(SplashScreenEntity splashScreenEntity) {
        return System.currentTimeMillis() / 1000 < splashScreenEntity.endTime;
    }

    /* renamed from: i */
    public static boolean m7068i(SplashScreenEntity splashScreenEntity) {
        return System.currentTimeMillis() / 1000 > splashScreenEntity.endTime;
    }

    /* renamed from: j */
    public static boolean m7067j(SplashScreenEntity splashScreenEntity) {
        return splashScreenEntity.showDuration <= 0 || TextUtils.isEmpty(splashScreenEntity.picDownloadUrl) || m7068i(splashScreenEntity);
    }
}
