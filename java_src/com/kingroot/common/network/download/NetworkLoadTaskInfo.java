package com.kingroot.common.network.download;

import android.os.Parcel;
import android.os.Parcelable;
import com.kingroot.kinguser.C3753ve;
import com.kingroot.kinguser.C3754vf;
import com.kingroot.kinguser.C3784vj;
import java.io.File;
/* loaded from: classes.dex */
public class NetworkLoadTaskInfo implements Parcelable {
    public static final Parcelable.Creator<NetworkLoadTaskInfo> CREATOR = new Parcelable.Creator<NetworkLoadTaskInfo>() { // from class: com.kingroot.common.network.download.NetworkLoadTaskInfo.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: o */
        public NetworkLoadTaskInfo createFromParcel(Parcel parcel) {
            NetworkLoadTaskInfo commonFileDownloadTaskInfo;
            int readInt = parcel.readInt();
            switch (readInt) {
                case 1:
                    commonFileDownloadTaskInfo = new AppDownloadTaskInfo(parcel);
                    break;
                case 2:
                    commonFileDownloadTaskInfo = new CommonFileDownloadTaskInfo(parcel);
                    break;
                default:
                    commonFileDownloadTaskInfo = new NetworkLoadTaskInfo(parcel);
                    break;
            }
            commonFileDownloadTaskInfo.mType = readInt;
            return commonFileDownloadTaskInfo;
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: bg */
        public NetworkLoadTaskInfo[] newArray(int i) {
            return new NetworkLoadTaskInfo[i];
        }
    };

    /* renamed from: BH */
    public float f820BH;

    /* renamed from: KS */
    public boolean f821KS;

    /* renamed from: KT */
    public String f822KT;

    /* renamed from: KU */
    public long f823KU;
    public int mErrorCode;
    public String mName;
    public long mSize;
    public int mSpeed;
    public int mState;
    public int mType;

    /* renamed from: ra */
    public String f824ra;

    public NetworkLoadTaskInfo(C3784vj c3784vj) {
        this.f821KS = true;
        this.mState = -2;
        this.mSize = -1L;
        this.mErrorCode = 0;
        if (c3784vj != null) {
            this.mType = c3784vj.mType;
            this.f824ra = c3784vj.f3766ra;
            this.f821KS = c3784vj.f3761KS;
            this.mState = c3784vj.mState;
            this.mName = c3784vj.mName;
            this.f822KT = c3784vj.f3762KT;
            this.mSize = c3784vj.mSize;
            this.f823KU = c3784vj.f3763KU;
            this.f820BH = c3784vj.f3760BH;
            this.mSpeed = c3784vj.mSpeed;
            this.mErrorCode = c3784vj.mErrorCode;
        }
    }

    public String getAbsolutePath() {
        return this.f822KT + File.separator + this.mName;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.mType);
        parcel.writeString(this.f824ra);
        parcel.writeByte(this.f821KS ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.mState);
        parcel.writeString(this.mName);
        parcel.writeString(this.f822KT);
        parcel.writeLong(this.mSize);
        parcel.writeLong(this.f823KU);
        parcel.writeFloat(this.f820BH);
        parcel.writeInt(this.mSpeed);
        parcel.writeInt(this.mErrorCode);
    }

    public NetworkLoadTaskInfo() {
        this.f821KS = true;
        this.mState = -2;
        this.mSize = -1L;
        this.mErrorCode = 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public NetworkLoadTaskInfo(Parcel parcel) {
        this.f821KS = true;
        this.mState = -2;
        this.mSize = -1L;
        this.mErrorCode = 0;
        readFromParcel(parcel);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void readFromParcel(Parcel parcel) {
        this.f824ra = parcel.readString();
        this.f821KS = parcel.readByte() != 0;
        this.mState = parcel.readInt();
        this.mName = parcel.readString();
        this.f822KT = parcel.readString();
        this.mSize = parcel.readLong();
        this.f823KU = parcel.readLong();
        this.f820BH = parcel.readFloat();
        this.mSpeed = parcel.readInt();
        this.mErrorCode = parcel.readInt();
    }

    /* renamed from: com.kingroot.common.network.download.NetworkLoadTaskInfo$a */
    /* loaded from: classes.dex */
    public static class C0516a {
        /* renamed from: h */
        public static NetworkLoadTaskInfo m13364h(C3784vj c3784vj) {
            switch (c3784vj.mType) {
                case 1:
                    return new AppDownloadTaskInfo((C3753ve) c3784vj);
                case 2:
                    return new CommonFileDownloadTaskInfo((C3754vf) c3784vj);
                default:
                    return null;
            }
        }
    }
}
