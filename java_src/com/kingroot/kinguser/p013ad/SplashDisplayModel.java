package com.kingroot.kinguser.p013ad;

import android.os.Parcel;
import android.os.Parcelable;
import com.kingroot.kinguser.afz;
import com.kingroot.loader.common.KlConst;
import com.tencent.qqpim.discovery.AdDisplayModel;
import kingcom.module.network.shark.conch.entity.SplashScreenEntity;
/* renamed from: com.kingroot.kinguser.ad.SplashDisplayModel */
/* loaded from: classes.dex */
public class SplashDisplayModel implements Parcelable {
    public static final Parcelable.Creator<SplashDisplayModel> CREATOR = new Parcelable.Creator<SplashDisplayModel>() { // from class: com.kingroot.kinguser.ad.SplashDisplayModel.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: B */
        public SplashDisplayModel createFromParcel(Parcel parcel) {
            return new SplashDisplayModel(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: cY */
        public SplashDisplayModel[] newArray(int i) {
            return new SplashDisplayModel[i];
        }
    };
    public String ajt;
    public int aju;
    public int ajv;
    public AdDisplayModel ajw;

    /* renamed from: gt */
    public long f1392gt;
    public String jumpUrl;
    public String key;
    public int priority;
    public int showDuration;
    public int type;

    public SplashDisplayModel(SplashScreenEntity splashScreenEntity) {
        this.type = 0;
        this.key = "";
        this.ajt = "";
        this.jumpUrl = "";
        this.showDuration = 0;
        this.priority = 0;
        this.aju = 0;
        this.f1392gt = 0L;
        this.ajv = 0;
        this.key = splashScreenEntity.taskID + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + splashScreenEntity.conchSeqno;
        this.type = 2;
        this.priority = splashScreenEntity.priority == 1 ? 3 : 1;
        this.ajt = splashScreenEntity.picDownloadUrl;
        this.jumpUrl = splashScreenEntity.clickJumpUrl;
        this.aju = afz.m12007vG().m12008fm(this.key);
        this.f1392gt = splashScreenEntity.taskID;
        this.ajv = splashScreenEntity.conchSeqno;
        this.showDuration = splashScreenEntity.showDuration;
    }

    public SplashDisplayModel(AdDisplayModel adDisplayModel) {
        this.type = 0;
        this.key = "";
        this.ajt = "";
        this.jumpUrl = "";
        this.showDuration = 0;
        this.priority = 0;
        this.aju = 0;
        this.f1392gt = 0L;
        this.ajv = 0;
        this.key = adDisplayModel.uniqueKey;
        this.type = 1;
        this.priority = 2;
        this.ajt = adDisplayModel.bJv;
        this.showDuration = adDisplayModel.bJC;
        this.aju = afz.m12007vG().m12008fm(this.key);
        this.ajw = adDisplayModel;
    }

    protected SplashDisplayModel(Parcel parcel) {
        this.type = 0;
        this.key = "";
        this.ajt = "";
        this.jumpUrl = "";
        this.showDuration = 0;
        this.priority = 0;
        this.aju = 0;
        this.f1392gt = 0L;
        this.ajv = 0;
        this.type = parcel.readInt();
        this.key = parcel.readString();
        this.ajt = parcel.readString();
        this.jumpUrl = parcel.readString();
        this.showDuration = parcel.readInt();
        this.priority = parcel.readInt();
        this.aju = parcel.readInt();
        this.f1392gt = parcel.readLong();
        this.ajv = parcel.readInt();
        this.ajw = (AdDisplayModel) parcel.readParcelable(AdDisplayModel.class.getClassLoader());
    }

    public boolean equals(Object obj) {
        return this.key.equals(((SplashDisplayModel) obj).key);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.type);
        parcel.writeString(this.key);
        parcel.writeString(this.ajt);
        parcel.writeString(this.jumpUrl);
        parcel.writeInt(this.showDuration);
        parcel.writeInt(this.priority);
        parcel.writeInt(this.aju);
        parcel.writeLong(this.f1392gt);
        parcel.writeInt(this.ajv);
        parcel.writeParcelable(this.ajw, i);
    }
}
