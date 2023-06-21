package com.kingroot.common.utils.system;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public class VTCommand implements Parcelable {
    public static final Parcelable.Creator<VTCommand> CREATOR = new Parcelable.Creator<VTCommand>() { // from class: com.kingroot.common.utils.system.VTCommand.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: u */
        public VTCommand createFromParcel(Parcel parcel) {
            return new VTCommand(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: cg */
        public VTCommand[] newArray(int i) {
            return new VTCommand[i];
        }
    };
    public final String mCmdFlag;
    public final String mCmdValue;
    public final long mTimeout;

    public VTCommand(String str, String str2) {
        this.mCmdFlag = str;
        this.mCmdValue = str2;
        this.mTimeout = 120000L;
    }

    public VTCommand(String str, String str2, long j) {
        this.mCmdFlag = str;
        this.mCmdValue = str2;
        this.mTimeout = j;
    }

    protected VTCommand(Parcel parcel) {
        this.mCmdFlag = parcel.readString();
        this.mCmdValue = parcel.readString();
        this.mTimeout = parcel.readLong();
    }

    public boolean isEmpty() {
        return this.mCmdFlag == null || this.mCmdFlag.length() <= 0 || this.mCmdValue == null || this.mCmdValue.length() <= 0;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mCmdFlag);
        parcel.writeString(this.mCmdValue);
        parcel.writeLong(this.mTimeout);
    }
}
