package com.kingroot.kinguser.distribution.appsmarket.entity;

import android.content.pm.PackageInfo;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.WorkerThread;
import android.text.TextUtils;
import com.kingroot.kinguser.C3952zh;
import com.kingroot.kinguser.InterfaceC3562rr;
import com.kingroot.kinguser.aaz;
import com.tencent.qqpimsecure.seachsdk.common.AppInfo;
/* loaded from: classes.dex */
public class LocalAppInfo implements Parcelable, InterfaceC3562rr {
    public static final Parcelable.Creator<LocalAppInfo> CREATOR = new Parcelable.Creator<LocalAppInfo>() { // from class: com.kingroot.kinguser.distribution.appsmarket.entity.LocalAppInfo.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: ap */
        public LocalAppInfo createFromParcel(Parcel parcel) {
            return new LocalAppInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: fC */
        public LocalAppInfo[] newArray(int i) {
            return new LocalAppInfo[i];
        }
    };
    public String apkPath;
    public String appName;
    public String certMD5;
    public String oldVersion;
    public int oldVersionCode;
    public String pkgName;

    protected LocalAppInfo(Parcel parcel) {
        this.pkgName = parcel.readString();
        this.appName = parcel.readString();
        this.oldVersion = parcel.readString();
        this.oldVersionCode = parcel.readInt();
        this.certMD5 = parcel.readString();
        this.apkPath = parcel.readString();
    }

    private String getId() {
        return this.pkgName + this.oldVersion + this.oldVersionCode + this.certMD5;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        parcel.writeString(this.pkgName);
        parcel.writeString(this.appName);
        parcel.writeString(this.oldVersion);
        parcel.writeInt(this.oldVersionCode);
        parcel.writeString(this.certMD5);
        parcel.writeString(this.apkPath);
    }

    /* renamed from: Ix */
    public AppInfo m4142Ix() {
        AppInfo appInfo = new AppInfo();
        appInfo.pkgName = this.pkgName;
        appInfo.appName = this.appName;
        appInfo.oldVersion = this.oldVersion;
        appInfo.oldVersionCode = this.oldVersionCode;
        appInfo.certMD5 = this.certMD5;
        appInfo.apkPath = this.apkPath;
        return appInfo;
    }

    @WorkerThread
    public LocalAppInfo(PackageInfo packageInfo) {
        this.pkgName = packageInfo.packageName;
        this.appName = String.valueOf(C3952zh.m1312pq().getApplicationLabel(packageInfo.applicationInfo));
        this.oldVersion = packageInfo.versionName;
        this.oldVersionCode = packageInfo.versionCode;
        this.certMD5 = aaz.m12872dZ(packageInfo.packageName);
        this.apkPath = packageInfo.applicationInfo.sourceDir;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        return (obj instanceof LocalAppInfo) && TextUtils.equals(getId(), ((LocalAppInfo) obj).getId());
    }

    public int hashCode() {
        return (this.pkgName + this.oldVersionCode + this.certMD5).hashCode();
    }
}
