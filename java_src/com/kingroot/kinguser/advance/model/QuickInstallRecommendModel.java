package com.kingroot.kinguser.advance.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.kingroot.kinguser.ame;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDownLoadModel;
/* loaded from: classes.dex */
public class QuickInstallRecommendModel extends AppDownLoadModel implements ame {
    public static final Parcelable.Creator<QuickInstallRecommendModel> CREATOR = new Parcelable.Creator<QuickInstallRecommendModel>() { // from class: com.kingroot.kinguser.advance.model.QuickInstallRecommendModel.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: H */
        public QuickInstallRecommendModel createFromParcel(Parcel parcel) {
            return QuickInstallRecommendModel.m12408G(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: dp */
        public QuickInstallRecommendModel[] newArray(int i) {
            return new QuickInstallRecommendModel[i];
        }
    };

    protected QuickInstallRecommendModel(Parcel parcel) {
        super(parcel);
    }

    /* renamed from: G */
    public static QuickInstallRecommendModel m12408G(Parcel parcel) {
        return new QuickInstallRecommendModel(parcel);
    }

    public QuickInstallRecommendModel(AppBaseModel appBaseModel) {
        super(appBaseModel);
    }

    @Override // com.kingroot.kinguser.distribution.appsmarket.entity.AppDownLoadModel, com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
    }

    @Override // com.kingroot.kinguser.distribution.appsmarket.entity.AppDownLoadModel, com.kingroot.kinguser.ame
    public int getType() {
        return 7;
    }
}
