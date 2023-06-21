package com.kingroot.common.utils.system;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public class VTCmdResult implements Parcelable {
    public static final Parcelable.Creator<VTCmdResult> CREATOR = new Parcelable.Creator<VTCmdResult>() { // from class: com.kingroot.common.utils.system.VTCmdResult.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: t */
        public VTCmdResult createFromParcel(Parcel parcel) {
            return new VTCmdResult(parcel.readString(), Integer.valueOf(parcel.readInt()), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: cf */
        public VTCmdResult[] newArray(int i) {
            return new VTCmdResult[i];
        }
    };
    public final String mCmdFlag;
    public final Integer mExitValue;
    public final String mStdErr;
    public final String mStdOut;

    public VTCmdResult(String str, Integer num, String str2, String str3) {
        this.mCmdFlag = str;
        this.mExitValue = num;
        this.mStdOut = str2;
        this.mStdErr = str3;
    }

    public boolean success() {
        return this.mExitValue != null && this.mExitValue.intValue() == 0;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mCmdFlag);
        parcel.writeInt(this.mExitValue.intValue());
        parcel.writeString(this.mStdOut);
        parcel.writeString(this.mStdErr);
    }
}
