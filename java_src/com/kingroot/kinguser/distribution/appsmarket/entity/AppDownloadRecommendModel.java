package com.kingroot.kinguser.distribution.appsmarket.entity;

import android.os.Parcel;
import android.os.Parcelable;
import com.kingroot.kinguser.ame;
/* loaded from: classes.dex */
public class AppDownloadRecommendModel extends AppDownLoadModel implements ame {
    public static final Parcelable.Creator<AppDownloadRecommendModel> CREATOR = new Parcelable.Creator<AppDownloadRecommendModel>() { // from class: com.kingroot.kinguser.distribution.appsmarket.entity.AppDownloadRecommendModel.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: af */
        public AppDownloadRecommendModel createFromParcel(Parcel parcel) {
            return AppDownloadRecommendModel.m4172ae(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: ft */
        public AppDownloadRecommendModel[] newArray(int i) {
            return new AppDownloadRecommendModel[i];
        }
    };

    protected AppDownloadRecommendModel(Parcel parcel) {
        super(parcel);
    }

    /* renamed from: ae */
    public static AppDownloadRecommendModel m4172ae(Parcel parcel) {
        return new AppDownloadRecommendModel(parcel);
    }

    public AppDownloadRecommendModel(AppBaseModel appBaseModel) {
        super(appBaseModel);
    }

    @Override // com.kingroot.kinguser.distribution.appsmarket.entity.AppDownLoadModel, com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
    }

    @Override // com.kingroot.kinguser.distribution.appsmarket.entity.AppDownLoadModel, com.kingroot.kinguser.ame
    public int getType() {
        return 2;
    }
}
