package com.kingroot.kinguser;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.support.annotation.WorkerThread;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.atb;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDetailModel;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppsDetailListener;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppsListener;
import com.kingroot.kinguser.gamebox.dao.ILoadRecommendedSoftDetailListener;
import com.kingroot.kinguser.gamebox.foreground.model.IGameFreshListener;
import com.kingroot.master.app.KUApplication;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public class atb {
    private static volatile atb aNJ;
    private Context mContext = KUApplication.m13453ge();

    private atb() {
    }

    /* renamed from: OR */
    public static atb m9322OR() {
        if (aNJ == null) {
            synchronized (atb.class) {
                if (aNJ == null) {
                    aNJ = new atb();
                }
            }
        }
        return aNJ;
    }

    /* renamed from: a */
    public synchronized void m9318a(@NonNull String str, IGameFreshListener iGameFreshListener) {
        if (C3748vb.m1921O(KApplication.m13453ge()) != -1) {
            m9321a(m9315jc(str), 20, str, iGameFreshListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: M */
    public void m9323M(int i, String str) {
        SharedPreferences m2313i = C3566rv.m2313i(this.mContext, str + "_getViewPosition");
        String string = m2313i.getString("position", "");
        StringBuilder sb = new StringBuilder();
        if (TextUtils.isEmpty(string)) {
            sb.append(String.valueOf(i)).append(";");
        } else {
            sb.append(string).append(String.valueOf(i)).append(";");
        }
        m2313i.edit().putString("position", sb.toString()).commit();
    }

    /* renamed from: jc */
    private int m9315jc(String str) {
        String string = C3566rv.m2313i(this.mContext, str + "_getViewPosition").getString("position", "");
        if (TextUtils.isEmpty(string)) {
            return 0;
        }
        String[] split = string.split(";");
        return Integer.parseInt(split[split.length - 1]);
    }

    /* renamed from: a */
    private synchronized void m9321a(final int i, final int i2, final String str, final IGameFreshListener iGameFreshListener) {
        alq.m10547GY().mo10433a(Integer.valueOf(str).intValue(), i2, i, new ILoadAppsListener.Stub() { // from class: com.kingroot.kinguser.gamebox.dao.GameRecommendedDao$1
            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppsListener
            public void onReceive(int i3, List<AppBaseModel> list) {
                if (list != null && !list.isEmpty()) {
                    atb.this.m9323M(i + i2, str);
                }
                if (iGameFreshListener != null) {
                    IGameFreshListener iGameFreshListener2 = iGameFreshListener;
                    if (list == null) {
                        list = new ArrayList<>();
                    }
                    iGameFreshListener2.onUpdateGameFinish(list);
                }
            }
        });
    }

    /* renamed from: a */
    public void m9319a(@NonNull AppBaseModel appBaseModel, final ILoadRecommendedSoftDetailListener iLoadRecommendedSoftDetailListener) {
        alq.m10547GY().mo10427a(appBaseModel, new ILoadAppsDetailListener.Stub() { // from class: com.kingroot.kinguser.gamebox.dao.GameRecommendedDao$2
            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppsDetailListener
            public void onReceive(int i, AppDetailModel appDetailModel) {
                if (iLoadRecommendedSoftDetailListener != null) {
                    try {
                        iLoadRecommendedSoftDetailListener.onLoadSoftDetailEnd(appDetailModel);
                    } catch (RemoteException e) {
                    }
                }
            }
        });
    }

    @WorkerThread
    /* renamed from: iU */
    public synchronized List<AppBaseModel> m9317iU(String str) {
        return anf.m10291aA(m9316iV(str));
    }

    /* renamed from: iV */
    public synchronized List<AppBaseModel> m9316iV(String str) {
        final ArrayList arrayList;
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        arrayList = new ArrayList();
        m9321a(0, 20, str, new IGameFreshListener.Stub() { // from class: com.kingroot.kinguser.gamebox.dao.GameRecommendedDao$3
            @Override // com.kingroot.kinguser.gamebox.foreground.model.IGameFreshListener
            public void onUpdateGameFinish(List<AppBaseModel> list) {
                arrayList.addAll(list);
                countDownLatch.countDown();
            }
        });
        try {
            countDownLatch.await(15L, TimeUnit.SECONDS);
        } catch (InterruptedException e) {
        }
        return arrayList;
    }

    /* renamed from: m */
    public synchronized AppDetailModel m9314m(@NonNull AppBaseModel appBaseModel) {
        final AppDetailModel[] appDetailModelArr;
        appDetailModelArr = new AppDetailModel[1];
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        m9319a(appBaseModel, new ILoadRecommendedSoftDetailListener.Stub() { // from class: com.kingroot.kinguser.gamebox.dao.GameRecommendedDao$4
            @Override // com.kingroot.kinguser.gamebox.dao.ILoadRecommendedSoftDetailListener
            public void onLoadSoftDetailEnd(AppDetailModel appDetailModel) {
                appDetailModelArr[0] = appDetailModel;
                countDownLatch.countDown();
            }
        });
        try {
            countDownLatch.await(15L, TimeUnit.SECONDS);
        } catch (InterruptedException e) {
        }
        return appDetailModelArr[0];
    }
}
