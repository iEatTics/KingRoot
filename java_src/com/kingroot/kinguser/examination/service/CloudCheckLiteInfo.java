package com.kingroot.kinguser.examination.service;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public class CloudCheckLiteInfo implements Parcelable {
    public static final Parcelable.Creator<CloudCheckLiteInfo> CREATOR = new Parcelable.Creator<CloudCheckLiteInfo>() { // from class: com.kingroot.kinguser.examination.service.CloudCheckLiteInfo.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: ay */
        public CloudCheckLiteInfo createFromParcel(Parcel parcel) {
            return new CloudCheckLiteInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: gr */
        public CloudCheckLiteInfo[] newArray(int i) {
            return new CloudCheckLiteInfo[i];
        }
    };

    /* renamed from: Bk */
    private String f2643Bk;
    private int aMj;
    private String mPkg;

    public CloudCheckLiteInfo(String str, int i, String str2) {
        this.mPkg = str;
        this.aMj = i;
        this.f2643Bk = str2;
    }

    /* renamed from: Nw */
    public String m3887Nw() {
        return this.mPkg;
    }

    /* renamed from: Nx */
    public int m3886Nx() {
        return this.aMj;
    }

    /* renamed from: Ny */
    public String m3885Ny() {
        return this.f2643Bk;
    }

    protected CloudCheckLiteInfo(Parcel parcel) {
        this.mPkg = parcel.readString();
        this.aMj = parcel.readInt();
        this.f2643Bk = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mPkg);
        parcel.writeInt(this.aMj);
        parcel.writeString(this.f2643Bk);
    }
}
