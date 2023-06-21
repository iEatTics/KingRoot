package com.kingroot.kingmaster.network.download;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public class KuDownloadInfo implements Parcelable {
    public static final Parcelable.Creator<KuDownloadInfo> CREATOR = new Parcelable.Creator<KuDownloadInfo>() { // from class: com.kingroot.kingmaster.network.download.KuDownloadInfo.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: z */
        public KuDownloadInfo createFromParcel(Parcel parcel) {
            return new KuDownloadInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: cH */
        public KuDownloadInfo[] newArray(int i) {
            return new KuDownloadInfo[i];
        }
    };
    public long adW = 0;
    public int adX = -1;
    public String adY = "";
    public String adZ = "";
    public String mAppName = "";
    public String mVersionName = "";
    public int ads = 0;
    public String aea = "";

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.adW);
        parcel.writeInt(this.adX);
        parcel.writeString(this.adY);
        parcel.writeString(this.adZ);
        parcel.writeString(this.mAppName);
        parcel.writeString(this.mVersionName);
        parcel.writeInt(this.ads);
        parcel.writeString(this.aea);
    }

    public KuDownloadInfo() {
    }

    public void readFromParcel(Parcel parcel) {
        this.adW = parcel.readLong();
        this.adX = parcel.readInt();
        this.adY = parcel.readString();
        this.adZ = parcel.readString();
        this.mAppName = parcel.readString();
        this.mVersionName = parcel.readString();
        this.ads = parcel.readInt();
        this.aea = parcel.readString();
    }

    public KuDownloadInfo(Parcel parcel) {
        readFromParcel(parcel);
    }
}
