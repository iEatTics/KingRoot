package com.kingroot.kinguser.advance.install.aidl;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public class CheckResult implements Parcelable {
    public static final Parcelable.Creator<CheckResult> CREATOR = new Parcelable.Creator<CheckResult>() { // from class: com.kingroot.kinguser.advance.install.aidl.CheckResult.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: C */
        public CheckResult createFromParcel(Parcel parcel) {
            return new CheckResult(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: de */
        public CheckResult[] newArray(int i) {
            return new CheckResult[i];
        }
    };
    public int anb;

    public CheckResult(int i) {
        this.anb = i;
    }

    protected CheckResult(Parcel parcel) {
        this.anb = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.anb);
    }
}
