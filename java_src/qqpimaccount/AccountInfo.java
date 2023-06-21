package qqpimaccount;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public class AccountInfo implements Parcelable {
    public static final Parcelable.Creator<AccountInfo> CREATOR = new Parcelable.Creator<AccountInfo>() { // from class: qqpimaccount.AccountInfo.1
        @Override // android.os.Parcelable.Creator
        public AccountInfo createFromParcel(Parcel parcel) {
            return new AccountInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public AccountInfo[] newArray(int i) {
            return new AccountInfo[i];
        }
    };
    private String loginRefreshKey;
    private String mAccount;
    private int mAccountType;
    private GenderTypeEnum mGender;
    private String mLoginKey;
    private String mNickName;
    private String mPortraitURL;

    public AccountInfo() {
        this.mAccountType = -1;
        this.mLoginKey = null;
        this.mAccount = null;
        this.mNickName = null;
        this.mPortraitURL = null;
    }

    public AccountInfo(Parcel parcel) {
        this.mAccountType = -1;
        this.mLoginKey = null;
        this.mAccount = null;
        this.mNickName = null;
        this.mPortraitURL = null;
        this.loginRefreshKey = parcel.readString();
        this.mAccountType = parcel.readInt();
        this.mLoginKey = parcel.readString();
        this.mAccount = parcel.readString();
        this.mGender = GenderTypeEnum.values()[parcel.readInt()];
        this.mNickName = parcel.readString();
        this.mPortraitURL = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getAccount() {
        return this.mAccount;
    }

    public int getAccountType() {
        return this.mAccountType;
    }

    public GenderTypeEnum getGender() {
        return this.mGender;
    }

    public String getLoginKey() {
        return this.mLoginKey;
    }

    public String getLoginRefreshKey() {
        return this.loginRefreshKey;
    }

    public String getNickName() {
        return this.mNickName;
    }

    public String getPortraitUrl() {
        return this.mPortraitURL;
    }

    public void setAccount(String str) {
        this.mAccount = str;
    }

    public void setAccountType(int i) {
        this.mAccountType = i;
    }

    public void setGender(GenderTypeEnum genderTypeEnum) {
        this.mGender = genderTypeEnum;
    }

    public void setLoginKey(String str) {
        this.mLoginKey = str;
    }

    public void setLoginRefreshKey(String str) {
        this.loginRefreshKey = str;
    }

    public void setNickName(String str) {
        this.mNickName = str;
    }

    public void setPortraitUrl(String str) {
        this.mPortraitURL = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.loginRefreshKey);
        parcel.writeInt(this.mAccountType);
        parcel.writeString(this.mLoginKey);
        parcel.writeString(this.mAccount);
        parcel.writeInt(this.mGender.ordinal());
        parcel.writeString(this.mNickName);
        parcel.writeString(this.mPortraitURL);
    }
}
