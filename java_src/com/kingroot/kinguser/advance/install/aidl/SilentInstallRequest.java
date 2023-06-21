package com.kingroot.kinguser.advance.install.aidl;

import android.os.Parcel;
import android.os.Parcelable;
import com.kingroot.kinguser.advance.install.aidl.ICheckCallback;
/* loaded from: classes.dex */
public class SilentInstallRequest implements Parcelable {
    private String anc;
    public int and;
    public int ane;
    public String anf;
    public long ang;
    private ICheckCallback anh;
    public static String KEY = "silent_intall_request";
    public static final Parcelable.Creator<SilentInstallRequest> CREATOR = new Parcelable.Creator<SilentInstallRequest>() { // from class: com.kingroot.kinguser.advance.install.aidl.SilentInstallRequest.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: D */
        public SilentInstallRequest createFromParcel(Parcel parcel) {
            return new SilentInstallRequest(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: df */
        public SilentInstallRequest[] newArray(int i) {
            return new SilentInstallRequest[i];
        }
    };

    protected SilentInstallRequest(Parcel parcel) {
        this.and = -1;
        this.ane = -1;
        this.anf = null;
        this.anc = parcel.readString();
        this.and = parcel.readInt();
        this.ane = parcel.readInt();
        this.anf = parcel.readString();
        this.ang = parcel.readLong();
        this.anh = ICheckCallback.Stub.asInterface(parcel.readStrongBinder());
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.anc);
        parcel.writeInt(this.and);
        parcel.writeInt(this.ane);
        parcel.writeString(this.anf);
        parcel.writeLong(this.ang);
        parcel.writeStrongBinder(this.anh.asBinder());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: a */
    public void m12443a(CheckResult checkResult) {
        if (this.anh != null) {
            this.anh.callback(checkResult);
        }
    }
}
