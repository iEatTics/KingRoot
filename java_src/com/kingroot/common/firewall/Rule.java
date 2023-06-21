package com.kingroot.common.firewall;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public class Rule implements Parcelable {
    public static final Parcelable.Creator<Rule> CREATOR = new Parcelable.Creator<Rule>() { // from class: com.kingroot.common.firewall.Rule.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: aT */
        public Rule[] newArray(int i) {
            return new Rule[i];
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: j */
        public Rule createFromParcel(Parcel parcel) {
            return new Rule(parcel);
        }
    };

    /* renamed from: GY */
    public String f777GY;

    /* renamed from: GZ */
    public String f778GZ;

    /* renamed from: Ha */
    public String f779Ha;

    /* renamed from: Hb */
    public String f780Hb;
    public int type;
    public int uid;

    public Rule() {
    }

    Rule(Parcel parcel) {
        this.type = parcel.readInt();
        this.uid = parcel.readInt();
        this.f777GY = parcel.readString();
        this.f778GZ = parcel.readString();
        this.f779Ha = parcel.readString();
        this.f780Hb = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.type);
        parcel.writeInt(this.uid);
        parcel.writeString(this.f777GY);
        parcel.writeString(this.f778GZ);
        parcel.writeString(this.f779Ha);
        parcel.writeString(this.f780Hb);
    }
}
