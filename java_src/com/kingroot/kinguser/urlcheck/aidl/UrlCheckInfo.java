package com.kingroot.kinguser.urlcheck.aidl;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public class UrlCheckInfo implements Parcelable {
    public static final Parcelable.Creator<UrlCheckInfo> CREATOR = new Parcelable.Creator<UrlCheckInfo>() { // from class: com.kingroot.kinguser.urlcheck.aidl.UrlCheckInfo.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: aL */
        public UrlCheckInfo createFromParcel(Parcel parcel) {
            return new UrlCheckInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: iB */
        public UrlCheckInfo[] newArray(int i) {
            return new UrlCheckInfo[i];
        }
    };
    public int bno;
    public String url;

    protected UrlCheckInfo(Parcel parcel) {
        this.bno = parcel.readInt();
        this.url = parcel.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.bno);
        parcel.writeString(this.url);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }
}
