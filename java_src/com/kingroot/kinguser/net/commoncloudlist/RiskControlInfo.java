package com.kingroot.kinguser.net.commoncloudlist;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
/* loaded from: classes.dex */
public class RiskControlInfo implements Parcelable {
    public static final Parcelable.Creator<RiskControlInfo> CREATOR = new Parcelable.Creator<RiskControlInfo>() { // from class: com.kingroot.kinguser.net.commoncloudlist.RiskControlInfo.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: aH */
        public RiskControlInfo createFromParcel(Parcel parcel) {
            return new RiskControlInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: hl */
        public RiskControlInfo[] newArray(int i) {
            return new RiskControlInfo[i];
        }
    };
    public final String aUH;
    public final int aUI;
    public final String packageName;
    public final String riskDescription;

    protected RiskControlInfo(Parcel parcel) {
        this.packageName = parcel.readString();
        this.aUH = parcel.readString();
        this.riskDescription = parcel.readString();
        this.aUI = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.packageName);
        parcel.writeString(this.aUH);
        parcel.writeString(this.riskDescription);
        parcel.writeInt(this.aUI);
    }

    /* renamed from: com.kingroot.kinguser.net.commoncloudlist.RiskControlInfo$a */
    /* loaded from: classes.dex */
    public static class C3343a {
        private int aUI = 1;
        private String aUJ;
        private String aUK;
        private String mPackageName;

        public C3343a(@NonNull String str, @NonNull String str2) {
            this.mPackageName = str;
            this.aUJ = str2;
        }

        /* renamed from: jF */
        public C3343a m2885jF(String str) {
            this.aUK = str;
            return this;
        }

        /* renamed from: hm */
        public C3343a m2886hm(int i) {
            this.aUI = i;
            return this;
        }

        @NonNull
        /* renamed from: SA */
        public RiskControlInfo m2891SA() {
            return new RiskControlInfo(this);
        }
    }

    private RiskControlInfo(C3343a c3343a) {
        this.packageName = c3343a.mPackageName;
        this.aUH = c3343a.aUJ;
        this.riskDescription = c3343a.aUK;
        this.aUI = c3343a.aUI;
    }
}
