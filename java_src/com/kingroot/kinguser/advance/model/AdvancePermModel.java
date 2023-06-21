package com.kingroot.kinguser.advance.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
/* loaded from: classes.dex */
public class AdvancePermModel implements Parcelable {
    public static final Parcelable.Creator<AdvancePermModel> CREATOR = new Parcelable.Creator<AdvancePermModel>() { // from class: com.kingroot.kinguser.advance.model.AdvancePermModel.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: E */
        public AdvancePermModel createFromParcel(Parcel parcel) {
            return new AdvancePermModel(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: dn */
        public AdvancePermModel[] newArray(int i) {
            return new AdvancePermModel[i];
        }
    };
    public int apt;
    public int apu;
    public int apv;
    @NonNull
    public String packageName;
    public int type;

    public AdvancePermModel() {
        this.type = -1;
    }

    protected AdvancePermModel(Parcel parcel) {
        this.type = -1;
        this.packageName = parcel.readString();
        this.type = parcel.readInt();
        this.apt = parcel.readInt();
        this.apu = parcel.readInt();
        this.apv = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.packageName);
        parcel.writeInt(this.type);
        parcel.writeInt(this.apt);
        parcel.writeInt(this.apu);
        parcel.writeInt(this.apv);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            AdvancePermModel advancePermModel = (AdvancePermModel) obj;
            if (advancePermModel.packageName.equals(this.packageName)) {
                return advancePermModel.type == this.type;
            }
            return false;
        } catch (Exception e) {
            return false;
        }
    }
}
