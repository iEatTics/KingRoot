package com.kingroot.kinguser;

import android.support.annotation.NonNull;
import android.support.annotation.WorkerThread;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDetailModel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class asx {
    private static volatile asx aNH;

    private asx() {
    }

    /* renamed from: OK */
    public static asx m9338OK() {
        if (aNH == null) {
            synchronized (asx.class) {
                if (aNH == null) {
                    aNH = new asx();
                }
            }
        }
        return aNH;
    }

    @WorkerThread
    /* renamed from: iU */
    public List<AppBaseModel> m9337iU(@NonNull String str) {
        return atc.m9313OS().m9312iU(str);
    }

    @WorkerThread
    /* renamed from: iV */
    public List<AppBaseModel> m9336iV(@NonNull String str) {
        return atc.m9313OS().m9311iV(str);
    }

    @WorkerThread
    /* renamed from: m */
    public AppDetailModel m9335m(@NonNull AppBaseModel appBaseModel) {
        return atc.m9313OS().m9310m(appBaseModel);
    }

    /* renamed from: s */
    public List<AppBaseModel> m9334s(ArrayList<String> arrayList) {
        ArrayList arrayList2 = new ArrayList();
        Iterator<String> it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.addAll(m9336iV(it.next()));
        }
        return arrayList2;
    }
}
