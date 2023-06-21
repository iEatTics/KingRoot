package com.tencent.qqpimsecure.seachsdk.common;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.tencent.qqpimsecure.seachsdk.internal.protocol.MySoftSimpleInfo;
import com.tencent.qqpimsecure.seachsdk.internal.protocol.SoftSimpleInfo;
/* loaded from: classes.dex */
public class AvailUpdateEntity implements Parcelable {
    public static final Parcelable.Creator<AvailUpdateEntity> CREATOR = new Parcelable.Creator<AvailUpdateEntity>() { // from class: com.tencent.qqpimsecure.seachsdk.common.AvailUpdateEntity.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: bb */
        public AvailUpdateEntity createFromParcel(Parcel parcel) {
            AvailUpdateEntity availUpdateEntity = new AvailUpdateEntity();
            availUpdateEntity.mAppName = parcel.readString();
            availUpdateEntity.adZ = parcel.readString();
            availUpdateEntity.mSize = parcel.readLong();
            availUpdateEntity.bOv = parcel.readString();
            availUpdateEntity.bOw = parcel.readInt();
            availUpdateEntity.bNN = parcel.readString();
            availUpdateEntity.aha = parcel.readInt() == 1;
            availUpdateEntity.bOx = parcel.readString();
            availUpdateEntity.bOy = parcel.readInt();
            availUpdateEntity.bOz = parcel.readString();
            availUpdateEntity.bOA = parcel.readString();
            availUpdateEntity.bOB = parcel.readLong();
            availUpdateEntity.bOC = parcel.readString();
            availUpdateEntity.bOD = parcel.readString();
            availUpdateEntity.mPublishTime = parcel.readString();
            availUpdateEntity.bOE = parcel.readLong();
            availUpdateEntity.bOF = parcel.readString();
            availUpdateEntity.bOG = parcel.readString();
            availUpdateEntity.mUpdateUseMd5 = parcel.readString();
            availUpdateEntity.bOH = parcel.readString();
            availUpdateEntity.mProductId = parcel.readInt();
            availUpdateEntity.mFileId = parcel.readInt();
            availUpdateEntity.mSoftId = parcel.readInt();
            availUpdateEntity.bOI = parcel.readInt();
            availUpdateEntity.mType = parcel.readInt();
            availUpdateEntity.bOu = parcel.readString();
            return availUpdateEntity;
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: km */
        public AvailUpdateEntity[] newArray(int i) {
            return new AvailUpdateEntity[i];
        }
    };
    public String bOu;
    public int mProductId = 0;
    public int mFileId = 0;
    public int mSoftId = 0;
    public int bOI = 0;
    public int mType = 0;
    public String adZ = "";
    public String mAppName = "";
    public long mSize = 0;
    public String bOv = "";
    public int bOw = 0;
    public String bNN = "";
    public boolean aha = false;
    public String bOx = "";
    public int bOy = 0;
    public String bOA = "";
    public String bOz = "";
    public long bOB = 0;
    public String bOD = "";
    public String bOC = "";
    public String mPublishTime = "";
    public long bOE = 0;
    public String bOF = "";
    public String bOG = "";
    public String mUpdateUseMd5 = "";
    public String bOH = "";
    private Object bOt = null;

    /* renamed from: a */
    public void m452a(AppInfo appInfo, MySoftSimpleInfo mySoftSimpleInfo, String str) {
        SoftSimpleInfo aiA = mySoftSimpleInfo.aiA();
        this.mAppName = appInfo.appName;
        this.adZ = appInfo.pkgName;
        this.mSize = appInfo.mSize;
        this.bOv = appInfo.oldVersion;
        this.bOw = appInfo.oldVersionCode;
        this.bNN = appInfo.apkPath;
        this.bOx = aiA.softkey.newest_version;
        this.bOy = aiA.softkey.versioncode;
        this.bOz = aiA.fileurl;
        this.bOA = aiA.logourl;
        this.bOB = aiA.filesize;
        if (this.bOB < 100) {
            this.bOB *= 1024;
        }
        this.bOC = aiA.strSource;
        this.bOD = mySoftSimpleInfo.aiC();
        if (this.bOD == null || this.bOD.length() <= 0) {
            this.bOD = str;
        }
        this.mPublishTime = aiA.publishtime;
        this.bOE = aiA.diffFileSizeByte;
        this.bOF = aiA.diffFileUrl;
        this.bOG = aiA.apkFileMd5;
        this.bOH = aiA.channelId;
        this.mProductId = aiA.iProductID;
        this.mFileId = aiA.iFileID;
        this.mSoftId = aiA.iSoftID;
        this.bOI = aiA.softkey.source;
    }

    public boolean aig() {
        return this.bOE > 0 && !TextUtils.isEmpty(this.bOF);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mAppName);
        parcel.writeString(this.adZ);
        parcel.writeLong(this.mSize);
        parcel.writeString(this.bOv);
        parcel.writeInt(this.bOw);
        parcel.writeString(this.bNN);
        parcel.writeInt(this.aha ? 1 : 0);
        parcel.writeString(this.bOx);
        parcel.writeInt(this.bOy);
        parcel.writeString(this.bOz);
        parcel.writeString(this.bOA);
        parcel.writeLong(this.bOB);
        parcel.writeString(this.bOC);
        parcel.writeString(this.bOD);
        parcel.writeString(this.mPublishTime);
        parcel.writeLong(this.bOE);
        parcel.writeString(this.bOF);
        parcel.writeString(this.bOG);
        parcel.writeString(this.mUpdateUseMd5);
        parcel.writeString(this.bOH);
        parcel.writeInt(this.mProductId);
        parcel.writeInt(this.mFileId);
        parcel.writeInt(this.mSoftId);
        parcel.writeInt(this.bOI);
        parcel.writeInt(this.mType);
        parcel.writeString(this.bOu);
    }
}
