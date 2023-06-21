package com.kingroot.kinguser;

import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.kingroot.kinguser.C3942yy;
import com.kingroot.kinguser.amb;
import com.kingroot.kinguser.apv;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.GameReservationEntity;
import com.kingroot.kinguser.distribution.appsmarket.entity.GameReservationState;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.IGetSplashResult;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppsListener;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.IQueryReservationStateResult;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class amb implements amx {
    private static final cce<amb> sInstance = new cce<amb>() { // from class: com.kingroot.kinguser.amb.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: Ic */
        public amb create() {
            return new amb();
        }
    };
    private amx azA;

    /* renamed from: Ib */
    public static amb m10458Ib() {
        return sInstance.get();
    }

    private amb() {
        this.azA = (amx) C3729uv.m1971kM().m1973a(C1222a.m10456Id(), amx.class);
    }

    @Override // com.kingroot.kinguser.amx
    /* renamed from: a */
    public void mo10398a(int i, @NonNull IGetSplashResult iGetSplashResult) {
        this.azA.mo10398a(i, iGetSplashResult);
    }

    /* renamed from: com.kingroot.kinguser.amb$a */
    /* loaded from: classes.dex */
    public static class C1222a implements amx {
        private static cce<C1222a> sInstance = new cce<C1222a>() { // from class: com.kingroot.kinguser.amb.a.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.kingroot.kinguser.cce
            /* renamed from: Ie */
            public C1222a create() {
                return new C1222a();
            }
        };
        private apv.InterfaceC1440a azB;

        private C1222a() {
            this.azB = new apv.InterfaceC1440a() { // from class: com.kingroot.kinguser.amb.a.2
                @Override // com.kingroot.kinguser.apv.InterfaceC1440a
                /* renamed from: i */
                public void mo9706i(String str, File file) {
                }

                @Override // com.kingroot.kinguser.apv.InterfaceC1440a
                /* renamed from: fk */
                public void mo9707fk(String str) {
                }

                @Override // com.kingroot.kinguser.apv.InterfaceC1440a
                /* renamed from: j */
                public void mo9705j(String str, File file) {
                }
            };
        }

        @InterfaceC3726ut
        /* renamed from: Id */
        public static C1222a m10456Id() {
            return sInstance.get();
        }

        @Override // com.kingroot.kinguser.amx
        /* renamed from: a */
        public void mo10398a(int i, @NonNull final IGetSplashResult iGetSplashResult) {
            int i2;
            if (!adk.m12538g(akl.m11257AS().m11231Bl(), 172800000L)) {
                try {
                    iGetSplashResult.onResult(null);
                    return;
                } catch (RemoteException e) {
                    return;
                }
            }
            if (i == 2) {
                i2 = 5012419;
            } else if (i == 1) {
                i2 = 5012418;
            } else {
                try {
                    iGetSplashResult.onResult(null);
                    return;
                } catch (RemoteException e2) {
                    return;
                }
            }
            alq.m10547GY().mo10432a(i2, new ILoadAppsListener.Stub() { // from class: com.kingroot.kinguser.distribution.appsmarket.core.MarketSplashHelper$Impl$2
                @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppsListener
                public void onReceive(int i3, List<AppBaseModel> list) {
                    AppBaseModel m10453ay;
                    apv.InterfaceC1440a interfaceC1440a;
                    for (AppBaseModel appBaseModel : C3942yy.m1350e(list)) {
                        ArrayList arrayList = new ArrayList();
                        if (!TextUtils.isEmpty(appBaseModel.bgPicUrl)) {
                            arrayList.add(appBaseModel.bgPicUrl);
                        }
                        if (!TextUtils.isEmpty(appBaseModel.btnPicUrl)) {
                            arrayList.add(appBaseModel.btnPicUrl);
                        }
                        apv m9735LO = apv.m9735LO();
                        interfaceC1440a = amb.C1222a.this.azB;
                        m9735LO.m9728a(arrayList, interfaceC1440a);
                    }
                    if (iGetSplashResult != null) {
                        IGetSplashResult iGetSplashResult2 = iGetSplashResult;
                        m10453ay = amb.C1222a.this.m10453ay(list);
                        iGetSplashResult2.onResult(m10453ay);
                    }
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: ay */
        public AppBaseModel m10453ay(List<AppBaseModel> list) {
            GameReservationEntity gameReservationEntity;
            boolean z;
            final ArrayList arrayList = new ArrayList();
            final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            for (AppBaseModel appBaseModel : list) {
                if (akl.m11257AS().m11194c(appBaseModel) < 1 && !m10449g(appBaseModel) && m10452d(appBaseModel) && m10451e(appBaseModel) && !C3952zh.m1312pq().m1314du(appBaseModel.pkgName)) {
                    if (appBaseModel.jumptype == 4) {
                        final CountDownLatch countDownLatch = new CountDownLatch(1);
                        if (!atomicBoolean.get()) {
                            alq.m10547GY().mo10420b(5012416, 20, 0, new ILoadAppsListener.Stub() { // from class: com.kingroot.kinguser.distribution.appsmarket.core.MarketSplashHelper$Impl$3
                                @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppsListener
                                public void onReceive(int i, List<AppBaseModel> list2) {
                                    arrayList.addAll(list2);
                                    atomicBoolean.set(true);
                                    countDownLatch.countDown();
                                }
                            });
                        } else {
                            countDownLatch.countDown();
                        }
                        try {
                            countDownLatch.await(10L, TimeUnit.SECONDS);
                        } catch (InterruptedException e) {
                        }
                        Iterator it = arrayList.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                gameReservationEntity = null;
                                z = false;
                                break;
                            }
                            AppBaseModel appBaseModel2 = (AppBaseModel) it.next();
                            if (TextUtils.equals(appBaseModel.pkgName, appBaseModel2.pkgName)) {
                                gameReservationEntity = appBaseModel2.reservationEntity;
                                z = true;
                                break;
                            }
                        }
                        if (z) {
                            final AtomicBoolean atomicBoolean2 = new AtomicBoolean(false);
                            final CountDownLatch countDownLatch2 = new CountDownLatch(1);
                            ArrayList<String> arrayList2 = new ArrayList<>();
                            arrayList2.add(gameReservationEntity.activityId);
                            alq.m10547GY().mo10422a(arrayList2, new IQueryReservationStateResult.Stub() { // from class: com.kingroot.kinguser.distribution.appsmarket.core.MarketSplashHelper$Impl$4
                                @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.IQueryReservationStateResult
                                public void onResult(int i, List<GameReservationState> list2) {
                                    if (!C3942yy.m1351d(list2)) {
                                        if (list2.get(0).m4147Iv()) {
                                            atomicBoolean2.set(true);
                                        }
                                        countDownLatch2.countDown();
                                    }
                                }
                            });
                            try {
                                countDownLatch2.await(10L, TimeUnit.SECONDS);
                            } catch (InterruptedException e2) {
                            }
                            if (!atomicBoolean2.get()) {
                                return appBaseModel;
                            }
                        } else {
                            continue;
                        }
                    } else {
                        return appBaseModel;
                    }
                }
            }
            return null;
        }

        /* renamed from: e */
        private boolean m10451e(AppBaseModel appBaseModel) {
            return apv.m9735LO().m9720ia(appBaseModel.bgPicUrl) && apv.m9735LO().m9720ia(appBaseModel.btnPicUrl);
        }

        /* renamed from: d */
        private boolean m10452d(AppBaseModel appBaseModel) {
            return System.currentTimeMillis() / 1000 <= appBaseModel.endTime;
        }

        /* renamed from: f */
        public static boolean m10450f(AppBaseModel appBaseModel) {
            return System.currentTimeMillis() / 1000 > appBaseModel.endTime;
        }

        /* renamed from: g */
        public static boolean m10449g(AppBaseModel appBaseModel) {
            return TextUtils.isEmpty(appBaseModel.bgPicUrl) || m10450f(appBaseModel);
        }
    }
}
