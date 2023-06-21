package com.kingroot.kinguser.gamebox.common;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import com.kingroot.kinguser.advance.model.QuickInstallerInfo;
import com.kingroot.kinguser.apu;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AvailUpdateInfo;
import com.kingroot.kinguser.distribution.appsmarket.report.ReportInfo;
import com.kingroot.kinguser.distribution.net.download.AppDownloadRequest;
/* loaded from: classes.dex */
public class ApkInstallRequest implements Parcelable {
    public static final Parcelable.Creator<ApkInstallRequest> CREATOR = new Parcelable.Creator<ApkInstallRequest>() { // from class: com.kingroot.kinguser.gamebox.common.ApkInstallRequest.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: az */
        public ApkInstallRequest createFromParcel(Parcel parcel) {
            return new ApkInstallRequest(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: gx */
        public ApkInstallRequest[] newArray(int i) {
            return new ApkInstallRequest[i];
        }
    };
    public int aNe;
    public boolean aNf;
    public String apkMd5;
    public String apkPath;
    public String appName;
    public int cid;
    public boolean isUpdate;
    public String pkgName;
    public ReportInfo reportInfo;
    public int versionCode;

    public ApkInstallRequest(String str, String str2, String str3) {
        this.apkMd5 = "";
        this.reportInfo = null;
        this.aNf = true;
        this.cid = 0;
        this.isUpdate = false;
        this.versionCode = -1;
        this.apkPath = str;
        this.pkgName = str2;
        this.apkMd5 = str3;
    }

    public ApkInstallRequest() {
        this.apkMd5 = "";
        this.reportInfo = null;
        this.aNf = true;
        this.cid = 0;
        this.isUpdate = false;
        this.versionCode = -1;
    }

    /* renamed from: l */
    public static ApkInstallRequest m3784l(AppBaseModel appBaseModel) {
        ApkInstallRequest apkInstallRequest = new ApkInstallRequest();
        apkInstallRequest.appName = appBaseModel.appName;
        apkInstallRequest.apkMd5 = appBaseModel.apkMd5;
        apkInstallRequest.pkgName = appBaseModel.pkgName;
        apkInstallRequest.apkPath = apu.m9741h(AppDownloadRequest.m4059j(appBaseModel)).getPath();
        apkInstallRequest.reportInfo = appBaseModel.reportInfo;
        apkInstallRequest.isUpdate = appBaseModel.isUpdate;
        apkInstallRequest.cid = appBaseModel.categoryId;
        return apkInstallRequest;
    }

    /* renamed from: a */
    public static ApkInstallRequest m3786a(QuickInstallerInfo quickInstallerInfo) {
        ApkInstallRequest apkInstallRequest = new ApkInstallRequest();
        apkInstallRequest.appName = quickInstallerInfo.appName;
        apkInstallRequest.pkgName = quickInstallerInfo.pkgName;
        apkInstallRequest.apkPath = quickInstallerInfo.apkPath;
        return apkInstallRequest;
    }

    /* renamed from: a */
    public static ApkInstallRequest m3785a(AvailUpdateInfo availUpdateInfo, String str) {
        ApkInstallRequest apkInstallRequest = new ApkInstallRequest();
        apkInstallRequest.appName = availUpdateInfo.appName;
        apkInstallRequest.pkgName = availUpdateInfo.pkgName;
        apkInstallRequest.apkPath = str;
        apkInstallRequest.isUpdate = true;
        apkInstallRequest.versionCode = availUpdateInfo.remoteVersionCode;
        apkInstallRequest.cid = 9999999;
        return apkInstallRequest;
    }

    protected ApkInstallRequest(Parcel parcel) {
        this.apkMd5 = "";
        this.reportInfo = null;
        this.aNf = true;
        this.cid = 0;
        this.isUpdate = false;
        this.versionCode = -1;
        this.appName = parcel.readString();
        this.apkPath = parcel.readString();
        this.pkgName = parcel.readString();
        this.apkMd5 = parcel.readString();
        this.reportInfo = (ReportInfo) parcel.readParcelable(ReportInfo.class.getClassLoader());
        this.aNe = parcel.readInt();
        this.aNf = parcel.readByte() == 1;
        this.isUpdate = parcel.readByte() == 1;
        this.cid = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        parcel.writeString(this.appName);
        parcel.writeString(this.apkPath);
        parcel.writeString(this.pkgName);
        parcel.writeString(this.apkMd5);
        parcel.writeParcelable(this.reportInfo, i);
        parcel.writeInt(this.aNe);
        parcel.writeByte(this.aNf ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.isUpdate ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.cid);
    }
}
