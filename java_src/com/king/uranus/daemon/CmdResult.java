package com.king.uranus.daemon;

import android.os.Parcel;
import android.os.Parcelable;
import com.kingroot.kinguser.C3360nr;
/* loaded from: classes.dex */
public class CmdResult implements Parcelable {
    public static final Parcelable.Creator<CmdResult> CREATOR = new C3360nr();
    public final String mCmdFlag;
    public final Integer mExitValue;
    public final String mStdErr;
    public final String mStdOut;

    public CmdResult(String str, Integer num, String str2, String str3) {
        this.mCmdFlag = str;
        this.mExitValue = num;
        this.mStdOut = str2;
        this.mStdErr = str3;
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
