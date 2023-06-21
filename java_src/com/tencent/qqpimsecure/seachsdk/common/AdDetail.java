package com.tencent.qqpimsecure.seachsdk.common;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public class AdDetail implements Parcelable {
    public static final Parcelable.Creator<AdDetail> CREATOR = new Parcelable.Creator<AdDetail>() { // from class: com.tencent.qqpimsecure.seachsdk.common.AdDetail.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: aZ */
        public AdDetail createFromParcel(Parcel parcel) {
            return new AdDetail(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: kk */
        public AdDetail[] newArray(int i) {
            return new AdDetail[i];
        }
    };
    public int bJE;
    public int bLT;
    public int bMd;
    public String jumpUrl;

    public AdDetail() {
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.bMd);
        parcel.writeString(this.jumpUrl);
        parcel.writeInt(this.bLT);
        parcel.writeInt(this.bJE);
    }

    AdDetail(Parcel parcel) {
        this.bMd = parcel.readInt();
        this.jumpUrl = parcel.readString();
        this.bLT = parcel.readInt();
        this.bJE = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "AdDetail [expireTime=" + this.bMd + ", jumpUrl=" + this.jumpUrl + ", displayMaxTimes=" + this.bLT + ", scenes=" + this.bJE + "]";
    }
}
