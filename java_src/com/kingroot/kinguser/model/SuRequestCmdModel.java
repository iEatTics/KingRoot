package com.kingroot.kinguser.model;

import android.net.LocalSocket;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public class SuRequestCmdModel implements Parcelable {
    public static final Parcelable.Creator<SuRequestCmdModel> CREATOR = new Parcelable.Creator<SuRequestCmdModel>() { // from class: com.kingroot.kinguser.model.SuRequestCmdModel.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: gI */
        public SuRequestCmdModel[] newArray(int i) {
            return new SuRequestCmdModel[i];
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: aF */
        public SuRequestCmdModel createFromParcel(Parcel parcel) {
            SuRequestCmdModel suRequestCmdModel = new SuRequestCmdModel();
            suRequestCmdModel.readFromParcel(parcel);
            return suRequestCmdModel;
        }
    };
    public int aRm;
    public int aRn;
    public int aRq;
    public int aRr;
    public long mCreateTime;
    public String aRo = null;
    public String aRp = null;
    public String mAppName = null;
    public String adZ = null;
    public LocalSocket aRs = null;
    public SuRequestCmdModel aRt = null;
    public int riskType = 1;
    public String aRu = "";
    public long aRv = -1;
    public long aRw = -1;
    public long aRx = -1;

    public SuRequestCmdModel() {
        this.mCreateTime = 0L;
        this.mCreateTime = System.currentTimeMillis();
    }

    protected void finalize() {
        super.finalize();
        if (this.aRs != null) {
            try {
                this.aRs.close();
            } catch (Exception e) {
            }
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.aRm);
        parcel.writeInt(this.aRn);
        parcel.writeString(this.aRo);
        parcel.writeString(this.aRp);
        parcel.writeInt(this.aRq);
        parcel.writeInt(this.aRr);
        parcel.writeString(this.mAppName);
        parcel.writeString(this.adZ);
        parcel.writeLong(this.mCreateTime);
        parcel.writeInt(this.riskType);
        parcel.writeString(this.aRu);
        parcel.writeLong(this.aRv);
        parcel.writeLong(this.aRw);
        parcel.writeLong(this.aRx);
    }

    public void readFromParcel(Parcel parcel) {
        this.aRm = parcel.readInt();
        this.aRn = parcel.readInt();
        this.aRo = parcel.readString();
        this.aRp = parcel.readString();
        this.aRq = parcel.readInt();
        this.aRr = parcel.readInt();
        this.mAppName = parcel.readString();
        this.adZ = parcel.readString();
        this.mCreateTime = parcel.readLong();
        this.riskType = parcel.readInt();
        this.aRu = parcel.readString();
        this.aRv = parcel.readLong();
        this.aRw = parcel.readLong();
        this.aRx = parcel.readLong();
    }
}
