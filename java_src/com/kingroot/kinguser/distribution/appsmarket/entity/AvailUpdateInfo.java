package com.kingroot.kinguser.distribution.appsmarket.entity;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import com.kingroot.kinguser.InterfaceC3562rr;
import com.tencent.qqpimsecure.seachsdk.common.AvailUpdateEntity;
/* loaded from: classes.dex */
public class AvailUpdateInfo implements Parcelable, InterfaceC3562rr {
    public static final Parcelable.Creator<AvailUpdateInfo> CREATOR = new Parcelable.Creator<AvailUpdateInfo>() { // from class: com.kingroot.kinguser.distribution.appsmarket.entity.AvailUpdateInfo.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: ak */
        public AvailUpdateInfo createFromParcel(Parcel parcel) {
            return new AvailUpdateInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: fx */
        public AvailUpdateInfo[] newArray(int i) {
            return new AvailUpdateInfo[i];
        }
    };
    public String apkPath;
    public String appName;
    public String channelId;
    public int fileId;
    public boolean isSystem;
    public String oldVersion;
    public int oldVersionCode;
    public String pkgName;
    public int productId;
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
    public int softId;
    public int sourceInt;
    public int type;
    public String updateUseMd5;

    public AvailUpdateInfo(AvailUpdateEntity availUpdateEntity) {
        this.productId = 0;
        this.fileId = 0;
        this.softId = 0;
        this.sourceInt = 0;
        this.type = 0;
        this.appName = availUpdateEntity.mAppName;
        this.simpleName = availUpdateEntity.bOu;
        this.pkgName = availUpdateEntity.adZ;
        this.size = availUpdateEntity.mSize;
        this.oldVersion = availUpdateEntity.bOv;
        this.oldVersionCode = availUpdateEntity.bOw;
        this.apkPath = availUpdateEntity.bNN;
        this.isSystem = availUpdateEntity.aha;
        this.remoteVersion = availUpdateEntity.bOx;
        this.remoteVersionCode = availUpdateEntity.bOy;
        this.remoteFileUrl = availUpdateEntity.bOz;
        this.remoteIconUrl = availUpdateEntity.bOA;
        this.remoteSize = availUpdateEntity.bOB * 1024;
        this.remoteSource = availUpdateEntity.bOC;
        this.remoteNewFeature = availUpdateEntity.bOD;
        this.publishTime = availUpdateEntity.mPublishTime;
        this.remoteDiffPkgSize = availUpdateEntity.bOE;
        this.remoteDiffPkgUrl = availUpdateEntity.bOF;
        this.remoteNewPkgMd5 = availUpdateEntity.bOG;
        this.updateUseMd5 = availUpdateEntity.mUpdateUseMd5;
        this.channelId = availUpdateEntity.bOH;
        this.productId = availUpdateEntity.mProductId;
        this.fileId = availUpdateEntity.mFileId;
        this.softId = availUpdateEntity.mSoftId;
        this.sourceInt = availUpdateEntity.bOI;
        this.type = availUpdateEntity.mType;
    }

    /* renamed from: Ir */
    public AvailUpdateEntity m4159Ir() {
        AvailUpdateEntity availUpdateEntity = new AvailUpdateEntity();
        availUpdateEntity.mAppName = this.appName;
        availUpdateEntity.bOu = this.simpleName;
        availUpdateEntity.adZ = this.pkgName;
        availUpdateEntity.mSize = this.size;
        availUpdateEntity.bOv = this.oldVersion;
        availUpdateEntity.bOw = this.oldVersionCode;
        availUpdateEntity.bNN = this.apkPath;
        availUpdateEntity.aha = this.isSystem;
        availUpdateEntity.bOx = this.remoteVersion;
        availUpdateEntity.bOy = this.remoteVersionCode;
        availUpdateEntity.bOz = this.remoteFileUrl;
        availUpdateEntity.bOA = this.remoteIconUrl;
        availUpdateEntity.bOB = this.remoteSize / 1024;
        availUpdateEntity.bOC = this.remoteSource;
        availUpdateEntity.bOD = this.remoteNewFeature;
        availUpdateEntity.mPublishTime = this.publishTime;
        availUpdateEntity.bOE = this.remoteDiffPkgSize;
        availUpdateEntity.bOF = this.remoteDiffPkgUrl;
        availUpdateEntity.bOG = this.remoteNewPkgMd5;
        availUpdateEntity.mUpdateUseMd5 = this.updateUseMd5;
        availUpdateEntity.bOH = this.channelId;
        availUpdateEntity.mProductId = this.productId;
        availUpdateEntity.mFileId = this.fileId;
        availUpdateEntity.mSoftId = this.softId;
        availUpdateEntity.bOI = this.sourceInt;
        availUpdateEntity.mType = this.type;
        return availUpdateEntity;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.appName);
        parcel.writeString(this.simpleName);
        parcel.writeString(this.pkgName);
        parcel.writeLong(this.size);
        parcel.writeString(this.oldVersion);
        parcel.writeInt(this.oldVersionCode);
        parcel.writeString(this.apkPath);
        parcel.writeByte(this.isSystem ? (byte) 1 : (byte) 0);
        parcel.writeString(this.remoteVersion);
        parcel.writeInt(this.remoteVersionCode);
        parcel.writeString(this.remoteFileUrl);
        parcel.writeString(this.remoteIconUrl);
        parcel.writeLong(this.remoteSize);
        parcel.writeString(this.remoteSource);
        parcel.writeString(this.remoteNewFeature);
        parcel.writeString(this.publishTime);
        parcel.writeLong(this.remoteDiffPkgSize);
        parcel.writeString(this.remoteDiffPkgUrl);
        parcel.writeString(this.remoteNewPkgMd5);
        parcel.writeString(this.updateUseMd5);
        parcel.writeString(this.channelId);
        parcel.writeInt(this.productId);
        parcel.writeInt(this.fileId);
        parcel.writeInt(this.softId);
        parcel.writeInt(this.sourceInt);
        parcel.writeInt(this.type);
    }

