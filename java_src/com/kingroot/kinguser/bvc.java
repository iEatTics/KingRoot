package com.kingroot.kinguser;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.p019qq.jce.wup.UniAttribute;
import com.p019qq.taf.jce.JceStruct;
import com.tencent.qqpimsecure.seachsdk.common.AppInfo;
import com.tencent.qqpimsecure.seachsdk.common.CategoryInfo;
import com.tencent.qqpimsecure.seachsdk.common.SoftwareAdvertiseEntity;
import com.tencent.qqpimsecure.seachsdk.internal.protocol.AndroidCategoryExpand;
import com.tencent.qqpimsecure.seachsdk.internal.protocol.BannerDetail;
import com.tencent.qqpimsecure.seachsdk.internal.protocol.CSGameReservation;
import com.tencent.qqpimsecure.seachsdk.internal.protocol.CSGetBanner;
import com.tencent.qqpimsecure.seachsdk.internal.protocol.CSGetCallbackGameList;
import com.tencent.qqpimsecure.seachsdk.internal.protocol.CSGetGameReservation;
import com.tencent.qqpimsecure.seachsdk.internal.protocol.CSGetReservationGameList;
import com.tencent.qqpimsecure.seachsdk.internal.protocol.CSGetSearchSuggest;
import com.tencent.qqpimsecure.seachsdk.internal.protocol.CSGetSoftList;
import com.tencent.qqpimsecure.seachsdk.internal.protocol.CallbackGame;
import com.tencent.qqpimsecure.seachsdk.internal.protocol.Category;
import com.tencent.qqpimsecure.seachsdk.internal.protocol.DownInfo;
import com.tencent.qqpimsecure.seachsdk.internal.protocol.DownSoftInfo;
import com.tencent.qqpimsecure.seachsdk.internal.protocol.GetGameReservationReq;
import com.tencent.qqpimsecure.seachsdk.internal.protocol.GetGameReservationResp;
import com.tencent.qqpimsecure.seachsdk.internal.protocol.HotWordReqInfo;
import com.tencent.qqpimsecure.seachsdk.internal.protocol.HotWordResInfo;
import com.tencent.qqpimsecure.seachsdk.internal.protocol.MySoftSimpleInfo;
import com.tencent.qqpimsecure.seachsdk.internal.protocol.RelatedSoftList;
import com.tencent.qqpimsecure.seachsdk.internal.protocol.RelatedSoftListItem;
import com.tencent.qqpimsecure.seachsdk.internal.protocol.ReservationGame;
import com.tencent.qqpimsecure.seachsdk.internal.protocol.SCGameReservation;
import com.tencent.qqpimsecure.seachsdk.internal.protocol.SCGetBanner;
import com.tencent.qqpimsecure.seachsdk.internal.protocol.SCGetCallbackGameList;
import com.tencent.qqpimsecure.seachsdk.internal.protocol.SCGetGameReservation;
import com.tencent.qqpimsecure.seachsdk.internal.protocol.SCGetReservationGameList;
import com.tencent.qqpimsecure.seachsdk.internal.protocol.SCGetSearchSuggest;
import com.tencent.qqpimsecure.seachsdk.internal.protocol.SCGetSoftList;
import com.tencent.qqpimsecure.seachsdk.internal.protocol.SoftInfo;
import com.tencent.qqpimsecure.seachsdk.internal.protocol.SoftKey;
import com.tencent.qqpimsecure.seachsdk.internal.protocol.SoftKeyV2;
import com.tencent.qqpimsecure.seachsdk.internal.protocol.SoftListReq;
import com.tencent.qqpimsecure.seachsdk.internal.protocol.SoftListResp;
import com.tencent.qqpimsecure.seachsdk.internal.protocol.SoftServerInfo;
import com.tencent.qqpimsecure.seachsdk.internal.protocol.SoftSimpleInfo;
import com.tencent.qqpimsecure.seachsdk.network.RequestInfo;
import com.tencent.qqpimsecure.seachsdk.network.ResponseInfo;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes.dex */
public class bvc {
    private static bvc bOY;
    private Object bPa = new Object();
    private long bPb = 28800000;
    private bvt bOZ = new bvt();

    public static bvc ais() {
        if (bOY == null) {
            bOY = new bvc();
        }
        return bOY;
    }

    /* renamed from: a */
    public void m5437a(RequestInfo requestInfo, long j, bue<AppInfo> bueVar) {
        m5423b(requestInfo, j, bueVar);
    }

    /* renamed from: b */
    private void m5423b(RequestInfo requestInfo, long j, bue<AppInfo> bueVar) {
        int m5383ku = bvg.aiv().aiw().m5383ku(requestInfo.categoryID);
        if (requestInfo.fetchOffset == 0 && m5383ku != requestInfo.fetchSize) {
            m5435a(requestInfo, bueVar, true);
            return;
        }
        long m5384kt = bvg.aiv().aiw().m5384kt(requestInfo.categoryID);
        long currentTimeMillis = System.currentTimeMillis();
        if (j <= 0) {
            j = bvg.aiv().aiw().aiz();
        }
        if (currentTimeMillis - m5384kt < j && requestInfo.fetchOffset == 0) {
            ArrayList arrayList = (ArrayList) bvk.aiy().m5387ar(requestInfo.categoryID, 0);
            if (!buq.m5472q(arrayList)) {
                ArrayList<SoftwareAdvertiseEntity> m5394ks = bvg.aiv().aix().m5394ks(requestInfo.categoryID);
                ResponseInfo responseInfo = new ResponseInfo();
                if (!buq.m5472q(m5394ks)) {
                    SoftwareAdvertiseEntity softwareAdvertiseEntity = m5394ks.get(0);
                    responseInfo.hasNextPage = softwareAdvertiseEntity.hasNextPage;
                    responseInfo.nextBeginPos = softwareAdvertiseEntity.nextPageIndex == 0 ? requestInfo.fetchSize : softwareAdvertiseEntity.nextPageIndex;
                    if (!TextUtils.isEmpty(softwareAdvertiseEntity.topicId)) {
                        try {
                            responseInfo.groupId = Long.valueOf(softwareAdvertiseEntity.topicId).longValue();
                        } catch (Exception e) {
                        }
                    }
                } else {
                    responseInfo.hasNextPage = true;
                    responseInfo.nextBeginPos = requestInfo.fetchSize;
                }
                bueVar.mo5489a(0, arrayList, requestInfo, responseInfo);
                return;
            }
        }
        m5435a(requestInfo, bueVar, true);
    }

