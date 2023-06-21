package com.tencent.feedback.common;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;
/* loaded from: classes.dex */
public class PlugInInfo implements Parcelable, Serializable {
    public static final Parcelable.Creator<PlugInInfo> CREATOR = new Parcelable.Creator<PlugInInfo>() { // from class: com.tencent.feedback.common.PlugInInfo.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ PlugInInfo createFromParcel(Parcel parcel) {
            return new PlugInInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ PlugInInfo[] newArray(int i) {
            return new PlugInInfo[i];
        }
    };
    private static final long serialVersionUID = 1;
    public final String plugInId;
    public final String plugInUUID;
    public final String plugInVersion;

    public PlugInInfo(String str, String str2, String str3) {
        this.plugInId = str;
        this.plugInVersion = str2;
        this.plugInUUID = str3;
    }

    public String toString() {
        return "plid:" + this.plugInId + " plV:" + this.plugInVersion + " plUUID:" + this.plugInUUID;
    }

    public PlugInInfo(Parcel parcel) {
        this.plugInId = parcel.readString();
        this.plugInVersion = parcel.readString();
        this.plugInUUID = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.plugInId);
        parcel.writeString(this.plugInVersion);
        parcel.writeString(this.plugInUUID);
    }
}
