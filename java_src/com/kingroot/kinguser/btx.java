package com.kingroot.kinguser;

import android.content.Context;
import android.text.TextUtils;
import com.tencent.qqpimsecure.seachsdk.common.AppDeatailInfo;
import com.tencent.qqpimsecure.seachsdk.common.AppInfo;
import com.tencent.qqpimsecure.seachsdk.common.AvailUpdateEntity;
import com.tencent.qqpimsecure.seachsdk.common.CategoryInfo;
import com.tencent.qqpimsecure.seachsdk.common.SoftwareAdvertiseEntity;
import com.tencent.qqpimsecure.seachsdk.internal.protocol.GetGameReservationResp;
import com.tencent.qqpimsecure.seachsdk.internal.protocol.HotWordResInfo;
import com.tencent.qqpimsecure.seachsdk.network.RequestInfo;
import com.tencent.qqpimsecure.seachsdk.network.ResponseInfo;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class btx {
    private static btx bNX;
    private static byte[] bNY = new byte[0];
    private int bNZ = 20;

    public static btx aid() {
        if (bNX == null) {
            synchronized (bNY) {
                if (bNX == null) {
                    bNX = new btx();
                }
            }
        }
        return bNX;
    }

    /* renamed from: a */
    public void m5508a(Context context, buk bukVar, boolean z) {
        bty.m5495bP(context);
        bty.aie().m5496a(bukVar);
        bty.aie().m5494eF(z);
    }

    /* renamed from: a */
    public void m5513a(int i, int i2, long j, int i3, long j2, bue<AppInfo> bueVar) {
        RequestInfo requestInfo = new RequestInfo();
        requestInfo.categoryID = i;
        requestInfo.fetchSize = i2;
        requestInfo.groupId = j;
        requestInfo.fetchOffset = i3;
        bvc.ais().m5437a(requestInfo, j2, bueVar);
    }

    /* renamed from: a */
    public void m5505a(String str, int i, int i2, int i3, final buc<AppInfo> bucVar) {
        final RequestInfo requestInfo = new RequestInfo();
        requestInfo.type = 8;
        requestInfo.fetchOffset = i2;
        requestInfo.fetchSize = i;
        requestInfo.keyWord = str;
        requestInfo.categoryID = i3;
        bvc.ais().m5436a(requestInfo, new bub() { // from class: com.kingroot.kinguser.btx.1
            @Override // com.kingroot.kinguser.bub
            /* renamed from: a */
            public void mo5492a(ResponseInfo responseInfo, buy buyVar) {
                if (responseInfo.type == 0) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.addAll(buyVar.air());
                    bucVar.mo5491a(0, buo.m5484B(arrayList), requestInfo);
                    return;
                }
                bucVar.mo5491a(2, new ArrayList(), requestInfo);
            }
        });
    }

    /* renamed from: a */
    public void m5509a(long j, int i, int i2, final buc<String> bucVar) {
        bvc.ais().m5445a(j, i, this.bNZ, new bua() { // from class: com.kingroot.kinguser.btx.2
            @Override // com.kingroot.kinguser.bua
            /* renamed from: a */
            public void mo5493a(ResponseInfo responseInfo, HotWordResInfo hotWordResInfo) {
                ArrayList arrayList = new ArrayList();
                if (responseInfo.type == 0) {
                    if (hotWordResInfo != null && hotWordResInfo.hotwords != null) {
                        for (int i3 = 0; i3 < hotWordResInfo.hotwords.size(); i3++) {
                            if (!TextUtils.isEmpty(hotWordResInfo.hotwords.get(i3).hotword)) {
                                arrayList.add(hotWordResInfo.hotwords.get(i3).hotword);
                            }
                        }
                    }
                    if (bucVar != null) {
                        bucVar.mo5491a(0, arrayList, null);
                    }
                } else if (bucVar != null) {
                    bucVar.mo5491a(2, arrayList, null);
                }
            }
        });
    }

    /* renamed from: a */
    public void m5512a(int i, long j, bun<AppInfo> bunVar) {
        bvc.ais().m5428b(i, j, bunVar);
    }

    /* renamed from: a */
    public void m5510a(int i, String str, int i2, int i3, long j, bui<AppInfo, SoftwareAdvertiseEntity> buiVar) {
        RequestInfo requestInfo = new RequestInfo();
        requestInfo.pkgName = str;
        requestInfo.categoryID = i;
        requestInfo.fetchOffset = i3;
        if (i2 == 0) {
            requestInfo.fetchSize = 30;
        } else {
            requestInfo.fetchSize = i2;
        }
        requestInfo.groupId = j;
        bvc.ais().m5434a(requestInfo, buiVar);
    }

    /* renamed from: a */
    public void m5504a(String str, bud<AppInfo, String> budVar) {
        bvc.ais().m5448a((byte) 0, str, budVar);
    }

    /* renamed from: a */
    public void m5506a(AppDeatailInfo appDeatailInfo, final buc<AppInfo> bucVar) {
        bvc.ais().m5432a(appDeatailInfo.packageName, appDeatailInfo.channelId, new StringBuilder(String.valueOf(appDeatailInfo.categoryid)).toString(), appDeatailInfo.appName, appDeatailInfo.apkFileMd5, appDeatailInfo.version, appDeatailInfo.versionCode, new buf<ResponseInfo, AppInfo>() { // from class: com.kingroot.kinguser.btx.3
            @Override // com.kingroot.kinguser.buf
            /* renamed from: a  reason: avoid collision after fix types in other method */
            public void mo5405a(ResponseInfo responseInfo, ArrayList<AppInfo> arrayList) {
                if (responseInfo.type == 0) {
                    bucVar.mo5491a(0, arrayList, null);
                } else {
                    bucVar.mo5491a(2, arrayList, null);
                }
            }
        });
    }

    /* renamed from: a */
    public void m5499a(List<bux> list, bug bugVar) {
        bvc.ais().m5430a(list, bugVar);
    }

    /* renamed from: a */
    public void m5511a(int i, final buc<CategoryInfo> bucVar) {
        bvc.ais().m5447a(i, new buf<ResponseInfo, CategoryInfo>() { // from class: com.kingroot.kinguser.btx.4
            @Override // com.kingroot.kinguser.buf
            /* renamed from: a  reason: avoid collision after fix types in other method */
            public void mo5405a(ResponseInfo responseInfo, ArrayList<CategoryInfo> arrayList) {
                if (responseInfo.type == 0) {
                    bucVar.mo5491a(0, arrayList, null);
                } else {
                    bucVar.mo5491a(2, new ArrayList(), null);
                }
            }
        });
    }

    /* renamed from: a */
    public void m5514a(int i, int i2, int i3, bue<AppInfo> bueVar) {
        bvc.ais().m5429b(i, i2, i3, bueVar);
    }

    /* renamed from: a */
    public void m5502a(String str, String str2, String str3, String str4, bum bumVar) {
        bvc.ais().m5433a(str, str2, str3, str4, bumVar);
    }

    /* renamed from: a */
    public void m5501a(ArrayList<String> arrayList, bun<GetGameReservationResp> bunVar) {
        bvc.ais().m5422b(arrayList, bunVar);
    }

    /* renamed from: a */
    public void m5507a(bun<buz> bunVar) {
        bvc.ais().m5426b(bunVar);
    }

    /* renamed from: a */
    public void m5500a(List<AppInfo> list, btz btzVar) {
        bvd.aiu().m5411b(list, btzVar);
    }

    /* renamed from: a */
    public void m5503a(String str, String str2, AvailUpdateEntity availUpdateEntity, buj bujVar) {
        bvd.aiu().m5412b(str, str2, availUpdateEntity, bujVar);
    }
}
