package com.kingroot.kinguser.distribution.appsmarket.entity;

import android.os.Parcel;
import android.os.Parcelable;
import com.kingroot.kinguser.C3942yy;
import com.kingroot.kinguser.InterfaceC3562rr;
import com.tencent.qqpimsecure.seachsdk.common.AppInfo;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class AppDetailModel extends AppDownLoadModel implements Parcelable, InterfaceC3562rr {
    public static final Parcelable.Creator<AppDetailModel> CREATOR = new Parcelable.Creator<AppDetailModel>() { // from class: com.kingroot.kinguser.distribution.appsmarket.entity.AppDetailModel.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: Z */
        public AppDetailModel createFromParcel(Parcel parcel) {
            return AppDetailModel.m4194Y(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: fq */
        public AppDetailModel[] newArray(int i) {
            return new AppDetailModel[i];
        }
    };
    public static final long serialVersionUID = 0;
    public String description;
    public int official;
    public ArrayList<String> picurls;
    public int plugintype;
    public String publishTime;
    public int score;
    public int sign;
    public ArrayList<String> srcpicurls;
    public int suser;

    protected AppDetailModel() {
        this.publishTime = "";
        this.picurls = null;
        this.srcpicurls = null;
        this.description = "";
        this.score = 0;
        this.sign = 0;
        this.plugintype = 0;
        this.suser = 0;
    }

    protected AppDetailModel(Parcel parcel) {
        super(parcel);
        this.publishTime = "";
        this.picurls = null;
        this.srcpicurls = null;
        this.description = "";
        this.score = 0;
        this.sign = 0;
        this.plugintype = 0;
        this.suser = 0;
        this.publishTime = parcel.readString();
        this.picurls = parcel.readArrayList(String.class.getClassLoader());
        this.srcpicurls = parcel.readArrayList(String.class.getClassLoader());
        this.description = parcel.readString();
        this.score = parcel.readInt();
        this.official = parcel.readInt();
        this.sign = parcel.readInt();
        this.plugintype = parcel.readInt();
        this.suser = parcel.readInt();
    }

    @Override // com.kingroot.kinguser.distribution.appsmarket.entity.AppDownLoadModel, com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.publishTime);
        parcel.writeArray(C3942yy.m1350e(this.picurls).toArray());
        parcel.writeArray(C3942yy.m1350e(this.srcpicurls).toArray());
        parcel.writeString(this.description);
        parcel.writeInt(this.score);
        parcel.writeInt(this.official);
        parcel.writeInt(this.sign);
        parcel.writeInt(this.plugintype);
        parcel.writeInt(this.suser);
    }

    public AppDetailModel(AppInfo appInfo) {
        super(appInfo, -1L);
        this.publishTime = "";
        this.picurls = null;
        this.srcpicurls = null;
        this.description = "";
        this.score = 0;
        this.sign = 0;
        this.plugintype = 0;
        this.suser = 0;
        if (appInfo != null) {
            this.publishTime = appInfo.mPublishTime;
            this.picurls = appInfo.picurls;
            this.srcpicurls = appInfo.srcpicurls;
            this.description = appInfo.description;
            this.score = appInfo.score;
            this.official = appInfo.official;
            this.sign = appInfo.sign;
            this.plugintype = appInfo.plugintype;
            this.suser = appInfo.suser;
        }
    }

    /* renamed from: Y */
    public static AppDetailModel m4194Y(Parcel parcel) {
        return new AppDetailModel(parcel);
    }

    @Override // com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel, android.os.Parcelable
    public int describeContents() {
        return 0;
    }
}
