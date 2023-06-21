package com.kingroot.kinguser.distribution.appsmarket.entity;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import com.tencent.qqpimsecure.seachsdk.internal.protocol.GetGameReservationResp;
/* loaded from: classes.dex */
public class GameReservationState implements Parcelable {
    public static final Parcelable.Creator<GameReservationState> CREATOR = new Parcelable.Creator<GameReservationState>() { // from class: com.kingroot.kinguser.distribution.appsmarket.entity.GameReservationState.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: an */
        public GameReservationState createFromParcel(Parcel parcel) {
            return new GameReservationState(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: fA */
        public GameReservationState[] newArray(int i) {
            return new GameReservationState[i];
        }
    };
    public String activityId;
    public int busiRetCode;
    public String openid;

    /* renamed from: qq */
    public String f2449qq;
    public int reservationType;

    public GameReservationState(GetGameReservationResp getGameReservationResp) {
        this.busiRetCode = 0;
        this.activityId = "";
        this.reservationType = 0;
        this.f2449qq = "";
        this.openid = "";
        this.busiRetCode = getGameReservationResp.busiRetCode;
        this.activityId = getGameReservationResp.activityId;
        this.reservationType = getGameReservationResp.reservationType;
        this.f2449qq = getGameReservationResp.f4909qq;
        this.openid = getGameReservationResp.openid;
    }

    protected GameReservationState(Parcel parcel) {
        this.busiRetCode = 0;
        this.activityId = "";
        this.reservationType = 0;
        this.f2449qq = "";
        this.openid = "";
        this.busiRetCode = parcel.readInt();
        this.activityId = parcel.readString();
        this.reservationType = parcel.readInt();
        this.f2449qq = parcel.readString();
        this.openid = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        parcel.writeInt(this.busiRetCode);
        parcel.writeString(this.activityId);
        parcel.writeInt(this.reservationType);
        parcel.writeString(this.f2449qq);
        parcel.writeString(this.openid);
    }

    /* renamed from: Iv */
    public boolean m4147Iv() {
        return this.reservationType == 2;
    }
}
