package com.kingroot.kingmaster.network.updata;

import android.os.Parcel;
import android.os.Parcelable;
import com.kingroot.common.entity.BaseEntity;
import com.kingroot.common.network.download.UpdateInfo;
import com.kingroot.kinguser.C3953zi;
import com.kingroot.kinguses.R;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class CheckResult extends BaseEntity implements Parcelable {
    public static final Parcelable.Creator<CheckResult> CREATOR;
    public static final CheckResult aeM = new CheckResult();
    private static final long serialVersionUID = 1;
    public long mCheckTime;
    public String mMessage;
    public String mSizeInfo;
    public int mValidTime;
    public String mVersion;
    public int err = 0;
    public List<UpdateInfo> mUpdateInfoList = new ArrayList();
    public int mNoticeInterval = 0;
    public boolean mIsSilentDownload = true;
    public long mTaskId = 0;

    static {
        aeM.mCheckTime = System.currentTimeMillis();
        aeM.mMessage = "";
        aeM.err = 0;
        aeM.mUpdateInfoList = new ArrayList(0);
        CREATOR = new Parcelable.Creator<CheckResult>() { // from class: com.kingroot.kingmaster.network.updata.CheckResult.1
            @Override // android.os.Parcelable.Creator
            /* renamed from: A */
            public CheckResult createFromParcel(Parcel parcel) {
                return new CheckResult(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: cJ */
            public CheckResult[] newArray(int i) {
                return new CheckResult[i];
            }
        };
    }

    /* renamed from: au */
    public String m13067au(boolean z) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(C3953zi.m1311pr().getString(R.string.version_update_hint_version));
        stringBuffer.append(this.mVersion);
        if (z) {
            stringBuffer.append(C3953zi.m1311pr().getString(R.string.version_update_install_title));
        } else {
            stringBuffer.append("(" + this.mSizeInfo + ")");
        }
        stringBuffer.append("\n");
        stringBuffer.append(C3953zi.m1311pr().getString(R.string.version_update_feature));
        stringBuffer.append("\n");
        stringBuffer.append(this.mMessage);
        return stringBuffer.toString();
    }

    /* renamed from: av */
    public String m13066av(boolean z) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(C3953zi.m1311pr().getString(R.string.version_update_hint_version));
        stringBuffer.append(this.mVersion);
        if (z) {
            stringBuffer.append(C3953zi.m1311pr().getString(R.string.version_update_install_title));
        } else {
            stringBuffer.append("(" + this.mSizeInfo + ")");
        }
        stringBuffer.append("\n");
        stringBuffer.append("\n");
        stringBuffer.append(C3953zi.m1311pr().getString(R.string.version_update_feature));
        stringBuffer.append("\n");
        stringBuffer.append(this.mMessage);
        return stringBuffer.toString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.mCheckTime);
        parcel.writeString(this.mVersion);
        parcel.writeString(this.mSizeInfo);
        parcel.writeString(this.mMessage);
        parcel.writeInt(this.err);
        parcel.writeList(this.mUpdateInfoList);
        parcel.writeInt(this.mValidTime);
        parcel.writeInt(this.mNoticeInterval);
        parcel.writeInt(this.mIsSilentDownload ? 1 : 0);
        parcel.writeLong(this.mTaskId);
    }

    public CheckResult() {
    }

    public void readFromParcel(Parcel parcel) {
        this.mCheckTime = parcel.readLong();
        this.mVersion = parcel.readString();
        this.mSizeInfo = parcel.readString();
        this.mMessage = parcel.readString();
        this.err = parcel.readInt();
        this.mUpdateInfoList = new ArrayList();
        parcel.readList(this.mUpdateInfoList, UpdateInfo.class.getClassLoader());
        this.mValidTime = parcel.readInt();
        this.mNoticeInterval = parcel.readInt();
        this.mIsSilentDownload = parcel.readInt() == 1;
        this.mTaskId = parcel.readLong();
    }

    public CheckResult(Parcel parcel) {
        readFromParcel(parcel);
    }
}
