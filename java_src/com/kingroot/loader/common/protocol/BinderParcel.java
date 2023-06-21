package com.kingroot.loader.common.protocol;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public class BinderParcel implements Parcelable {
    public static final Parcelable.Creator<BinderParcel> CREATOR = new Parcelable.Creator<BinderParcel>() { // from class: com.kingroot.loader.common.protocol.BinderParcel.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: aS */
        public BinderParcel createFromParcel(Parcel parcel) {
            return new BinderParcel(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: jw */
        public BinderParcel[] newArray(int i) {
            return new BinderParcel[i];
        }
    };
    public IBinder binder;

    public static BinderParcel obtain(IBinder iBinder) {
        return new BinderParcel(iBinder);
    }

    private BinderParcel(IBinder iBinder) {
        this.binder = iBinder;
    }

    private BinderParcel(Parcel parcel) {
        this.binder = parcel.readStrongBinder();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeStrongBinder(this.binder);
    }
}
