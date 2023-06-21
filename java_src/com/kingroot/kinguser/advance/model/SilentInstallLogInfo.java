package com.kingroot.kinguser.advance.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
/* loaded from: classes.dex */
public class SilentInstallLogInfo implements Parcelable {
    public static final Parcelable.Creator<SilentInstallLogInfo> CREATOR = new Parcelable.Creator<SilentInstallLogInfo>() { // from class: com.kingroot.kinguser.advance.model.SilentInstallLogInfo.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: J */
        public SilentInstallLogInfo createFromParcel(Parcel parcel) {
            return new SilentInstallLogInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: dr */
        public SilentInstallLogInfo[] newArray(int i) {
            return new SilentInstallLogInfo[i];
        }
    };
    public String anE;
    public String anH;
    public String anI;
    public String anJ;
    public String anK;
    public String anL;
    public int ane;
    public String apJ;
    public String apK;
    public String apL;
    public int apM;
    private long mId;
    public int mState;
    public long mTime;

    public SilentInstallLogInfo(long j, int i, String str, String str2, String str3, String str4, int i2, long j2) {
        this.anK = "";
        this.anL = "";
        this.apL = "";
        this.anJ = "";
        this.anI = "";
        this.apM = 0;
        this.mId = j;
        this.ane = i;
        this.anE = str;
        this.apJ = str2;
        this.anH = str3;
        this.apK = str4;
        this.mState = i2;
        this.mTime = j2;
    }

    public SilentInstallLogInfo() {
        this.anK = "";
        this.anL = "";
        this.apL = "";
        this.anJ = "";
        this.anI = "";
        this.apM = 0;
    }

    protected SilentInstallLogInfo(Parcel parcel) {
        this.anK = "";
        this.anL = "";
        this.apL = "";
        this.anJ = "";
        this.anI = "";
        this.apM = 0;
        this.mId = parcel.readLong();
        this.ane = parcel.readInt();
        this.anE = parcel.readString();
        this.apJ = parcel.readString();
        this.anH = parcel.readString();
        this.apK = parcel.readString();
        this.mState = parcel.readInt();
        this.mTime = parcel.readLong();
        this.anK = parcel.readString();
        this.anL = parcel.readString();
        this.apL = parcel.readString();
        this.anJ = parcel.readString();
        this.anI = parcel.readString();
        this.apM = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.mId);
        parcel.writeInt(this.ane);
        parcel.writeString(m12399fP(this.anE));
        parcel.writeString(m12399fP(this.apJ));
        parcel.writeString(m12399fP(this.anH));
        parcel.writeString(m12399fP(this.apK));
        parcel.writeInt(this.mState);
        parcel.writeLong(this.mTime);
        parcel.writeString(m12399fP(this.anK));
        parcel.writeString(m12399fP(this.anL));
        parcel.writeString(m12399fP(this.apL));
        parcel.writeString(m12399fP(this.anJ));
        parcel.writeString(m12399fP(this.anI));
        parcel.writeInt(this.apM);
    }

    /* renamed from: fP */
    private String m12399fP(String str) {
        return TextUtils.isEmpty(str) ? "" : str;
    }
}
