package com.kingroot.kinguser.model;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public class RootMgrLogInfo implements Parcelable {
    public static final Parcelable.Creator<RootMgrLogInfo> CREATOR = new Parcelable.Creator<RootMgrLogInfo>() { // from class: com.kingroot.kinguser.model.RootMgrLogInfo.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: aE */
        public RootMgrLogInfo createFromParcel(Parcel parcel) {
            return new RootMgrLogInfo(parcel.readLong(), parcel.readLong(), parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: gH */
        public RootMgrLogInfo[] newArray(int i) {
            return new RootMgrLogInfo[i];
        }
    };
    public final String adZ;
    public final String mAppName;
    private long mId;
    public final int mState;
    public final long mTime;
    public final int mType;

    public RootMgrLogInfo(long j, long j2, String str, String str2, int i, int i2) {
        this.mId = j;
        this.mTime = j2;
        this.adZ = str;
        this.mAppName = str2;
        this.mType = i;
        this.mState = i2;
    }

    /* renamed from: bX */
    public void m3044bX(long j) {
        this.mId = j;
    }

    /* renamed from: PG */
    public long m3045PG() {
        return this.mId;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.mId);
        parcel.writeLong(this.mTime);
        parcel.writeString(this.adZ);
        parcel.writeString(this.mAppName);
        parcel.writeInt(this.mType);
        parcel.writeInt(this.mState);
    }
}