    /* renamed from: b */
    public void m5426b(final bun<buz> bunVar) {
        CSGetCallbackGameList cSGetCallbackGameList = new CSGetCallbackGameList();
        cSGetCallbackGameList.reserve = "12345";
        bty.aie().aif().mo5487a(2241, cSGetCallbackGameList, new SCGetCallbackGameList(), new bul() { // from class: com.kingroot.kinguser.bvc.1
            @Override // com.kingroot.kinguser.bul
            /* renamed from: a */
            public void mo5414a(int i, JceStruct jceStruct) {
                int m5379kG = bvo.m5379kG(i);
                int m5378kH = bvo.m5378kH(i);
                int m5377kI = bvo.m5377kI(i);
                if (m5379kG != 0 || m5378kH != 0 || m5377kI != 0) {
                    bunVar.onReceive(1, null);
                } else if (!(jceStruct instanceof SCGetCallbackGameList)) {
                    bunVar.onReceive(1, null);
                } else {
                    SCGetCallbackGameList sCGetCallbackGameList = (SCGetCallbackGameList) jceStruct;
                    if (sCGetCallbackGameList.retCode != 0) {
                        bunVar.onReceive(1, null);
                        return;
                    }
                    ArrayList<CallbackGame> arrayList = sCGetCallbackGameList.callbackGameList;
                    if (buq.m5472q(arrayList)) {
                        bunVar.onReceive(1, null);
                        return;
                    }
                    ArrayList arrayList2 = new ArrayList();
                    Iterator<CallbackGame> it = arrayList.iterator();
                    while (it.hasNext()) {
                        CallbackGame next = it.next();
                        if (next != null && next.softDetail != null && next.tipsPos != 0 && next.tipsInfo != null) {
                            AppInfo m5470a = bur.m5470a(next.softDetail);
                            buz buzVar = new buz();
                            buzVar.pkgName = m5470a.pkgName;
                            buzVar.versionCode = m5470a.newVersionCode;
                            buzVar.appInfo = m5470a;
                            buzVar.orderId = next.orderId;
                            buzVar.tipsInfo = next.tipsInfo;
                            arrayList2.add(buzVar);
                        }
                    }
                    bunVar.onReceive(0, arrayList2);
                }
            }
        });
    }

    /* renamed from: b */
    public void m5422b(ArrayList<String> arrayList, final bun<GetGameReservationResp> bunVar) {
        CSGetGameReservation cSGetGameReservation = new CSGetGameReservation();
        cSGetGameReservation.vecGetGameReservation = new ArrayList<>();
        Iterator<String> it = arrayList.iterator();
        while (it.hasNext()) {
            GetGameReservationReq getGameReservationReq = new GetGameReservationReq();
            getGameReservationReq.activityId = it.next();
            cSGetGameReservation.vecGetGameReservation.add(getGameReservationReq);
        }
        bty.aie().aif().mo5487a(2234, cSGetGameReservation, new SCGetGameReservation(), new bul() { // from class: com.kingroot.kinguser.bvc.7
            @Override // com.kingroot.kinguser.bul
            /* renamed from: a */
            public void mo5414a(int i, JceStruct jceStruct) {
                int m5379kG = bvo.m5379kG(i);
                int m5378kH = bvo.m5378kH(i);
                int m5377kI = bvo.m5377kI(i);
                if (m5379kG != 0 || m5378kH != 0 || m5377kI != 0) {
                    if (bunVar != null) {
                        bunVar.onReceive(1, null);
                        return;
                    }
                    return;
                }
                ArrayList<GetGameReservationResp> arrayList2 = ((SCGetGameReservation) jceStruct).vecResp;
                if (arrayList2 != null && arrayList2.size() >= 1) {
                    if (bunVar != null) {
                        bunVar.onReceive(0, arrayList2);
                    }
                } else if (bunVar != null) {
                    bunVar.onReceive(1, null);
                }
            }
        });
    }

    /* renamed from: a */
    public void m5433a(String str, String str2, String str3, String str4, final bum bumVar) {
        CSGameReservation cSGameReservation = new CSGameReservation();
        cSGameReservation.activityId = str;
        cSGameReservation.pkgName = str2;
        if (!TextUtils.isEmpty(str3)) {
            cSGameReservation.f4900qq = str3;
        } else if (!TextUtils.isEmpty(str4)) {
            cSGameReservation.openid = str4;
        }
        bty.aie().aif().mo5487a(2235, cSGameReservation, new SCGameReservation(), new bul() { // from class: com.kingroot.kinguser.bvc.8
            @Override // com.kingroot.kinguser.bul
            /* renamed from: a */
            public void mo5414a(int i, JceStruct jceStruct) {
                int m5379kG = bvo.m5379kG(i);
                int m5378kH = bvo.m5378kH(i);
                int m5377kI = bvo.m5377kI(i);
                if (m5379kG != 0 || m5378kH != 0 || m5377kI != 0) {
                    if (bumVar != null) {
                        bumVar.mo5485b(false, "", "");
                        return;
                    }
                    return;
                }
                SCGameReservation sCGameReservation = (SCGameReservation) jceStruct;
                if (bumVar != null) {
                    bumVar.mo5485b(true, sCGameReservation.openid, sCGameReservation.f4915qq);
                }
            }
        });
    }

