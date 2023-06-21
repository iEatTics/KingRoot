package com.kingroot.kinguser;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.kingroot.kinguser.distribution.net.download.AppDownloadClient;
import com.kingroot.kinguser.distribution.net.download.AppDownloadRequest;
import com.kingroot.kinguser.distribution.net.download.DownloaderTaskInfo;
import com.kingroot.kinguser.distribution.net.download.IAppDownloadListener;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes.dex */
public class aot extends AppDownloadClient {
    private static final cce<aot> aGq = new cce<aot>() { // from class: com.kingroot.kinguser.aot.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: Kx */
        public aot create() {
            return new aot();
        }
    };
    private final Map<String, List<C1398a>> aGw;

    /* renamed from: Kw */
    public static aot m9886Kw() {
        return aGq.get();
    }

    private aot() {
        this.aGw = Collections.synchronizedMap(new HashMap());
    }

    @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient
    /* renamed from: a */
    public void mo4092a(@NonNull AppDownloadRequest appDownloadRequest, int i, @Nullable IAppDownloadListener iAppDownloadListener) {
        synchronized (this.aGw) {
            List<C1398a> list = this.aGw.get(appDownloadRequest.pkgName);
            if (list == null) {
                list = new CopyOnWriteArrayList<>();
                this.aGw.put(appDownloadRequest.pkgName, list);
            }
            list.add(new C1398a(appDownloadRequest.pkgName, i));
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(appDownloadRequest.pkgName);
        arrayList.add(Integer.valueOf(i));
        ady.m12308tK().mo1747a(100346, (List<Object>) arrayList);
        super.mo4092a(appDownloadRequest, i, iAppDownloadListener);
    }

    @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient
    public void onComplete(DownloaderTaskInfo downloaderTaskInfo) {
        boolean z = false;
        String str = "";
        for (C1398a c1398a : C3942yy.m1350e(this.aGw.get(downloaderTaskInfo.m4049KM()))) {
            if (c1398a != null) {
                if (c1398a.type == 0) {
                    z = true;
                    str = c1398a.pkgName;
                }
                ArrayList arrayList = new ArrayList();
                arrayList.add(c1398a.pkgName);
                arrayList.add(Integer.valueOf(c1398a.type));
                ady.m12308tK().mo1747a(100347, (List<Object>) arrayList);
            }
        }
        if (z) {
            aks.m11143BP().m10728hi(str);
        }
        super.onComplete(downloaderTaskInfo);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient
    /* renamed from: hz */
    public void mo4071hz(String str) {
        this.aGw.remove(m4074hR(str));
        super.mo4071hz(str);
    }

    @Override // com.kingroot.kinguser.aoy
    /* renamed from: IE */
    public String mo7986IE() {
        return aot.class.getName();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.aot$a */
    /* loaded from: classes.dex */
    public class C1398a {
        String pkgName;
        int type;

        C1398a(String str, int i) {
            this.pkgName = str;
            this.type = i;
        }
    }
}
