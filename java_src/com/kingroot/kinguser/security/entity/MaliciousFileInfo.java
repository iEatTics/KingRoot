package com.kingroot.kinguser.security.entity;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
/* loaded from: classes.dex */
public class MaliciousFileInfo implements Parcelable {
    public static final Parcelable.Creator<MaliciousFileInfo> CREATOR = new Parcelable.Creator<MaliciousFileInfo>() { // from class: com.kingroot.kinguser.security.entity.MaliciousFileInfo.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: aJ */
        public MaliciousFileInfo createFromParcel(Parcel parcel) {
            return new MaliciousFileInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: ij */
        public MaliciousFileInfo[] newArray(int i) {
            return new MaliciousFileInfo[i];
        }
    };

    /* renamed from: GG */
    private String f3515GG;

    /* renamed from: Gx */
    private String f3516Gx;
    private String biN;
    private String biO;
    private int biP;
    private int mType;

    public MaliciousFileInfo(@NonNull String str, @NonNull String str2) {
        this.biP = 1;
        this.f3516Gx = str2;
        this.f3515GG = str;
    }

    /* renamed from: kL */
    public void m2280kL(String str) {
        this.biN = str;
    }

    public void setType(int i) {
        this.mType = i;
    }

    /* renamed from: jk */
    public String m2281jk() {
        return this.f3516Gx;
    }

    /* renamed from: Ys */
    public String m2284Ys() {
        return this.biO;
    }

    /* renamed from: kM */
    public void m2279kM(String str) {
        this.biO = str;
    }

    /* renamed from: Yt */
    public int m2283Yt() {
        return this.biP;
    }

    /* renamed from: ii */
    public void m2282ii(int i) {
        this.biP = i;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f3515GG);
        parcel.writeString(this.biN);
        parcel.writeInt(this.mType);
        parcel.writeString(this.f3516Gx);
        parcel.writeString(this.biO);
        parcel.writeInt(this.biP);
    }

    private MaliciousFileInfo(Parcel parcel) {
        this.biP = 1;
        this.f3515GG = parcel.readString();
        this.biN = parcel.readString();
        this.mType = parcel.readInt();
        this.f3516Gx = parcel.readString();
        this.biO = parcel.readString();
        this.biP = parcel.readInt();
    }
}