    /* renamed from: b */
    public void m5429b(int i, int i2, int i3, final bue<AppInfo> bueVar) {
        final RequestInfo requestInfo = new RequestInfo();
        requestInfo.categoryID = i;
        requestInfo.fetchOffset = i2;
        requestInfo.fetchSize = i3;
        CSGetReservationGameList cSGetReservationGameList = new CSGetReservationGameList();
        cSGetReservationGameList.categoryId = requestInfo.categoryID;
        cSGetReservationGameList.beginPos = requestInfo.fetchOffset;
        cSGetReservationGameList.pageSize = requestInfo.fetchSize;
        bty.aie().aif().mo5487a(2240, cSGetReservationGameList, new SCGetReservationGameList(), new bul() { // from class: com.kingroot.kinguser.bvc.9
            @Override // com.kingroot.kinguser.bul
            /* renamed from: a */
            public void mo5414a(int i4, JceStruct jceStruct) {
                int m5379kG = bvo.m5379kG(i4);
                int m5378kH = bvo.m5378kH(i4);
                int m5377kI = bvo.m5377kI(i4);
                if (m5379kG != 0 || m5378kH != 0 || m5377kI != 0) {
                    bueVar.mo5489a(1, null, requestInfo, null);
                } else if (!(jceStruct instanceof SCGetReservationGameList)) {
                    bueVar.mo5489a(1, null, requestInfo, null);
                } else {
                    SCGetReservationGameList sCGetReservationGameList = (SCGetReservationGameList) jceStruct;
                    if (sCGetReservationGameList.retCode != 0) {
                        bueVar.mo5489a(1, null, requestInfo, null);
                        return;
                    }
                    ArrayList<ReservationGame> arrayList = sCGetReservationGameList.resGameList;
                    if (buq.m5472q(arrayList)) {
                        bueVar.mo5489a(1, null, requestInfo, null);
                        return;
                    }
                    ResponseInfo responseInfo = new ResponseInfo();
                    responseInfo.hasNextPage = sCGetReservationGameList.hasNextPage;
                    responseInfo.nextBeginPos = sCGetReservationGameList.nextBeginPos;
                    bueVar.mo5489a(0, buo.m5476cp(arrayList), requestInfo, responseInfo);
                }
            }
        });
    }

    /* renamed from: a */
    private void m5435a(RequestInfo requestInfo, final bue<AppInfo> bueVar, final boolean z) {
        m5434a(requestInfo, new bui<AppInfo, SoftwareAdvertiseEntity>() { // from class: com.kingroot.kinguser.bvc.10
            @Override // com.kingroot.kinguser.bui
            /* renamed from: a */
            public void mo5416a(int i, List<AppInfo> list, List<SoftwareAdvertiseEntity> list2, RequestInfo requestInfo2, ResponseInfo responseInfo) {
                if (i == 0) {
                    bueVar.mo5489a(i, list, requestInfo2, responseInfo);
                    if (list != null && list.size() > 0 && z && requestInfo2.fetchOffset == 0) {
                        bvk.aiy().m5389a(list, requestInfo2.categoryID, 0);
                        bvg.aiv().aiw().m5381l(requestInfo2.categoryID, System.currentTimeMillis());
                        bvg.aiv().aiw().m5385as(requestInfo2.categoryID, requestInfo2.fetchSize);
                        return;
                    }
                    return;
                }
                bueVar.mo5489a(i, list, requestInfo2, responseInfo);
            }
        });
    }

    /* renamed from: b */
    public void m5428b(int i, long j, bun<AppInfo> bunVar) {
        if (j <= 0) {
            j = this.bPb;
        }
        if (m5418k(i, j)) {
            m5427b(i, bunVar);
        } else {
            m5446a(i, bunVar);
        }
    }

    /* renamed from: a */
    private void m5446a(int i, bun<AppInfo> bunVar) {
        List<AppInfo> m5387ar = bvk.aiy().m5387ar(i, 0);
        if (m5387ar != null && m5387ar.size() > 0) {
            if (bunVar != null) {
                bunVar.onReceive(0, m5387ar);
                return;
            }
            return;
        }
        m5427b(i, bunVar);
    }

    /* renamed from: k */
    private boolean m5418k(int i, long j) {
        but.m5464d("SeachSoftEngine", "checkFetchBannerDataCondition():: [categoryId," + i + "]");
        return System.currentTimeMillis() - bvg.aiv().aiw().m5382kv(i) > j;
    }

