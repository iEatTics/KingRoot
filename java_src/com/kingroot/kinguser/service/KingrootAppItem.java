package com.kingroot.kinguser.service;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public class KingrootAppItem implements Parcelable {
    public static final Parcelable.Creator<KingrootAppItem> CREATOR = new Parcelable.Creator<KingrootAppItem>() { // from class: com.kingroot.kinguser.service.KingrootAppItem.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: aK */
        public KingrootAppItem createFromParcel(Parcel parcel) {
            return new KingrootAppItem(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: im */
        public KingrootAppItem[] newArray(int i) {
            return new KingrootAppItem[i];
        }
    };
    private String bje;
    private int bjf;
    private String mAppName;
    private long mTime;

    public KingrootAppItem() {
    }

    public KingrootAppItem(Parcel parcel) {
        this.mAppName = parcel.readString();
        this.bje = parcel.readString();
        this.bjf = parcel.readInt();
        this.mTime = parcel.readLong();
    }

    /* renamed from: kN */
    public void m2274kN(String str) {
        this.mAppName = str;
    }

    /* renamed from: kO */
    public void m2273kO(String str) {
        this.bje = str;
    }

    /* renamed from: il */
    public void m2275il(int i) {
        this.bjf = i;
    }

    public void setTime(long j) {
        this.mTime = j;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mAppName);
        parcel.writeString(this.bje);
        parcel.writeInt(this.bjf);
        parcel.writeLong(this.mTime);
    }
}
