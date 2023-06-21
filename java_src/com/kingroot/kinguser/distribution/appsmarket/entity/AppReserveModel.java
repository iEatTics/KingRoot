package com.kingroot.kinguser.distribution.appsmarket.entity;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
/* loaded from: classes.dex */
public class AppReserveModel extends AppDownLoadModel {
    public static final Parcelable.Creator<AppReserveModel> CREATOR = new Parcelable.Creator<AppReserveModel>() { // from class: com.kingroot.kinguser.distribution.appsmarket.entity.AppReserveModel.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: ah */
        public AppReserveModel createFromParcel(Parcel parcel) {
            return AppReserveModel.m4167ag(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: fu */
        public AppReserveModel[] newArray(int i) {
            return new AppReserveModel[i];
        }
    };

    public AppReserveModel(Parcel parcel) {
        super(parcel);
        if (this.reservationEntity != null) {
            this.appStatus = this.reservationEntity.reservationStatus == 2 ? 12 : 10;
            if (this.appStatus == 12 && TextUtils.isEmpty(this.reservationEntity.f2447qq) && TextUtils.isEmpty(this.reservationEntity.f2448wx)) {
                this.appStatus = 11;
            }
            if (this.reservationEntity.onlineFlag) {
                this.appStatus = 0;
                return;
            }
            return;
        }
        this.appStatus = 10;
    }

    public AppReserveModel(AppBaseModel appBaseModel) {
        super(appBaseModel);
        if (this.reservationEntity != null) {
            this.appStatus = this.reservationEntity.reservationStatus != 1 ? 12 : 10;
            if (this.appStatus == 12 && TextUtils.isEmpty(this.reservationEntity.f2447qq) && TextUtils.isEmpty(this.reservationEntity.f2448wx)) {
                this.appStatus = 11;
            }
            if (this.reservationEntity.onlineFlag) {
                this.appStatus = 0;
                return;
            }
            return;
        }
        this.appStatus = 10;
    }

    /* renamed from: ag */
    public static AppReserveModel m4167ag(Parcel parcel) {
        return new AppReserveModel(parcel);
    }

    @Override // com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.kingroot.kinguser.distribution.appsmarket.entity.AppDownLoadModel, com.kingroot.kinguser.ame
    public int getType() {
        return 6;
    }

    /* renamed from: Ip */
    public boolean m4169Ip() {
        return this.appStatus >= 10 && this.appStatus <= 12;
    }

    /* renamed from: a */
    public void m4168a(GameReservationState gameReservationState) {
        if (gameReservationState != null) {
            this.appStatus = gameReservationState.reservationType == 2 ? 12 : 10;
            if (this.appStatus == 12 && TextUtils.isEmpty(gameReservationState.f2449qq) && TextUtils.isEmpty(gameReservationState.openid)) {
                this.appStatus = 11;
                return;
            }
            return;
        }
        this.appStatus = 10;
    }
}
