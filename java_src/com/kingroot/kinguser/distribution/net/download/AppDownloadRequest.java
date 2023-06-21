package com.kingroot.kinguser.distribution.net.download;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.kingroot.kinguser.InterfaceC3562rr;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AvailUpdateInfo;
import com.kingroot.kinguser.distribution.appsmarket.report.ReportInfo;
import com.kingroot.kinguser.distribution.base.RecommendAppSimpleInfo;
import com.tencent.qqpimsecure.seachsdk.common.AppInfo;
/* loaded from: classes.dex */
public class AppDownloadRequest implements Parcelable, InterfaceC3562rr {
    public static final Parcelable.Creator<AppDownloadRequest> CREATOR = new Parcelable.Creator<AppDownloadRequest>() { // from class: com.kingroot.kinguser.distribution.net.download.AppDownloadRequest.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: aw */
        public AppDownloadRequest createFromParcel(Parcel parcel) {
            return new AppDownloadRequest(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: fS */
        public AppDownloadRequest[] newArray(int i) {
            return new AppDownloadRequest[i];
        }
    };
    public static final long serialVersionUID = 0;
    public String apkMd5;
    public String apkUrl;
    public String appName;
    public int appStatus;
    public int cid;
    public String describe;
    public int downloadCount;
    public long fileSize;
    public String iconUrl;
    public boolean isDiff;
    public boolean isUpdate;
    public String pkgName;
    public int progress;
    @Nullable
    public ReportInfo reportInfo;
    public int resumeDownloadTimes;
    public String version;
    public int versionCode;

    /* renamed from: a */
    public static AppDownloadRequest m4063a(RecommendAppSimpleInfo recommendAppSimpleInfo) {
        AppDownloadRequest appDownloadRequest = new AppDownloadRequest();
        appDownloadRequest.apkMd5 = recommendAppSimpleInfo.apkMd5;
        appDownloadRequest.pkgName = recommendAppSimpleInfo.pkgName;
        appDownloadRequest.apkUrl = recommendAppSimpleInfo.apkUrl;
        try {
            appDownloadRequest.cid = Integer.valueOf(recommendAppSimpleInfo.categoryId).intValue();
        } catch (Throwable th) {
        }
        return appDownloadRequest;
    }

    /* renamed from: id */
    private String m4060id() {
        return this.pkgName + this.version + this.versionCode + this.isUpdate + this.isDiff;
    }

    public boolean equals(Object obj) {
        return (obj instanceof AppDownloadRequest) && TextUtils.equals(m4060id(), ((AppDownloadRequest) obj).m4060id());
    }

    public int hashCode() {
        return m4060id().hashCode();
    }

    /* renamed from: j */
    public static AppDownloadRequest m4059j(AppBaseModel appBaseModel) {
        AppDownloadRequest appDownloadRequest = new AppDownloadRequest();
        appDownloadRequest.apkMd5 = appBaseModel.apkMd5;
        appDownloadRequest.pkgName = appBaseModel.pkgName;
        appDownloadRequest.apkUrl = appBaseModel.apkUrl;
        appDownloadRequest.appName = appBaseModel.appName;
        appDownloadRequest.fileSize = appBaseModel.fileSize;
        appDownloadRequest.downloadCount = appBaseModel.downloadCount;
        appDownloadRequest.iconUrl = appBaseModel.iconUrl;
        appDownloadRequest.describe = appBaseModel.describe;
        appDownloadRequest.reportInfo = appBaseModel.reportInfo;
        appDownloadRequest.version = appBaseModel.version;
        appDownloadRequest.versionCode = appBaseModel.versioncode;
        appDownloadRequest.isUpdate = appBaseModel.isUpdate;
        appDownloadRequest.isDiff = appBaseModel.isDiff;
        appDownloadRequest.cid = appBaseModel.categoryId;
        if (appDownloadRequest.isUpdate) {
            appDownloadRequest.cid = 9999999;
        }
        return appDownloadRequest;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AppDownloadRequest() {
        this.apkUrl = "";
        this.pkgName = "";
        this.apkMd5 = "";
        this.appName = "";
        this.fileSize = 0L;
        this.downloadCount = 0;
        this.iconUrl = "";
        this.describe = "";
        this.progress = 0;
        this.appStatus = 0;
        this.resumeDownloadTimes = 0;
        this.reportInfo = null;
        this.version = "";
        this.versionCode = 0;
        this.isUpdate = false;
        this.isDiff = false;
        this.cid = 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AppDownloadRequest(Parcel parcel) {
        this.apkUrl = "";
        this.pkgName = "";
        this.apkMd5 = "";
        this.appName = "";
        this.fileSize = 0L;
        this.downloadCount = 0;
        this.iconUrl = "";
        this.describe = "";
        this.progress = 0;
        this.appStatus = 0;
        this.resumeDownloadTimes = 0;
        this.reportInfo = null;
        this.version = "";
        this.versionCode = 0;
        this.isUpdate = false;
        this.isDiff = false;
        this.cid = 0;
        this.apkUrl = parcel.readString();
        this.pkgName = parcel.readString();
        this.apkMd5 = parcel.readString();
        this.appName = parcel.readString();
        this.fileSize = parcel.readLong();
        this.downloadCount = parcel.readInt();
        this.iconUrl = parcel.readString();
        this.describe = parcel.readString();
        this.progress = parcel.readInt();
        this.appStatus = parcel.readInt();
        this.resumeDownloadTimes = parcel.readInt();
        this.reportInfo = (ReportInfo) parcel.readParcelable(ReportInfo.class.getClassLoader());
        this.version = parcel.readString();
        this.versionCode = parcel.readInt();
        this.isUpdate = parcel.readInt() == 1;
        this.isDiff = parcel.readInt() == 1;
        this.cid = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        parcel.writeString(this.apkUrl);
        parcel.writeString(this.pkgName);
        parcel.writeString(this.apkMd5);
        parcel.writeString(this.appName);
        parcel.writeLong(this.fileSize);
        parcel.writeInt(this.downloadCount);
        parcel.writeString(this.iconUrl);
        parcel.writeString(this.describe);
        parcel.writeInt(this.progress);
        parcel.writeInt(this.appStatus);
        parcel.writeInt(this.resumeDownloadTimes);
        parcel.writeParcelable(this.reportInfo, i);
        parcel.writeString(this.version);
        parcel.writeInt(this.versionCode);
        parcel.writeInt(this.isUpdate ? 1 : 0);
        parcel.writeInt(this.isDiff ? 1 : 0);
        parcel.writeInt(this.cid);
    }

    /* renamed from: d */
    public static AppDownloadRequest m4061d(AppInfo appInfo) {
        return m4059j(new AppBaseModel(appInfo, -1L));
    }

    /* renamed from: b */
    public static AppDownloadRequest m4062b(AvailUpdateInfo availUpdateInfo, boolean z) {
        AppDownloadRequest appDownloadRequest = new AppDownloadRequest();
        appDownloadRequest.isDiff = availUpdateInfo.remoteDiffPkgSize > 0 && z;
        appDownloadRequest.apkMd5 = appDownloadRequest.isDiff ? availUpdateInfo.updateUseMd5 : availUpdateInfo.remoteNewPkgMd5;
        appDownloadRequest.pkgName = availUpdateInfo.pkgName;
        appDownloadRequest.apkUrl = appDownloadRequest.isDiff ? availUpdateInfo.remoteDiffPkgUrl : availUpdateInfo.remoteFileUrl;
        appDownloadRequest.appName = availUpdateInfo.appName;
        appDownloadRequest.fileSize = availUpdateInfo.remoteDiffPkgSize > 0 ? availUpdateInfo.remoteDiffPkgSize : availUpdateInfo.remoteSize;
        appDownloadRequest.downloadCount = 0;
        appDownloadRequest.iconUrl = availUpdateInfo.remoteIconUrl;
        appDownloadRequest.describe = "";
        appDownloadRequest.reportInfo = null;
        appDownloadRequest.version = availUpdateInfo.remoteVersion;
        appDownloadRequest.versionCode = availUpdateInfo.remoteVersionCode;
        appDownloadRequest.isUpdate = true;
        appDownloadRequest.cid = 9999999;
        return appDownloadRequest;
    }

    public String toString() {
        return "";
    }
}
