package com.kingroot.kinguser.advance.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
/* loaded from: classes.dex */
public class DefaultSettingInfo implements Parcelable {
    public static final Parcelable.Creator<DefaultSettingInfo> CREATOR = new Parcelable.Creator<DefaultSettingInfo>() { // from class: com.kingroot.kinguser.advance.model.DefaultSettingInfo.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: F */
        public DefaultSettingInfo createFromParcel(Parcel parcel) {
            return new DefaultSettingInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: do */
        public DefaultSettingInfo[] newArray(int i) {
            return new DefaultSettingInfo[i];
        }
    };
    public String appName;
    public boolean apw;
    public boolean apx;
    public AppBaseModel apy;
    public String pkgName;
    public int type;

    public DefaultSettingInfo() {
    }

    DefaultSettingInfo(Parcel parcel) {
        this.type = parcel.readInt();
        this.apw = parcel.readByte() != 0;
        this.pkgName = parcel.readString();
        this.apx = parcel.readByte() != 0;
        this.apy = (AppBaseModel) parcel.readParcelable(AppBaseModel.class.getClassLoader());
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.type);
        parcel.writeByte((byte) (this.apw ? 1 : 0));
        parcel.writeString(this.pkgName);
        parcel.writeByte((byte) (this.apx ? 1 : 0));
        parcel.writeParcelable(this.apy, i);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        return (obj instanceof DefaultSettingInfo) && this.type == ((DefaultSettingInfo) obj).type;
    }

    public String toString() {
        return "defaultSettingInfo[" + this.type + " " + this.pkgName + " " + this.appName + " " + this.apw + " " + this.apx + "]";
    }
}