    /* renamed from: b */
    private void m5427b(final int i, final bun<AppInfo> bunVar) {
        CSGetBanner cSGetBanner = new CSGetBanner();
        cSGetBanner.adsPosition = i;
        bty.aie().aif().mo5487a(2225, cSGetBanner, new SCGetBanner(), new bul() { // from class: com.kingroot.kinguser.bvc.11
            @Override // com.kingroot.kinguser.bul
            /* renamed from: a */
            public void mo5414a(int i2, JceStruct jceStruct) {
                AppInfo m5438a;
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                if (i2 != 0) {
                    if (bunVar != null) {
                        bunVar.onReceive(2, arrayList2);
                        return;
                    }
                    return;
                }
                SCGetBanner sCGetBanner = (SCGetBanner) jceStruct;
                int i3 = sCGetBanner.retCode;
                if (sCGetBanner.vecBannerDetail != null) {
                    arrayList.addAll(sCGetBanner.vecBannerDetail);
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    BannerDetail bannerDetail = (BannerDetail) it.next();
                    but.m5464d("SeachSoftEngine", "|categoryId," + i + "]" + bvc.m5424b(bannerDetail));
                    if (bvc.m5439a(bannerDetail) && (m5438a = bvc.m5438a(bannerDetail, i)) != null) {
                        arrayList2.add(m5438a);
                    }
                }
                if (!arrayList2.isEmpty()) {
                    bvg.aiv().aiw().m5380m(i, System.currentTimeMillis());
                    bvk.aiy().m5389a(arrayList2, i, 0);
                }
                if (bunVar != null) {
                    bunVar.onReceive(0, arrayList2);
                }
            }
        });
    }

    /* renamed from: a */
    public void m5434a(final RequestInfo requestInfo, final bui<AppInfo, SoftwareAdvertiseEntity> buiVar) {
        SoftListReq softListReq = new SoftListReq();
        softListReq.categoryId = requestInfo.categoryID;
        softListReq.beginPos = requestInfo.fetchOffset;
        softListReq.pageSize = requestInfo.fetchSize;
        softListReq.queryKeyWord = requestInfo.queryKeyWord;
        softListReq.pkgName = requestInfo.pkgName;
        softListReq.sourceId = requestInfo.categoryID;
        softListReq.groupId = requestInfo.groupId;
        softListReq.tagId = requestInfo.tagId;
        CSGetSoftList cSGetSoftList = new CSGetSoftList();
        ArrayList<SoftListReq> arrayList = new ArrayList<>();
        arrayList.add(softListReq);
        cSGetSoftList.vecSoftListReq = arrayList;
        bty.aie().aif().mo5487a(2238, cSGetSoftList, new SCGetSoftList(), new bul() { // from class: com.kingroot.kinguser.bvc.12
            @Override // com.kingroot.kinguser.bul
            /* renamed from: a */
            public void mo5414a(int i, JceStruct jceStruct) {
                SoftwareAdvertiseEntity m5467a;
                if (!(jceStruct instanceof SCGetSoftList)) {
                    buiVar.mo5416a(1, null, null, requestInfo, null);
                    return;
                }
                SCGetSoftList sCGetSoftList = (SCGetSoftList) jceStruct;
                if (sCGetSoftList.retCode != 0) {
                    buiVar.mo5416a(1, null, null, requestInfo, null);
                    return;
                }
                ArrayList<SoftListResp> arrayList2 = sCGetSoftList.vecSoftListResp;
                if (buq.m5472q(arrayList2)) {
                    buiVar.mo5416a(1, new ArrayList(0), null, requestInfo, null);
                    return;
                }
                SoftListResp softListResp = arrayList2.get(0);
                List<AppInfo> m5479a = buo.m5479a(softListResp);
                ResponseInfo responseInfo = new ResponseInfo();
                responseInfo.hasNextPage = softListResp.hasNextPage;
                responseInfo.nextBeginPos = softListResp.nextBeginPos;
                responseInfo.categoryId = softListResp.categoryId;
                responseInfo.groupId = softListResp.showDetail.groupId;
                ArrayList<RelatedSoftList> arrayList3 = sCGetSoftList.vecRelatedSoftList;
                ArrayList arrayList4 = new ArrayList();
                if (!buq.m5472q(arrayList3)) {
                    for (RelatedSoftList relatedSoftList : arrayList3) {
                        if (relatedSoftList.srcCategoryId == softListResp.categoryId) {
                            ArrayList<RelatedSoftListItem> arrayList5 = relatedSoftList.vecRelatedSoftListItem;
                            if (buq.m5472q(arrayList5)) {
                                break;
                            }
                            for (RelatedSoftListItem relatedSoftListItem : arrayList5) {
                                if (relatedSoftListItem != null && (m5467a = bur.m5467a(relatedSoftListItem.softListResp, -1, (int) relatedSoftListItem.index, requestInfo.keyWord)) != null) {
                                    arrayList4.add(m5467a);
                                }
                            }
                        }
                    }
                }
                buiVar.mo5416a(0, m5479a, arrayList4, requestInfo, responseInfo);
            }
        });
    }

