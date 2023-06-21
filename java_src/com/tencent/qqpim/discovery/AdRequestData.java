package com.tencent.qqpim.discovery;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class AdRequestData implements Parcelable {
    public static final Parcelable.Creator<AdRequestData> CREATOR = new Parcelable.Creator<AdRequestData>() { // from class: com.tencent.qqpim.discovery.AdRequestData.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: aY */
        public AdRequestData createFromParcel(Parcel parcel) {
            return new AdRequestData(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: kc */
        public AdRequestData[] newArray(int i) {
            return new AdRequestData[i];
        }
    };
    public int bJL;
    public ArrayList<Integer> bJM;
    @Deprecated
    public boolean bJN;
    public boolean bJO;
    public boolean bJP;
    public int bJp;

    public AdRequestData() {
        this.bJN = false;
        this.bJO = false;
        this.bJP = false;
    }

    /* renamed from: ahx */
    public AdRequestData clone() {
        AdRequestData adRequestData = new AdRequestData();
        adRequestData.bJp = this.bJp;
        adRequestData.bJL = this.bJL;
        adRequestData.bJM = (ArrayList) this.bJM.clone();
        adRequestData.bJN = this.bJN;
        adRequestData.bJO = this.bJO;
        adRequestData.bJP = this.bJP;
        return adRequestData;
    }

    AdRequestData(Parcel parcel) {
        this.bJN = false;
        this.bJO = false;
        this.bJP = false;
        this.bJp = parcel.readInt();
        this.bJL = parcel.readInt();
        this.bJM = parcel.readArrayList(Integer.class.getClassLoader());
        this.bJN = parcel.readByte() != 1;
        this.bJO = parcel.readByte() != 1;
        this.bJP = parcel.readByte() != 1;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.bJp);
        parcel.writeInt(this.bJL);
        parcel.writeList(this.bJM);
        parcel.writeByte((byte) (this.bJN ? 0 : 1));
        parcel.writeByte((byte) (this.bJO ? 0 : 1));
        parcel.writeByte((byte) (this.bJP ? 0 : 1));
    }

    public String toString() {
        return "AdRequestData [positionId=" + this.bJp + ", advNum=" + this.bJL + ", positionFormatTypes=" + this.bJM + ", autoLoadPicEnable=" + this.bJN + ", mustMaterialPrepared=" + this.bJO + ", includePrepullAd=" + this.bJP + "]";
    }
}
