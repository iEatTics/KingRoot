package com.kingroot.kinguser;

import com.tencent.qqpimsecure.seachsdk.common.AppInfo;
import com.tencent.qqpimsecure.seachsdk.internal.protocol.ReservationGame;
import com.tencent.qqpimsecure.seachsdk.internal.protocol.SnapShotPic;
import com.tencent.qqpimsecure.seachsdk.internal.protocol.SoftDetail;
import com.tencent.qqpimsecure.seachsdk.internal.protocol.SoftInfo;
import com.tencent.qqpimsecure.seachsdk.internal.protocol.SoftKey;
import com.tencent.qqpimsecure.seachsdk.internal.protocol.SoftListResp;
import com.tencent.qqpimsecure.seachsdk.internal.protocol.SoftSimpleInfo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class buo {
    /* renamed from: a */
    public static AppInfo m5483a(bvq bvqVar) {
        SoftSimpleInfo softSimpleInfo = bvqVar.softSimpleInfo;
        AppInfo appInfo = new AppInfo();
        appInfo.appName = softSimpleInfo.softkey.name;
        appInfo.pkgName = softSimpleInfo.softkey.softname;
        appInfo.mSize = softSimpleInfo.filesize * 1024;
        if (softSimpleInfo.suser != 0) {
            appInfo.score = softSimpleInfo.score / softSimpleInfo.suser;
        } else {
            appInfo.score = 0;
        }
        appInfo.logoUrl = softSimpleInfo.logourl;
        appInfo.fileUrl = softSimpleInfo.fileurl;
        appInfo.newVersion = softSimpleInfo.softkey.version;
        appInfo.newVersionCode = softSimpleInfo.softkey.versioncode;
        appInfo.uid = softSimpleInfo.softkey.uid;
        appInfo.certMD5 = softSimpleInfo.softkey.cert;
        appInfo.downloadCount = softSimpleInfo.downloadtimes;
        appInfo.mPublishTime = softSimpleInfo.publishtime;
        appInfo.apkFileMd5 = softSimpleInfo.apkFileMd5;
        appInfo.safeType = softSimpleInfo.safeType;
        if (bvqVar.bQJ != null && bvqVar.bQJ.picurls != null && bvqVar.bQJ.picurls.size() > 0) {
            appInfo.recPicUrl = bvqVar.bQJ.picurls.get(0);
        }
        if (bvqVar.bQJ != null) {
            appInfo.recPicUrl = bvqVar.bQJ.recommend;
        }
        String str = softSimpleInfo.softkey.newest_version;
        if (str == null) {
            str = "";
        }
        appInfo.newVersion = str;
        appInfo.mSoftwareSourceContent = softSimpleInfo.strSource;
        appInfo.mSoftwareSourceAppID = softSimpleInfo.softkey.appid;
        appInfo.plugintype = softSimpleInfo.plugintype;
        appInfo.mSource = softSimpleInfo.softkey.source;
        appInfo.channelId = softSimpleInfo.channelId;
        appInfo.mProductId = softSimpleInfo.iProductID;
        appInfo.mFileId = softSimpleInfo.iFileID;
        appInfo.mSoftId = softSimpleInfo.iSoftID;
        appInfo.categoryid = softSimpleInfo.softkey.category;
        appInfo.describe = softSimpleInfo.short_desc;
        appInfo.strExtend = softSimpleInfo.strExtend;
        appInfo.businessType = softSimpleInfo.businessType;
        return appInfo;
    }

    /* renamed from: a */
    public static AppInfo m5480a(SoftInfo softInfo) {
        AppInfo appInfo = new AppInfo();
        if (softInfo == null || softInfo.softkey == null) {
            return appInfo;
        }
        appInfo.appName = softInfo.softkey.name;
        appInfo.pkgName = softInfo.softkey.softname;
        appInfo.mSize = softInfo.filesize * 1024;
        appInfo.score = softInfo.score;
        appInfo.suser = softInfo.suser;
        appInfo.official = softInfo.official;
        appInfo.sign = softInfo.sign;
        appInfo.fee = softInfo.fee;
        if (softInfo.hprice != null) {
            appInfo.hprice = softInfo.hprice;
        }
        if (softInfo.pname != null) {
            appInfo.pname = softInfo.pname;
        }
        appInfo.logoUrl = softInfo.logourl;
        appInfo.fileUrl = softInfo.fileurl;
        appInfo.newVersion = softInfo.softkey.version;
        appInfo.newVersionCode = softInfo.softkey.versioncode;
        appInfo.certMD5 = softInfo.softkey.cert;
        appInfo.apkFileMd5 = softInfo.softkey.apkFileMd5;
        appInfo.downloadCount = softInfo.downloadtimes;
        appInfo.mPublishTime = softInfo.publishtime;
        appInfo.describe = softInfo.description;
        appInfo.mFunction = softInfo.function;
        if (softInfo.srcpicurls != null && softInfo.srcpicurls.size() > 0) {
            appInfo.srcpicurls = softInfo.srcpicurls;
        }
        if (softInfo.picurls != null && softInfo.picurls.size() > 0) {
            appInfo.picurls = softInfo.picurls;
        }
        appInfo.description = softInfo.description;
        String str = softInfo.softkey.newest_version;
        if (str == null) {
            str = "";
        }
        appInfo.newVersion = str;
        appInfo.mSoftwareSourceContent = softInfo.strSource;
        appInfo.mSoftwareSourceAppID = softInfo.softkey.appid;
        appInfo.plugintype = softInfo.plugintype;
        appInfo.mSource = softInfo.softkey.source;
        appInfo.channelId = softInfo.channelId;
        appInfo.mProductId = softInfo.iProductID;
        appInfo.mFileId = softInfo.iFileID;
        appInfo.mSoftId = softInfo.iSoftID;
        appInfo.strExtend = softInfo.strExtend;
        appInfo.businessType = softInfo.businessType;
        return appInfo;
    }

    /* renamed from: e */
    public static SoftKey m5475e(AppInfo appInfo) {
        if (appInfo == null) {
            return null;
        }
        SoftKey softKey = new SoftKey();
        softKey.softname = appInfo.pkgName == null ? "" : appInfo.pkgName;
        softKey.name = appInfo.appName == null ? "" : appInfo.appName;
        softKey.version = appInfo.oldVersion == null ? "" : appInfo.oldVersion;
        softKey.versioncode = appInfo.oldVersionCode;
        softKey.uid = appInfo.uid == null ? "" : appInfo.uid;
        softKey.cert = appInfo.certMD5 == null ? "" : appInfo.certMD5;
        softKey.isbuildin = 0;
        softKey.filesize = (int) appInfo.mSize;
        softKey.apkFileMd5 = appInfo.apkFileMd5;
        return softKey;
    }

    /* renamed from: co */
    public static List<SoftKey> m5477co(List<AppInfo> list) {
        ArrayList arrayList = new ArrayList();
        for (AppInfo appInfo : list) {
            arrayList.add(m5475e(appInfo));
        }
        return arrayList;
    }

    /* renamed from: B */
    public static List<AppInfo> m5484B(ArrayList<bvq> arrayList) {
        ArrayList arrayList2 = new ArrayList();
        Iterator<bvq> it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(m5483a(it.next()));
        }
        return arrayList2;
    }

    /* renamed from: a */
    public static List<AppInfo> m5479a(SoftListResp softListResp) {
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
            AppInfo m5481a = m5481a(it.next());
            if (m5481a != null) {
                arrayList2.add(m5481a);
            }
        }
        return arrayList2;
    }

    /* renamed from: a */
    public static AppInfo m5481a(SoftDetail softDetail) {
        if (softDetail == null) {
            return null;
        }
        AppInfo appInfo = new AppInfo();
        appInfo.mPublishTime = softDetail.publishTime;
        if (softDetail.softKey != null) {
            appInfo.pkgName = softDetail.softKey.pkgName;
            appInfo.appName = softDetail.softKey.softName;
            appInfo.newVersionCode = softDetail.softKey.versionCode;
            appInfo.newVersion = softDetail.softKey.versionName;
            appInfo.certMD5 = softDetail.softKey.certMd5;
            appInfo.channelId = softDetail.softKey.channelId;
            appInfo.categoryid = m5478cH(softDetail.softKey.categoryId);
            if (softDetail.softCommon.softBackgroundPic != null) {
                appInfo.picIconUrl = softDetail.softCommon.softBackgroundPic.picture1;
            }
        }
        if (softDetail.softCommon != null) {
            appInfo.logoUrl = softDetail.softCommon.logoUrl;
            appInfo.downloadCount = (int) softDetail.softCommon.downloadTimes;
            appInfo.fileUrl = softDetail.softCommon.fileUrl;
            appInfo.mSize = softDetail.softCommon.fileSize;
            appInfo.describe = softDetail.softCommon.shortDesc;
            appInfo.apkFileMd5 = softDetail.softCommon.fileMd5;
            if (softDetail.softCommon.backendExtendInfo != null) {
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

    /* renamed from: cp */
    public static List<AppInfo> m5476cp(List<ReservationGame> list) {
        if (buq.m5472q(list)) {
            return new ArrayList(0);
        }
        ArrayList arrayList = new ArrayList();
        for (ReservationGame reservationGame : list) {
            AppInfo m5482a = m5482a(reservationGame);
            if (m5482a != null) {
                arrayList.add(m5482a);
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public static AppInfo m5482a(ReservationGame reservationGame) {
        if (reservationGame == null || reservationGame.softDetail == null) {
            return null;
        }
        AppInfo m5481a = m5481a(reservationGame.softDetail);
        m5481a.activityID = reservationGame.activityId;
        m5481a.mGameReservationInfo.activityId = reservationGame.activityId;
        m5481a.mGameReservationInfo.reservationId = reservationGame.reservationId;
        m5481a.mGameReservationInfo.reservationUrl = reservationGame.reservationUrl;
        m5481a.mGameReservationInfo.publicDesc = reservationGame.publicDesc;
        m5481a.mGameReservationInfo.reservationCount = reservationGame.reservationCount;
        m5481a.mGameReservationInfo.beginTime = reservationGame.validTime.startTime;
        m5481a.mGameReservationInfo.endTime = reservationGame.validTime.finishTime;
        m5481a.mGameReservationInfo.f4891qq = reservationGame.reservationStatus.f4913qq;
        m5481a.mGameReservationInfo.f4892wx = reservationGame.reservationStatus.f4914wx;
        m5481a.mGameReservationInfo.reservationStatus = reservationGame.reservationStatus.reservationType;
        m5481a.mGameReservationInfo.onlineFlag = reservationGame.onlineFlag;
        if (m5481a.mSnaShotPicList != null && m5481a.mSnaShotPicList.size() >= 0) {
            m5481a.mSnaShotPicList.clear();
            Iterator<SnapShotPic> it = reservationGame.softDetail.snapShotUrls.iterator();
            while (it.hasNext()) {
                SnapShotPic next = it.next();
                AppInfo.BottomPic bottomPic = new AppInfo.BottomPic();
                bottomPic.rawUrl = next.rawUrl;
                bottomPic.miniUrl = next.miniUrl;
                m5481a.mSnaShotPicList.add(bottomPic);
            }
        }
        return m5481a;
    }

    /* renamed from: cH */
    public static int m5478cH(long j) {
        return (j < -2147483648L || j > 2147483647L) ? (int) j : (int) j;
    }
}
