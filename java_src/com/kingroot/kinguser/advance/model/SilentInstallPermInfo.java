package com.kingroot.kinguser.advance.model;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public class SilentInstallPermInfo implements Parcelable {
    public static final Parcelable.Creator<SilentInstallPermInfo> CREATOR = new Parcelable.Creator<SilentInstallPermInfo>() { // from class: com.kingroot.kinguser.advance.model.SilentInstallPermInfo.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: K */
        public SilentInstallPermInfo createFromParcel(Parcel parcel) {
            return new SilentInstallPermInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: ds */
        public SilentInstallPermInfo[] newArray(int i) {
            return new SilentInstallPermInfo[i];
        }
    };
    public long apN;
    public long mDuration;
    public String mPackageName;
    public int mRule;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mPackageName);
        parcel.writeInt(this.mRule);
        parcel.writeLong(this.apN);
        parcel.writeLong(this.mDuration);
    }

    public SilentInstallPermInfo() {
    }

    private SilentInstallPermInfo(Parcel parcel) {
        readFromParcel(parcel);
    }

    private void readFromParcel(Parcel parcel) {
        this.mPackageName = parcel.readString();
        this.mRule = parcel.readInt();
        this.apN = parcel.readLong();
        this.mDuration = parcel.readLong();
    }
}
