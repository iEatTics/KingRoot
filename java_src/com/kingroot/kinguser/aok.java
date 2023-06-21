package com.kingroot.kinguser;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.aom;
import com.kingroot.kinguser.distribution.base.RecommendAppDetailInfo;
import com.kingroot.kinguser.distribution.base.RecommendAppSimpleInfo;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes.dex */
public abstract class aok<S extends RecommendAppSimpleInfo, D extends RecommendAppDetailInfo> {
    private static final String TAG = aiq.arY + "_AbsAppDistEngine";

    @NonNull
    /* renamed from: e */
    private String m9925e(int i, int i2, String str) {
        StringBuilder sb = new StringBuilder("");
        sb.append("categoryid=").append(str);
        sb.append("&begin=").append(String.valueOf(i));
        sb.append("&items=").append(String.valueOf(i2));
        sb.append("&order=").append("1");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    @Nullable
    /* renamed from: a */
    public List<S> m9927a(aom.InterfaceC1387a<S, C2862di> interfaceC1387a, int i, int i2, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String m9925e = m9925e(i, i2, str);
        AtomicReference atomicReference = new AtomicReference();
        ArrayList arrayList = new ArrayList();
        if (aju.m11398a(KApplication.m13453ge(), m9925e, atomicReference, arrayList) == 0) {
            ArrayList arrayList2 = new ArrayList();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                C2862di c2862di = (C2862di) it.next();
                if (c2862di != null && c2862di.softkey != null) {
                    S mo3755p = interfaceC1387a.mo3755p(c2862di);
                    mo3755p.categoryId = str;
                    arrayList2.add(mo3755p);
                }
            }
            return arrayList2;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    @Nullable
    /* renamed from: a */
    public Map<String, D> m9926a(aom.InterfaceC1387a<D, C2858de> interfaceC1387a, Map<String, Integer> map) {
        ArrayList arrayList = new ArrayList();
        if (C3942yy.m1349e(map)) {
            return Collections.emptyMap();
        }
        for (String str : map.keySet()) {
            if (!TextUtils.isEmpty(str)) {
                C2859df c2859df = new C2859df();
                c2859df.m4219I(str);
                c2859df.m4204x(map.get(str).intValue());
                arrayList.add(c2859df);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        if (aju.m11397a(KApplication.m13453ge(), arrayList, arrayList2) != 0) {
            return null;
        }
        HashMap hashMap = new HashMap();
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            C2858de c2858de = (C2858de) it.next();
            if (c2858de != null && c2858de.softkey != null) {
                hashMap.put(c2858de.softkey.softname, interfaceC1387a.mo3755p(c2858de));
            }
        }
        return hashMap;
    }
}
