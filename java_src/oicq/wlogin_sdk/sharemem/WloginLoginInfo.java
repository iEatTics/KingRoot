package oicq.wlogin_sdk.sharemem;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;
/* loaded from: classes.dex */
public class WloginLoginInfo implements Parcelable, Serializable {
    private static final long serialVersionUID = 5551948389726789420L;
    public String mAccount;
    public long mAppid;
    public long mCreateTime;
    public String mFaceUrl;
    public int mLoginBitmap;
    public int mType;
    public long mUin;
    public static int TYPE_LOACL = 1;
    public static int TYPE_REMOTE = 2;
    public static final Parcelable.Creator<WloginLoginInfo> CREATOR = new C4387a();

    private WloginLoginInfo(Parcel parcel) {
        this.mFaceUrl = "";
        readFromParcel(parcel);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ WloginLoginInfo(Parcel parcel, C4387a c4387a) {
        this(parcel);
    }

    public WloginLoginInfo(String str, long j, long j2, String str2, long j3, int i, int i2) {
        this.mFaceUrl = "";
        this.mAccount = str;
        this.mUin = j;
        this.mAppid = j2;
        this.mFaceUrl = str2;
        this.mCreateTime = j3;
        this.mType = i;
        this.mLoginBitmap = i2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void readFromParcel(Parcel parcel) {
        this.mAccount = parcel.readString();
        this.mUin = parcel.readLong();
        this.mAppid = parcel.readLong();
        this.mCreateTime = parcel.readLong();
        this.mType = parcel.readInt();
        this.mLoginBitmap = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mAccount);
        parcel.writeLong(this.mUin);
        parcel.writeLong(this.mAppid);
        parcel.writeLong(this.mCreateTime);
        parcel.writeInt(this.mType);
        parcel.writeInt(this.mLoginBitmap);
    }
}
