package com.kingroot.kinguser.distribution.appsmarket.entity;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.kingroot.kinguser.anf;
/* loaded from: classes.dex */
public class AppUpdateModel extends AppDownLoadModel {
    public static final Parcelable.Creator<AppUpdateModel> CREATOR = new Parcelable.Creator<AppUpdateModel>() { // from class: com.kingroot.kinguser.distribution.appsmarket.entity.AppUpdateModel.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: aj */
        public AppUpdateModel createFromParcel(Parcel parcel) {
            return AppUpdateModel.m4164ai(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: fw */
        public AppUpdateModel[] newArray(int i) {
            return new AppUpdateModel[i];
        }
    };
    public String apkPath;
    public boolean isImportantVersion;
    public boolean isSystem;
    public String oldVersion;
    public int oldVersionCode;
    public String publishTime;
    public long remoteDiffPkgSize;
    public String remoteDiffPkgUrl;
    public String remoteFileUrl;
    public String remoteIconUrl;
    public String remoteNewFeature;
    public String remoteNewPkgMd5;
    public long remoteSize;
    public String remoteSource;
    public String remoteVersion;
    public int remoteVersionCode;
    public String simpleName;
    public long size;
    public String updateUseMd5;

    public AppUpdateModel(Parcel parcel) {
        super(parcel);
    }

    private AppUpdateModel() {
    }

    /* renamed from: b */
    public static AppUpdateModel m4163b(AvailUpdateInfo availUpdateInfo) {
        AppUpdateModel appUpdateModel = new AppUpdateModel();
        appUpdateModel.appName = availUpdateInfo.appName;
        appUpdateModel.simpleName = availUpdateInfo.simpleName;
        appUpdateModel.pkgName = availUpdateInfo.pkgName;
        appUpdateModel.size = availUpdateInfo.size;
        appUpdateModel.oldVersion = availUpdateInfo.oldVersion;
        appUpdateModel.oldVersionCode = availUpdateInfo.oldVersionCode;
        appUpdateModel.apkPath = availUpdateInfo.apkPath;
        appUpdateModel.isSystem = availUpdateInfo.isSystem;
        appUpdateModel.remoteVersion = availUpdateInfo.remoteVersion;
        appUpdateModel.remoteVersionCode = availUpdateInfo.remoteVersionCode;
        appUpdateModel.remoteFileUrl = availUpdateInfo.remoteFileUrl;
        appUpdateModel.remoteIconUrl = availUpdateInfo.remoteIconUrl;
        appUpdateModel.iconUrl = availUpdateInfo.remoteIconUrl;
        appUpdateModel.remoteSize = availUpdateInfo.remoteSize;
        appUpdateModel.remoteSource = availUpdateInfo.remoteSource;
        appUpdateModel.remoteNewFeature = availUpdateInfo.remoteNewFeature;
        appUpdateModel.publishTime = availUpdateInfo.publishTime;
        appUpdateModel.remoteDiffPkgSize = availUpdateInfo.remoteDiffPkgSize;
        appUpdateModel.remoteDiffPkgUrl = availUpdateInfo.remoteDiffPkgUrl;
        appUpdateModel.remoteNewPkgMd5 = availUpdateInfo.remoteNewPkgMd5;
        appUpdateModel.updateUseMd5 = availUpdateInfo.updateUseMd5;
        appUpdateModel.channelId = availUpdateInfo.channelId;
        appUpdateModel.isUpdate = true;
        appUpdateModel.isDiff = availUpdateInfo.m4158Is();
        if (appUpdateModel.appStatus == 0) {
            appUpdateModel.apkUrl = TextUtils.isEmpty(appUpdateModel.remoteDiffPkgUrl) ? appUpdateModel.remoteFileUrl : appUpdateModel.remoteDiffPkgUrl;
            appUpdateModel.fileSize = appUpdateModel.remoteDiffPkgSize > 0 ? appUpdateModel.remoteDiffPkgSize : appUpdateModel.remoteSize;
        }
        appUpdateModel.isImportantVersion = anf.m10294a(appUpdateModel);
        appUpdateModel.categoryId = 9999999;
        return appUpdateModel;
    }

    /* renamed from: ai */
    public static AppUpdateModel m4164ai(Parcel parcel) {
        return new AppUpdateModel(parcel);
    }

    @Override // com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.kingroot.kinguser.distribution.appsmarket.entity.AppDownLoadModel, com.kingroot.kinguser.ame
    public int getType() {
        return 9;
    }

    /* renamed from: c */
    public void m4162c(AvailUpdateInfo availUpdateInfo) {
        this.remoteDiffPkgSize = availUpdateInfo.remoteDiffPkgSize;
        this.remoteDiffPkgUrl = availUpdateInfo.remoteDiffPkgUrl;
        this.remoteNewPkgMd5 = availUpdateInfo.remoteNewPkgMd5;
        this.updateUseMd5 = availUpdateInfo.updateUseMd5;
        this.isDiff = true;
        if (this.appStatus == 0) {
            this.apkUrl = TextUtils.isEmpty(this.remoteDiffPkgUrl) ? this.remoteFileUrl : this.remoteDiffPkgUrl;
        }
    }
}
