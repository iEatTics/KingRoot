package com.tencent.qqpim.discovery;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public class AdDisplayModel implements Parcelable {
    public static final Parcelable.Creator<AdDisplayModel> CREATOR = new Parcelable.Creator<AdDisplayModel>() { // from class: com.tencent.qqpim.discovery.AdDisplayModel.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: aX */
        public AdDisplayModel createFromParcel(Parcel parcel) {
            return new AdDisplayModel(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: kb */
        public AdDisplayModel[] newArray(int i) {
            return new AdDisplayModel[i];
        }
    };
    public int bJA;
    public int bJB;
    public int bJC;
    public int bJD;
    public int bJE;
    public boolean bJF;
    public long bJG;
    public String bJH;
    public String bJI;
    public String bJJ;
    public String bJK;
    public int bJo;
    public int bJp;
    public int bJq;
    public String bJr;
    public String bJs;
    public String bJt;
    public String bJu;
    public String bJv;
    public String bJw;
    public String bJx;
    public int bJy;
    public String bJz;
    public String uniqueKey;
    public String videoUrl;

    public AdDisplayModel() {
        this.bJo = 0;
        this.bJp = 0;
        this.bJy = 0;
        this.bJz = "";
        this.bJA = 0;
        this.bJB = 0;
        this.bJC = 0;
        this.bJD = 0;
        this.bJF = true;
    }

    public boolean ahw() {
        return this.bJF;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.bJo);
        parcel.writeInt(this.bJp);
        parcel.writeInt(this.bJq);
        parcel.writeString(this.bJr);
        parcel.writeString(this.bJs);
        parcel.writeString(this.bJt);
        parcel.writeString(this.bJu);
        parcel.writeString(this.bJv);
        parcel.writeString(this.bJw);
        parcel.writeString(this.bJx);
        parcel.writeInt(this.bJy);
        parcel.writeString(this.bJz);
        parcel.writeString(this.uniqueKey);
        parcel.writeInt(this.bJA);
        parcel.writeInt(this.bJB);
        parcel.writeInt(this.bJC);
        parcel.writeInt(this.bJD);
        parcel.writeInt(this.bJE);
        parcel.writeByte((byte) (this.bJF ? 1 : 0));
        parcel.writeLong(this.bJG);
        parcel.writeString(this.videoUrl);
        parcel.writeString(this.bJH);
        parcel.writeString(this.bJI);
        parcel.writeString(this.bJJ);
        parcel.writeString(this.bJK);
    }

    AdDisplayModel(Parcel parcel) {
        this.bJo = 0;
        this.bJp = 0;
        this.bJy = 0;
        this.bJz = "";
        this.bJA = 0;
        this.bJB = 0;
        this.bJC = 0;
        this.bJD = 0;
        this.bJF = true;
        this.bJo = parcel.readInt();
        this.bJp = parcel.readInt();
        this.bJq = parcel.readInt();
        this.bJr = parcel.readString();
        this.bJs = parcel.readString();
        this.bJt = parcel.readString();
        this.bJu = parcel.readString();
        this.bJv = parcel.readString();
        this.bJw = parcel.readString();
        this.bJx = parcel.readString();
        this.bJy = parcel.readInt();
        this.bJz = parcel.readString();
        this.uniqueKey = parcel.readString();
        this.bJA = parcel.readInt();
        this.bJB = parcel.readInt();
        this.bJC = parcel.readInt();
        this.bJD = parcel.readInt();
        this.bJE = parcel.readInt();
        this.bJF = parcel.readByte() != 0;
        this.bJG = parcel.readLong();
        this.videoUrl = parcel.readString();
        this.bJH = parcel.readString();
        this.bJI = parcel.readString();
        this.bJJ = parcel.readString();
        this.bJK = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "AdDisplayModel [isneedGuide=" + this.bJo + ", positionId=" + this.bJp + ", templateType=" + this.bJq + ", text1=" + this.bJr + ", text2=" + this.bJs + ", text3=" + this.bJt + ", text4=" + this.bJu + ", imageUrl1=" + this.bJv + ", imageUrl2=" + this.bJw + ", imageUrl3=" + this.bJx + ", notifyInterval=" + this.bJy + ", notifyContent=" + this.bJz + ", uniqueKey=" + this.uniqueKey + ", percentSpent=" + this.bJA + ", effectiveTime=" + this.bJB + ", continuousExposureTime=" + this.bJC + ", exposureInterval=" + this.bJD + ", scenes=" + this.bJE + ", jumpurlenable=" + this.bJF + ", predisplaytime=" + this.bJG + ", videoUrl=" + this.videoUrl + ", imgMd5=" + this.bJH + ", videoMd5=" + this.bJI + ", zipMd5=" + this.bJK + ", zipUrl=" + this.bJJ + "]";
    }
}
