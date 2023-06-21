package com.kingroot.common.utils.system;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public class KmVTCmdResult extends VTCmdResult implements Parcelable {
    public static final Parcelable.Creator<KmVTCmdResult> CREATOR = new Parcelable.Creator<KmVTCmdResult>() { // from class: com.kingroot.common.utils.system.KmVTCmdResult.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: s */
        public KmVTCmdResult createFromParcel(Parcel parcel) {
            return new KmVTCmdResult(parcel.readString(), Integer.valueOf(parcel.readInt()), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: cb */
        public KmVTCmdResult[] newArray(int i) {
            return new KmVTCmdResult[i];
        }
    };

    public KmVTCmdResult(String str, Integer num, String str2, String str3) {
        super(str, num, str2, str3);
    }

    public KmVTCmdResult(VTCmdResult vTCmdResult) {
        this(vTCmdResult.mCmdFlag, vTCmdResult.mExitValue, vTCmdResult.mStdOut, vTCmdResult.mStdErr);
    }

    @Override // com.kingroot.common.utils.system.VTCmdResult
    public boolean success() {
        return this.mExitValue != null && this.mExitValue.intValue() == 0;
    }

    @Override // com.kingroot.common.utils.system.VTCmdResult, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.kingroot.common.utils.system.VTCmdResult, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mCmdFlag);
        parcel.writeInt(this.mExitValue.intValue());
        parcel.writeString(this.mStdOut);
        parcel.writeString(this.mStdErr);
    }
}
