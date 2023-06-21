package com.kingroot.kinguser.distribution.appsmarket.entity;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import com.kingroot.kinguser.InterfaceC3562rr;
import com.kingroot.kinguser.buz;
import com.tencent.qqpimsecure.seachsdk.common.AppInfo;
import com.tencent.qqpimsecure.seachsdk.internal.protocol.TipsInfo;
/* loaded from: classes.dex */
public class GameSummonEntity implements Parcelable, InterfaceC3562rr {
    public static final Parcelable.Creator<GameSummonEntity> CREATOR = new Parcelable.Creator<GameSummonEntity>() { // from class: com.kingroot.kinguser.distribution.appsmarket.entity.GameSummonEntity.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: ao */
        public GameSummonEntity createFromParcel(Parcel parcel) {
            return new GameSummonEntity(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: fB */
        public GameSummonEntity[] newArray(int i) {
            return new GameSummonEntity[i];
        }
    };
    public AppInfo appInfo;

    /* renamed from: id */
    public long f2450id;
    public long orderId;
    public String pkgName;
    public long timeEnd;
    public long timeStart;
    public TipsInfo tipsInfo;
    public int versionCode;

    public GameSummonEntity(buz buzVar) {
        this.pkgName = null;
        this.versionCode = 0;
        this.tipsInfo = null;
        this.f2450id = buzVar.f2117id;
        this.orderId = buzVar.orderId;
        this.pkgName = buzVar.pkgName;
        this.versionCode = buzVar.versionCode;
        this.appInfo = buzVar.appInfo;
        this.tipsInfo = buzVar.tipsInfo;
        this.timeStart = buzVar.timeStart;
        this.timeEnd = buzVar.timeEnd;
    }

    protected GameSummonEntity(Parcel parcel) {
        this.pkgName = null;
        this.versionCode = 0;
        this.tipsInfo = null;
        this.f2450id = parcel.readLong();
        this.orderId = parcel.readLong();
        this.pkgName = parcel.readString();
        this.versionCode = parcel.readInt();
        this.appInfo = (AppInfo) parcel.readSerializable();
        this.tipsInfo = (TipsInfo) parcel.readSerializable();
        this.timeStart = parcel.readLong();
        this.timeEnd = parcel.readLong();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        parcel.writeLong(this.f2450id);
        parcel.writeLong(this.orderId);
        parcel.writeString(this.pkgName);
        parcel.writeInt(this.versionCode);
        parcel.writeSerializable(this.appInfo);
        parcel.writeSerializable(this.tipsInfo);
        parcel.writeLong(this.timeStart);
        parcel.writeLong(this.timeEnd);
    }
}
