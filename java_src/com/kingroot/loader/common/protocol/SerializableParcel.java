package com.kingroot.loader.common.protocol;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;
/* loaded from: classes.dex */
public class SerializableParcel implements Parcelable {
    public static final Parcelable.Creator<SerializableParcel> CREATOR = new Parcelable.Creator<SerializableParcel>() { // from class: com.kingroot.loader.common.protocol.SerializableParcel.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: aT */
        public SerializableParcel createFromParcel(Parcel parcel) {
            return new SerializableParcel(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: jx */
        public SerializableParcel[] newArray(int i) {
            return new SerializableParcel[i];
        }
    };
    public Serializable serializable;

    public static SerializableParcel obtain(Serializable serializable) {
        return new SerializableParcel(serializable);
    }

    private SerializableParcel(Serializable serializable) {
        this.serializable = serializable;
    }

    private SerializableParcel(Parcel parcel) {
        this.serializable = parcel.readSerializable();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeSerializable(this.serializable);
    }
}
