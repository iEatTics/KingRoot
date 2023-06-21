package com.kingroot.kinguser.distribution.appsmarket.entity;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import com.kingroot.kinguser.C3942yy;
import com.tencent.qqpimsecure.seachsdk.common.CategoryInfo;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class CategoryEntity implements Parcelable {
    public static final Parcelable.Creator<CategoryEntity> CREATOR = new Parcelable.Creator<CategoryEntity>() { // from class: com.kingroot.kinguser.distribution.appsmarket.entity.CategoryEntity.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: al */
        public CategoryEntity createFromParcel(Parcel parcel) {
            return new CategoryEntity(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: fy */
        public CategoryEntity[] newArray(int i) {
            return new CategoryEntity[i];
        }
    };
    public String mContent;
    public int mCount;
    public String mDescript;
    public int mID;
    public String mIconUrl;
    public int mRank;
    public int mSign;
    public int mState;
    public long mTime;
    public String mTitle;
    public int mType;
    public int pushType;
    public long updateTime;

    protected CategoryEntity(CategoryInfo categoryInfo) {
        this.mID = 0;
        this.mCount = 0;
        this.mContent = "";
        this.mDescript = "";
        this.mSign = 0;
        this.mState = 0;
        this.mID = categoryInfo.aii();
        this.mTitle = categoryInfo.getTitle();
        this.mIconUrl = categoryInfo.aih();
        this.mCount = categoryInfo.getCount();
        this.mContent = categoryInfo.aij();
        this.mDescript = categoryInfo.aik();
        this.mSign = categoryInfo.getSign();
        this.mState = categoryInfo.getState();
        this.mType = categoryInfo.getType();
        this.mTime = categoryInfo.getTime();
        this.updateTime = categoryInfo.ail();
        this.pushType = categoryInfo.aim();
        this.mRank = categoryInfo.getRank();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    protected CategoryEntity(Parcel parcel) {
        this.mID = 0;
        this.mCount = 0;
        this.mContent = "";
        this.mDescript = "";
        this.mSign = 0;
        this.mState = 0;
        this.mID = parcel.readInt();
        this.mTitle = parcel.readString();
        this.mIconUrl = parcel.readString();
        this.mCount = parcel.readInt();
        this.mContent = parcel.readString();
        this.mDescript = parcel.readString();
        this.mSign = parcel.readInt();
        this.mState = parcel.readInt();
        this.mType = parcel.readInt();
        this.mTime = parcel.readLong();
        this.updateTime = parcel.readLong();
        this.pushType = parcel.readInt();
        this.mRank = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        parcel.writeInt(this.mID);
        parcel.writeString(this.mTitle);
        parcel.writeString(this.mIconUrl);
        parcel.writeInt(this.mCount);
        parcel.writeString(this.mContent);
        parcel.writeString(this.mDescript);
        parcel.writeInt(this.mSign);
        parcel.writeInt(this.mState);
        parcel.writeInt(this.mType);
        parcel.writeLong(this.mTime);
        parcel.writeLong(this.updateTime);
        parcel.writeInt(this.pushType);
        parcel.writeInt(this.mRank);
    }

    /* renamed from: a */
    public static List<CategoryEntity> m4154a(List<CategoryInfo> list, long j) {
        ArrayList arrayList = new ArrayList();
        for (CategoryInfo categoryInfo : C3942yy.m1350e(list)) {
            arrayList.add(new CategoryEntity(categoryInfo));
        }
        return arrayList;
    }
}
