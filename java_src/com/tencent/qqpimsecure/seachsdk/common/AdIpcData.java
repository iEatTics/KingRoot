package com.tencent.qqpimsecure.seachsdk.common;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class AdIpcData implements Parcelable {
    public static final Parcelable.Creator<AdIpcData> CREATOR = new Parcelable.Creator<AdIpcData>() { // from class: com.tencent.qqpimsecure.seachsdk.common.AdIpcData.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: ba */
        public AdIpcData createFromParcel(Parcel parcel) {
            return new AdIpcData(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: kl */
        public AdIpcData[] newArray(int i) {
            return new AdIpcData[i];
        }
    };
    public String activityId;
    public int bJB;
    public int bJC;
    public int bJD;
    public int bJq;
    public String bJr;
    public String bJs;
    public String bJt;
    public String bJu;
    public int bJy;
    public String bJz;
    public String bMq;
    public String bMr;
    public String bMs;
    public String bOg;
    public String bOh;
    public String bOi;
    public String bOj;
    public String bOk;
    public String bOl;
    public ArrayList<Integer> bOm;
    public byte bOn;
    public int bOo;
    public int bOp;
    public AdDetail bOq;
    public int progress;
    public String subTitle;
    public String title;
    public String uniqueKey;

    public AdIpcData() {
        this.activityId = "";
        this.title = "";
        this.subTitle = "";
        this.bOg = "";
        this.bOh = "";
        this.bJq = 0;
        this.bJz = "";
        this.bJy = 0;
        this.bOi = "";
        this.bOj = "";
        this.bOk = "";
        this.bOl = "";
        this.bOm = null;
        this.bOn = (byte) 0;
        this.bJB = 0;
        this.bJC = 0;
        this.bJD = 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.activityId);
        parcel.writeString(this.title);
        parcel.writeString(this.subTitle);
        parcel.writeString(this.bOg);
        parcel.writeString(this.bOh);
        parcel.writeInt(this.bJq);
        parcel.writeString(this.bJz);
        parcel.writeInt(this.bJy);
        parcel.writeString(this.bOi);
        parcel.writeString(this.bOj);
        parcel.writeString(this.bOk);
        parcel.writeString(this.bOl);
        parcel.writeList(this.bOm);
        parcel.writeByte(this.bOn);
        parcel.writeString(this.bJr);
        parcel.writeString(this.bJs);
        parcel.writeString(this.bJt);
        parcel.writeString(this.bMq);
        parcel.writeString(this.bMr);
        parcel.writeString(this.bMs);
        parcel.writeInt(this.bOo);
        parcel.writeInt(this.bOp);
        parcel.writeString(this.bJu);
        parcel.writeString(this.uniqueKey);
        parcel.writeInt(this.progress);
        parcel.writeParcelable(this.bOq, 0);
        parcel.writeInt(this.bJB);
        parcel.writeInt(this.bJC);
        parcel.writeInt(this.bJD);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdIpcData(Parcel parcel) {
        this.activityId = "";
        this.title = "";
        this.subTitle = "";
        this.bOg = "";
        this.bOh = "";
        this.bJq = 0;
        this.bJz = "";
        this.bJy = 0;
        this.bOi = "";
        this.bOj = "";
        this.bOk = "";
        this.bOl = "";
        this.bOm = null;
        this.bOn = (byte) 0;
        this.bJB = 0;
        this.bJC = 0;
        this.bJD = 0;
        this.activityId = parcel.readString();
        this.title = parcel.readString();
        this.subTitle = parcel.readString();
        this.bOg = parcel.readString();
        this.bOh = parcel.readString();
        this.bJq = parcel.readInt();
        this.bJz = parcel.readString();
        this.bJy = parcel.readInt();
        this.bOi = parcel.readString();
        this.bOj = parcel.readString();
        this.bOk = parcel.readString();
        this.bOl = parcel.readString();
        this.bOm = parcel.readArrayList(Integer.class.getClassLoader());
        this.bOn = parcel.readByte();
        this.bJr = parcel.readString();
        this.bJs = parcel.readString();
        this.bJt = parcel.readString();
        this.bMq = parcel.readString();
        this.bMr = parcel.readString();
        this.bMs = parcel.readString();
        this.bOo = parcel.readInt();
        this.bOp = parcel.readInt();
        this.bJu = parcel.readString();
        this.uniqueKey = parcel.readString();
        this.progress = parcel.readInt();
        this.bOq = (AdDetail) parcel.readParcelable(AdDetail.class.getClassLoader());
        this.bJB = parcel.readInt();
        this.bJC = parcel.readInt();
        this.bJD = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "AdIpcData [activityId=" + this.activityId + ", title=" + this.title + ", subTitle=" + this.subTitle + ", logo=" + this.bOg + ", entWording=" + this.bOh + ", templateType=" + this.bJq + ", notifyContent=" + this.bJz + ", notifyInterval=" + this.bJy + ", backgroundImg=" + this.bOi + ", broadcastImg=" + this.bOj + ", currentprice=" + this.bOk + ", originprice=" + this.bOl + ", positions=" + this.bOm + ", needGuide=" + ((int) this.bOn) + ", text1=" + this.bJr + ", text2=" + this.bJs + ", text3=" + this.bJt + ", imgUrl1=" + this.bMq + ", imgUrl2=" + this.bMr + ", imgUrl3=" + this.bMs + ", text4=" + this.bJu + ", uniqueKey=" + this.uniqueKey + ", progress=" + this.progress + ", adSource=" + this.bOo + ", adPhase=" + this.bOp + ", adDetail=" + this.bOq + ", effectiveTime=" + this.bJB + ", continuousExposureTime=" + this.bJC + ", exposureInterval=" + this.bJD + "]";
    }
}