    /* renamed from: a */
    public void m5436a(RequestInfo requestInfo, final bub bubVar) {
        String str = "";
        if (requestInfo != null) {
            str = requestInfo.aiD();
        }
        bty.aie().aif().mo5486a(this.bOZ.m5374a(2, "request", str), new buh() { // from class: com.kingroot.kinguser.bvc.13
            @Override // com.kingroot.kinguser.buh
            /* renamed from: a */
            public void mo5415a(int i, bvp bvpVar) {
                ResponseInfo responseInfo = new ResponseInfo();
                AtomicReference atomicReference = new AtomicReference();
                ArrayList arrayList = new ArrayList();
                buy buyVar = new buy();
                if (i != 0) {
                    if (bus.m5465kq(i) == 0) {
                        responseInfo.type = 2;
                        responseInfo.code = i;
                    } else {
                        responseInfo.type = 1;
                        responseInfo.code = i;
                    }
                } else {
                    Object m5373a = bvc.this.bOZ.m5373a(bvpVar.bQI, "serverinfo", new SoftServerInfo());
                    if (m5373a != null) {
                        atomicReference.set((SoftServerInfo) m5373a);
                    }
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(new SoftSimpleInfo());
                    Object m5373a2 = bvc.this.bOZ.m5373a(bvpVar.bQI, "softs", arrayList2);
                    if (m5373a2 != null) {
                        arrayList.clear();
                        arrayList.addAll((Collection) m5373a2);
                    }
                    bvc.this.m5420cq(arrayList);
                    responseInfo.type = 0;
                    responseInfo.code = i;
                    UniAttribute uniAttribute = new UniAttribute();
                    uniAttribute.setEncodeName("UTF-8");
                    SoftServerInfo softServerInfo = (SoftServerInfo) atomicReference.get();
                    if (softServerInfo != null && softServerInfo.expand != null) {
                        bup bupVar = new bup();
                        uniAttribute.clearCacheData();
                        uniAttribute.decode(softServerInfo.expand);
                        Category category = (Category) uniAttribute.getByClass("expand", new Category());
                        bupVar.m5473a(category);
                        if (category != null && category.expand != null) {
                            uniAttribute.clearCacheData();
                            uniAttribute.decode(category.expand);
                            bupVar.m5474a((AndroidCategoryExpand) uniAttribute.getByClass("expand", new AndroidCategoryExpand()));
                        }
                        buyVar.m5451a(bupVar);
                    }
                    ArrayList<bvq> arrayList3 = new ArrayList<>();
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        SoftSimpleInfo softSimpleInfo = (SoftSimpleInfo) it.next();
                        bvq bvqVar = new bvq();
                        bvqVar.m5376a(softSimpleInfo);
                        if (softSimpleInfo.expand != null) {
                            uniAttribute.clearCacheData();
                            uniAttribute.decode(softSimpleInfo.expand);
                        }
                        arrayList3.add(bvqVar);
                    }
                    buyVar.m5452C(arrayList3);
                }
                if (bubVar != null) {
                    bubVar.mo5492a(responseInfo, buyVar);
                }
            }
        });
    }

    /* renamed from: a */
    public void m5445a(long j, int i, int i2, final bua buaVar) {
        HotWordReqInfo hotWordReqInfo = new HotWordReqInfo();
        hotWordReqInfo.version = 1;
        hotWordReqInfo.index = i;
        hotWordReqInfo.num = i2;
        hotWordReqInfo.categoryId = j;
        final bvp m5374a = this.bOZ.m5374a(5, "hotwordreq", hotWordReqInfo);
        bty.aie().aif().mo5486a(m5374a, new buh() { // from class: com.kingroot.kinguser.bvc.14
            @Override // com.kingroot.kinguser.buh
            /* renamed from: a */
            public void mo5415a(int i3, bvp bvpVar) {
                ResponseInfo responseInfo = new ResponseInfo();
                HotWordResInfo hotWordResInfo = new HotWordResInfo();
                if (i3 != 0) {
                    if (bus.m5465kq(i3) == 0) {
                        responseInfo.type = 2;
                        responseInfo.code = i3;
                    } else {
                        responseInfo.type = 1;
                        responseInfo.code = i3;
                    }
                } else {
                    HotWordResInfo hotWordResInfo2 = hotWordResInfo != null ? (HotWordResInfo) bvc.this.bOZ.m5373a(m5374a.bQI, "hotwordres", new HotWordResInfo()) : hotWordResInfo;
                    responseInfo.type = 0;
                    responseInfo.code = i3;
                    hotWordResInfo = hotWordResInfo2;
                }
                if (buaVar != null) {
                    buaVar.mo5493a(responseInfo, hotWordResInfo);
                }
            }
        });
    }

    /* renamed from: a */
    public void m5448a(byte b, String str, final bud<AppInfo, String> budVar) {
        if (!TextUtils.isEmpty(str)) {
            CSGetSearchSuggest cSGetSearchSuggest = new CSGetSearchSuggest();
            cSGetSearchSuggest.type = b;
            cSGetSearchSuggest.keyWord = str;
            bty.aie().aif().mo5487a(2201, cSGetSearchSuggest, new SCGetSearchSuggest(), new bul() { // from class: com.kingroot.kinguser.bvc.2
                @Override // com.kingroot.kinguser.bul
                /* renamed from: a */
                public void mo5414a(int i, JceStruct jceStruct) {
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    if (i != 0) {
                        if (budVar != null) {
                            budVar.mo5490a(2, arrayList, arrayList2, null);
                        }
                    } else if (jceStruct == null) {
                        if (budVar != null) {
                            budVar.mo5490a(2, arrayList, arrayList2, null);
                        }
                    } else if (!(jceStruct instanceof SCGetSearchSuggest)) {
                        if (budVar != null) {
                            budVar.mo5490a(2, arrayList, arrayList2, null);
                        }
                    } else {
                        SCGetSearchSuggest sCGetSearchSuggest = (SCGetSearchSuggest) jceStruct;
                        ArrayList<String> arrayList3 = sCGetSearchSuggest.keyWords;
                        ArrayList<SoftSimpleInfo> arrayList4 = sCGetSearchSuggest.softInfos;
                        ArrayList arrayList5 = new ArrayList();
                        if (arrayList4 != null && arrayList4.size() != 0) {
                            for (SoftSimpleInfo softSimpleInfo : arrayList4) {
                                bvq bvqVar = new bvq();
                                bvqVar.m5376a(softSimpleInfo);
                                arrayList5.add(bvqVar);
                            }
                        }
                        List<AppInfo> m5484B = buo.m5484B(arrayList5);
                        List m5417k = bvc.this.m5417k(arrayList4, arrayList3);
                        if (budVar != null) {
                            budVar.mo5490a(0, m5484B, m5417k, null);
                        }
                    }
                }
            });
        }
    }

    /* renamed from: a */
    public void m5432a(String str, String str2, String str3, String str4, String str5, String str6, int i, final buf<ResponseInfo, AppInfo> bufVar) {
        but.m5464d("SeachSoftEngine", "fetchSoftDeatil()");
        if (str != null) {
            SoftKey softKey = new SoftKey();
            softKey.softname = str;
            softKey.channelId = str2;
            softKey.name = str4;
            softKey.version = str6;
            softKey.versioncode = i;
            softKey.apkFileMd5 = str5;
            ArrayList arrayList = new ArrayList();
            arrayList.add(softKey);
            bty.aie().aif().mo5486a(this.bOZ.m5374a(6, "vecsoftkey", arrayList), new buh() { // from class: com.kingroot.kinguser.bvc.3
                @Override // com.kingroot.kinguser.buh
                /* renamed from: a */
                public void mo5415a(int i2, bvp bvpVar) {
                    ResponseInfo responseInfo = new ResponseInfo();
                    ArrayList arrayList2 = new ArrayList();
                    if (i2 != 0) {
                        if (bus.m5465kq(i2) == 0) {
                            responseInfo.type = 2;
                            responseInfo.code = i2;
                            bufVar.mo5405a(responseInfo, null);
                        } else {
                            responseInfo.type = 1;
                            responseInfo.code = i2;
                            bufVar.mo5405a(responseInfo, null);
                        }
                    } else {
                        new ArrayList().add(new AppInfo());
                        ArrayList arrayList3 = new ArrayList();
                        arrayList3.add(new SoftInfo());
                        Object m5373a = bvc.this.bOZ.m5373a(bvpVar.bQI, "vecsoftinfo", arrayList3);
                        if (m5373a != null) {
                            arrayList2.clear();
                            arrayList2.addAll((Collection) m5373a);
                        }
                        responseInfo.type = 0;
                        responseInfo.code = i2;
                        bvc.this.m5419cr(arrayList2);
                    }
                    if (bufVar != null) {
                        ArrayList arrayList4 = new ArrayList();
                        if (!buq.m5472q(arrayList2)) {
                            Iterator it = arrayList2.iterator();
                            while (it.hasNext()) {
                                SoftInfo softInfo = (SoftInfo) it.next();
                                if (softInfo != null) {
                                    arrayList4.add(buo.m5480a(softInfo));
                                }
                            }
                        }
                        bufVar.mo5405a(responseInfo, arrayList4);
                    }
                }
            });
        }
    }

    /* renamed from: a */
    public void m5430a(List<bux> list, bug bugVar) {
        if (list == null) {
            but.m5463e("SeachSoftEngine", "reportStartDownSoftInfo List AppDownloadTask is null");
        } else {
            m5421b(list, bugVar);
        }
    }

    /* renamed from: b */
    public void m5421b(List<bux> list, final bug bugVar) {
        ArrayList arrayList = new ArrayList();
        for (bux buxVar : list) {
            arrayList.add(m5440a(buxVar.appInfo, buxVar.bON, buxVar.bOO));
        }
        if (arrayList.size() > 0) {
            bty.aie().aif().mo5486a(this.bOZ.m5374a(9, "downinfo", new DownInfo("AQQSecure_GA_2_0/011201&ADR&" + buw.m5454qa() + "&V2", 0, arrayList)), new buh() { // from class: com.kingroot.kinguser.bvc.4
                @Override // com.kingroot.kinguser.buh
                /* renamed from: a */
                public void mo5415a(int i, bvp bvpVar) {
                    if (bugVar != null) {
                        bugVar.mo5488fD(i);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: cq */
    public void m5420cq(List<SoftSimpleInfo> list) {
        for (SoftSimpleInfo softSimpleInfo : list) {
            String str = softSimpleInfo.nick_name;
            if (str != null && !str.equals("")) {
                softSimpleInfo.softkey.name = str;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public List<String> m5417k(List<SoftSimpleInfo> list, List<String> list2) {
        ArrayList arrayList = new ArrayList();
        for (String str : list2) {
            if (!TextUtils.isEmpty(str)) {
                arrayList.add(str);
            }
            if (arrayList.size() >= 13) {
                break;
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: cr */
    public void m5419cr(List<SoftInfo> list) {
        for (SoftInfo softInfo : list) {
            String str = softInfo.nick_name;
            if (str != null && !str.equals("")) {
                softInfo.softkey.name = str;
            }
        }
    }

    /* renamed from: a */
    private DownSoftInfo m5440a(AppInfo appInfo, int i, int i2) {
        DownSoftInfo downSoftInfo = new DownSoftInfo();
        if (i == 0 || i == 1) {
            downSoftInfo.nProductId = -1;
            downSoftInfo.nSoftId = -1;
            downSoftInfo.nFileId = -1;
            downSoftInfo.nAvgSpeed = appInfo.mSpeed;
            downSoftInfo.url = appInfo.fileUrl;
            downSoftInfo.errorcode = appInfo.mErrorCode;
            downSoftInfo.downnetname = appInfo.mNetworkName;
            downSoftInfo.downnettype = appInfo.bOr.value();
            downSoftInfo.reportnetname = buv.getNetworkName();
            downSoftInfo.reportnettype = buv.ain().value();
            downSoftInfo.nDownSize = (int) appInfo.mSize;
            downSoftInfo.filesize = (int) appInfo.mSize;
            downSoftInfo.errormsg = appInfo.bOs;
            downSoftInfo.rssi = appInfo.mErrorRssi;
            downSoftInfo.downloadStartTime = appInfo.mStartTime;
            downSoftInfo.realChannelId = appInfo.mExtraInfo;
        }
        downSoftInfo.nSuccess = (byte) i;
        downSoftInfo.categoryid = appInfo.categoryid;
        downSoftInfo.pos = appInfo.mPos;
        downSoftInfo.Networkstandard = ait();
        downSoftInfo.channelId = appInfo.channelId;
        downSoftInfo.come_from = appInfo.mComeFrom;
        downSoftInfo.realPkgName = appInfo.pkgName;
        downSoftInfo.ext_str = appInfo.strExtend;
        downSoftInfo.businessType = appInfo.businessType;
        downSoftInfo.backendExtendInfo = appInfo.busiData;
        downSoftInfo.frontendExtendInfo = appInfo.transData;
        downSoftInfo.silentType = 0;
        downSoftInfo.nProductId = appInfo.mProductId;
        downSoftInfo.nSoftId = appInfo.mSoftId;
        downSoftInfo.nFileId = appInfo.mFileId;
        SoftKey softKey = new SoftKey();
        softKey.uid = bva.m5450nl(appInfo.uid);
        softKey.softname = bva.m5450nl(appInfo.pkgName);
        softKey.name = bva.m5450nl(appInfo.appName);
        softKey.version = bva.m5450nl(appInfo.newVersion);
        softKey.versioncode = appInfo.newVersionCode;
        softKey.source = appInfo.mSource;
        softKey.channelId = appInfo.channelId;
        downSoftInfo.softkey = softKey;
        if (i2 == 2) {
            downSoftInfo.nDownType = (byte) 2;
        } else if (i2 == 3) {
            downSoftInfo.nDownType = (byte) 1;
        }
        return downSoftInfo;
    }

    public int ait() {
        int i;
        Context context;
        NetworkInfo activeNetworkInfo;
        TelephonyManager telephonyManager;
        try {
            context = bty.aie().getContext();
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (context == null || (activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo()) == null) {
            return 0;
        }
        if (activeNetworkInfo.getType() == 1) {
            i = -1;
        } else {
            if (activeNetworkInfo.getType() == 0 && (telephonyManager = (TelephonyManager) context.getSystemService("phone")) != null) {
                i = telephonyManager.getNetworkType();
            }
            i = 0;
        }
        return i;
    }

    /* renamed from: a */
    public static boolean m5439a(BannerDetail bannerDetail) {
        if (bannerDetail == null || bannerDetail.pictureUrl == null || TextUtils.isEmpty(bannerDetail.pictureUrl.picture1) || bannerDetail.expireTime == 0) {
            return false;
        }
        if (bannerDetail.jumpType == 1 && (bannerDetail.softKey == null || TextUtils.isEmpty(bannerDetail.softKey.pkgName))) {
            return false;
        }
        if (bannerDetail.jumpType == 2 && bannerDetail.categoryId == 0) {
            return false;
        }
        return (bannerDetail.jumpType == 3 && TextUtils.isEmpty(bannerDetail.jumpUrl)) ? false : true;
    }

    /* renamed from: b */
    public static String m5424b(BannerDetail bannerDetail) {
        StringBuffer stringBuffer = new StringBuffer();
        if (bannerDetail == null) {
            return "BannerDetail is null";
        }
        stringBuffer.append("BannerDetail = ").append("|bannerId|" + bannerDetail.bannerId).append("|jumpType|" + bannerDetail.jumpType).append("|jumpUrl|" + bannerDetail.jumpUrl).append("|categoryId|" + bannerDetail.categoryId).append("|expireTime|" + bannerDetail.expireTime).append("|pictureUrl|" + (bannerDetail.pictureUrl == null ? "null" : bannerDetail.pictureUrl.picture1)).append("|showType|" + bannerDetail.showType).append("|activityID|" + bannerDetail.activityId);
        SoftKeyV2 softKeyV2 = bannerDetail.softKey;
        if (softKeyV2 != null) {
            stringBuffer.append("|pkgName|" + softKeyV2.pkgName);
            stringBuffer.append("|channelId|" + softKeyV2.channelId);
            stringBuffer.append("|softName|" + softKeyV2.softName);
            stringBuffer.append("|versionName|" + softKeyV2.versionName);
            stringBuffer.append("|versionCode|" + softKeyV2.versionCode);
        } else {
            stringBuffer.append("|softkey is null");
        }
        return stringBuffer.toString();
    }

    /* renamed from: a */
    public static AppInfo m5438a(BannerDetail bannerDetail, int i) {
        if (bannerDetail == null) {
            return null;
        }
        AppInfo appInfo = new AppInfo();
        appInfo.jumptype = bannerDetail.jumpType;
        appInfo.logoUrl = bannerDetail.pictureUrl != null ? bannerDetail.pictureUrl.picture1 : "";
        appInfo.bannerId = bannerDetail.bannerId;
        appInfo.browserUrl = bannerDetail.jumpUrl;
        appInfo.expirationTime = String.valueOf(bannerDetail.expireTime);
        appInfo.categoryid = i;
        appInfo.mDestCategoryId = (int) bannerDetail.categoryId;
        appInfo.itemType = 3;
        appInfo.defaultShowType = bannerDetail.showType;
        appInfo.picBtnUrl = bannerDetail.pictureUrl.picture3;
        appInfo.picIconUrl = bannerDetail.pictureUrl.picture2;
        appInfo.activityID = bannerDetail.activityId;
        SoftKeyV2 softKeyV2 = bannerDetail.softKey;
        if (softKeyV2 != null) {
            appInfo.pkgName = softKeyV2.pkgName;
            appInfo.newVersion = softKeyV2.versionName;
            appInfo.newVersionCode = softKeyV2.versionCode;
            appInfo.appName = softKeyV2.softName;
            appInfo.certMD5 = softKeyV2.certMd5;
            appInfo.channelId = softKeyV2.channelId;
        }
        return appInfo;
    }

    /* renamed from: a */
    public void m5447a(final int i, final buf<ResponseInfo, CategoryInfo> bufVar) {
        RequestInfo requestInfo = new RequestInfo();
        requestInfo.categoryType = i;
        requestInfo.type = 1;
        String str = "";
        if (requestInfo != null) {
            str = requestInfo.aiD();
        }
        bty.aie().aif().mo5486a(this.bOZ.m5374a(1, "request", str), new buh() { // from class: com.kingroot.kinguser.bvc.5
            @Override // com.kingroot.kinguser.buh
            /* renamed from: a */
            public void mo5415a(int i2, bvp bvpVar) {
                ResponseInfo responseInfo = new ResponseInfo();
                ArrayList arrayList = new ArrayList();
                AtomicReference atomicReference = new AtomicReference();
                ArrayList arrayList2 = new ArrayList();
                if (i2 != 0) {
                    if (bus.m5465kq(i2) == 0) {
                        responseInfo.type = 2;
                        responseInfo.code = i2;
                        but.m5463e("SeachSoftEngine", "network error");
                    } else {
                        responseInfo.type = 1;
                        responseInfo.code = i2;
                        but.m5463e("SeachSoftEngine", "runtime error");
                    }
                } else {
                    Object m5373a = bvc.this.bOZ.m5373a(bvpVar.bQI, "serverinfo", new SoftServerInfo());
                    if (m5373a != null) {
                        atomicReference.set((SoftServerInfo) m5373a);
                    }
                    ArrayList arrayList3 = new ArrayList();
                    arrayList3.add(new Category());
                    Object m5373a2 = bvc.this.bOZ.m5373a(bvpVar.bQI, "categorys", arrayList3);
                    if (m5373a2 != null) {
                        arrayList2.clear();
                        arrayList2.addAll((Collection) m5373a2);
                    }
                    responseInfo.type = 0;
                    responseInfo.code = i2;
                    UniAttribute uniAttribute = new UniAttribute();
                    uniAttribute.setEncodeName("UTF-8");
                    Iterator it = arrayList2.iterator();
                    while (it.hasNext()) {
                        Category category = (Category) it.next();
                        bup bupVar = new bup();
                        bupVar.m5473a(category);
                        if (category != null && category.expand != null) {
                            uniAttribute.clearCacheData();
                            uniAttribute.decode(category.expand);
                            bupVar.m5474a((AndroidCategoryExpand) uniAttribute.getByClass("expand", new AndroidCategoryExpand()));
                        }
                        arrayList.add(bupVar);
                    }
                }
                if (bufVar == null) {
                    return;
                }
                ArrayList m5449D = bvc.this.m5449D(arrayList);
                bufVar.mo5405a(responseInfo, m5449D);
                Iterator it2 = m5449D.iterator();
                while (it2.hasNext()) {
                    CategoryInfo categoryInfo = (CategoryInfo) it2.next();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: D */
    public ArrayList<CategoryInfo> m5449D(ArrayList<bup> arrayList) {
        ArrayList<CategoryInfo> arrayList2 = new ArrayList<>();
        if (arrayList == null) {
            return arrayList2;
        }
        Iterator<bup> it = arrayList.iterator();
        while (it.hasNext()) {
            bup next = it.next();
            Category category = next.bOJ;
            CategoryInfo categoryInfo = new CategoryInfo();
            categoryInfo.m448kn(category.f4902id);
            categoryInfo.setTitle(category.name);
            categoryInfo.m447ko(category.count);
            categoryInfo.m445ni(category.icon);
            if (category.vecSubtitle != null) {
                ArrayList<String> arrayList3 = category.vecSubtitle;
                StringBuilder sb = new StringBuilder();
                for (String str : arrayList3) {
                    sb.append(str);
                    sb.append(",");
                }
                categoryInfo.m444nj(sb.substring(0, sb.length() - 1));
            }
            categoryInfo.m449cI(next.bOK.updatetime);
            categoryInfo.m446kp(next.bOK.ispush);
            arrayList2.add(categoryInfo);
        }
        return arrayList2;
    }

    /* renamed from: a */
    public void m5431a(List<SoftKey> list, final buf<ResponseInfo, MySoftSimpleInfo> bufVar) {
        bty.aie().aif().mo5486a(this.bOZ.m5374a(3, "vecsoftkey", list), new buh() { // from class: com.kingroot.kinguser.bvc.6
            @Override // com.kingroot.kinguser.buh
            /* renamed from: a */
            public void mo5415a(int i, bvp bvpVar) {
                ResponseInfo responseInfo = new ResponseInfo();
                AtomicReference atomicReference = new AtomicReference();
                ArrayList arrayList = new ArrayList();
                if (i != 0) {
                    if (bus.m5465kq(i) == 0) {
                        responseInfo.type = 2;
                        responseInfo.code = i;
                    } else {
                        responseInfo.type = 1;
                        responseInfo.code = i;
                    }
                } else {
                    Object m5373a = bvc.this.bOZ.m5373a(bvpVar.bQI, "serverinfo", new SoftServerInfo());
                    if (m5373a != null) {
                        atomicReference.set((SoftServerInfo) m5373a);
                    }
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(new MySoftSimpleInfo());
                    Object m5373a2 = bvc.this.bOZ.m5373a(bvpVar.bQI, "softs", arrayList2);
                    if (m5373a2 != null) {
                        arrayList.clear();
                        arrayList.addAll((Collection) m5373a2);
                    }
                    responseInfo.type = 0;
                    responseInfo.code = i;
                    if (atomicReference.get() != null) {
                        responseInfo.softupdate_tips = ((SoftServerInfo) atomicReference.get()).softupdate_tips;
                    }
                }
                if (bufVar != null) {
                    bufVar.mo5405a(responseInfo, arrayList);
                }
            }
        });
    }
}
