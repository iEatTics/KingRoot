package com.kingroot.kinguser.model;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public class RootMgrAppModel implements Parcelable {
    public static final Parcelable.Creator<RootMgrAppModel> CREATOR = new Parcelable.Creator<RootMgrAppModel>() { // from class: com.kingroot.kinguser.model.RootMgrAppModel.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: aD */
        public RootMgrAppModel createFromParcel(Parcel parcel) {
            return new RootMgrAppModel(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: gG */
        public RootMgrAppModel[] newArray(int i) {
            return new RootMgrAppModel[i];
        }
    };
    public AppInfo aQQ;
    public int aQR;
    public int aQS;

    /* renamed from: ot */
    public int f3142ot = 0;
    public String riskDescription = "";

    public RootMgrAppModel() {
    }

    public RootMgrAppModel(Parcel parcel) {
        readFromParcel(parcel);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.aQQ, i);
        parcel.writeInt(this.aQR);
        parcel.writeInt(this.aQS);
        parcel.writeInt(this.f3142ot);
        parcel.writeString(this.riskDescription);
    }

    private void readFromParcel(Parcel parcel) {
        this.aQQ = (AppInfo) parcel.readParcelable(AppInfo.class.getClassLoader());
        this.aQR = parcel.readInt();
        this.aQS = parcel.readInt();
        this.f3142ot = parcel.readInt();
        this.riskDescription = parcel.readString();
    }
}
