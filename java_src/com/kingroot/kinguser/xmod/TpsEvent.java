package com.kingroot.kinguser.xmod;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public class TpsEvent implements Parcelable {
    public static final Parcelable.Creator<TpsEvent> CREATOR = new Parcelable.Creator<TpsEvent>() { // from class: com.kingroot.kinguser.xmod.TpsEvent.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: aP */
        public TpsEvent createFromParcel(Parcel parcel) {
            return new TpsEvent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: je */
        public TpsEvent[] newArray(int i) {
            return new TpsEvent[i];
        }
    };
    private String[] bug;
    private int type;

    public TpsEvent(int i, String... strArr) {
        this.type = 0;
        this.type = i;
        this.bug = strArr;
    }

    protected TpsEvent(Parcel parcel) {
        this.type = 0;
        this.type = parcel.readInt();
        this.bug = parcel.createStringArray();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.type);
        parcel.writeStringArray(this.bug);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }
}
