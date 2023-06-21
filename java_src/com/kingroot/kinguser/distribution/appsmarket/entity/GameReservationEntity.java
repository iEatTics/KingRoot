package com.kingroot.kinguser.distribution.appsmarket.entity;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.kingroot.kinguser.InterfaceC3562rr;
import com.tencent.qqpimsecure.seachsdk.common.AppInfo;
/* loaded from: classes.dex */
public class GameReservationEntity implements Parcelable, InterfaceC3562rr {
    public static final Parcelable.Creator<GameReservationEntity> CREATOR = new Parcelable.Creator<GameReservationEntity>() { // from class: com.kingroot.kinguser.distribution.appsmarket.entity.GameReservationEntity.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: am */
        public GameReservationEntity createFromParcel(Parcel parcel) {
            return new GameReservationEntity(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: fz */
        public GameReservationEntity[] newArray(int i) {
            return new GameReservationEntity[i];
        }
    };
    public static final long serialVersionUID = 0;
    public String activityId;
    public long beginTime;
    public long endTime;
    public boolean onlineFlag;
    public String publicDesc;

    /* renamed from: qq */
    public String f2447qq;
    public long reservationCount;
    public long reservationId;
    public int reservationStatus;
    public String reservationUrl;

    /* renamed from: wx */
    public String f2448wx;

    protected GameReservationEntity(Parcel parcel) {
        this.activityId = "";
        this.reservationUrl = "";
        this.publicDesc = "";
        this.f2447qq = "";
        this.f2448wx = "";
        this.onlineFlag = false;
        this.activityId = parcel.readString();
        this.reservationId = parcel.readLong();
        this.reservationUrl = parcel.readString();
        this.publicDesc = parcel.readString();
        this.reservationCount = parcel.readLong();
        this.beginTime = parcel.readLong();
        this.endTime = parcel.readLong();
        this.f2447qq = parcel.readString();
        this.f2448wx = parcel.readString();
        this.reservationStatus = parcel.readInt();
        this.onlineFlag = parcel.readByte() == 1;
    }

    GameReservationEntity() {
        this.activityId = "";
        this.reservationUrl = "";
        this.publicDesc = "";
        this.f2447qq = "";
        this.f2448wx = "";
        this.onlineFlag = false;
    }

    /* renamed from: Iu */
    public boolean m4151Iu() {
        return this.reservationStatus == 2 && !(TextUtils.isEmpty(this.f2448wx) && TextUtils.isEmpty(this.f2447qq));
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        parcel.writeString(this.activityId);
        parcel.writeLong(this.reservationId);
        parcel.writeString(this.reservationUrl);
        parcel.writeString(this.publicDesc);
        parcel.writeLong(this.reservationCount);
        parcel.writeLong(this.beginTime);
        parcel.writeLong(this.endTime);
        parcel.writeString(this.f2447qq);
        parcel.writeString(this.f2448wx);
        parcel.writeInt(this.reservationStatus);
        parcel.writeByte((byte) (this.onlineFlag ? 1 : 0));
    }

    /* renamed from: b */
    public static GameReservationEntity m4150b(AppInfo appInfo) {
        GameReservationEntity gameReservationEntity = new GameReservationEntity();
        if (appInfo.mGameReservationInfo != null) {
            gameReservationEntity.activityId = appInfo.mGameReservationInfo.activityId;
            gameReservationEntity.reservationId = appInfo.mGameReservationInfo.reservationId;
            gameReservationEntity.reservationUrl = appInfo.mGameReservationInfo.reservationUrl;
            gameReservationEntity.publicDesc = appInfo.mGameReservationInfo.publicDesc;
            gameReservationEntity.reservationCount = appInfo.mGameReservationInfo.reservationCount;
            gameReservationEntity.beginTime = appInfo.mGameReservationInfo.beginTime;
            gameReservationEntity.endTime = appInfo.mGameReservationInfo.endTime;
            gameReservationEntity.f2447qq = appInfo.mGameReservationInfo.f4891qq;
            gameReservationEntity.f2448wx = appInfo.mGameReservationInfo.f4892wx;
            gameReservationEntity.reservationStatus = appInfo.mGameReservationInfo.reservationStatus;
            gameReservationEntity.onlineFlag = appInfo.mGameReservationInfo.onlineFlag;
        }
        return gameReservationEntity;
    }

    public String toString() {
        return "";
    }
}
