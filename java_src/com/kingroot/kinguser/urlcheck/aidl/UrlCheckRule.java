package com.kingroot.kinguser.urlcheck.aidl;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public class UrlCheckRule implements Parcelable {
    public static final Parcelable.Creator<UrlCheckRule> CREATOR = new Parcelable.Creator<UrlCheckRule>() { // from class: com.kingroot.kinguser.urlcheck.aidl.UrlCheckRule.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: aM */
        public UrlCheckRule createFromParcel(Parcel parcel) {
            return new UrlCheckRule(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: iC */
        public UrlCheckRule[] newArray(int i) {
            return new UrlCheckRule[i];
        }
    };
    public boolean bnp;
    public int flag;

    /* renamed from: nE */
    public String f3652nE;
    public int type;

    public UrlCheckRule(int i, String str, int i2, boolean z) {
        this.type = 0;
        this.flag = 0;
        this.bnp = true;
        this.type = i;
        this.f3652nE = str;
        this.flag = i2;
        this.bnp = z;
    }

    protected UrlCheckRule(Parcel parcel) {
        this.type = 0;
        this.flag = 0;
        this.bnp = true;
        this.type = parcel.readInt();
        this.f3652nE = parcel.readString();
        this.flag = parcel.readInt();
        this.bnp = parcel.readByte() != 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.type);
        parcel.writeString(this.f3652nE);
        parcel.writeInt(this.flag);
        parcel.writeByte((byte) (this.bnp ? 1 : 0));
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }
}
