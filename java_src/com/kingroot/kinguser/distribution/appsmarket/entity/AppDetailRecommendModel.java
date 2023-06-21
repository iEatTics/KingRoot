package com.kingroot.kinguser.distribution.appsmarket.entity;

import android.os.Parcel;
import android.os.Parcelable;
import com.kingroot.kinguser.ame;
/* loaded from: classes.dex */
public class AppDetailRecommendModel extends AppDownLoadModel implements ame {
    public static final Parcelable.Creator<AppDetailRecommendModel> CREATOR = new Parcelable.Creator<AppDetailRecommendModel>() { // from class: com.kingroot.kinguser.distribution.appsmarket.entity.AppDetailRecommendModel.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: ab */
        public AppDetailRecommendModel createFromParcel(Parcel parcel) {
            return AppDetailRecommendModel.m4191aa(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: fr */
        public AppDetailRecommendModel[] newArray(int i) {
            return new AppDetailRecommendModel[i];
        }
    };

    protected AppDetailRecommendModel(Parcel parcel) {
        super(parcel);
    }

    /* renamed from: aa */
    public static AppDetailRecommendModel m4191aa(Parcel parcel) {
        return new AppDetailRecommendModel(parcel);
    }

    public AppDetailRecommendModel(AppBaseModel appBaseModel) {
        super(appBaseModel);
    }

    @Override // com.kingroot.kinguser.distribution.appsmarket.entity.AppDownLoadModel, com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
    }

    @Override // com.kingroot.kinguser.distribution.appsmarket.entity.AppDownLoadModel, com.kingroot.kinguser.ame
    public int getType() {
        return 3;
    }
}