    protected AvailUpdateInfo(Parcel parcel) {
        this.productId = 0;
        this.fileId = 0;
        this.softId = 0;
        this.sourceInt = 0;
        this.type = 0;
        this.appName = parcel.readString();
        this.simpleName = parcel.readString();
        this.pkgName = parcel.readString();
        this.size = parcel.readLong();
        this.oldVersion = parcel.readString();
        this.oldVersionCode = parcel.readInt();
        this.apkPath = parcel.readString();
        this.isSystem = parcel.readByte() != 0;
        this.remoteVersion = parcel.readString();
        this.remoteVersionCode = parcel.readInt();
        this.remoteFileUrl = parcel.readString();
        this.remoteIconUrl = parcel.readString();
        this.remoteSize = parcel.readLong();
        this.remoteSource = parcel.readString();
        this.remoteNewFeature = parcel.readString();
        this.publishTime = parcel.readString();
        this.remoteDiffPkgSize = parcel.readLong();
        this.remoteDiffPkgUrl = parcel.readString();
        this.remoteNewPkgMd5 = parcel.readString();
        this.updateUseMd5 = parcel.readString();
        this.channelId = parcel.readString();
        this.productId = parcel.readInt();
        this.fileId = parcel.readInt();
        this.softId = parcel.readInt();
        this.sourceInt = parcel.readInt();
        this.type = parcel.readInt();
    }

    public boolean equals(Object obj) {
        if (obj instanceof AvailUpdateInfo) {
            return m4157id().equals(((AvailUpdateInfo) obj).m4157id());
        }
        return false;
    }

    public int hashCode() {
        return m4157id().hashCode();
    }

    @NonNull
    /* renamed from: id */
    private String m4157id() {
        return this.pkgName + this.oldVersion + this.remoteVersion + this.oldVersionCode + this.remoteVersionCode;
    }

    /* renamed from: Is */
    public boolean m4158Is() {
        return this.remoteDiffPkgSize > 0;
    }

    public String toString() {
        return "";
    }
}
