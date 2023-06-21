package com.kingroot.kinguser;

import com.tencent.qqpimsecure.seachsdk.common.AppInfo;
import com.tencent.qqpimsecure.seachsdk.common.AvailUpdateEntity;
import com.tencent.qqpimsecure.seachsdk.common.SoftwareAdvertiseEntity;
import com.tencent.qqpimsecure.seachsdk.internal.protocol.ShowDetail;
import com.tencent.qqpimsecure.seachsdk.internal.protocol.SoftDetail;
import com.tencent.qqpimsecure.seachsdk.internal.protocol.SoftListResp;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class bur {
    /* renamed from: a */
    public static List<AppInfo> m5469a(SoftListResp softListResp) {
        if (softListResp == null) {
            return new ArrayList(0);
        }
        ArrayList<SoftDetail> arrayList = softListResp.vecSoftDetail;
        if (buq.m5472q(arrayList)) {
            return new ArrayList(0);
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator<SoftDetail> it = arrayList.iterator();
        while (it.hasNext()) {
            AppInfo m5470a = m5470a(it.next());
            if (m5470a != null) {
                arrayList2.add(m5470a);
            }
        }
        return arrayList2;
    }

    /* renamed from: a */
    public static SoftwareAdvertiseEntity m5467a(SoftListResp softListResp, int i, int i2, String str) {
        SoftwareAdvertiseEntity m5468a = m5468a(softListResp, i, i2);
        if (m5468a == null) {
            return null;
        }
        m5468a.searchKeyWord = str;
        return m5468a;
    }

    /* renamed from: a */
    public static SoftwareAdvertiseEntity m5468a(SoftListResp softListResp, int i, int i2) {
        if (softListResp == null) {
            return null;
        }
        List<AppInfo> m5469a = m5469a(softListResp);
        if (buq.m5472q(m5469a)) {
            return null;
        }
        ShowDetail showDetail = softListResp.showDetail;
        long j = showDetail.groupId;
        String str = showDetail.title;
        boolean z = softListResp.hasNextPage;
        int i3 = softListResp.nextBeginPos;
        int m5466cH = m5466cH(softListResp.categoryId);
        SoftwareAdvertiseEntity softwareAdvertiseEntity = new SoftwareAdvertiseEntity(0L, m5466cH, 5, m5466cH, str, "", "", "", "", "", (ArrayList) m5469a, "", 0L, 0, "", 0, "", "", String.valueOf(j), false, false);
        softwareAdvertiseEntity.hasNextPage = z;
        softwareAdvertiseEntity.nextPageIndex = i3;
        softwareAdvertiseEntity.pageId = i;
        softwareAdvertiseEntity.index = i2;
        softwareAdvertiseEntity.tagId = showDetail.tagId;
        return softwareAdvertiseEntity;
    }

    /* renamed from: a */
    public static AppInfo m5470a(SoftDetail softDetail) {
        if (softDetail == null) {
            return null;
        }
        AppInfo appInfo = new AppInfo();
        appInfo.publishtime = softDetail.publishTime;
        appInfo.itemType = 0;
        if (softDetail.softKey != null) {
            appInfo.pkgName = softDetail.softKey.pkgName;
            appInfo.appName = softDetail.softKey.softName;
            appInfo.newVersionCode = softDetail.softKey.versionCode;
            appInfo.newVersion = softDetail.softKey.versionName;
            appInfo.certMD5 = softDetail.softKey.certMd5;
            appInfo.channelId = softDetail.softKey.channelId;
            appInfo.categoryid = m5466cH(softDetail.softKey.categoryId);
            if (softDetail.softCommon.softBackgroundPic != null) {
                appInfo.picIconUrl = softDetail.softCommon.softBackgroundPic.picture1;
            }
        }
        if (softDetail.softCommon != null) {
            appInfo.logoUrl = softDetail.softCommon.logoUrl;
            appInfo.downloadCount = (int) softDetail.softCommon.downloadTimes;
            appInfo.fileUrl = softDetail.softCommon.fileUrl;
            appInfo.mSize = softDetail.softCommon.fileSize;
            appInfo.apkFileMd5 = softDetail.softCommon.fileMd5;
            appInfo.describe = softDetail.softCommon.shortDesc;
            if (softDetail.softCommon.frontendExtendInfo != null) {
                appInfo.busiData = softDetail.softCommon.backendExtendInfo;
            }
            if (softDetail.softCommon.frontendExtendInfo != null) {
                appInfo.transData = softDetail.softCommon.frontendExtendInfo;
            }
            appInfo.businessType = softDetail.softCommon.businessType;
            appInfo.jumptype = softDetail.softCommon.jumptype;
            appInfo.jumpUrl = softDetail.softCommon.jumpUrl;
            appInfo.ifSelected = softDetail.softCommon.ifSelected;
        }
        if (softDetail.softSearchInfo != null) {
            appInfo.searchNum = softDetail.softSearchInfo.searchNum;
            appInfo.searchWords = softDetail.softSearchInfo.searchWords;
            return appInfo;
        }
        return appInfo;
    }

    /* renamed from: cH */
    public static int m5466cH(long j) {
        return (j < -2147483648L || j > 2147483647L) ? (int) j : (int) j;
    }

    /* renamed from: a */
    public static AppInfo m5471a(AvailUpdateEntity availUpdateEntity, int i) {
        AppInfo appInfo = new AppInfo();
        appInfo.pkgName = availUpdateEntity.adZ;
        appInfo.newVersion = availUpdateEntity.bOx;
        appInfo.newVersionCode = availUpdateEntity.bOy;
        appInfo.appName = availUpdateEntity.mAppName;
        if (i == 2) {
            appInfo.certMD5 = availUpdateEntity.mUpdateUseMd5;
            appInfo.mSize = availUpdateEntity.bOE;
        } else {
            appInfo.mSize = availUpdateEntity.bOB;
        }
        appInfo.mProductId = availUpdateEntity.mProductId;
        appInfo.mFileId = availUpdateEntity.mFileId;
        appInfo.mSoftId = availUpdateEntity.mSoftId;
        appInfo.channelId = availUpdateEntity.bOH;
        return appInfo;
    }
}
