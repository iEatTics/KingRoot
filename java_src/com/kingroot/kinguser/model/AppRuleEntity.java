package com.kingroot.kinguser.model;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class AppRuleEntity implements Parcelable {
    public static final Parcelable.Creator<AppRuleEntity> CREATOR = new Parcelable.Creator<AppRuleEntity>() { // from class: com.kingroot.kinguser.model.AppRuleEntity.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: aC */
        public AppRuleEntity createFromParcel(Parcel parcel) {
            return new AppRuleEntity(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: gE */
        public AppRuleEntity[] newArray(int i) {
            return new AppRuleEntity[i];
        }
    };
    public long aQN;
    public String mAppName;
    public String mDescInfo;
    public List<String> mDescList;
    public String mPackageName;
    public int mRule;
    public long mTime;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mAppName);
        parcel.writeString(this.mPackageName);
        parcel.writeInt(this.mRule);
        parcel.writeLong(this.mTime);
        parcel.writeLong(this.aQN);
        parcel.writeList(this.mDescList);
        parcel.writeString(this.mDescInfo);
    }

    public AppRuleEntity() {
    }

    private AppRuleEntity(Parcel parcel) {
        readFromParcel(parcel);
    }

    private void readFromParcel(Parcel parcel) {
        this.mAppName = parcel.readString();
        this.mPackageName = parcel.readString();
        this.mRule = parcel.readInt();
        this.mTime = parcel.readLong();
        this.aQN = parcel.readLong();
        this.mDescList = new ArrayList();
        parcel.readList(this.mDescList, String.class.getClassLoader());
        this.mDescInfo = parcel.readString();
    }
}
