package com.kingroot.kinguser.distribution.appsmarket.entity;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import com.kingroot.kinguser.C3942yy;
import com.kingroot.kinguser.InterfaceC3562rr;
import com.kingroot.kinguser.distribution.appsmarket.report.ReportInfo;
import com.tencent.qqpimsecure.seachsdk.common.AppDeatailInfo;
import com.tencent.qqpimsecure.seachsdk.common.AppInfo;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class AppBaseModel implements Parcelable, InterfaceC3562rr {
    public static final Parcelable.Creator<AppBaseModel> CREATOR = new Parcelable.Creator<AppBaseModel>() { // from class: com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: W */
        public AppBaseModel createFromParcel(Parcel parcel) {
            return AppBaseModel.m4201V(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: fo */
        public AppBaseModel[] newArray(int i) {
            return new AppBaseModel[i];
        }
    };
    public static final long serialVersionUID = 0;
    public String activityID;
    public String apkMd5;
    public String apkUrl;
    public String appName;
    public long bannerId;
    public String bgPicUrl;
    public ArrayList<BottomPic> bottomPics;
    public String btnPicUrl;
    public int categoryId;
    public String channelId;
    public String describe;
    public int destCategoryId;
    public int downloadCount;
    public long endTime;
    public long fileSize;
    public long groupId;
    public String iconUrl;
    public boolean ifSelected;
    public boolean isDiff;
    public boolean isUpdate;
    public String jumpUrl4App;
    public String jumpUrl4Banner;
    public int jumptype;
    public String pkgName;
    public int position;
    public ReportInfo reportInfo;
    public GameReservationEntity reservationEntity;
    public String version;
    public int versioncode;

    /* JADX INFO: Access modifiers changed from: protected */
    public AppBaseModel() {
        this.pkgName = "";
        this.appName = "";
        this.iconUrl = "";
        this.describe = "";
        this.fileSize = 0L;
        this.apkMd5 = "";
        this.apkUrl = "";
        this.jumptype = 0;
        this.categoryId = 0;
        this.downloadCount = 0;
        this.version = "";
        this.groupId = -1L;
        this.channelId = "";
        this.versioncode = 0;
        this.bgPicUrl = "";
        this.btnPicUrl = "";
        this.bottomPics = new ArrayList<>();
        this.jumpUrl4Banner = "";
        this.activityID = "";
        this.ifSelected = false;
        this.jumpUrl4App = "";
        this.isUpdate = false;
        this.isDiff = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AppBaseModel(Parcel parcel) {
        this.pkgName = "";
        this.appName = "";
        this.iconUrl = "";
        this.describe = "";
        this.fileSize = 0L;
        this.apkMd5 = "";
        this.apkUrl = "";
        this.jumptype = 0;
        this.categoryId = 0;
        this.downloadCount = 0;
        this.version = "";
        this.groupId = -1L;
        this.channelId = "";
        this.versioncode = 0;
        this.bgPicUrl = "";
        this.btnPicUrl = "";
        this.bottomPics = new ArrayList<>();
        this.jumpUrl4Banner = "";
        this.activityID = "";
        this.ifSelected = false;
        this.jumpUrl4App = "";
        this.isUpdate = false;
        this.isDiff = false;
        this.pkgName = parcel.readString();
        this.iconUrl = parcel.readString();
        this.describe = parcel.readString();
        this.fileSize = parcel.readLong();
        this.apkMd5 = parcel.readString();
        this.apkUrl = parcel.readString();
        this.jumptype = parcel.readInt();
        this.appName = parcel.readString();
        this.categoryId = parcel.readInt();
        this.downloadCount = parcel.readInt();
        this.version = parcel.readString();
        this.groupId = parcel.readLong();
        this.channelId = parcel.readString();
        this.versioncode = parcel.readInt();
        this.reportInfo = (ReportInfo) parcel.readParcelable(ReportInfo.class.getClassLoader());
        this.position = parcel.readInt();
        this.reservationEntity = (GameReservationEntity) parcel.readParcelable(GameReservationEntity.class.getClassLoader());
        parcel.readList(this.bottomPics, BottomPic.class.getClassLoader());
        this.bgPicUrl = parcel.readString();
        this.btnPicUrl = parcel.readString();
        this.jumpUrl4Banner = parcel.readString();
        this.endTime = parcel.readLong();
        this.activityID = parcel.readString();
        this.destCategoryId = parcel.readInt();
        this.bannerId = parcel.readLong();
        this.isUpdate = parcel.readInt() == 1;
        this.isDiff = parcel.readInt() == 1;
        this.ifSelected = parcel.readInt() == 1;
        this.jumpUrl4App = parcel.readString();
    }

    public AppBaseModel(AppInfo appInfo, long j) {
        this.pkgName = "";
        this.appName = "";
        this.iconUrl = "";
        this.describe = "";
        this.fileSize = 0L;
        this.apkMd5 = "";
        this.apkUrl = "";
        this.jumptype = 0;
        this.categoryId = 0;
        this.downloadCount = 0;
        this.version = "";
        this.groupId = -1L;
        this.channelId = "";
        this.versioncode = 0;
        this.bgPicUrl = "";
        this.btnPicUrl = "";
        this.bottomPics = new ArrayList<>();
        this.jumpUrl4Banner = "";
        this.activityID = "";
        this.ifSelected = false;
        this.jumpUrl4App = "";
        this.isUpdate = false;
        this.isDiff = false;
        if (appInfo != null) {
            this.pkgName = appInfo.pkgName;
            this.describe = appInfo.describe;
            this.iconUrl = appInfo.logoUrl;
            this.fileSize = appInfo.mSize;
            this.apkMd5 = appInfo.apkFileMd5;
            this.jumptype = appInfo.jumptype;
            this.categoryId = appInfo.categoryid;
            this.downloadCount = appInfo.downloadCount;
            this.version = appInfo.newVersion;
            this.apkUrl = appInfo.fileUrl;
            this.appName = appInfo.appName;
            this.groupId = j;
            this.channelId = appInfo.channelId;
            this.versioncode = appInfo.newVersionCode;
            this.reportInfo = new ReportInfo(appInfo);
            this.position = appInfo.mPos;
            this.reservationEntity = GameReservationEntity.m4150b(appInfo);
            this.bottomPics = BottomPic.m4197a(appInfo);
            this.bgPicUrl = appInfo.logoUrl;
            this.btnPicUrl = appInfo.picBtnUrl;
            this.jumpUrl4Banner = appInfo.browserUrl;
            try {
                this.endTime = Long.valueOf(appInfo.expirationTime).longValue();
            } catch (Throwable th) {
                this.endTime = System.currentTimeMillis() / 1000;
            }
            this.activityID = appInfo.activityID;
            this.destCategoryId = appInfo.mDestCategoryId;
            this.bannerId = appInfo.bannerId;
            this.ifSelected = appInfo.ifSelected;
            this.jumpUrl4App = appInfo.jumpUrl;
        }
    }

    public AppBaseModel(AppBaseModel appBaseModel) {
        this.pkgName = "";
        this.appName = "";
        this.iconUrl = "";
        this.describe = "";
        this.fileSize = 0L;
        this.apkMd5 = "";
        this.apkUrl = "";
        this.jumptype = 0;
        this.categoryId = 0;
        this.downloadCount = 0;
        this.version = "";
        this.groupId = -1L;
        this.channelId = "";
        this.versioncode = 0;
        this.bgPicUrl = "";
        this.btnPicUrl = "";
        this.bottomPics = new ArrayList<>();
        this.jumpUrl4Banner = "";
        this.activityID = "";
        this.ifSelected = false;
        this.jumpUrl4App = "";
        this.isUpdate = false;
        this.isDiff = false;
        if (appBaseModel != null) {
            this.pkgName = appBaseModel.pkgName;
            this.describe = appBaseModel.describe;
            this.iconUrl = appBaseModel.iconUrl;
            this.fileSize = appBaseModel.fileSize;
            this.apkMd5 = appBaseModel.apkMd5;
            this.apkUrl = appBaseModel.apkUrl;
            this.jumptype = appBaseModel.jumptype;
            this.appName = appBaseModel.appName;
            this.categoryId = appBaseModel.categoryId;
            this.downloadCount = appBaseModel.downloadCount;
            this.version = appBaseModel.version;
            this.groupId = appBaseModel.groupId;
            this.channelId = appBaseModel.channelId;
            this.versioncode = appBaseModel.versioncode;
            if (this.reportInfo == null) {
                this.reportInfo = appBaseModel.reportInfo;
            }
            this.position = appBaseModel.position;
            this.reservationEntity = appBaseModel.reservationEntity;
            this.bottomPics = appBaseModel.bottomPics;
            this.bgPicUrl = appBaseModel.bgPicUrl;
            this.btnPicUrl = appBaseModel.btnPicUrl;
            this.jumpUrl4Banner = appBaseModel.jumpUrl4Banner;
            this.endTime = appBaseModel.endTime;
            this.activityID = appBaseModel.activityID;
            this.destCategoryId = appBaseModel.destCategoryId;
            this.bannerId = appBaseModel.bannerId;
            this.isUpdate = appBaseModel.isUpdate;
            this.isDiff = appBaseModel.isDiff;
            this.ifSelected = appBaseModel.ifSelected;
            this.jumpUrl4App = appBaseModel.jumpUrl4App;
        }
    }

    /* renamed from: a */
    public static List<AppBaseModel> m4200a(List<AppInfo> list, long j) {
        ArrayList arrayList = new ArrayList();
        for (AppInfo appInfo : C3942yy.m1350e(list)) {
            if (appInfo != null) {
                arrayList.add(new AppBaseModel(appInfo, j));
            }
        }
        return arrayList;
    }

    /* renamed from: V */
    public static AppBaseModel m4201V(Parcel parcel) {
        return new AppBaseModel(parcel);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.pkgName);
        parcel.writeString(this.iconUrl);
        parcel.writeString(this.describe);
        parcel.writeLong(this.fileSize);
        parcel.writeString(this.apkMd5);
        parcel.writeString(this.apkUrl);
        parcel.writeInt(this.jumptype);
        parcel.writeString(this.appName);
        parcel.writeInt(this.categoryId);
        parcel.writeInt(this.downloadCount);
        parcel.writeString(this.version);
        parcel.writeLong(this.groupId);
        parcel.writeString(this.channelId);
        parcel.writeInt(this.versioncode);
        parcel.writeParcelable(this.reportInfo, i);
        parcel.writeInt(this.position);
        parcel.writeParcelable(this.reservationEntity, i);
        parcel.writeList(this.bottomPics);
        parcel.writeString(this.bgPicUrl);
        parcel.writeString(this.btnPicUrl);
        parcel.writeString(this.jumpUrl4Banner);
        parcel.writeLong(this.endTime);
        parcel.writeString(this.activityID);
        parcel.writeInt(this.destCategoryId);
        parcel.writeLong(this.bannerId);
        parcel.writeInt(this.isUpdate ? 1 : 0);
        parcel.writeInt(this.isDiff ? 1 : 0);
        parcel.writeInt(this.ifSelected ? 1 : 0);
        parcel.writeString(this.jumpUrl4App);
    }

    /* renamed from: If */
    public AppDeatailInfo m4202If() {
        AppDeatailInfo appDeatailInfo = new AppDeatailInfo();
        appDeatailInfo.packageName = this.pkgName;
        appDeatailInfo.channelId = this.channelId;
        appDeatailInfo.categoryid = this.categoryId;
        appDeatailInfo.appName = this.appName;
        appDeatailInfo.apkFileMd5 = this.apkMd5;
        appDeatailInfo.version = this.version;
        appDeatailInfo.versionCode = this.versioncode;
        return appDeatailInfo;
    }

    /* loaded from: classes.dex */
    public static class BottomPic implements Parcelable, InterfaceC3562rr {
        public static final Parcelable.Creator<BottomPic> CREATOR = new Parcelable.Creator<BottomPic>() { // from class: com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel.BottomPic.1
            @Override // android.os.Parcelable.Creator
            /* renamed from: X */
            public BottomPic createFromParcel(Parcel parcel) {
                return new BottomPic(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: fp */
            public BottomPic[] newArray(int i) {
                return new BottomPic[i];
            }
        };
        public static final long serialVersionUID = 0;
        public String miniUrl;
        public String rawUrl;

        protected BottomPic(Parcel parcel) {
            this.rawUrl = parcel.readString();
            this.miniUrl = parcel.readString();
        }

        private BottomPic(String str, String str2) {
            this.rawUrl = str;
            this.miniUrl = str2;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            parcel.writeString(this.rawUrl);
            parcel.writeString(this.miniUrl);
        }

        /* renamed from: a */
        public static ArrayList<BottomPic> m4197a(AppInfo appInfo) {
            ArrayList<BottomPic> arrayList = new ArrayList<>();
            for (AppInfo.BottomPic bottomPic : C3942yy.m1350e(appInfo.mSnaShotPicList)) {
                arrayList.add(new BottomPic(bottomPic.rawUrl, bottomPic.miniUrl));
            }
            return arrayList;
        }
    }

    public String toString() {
        return "";
    }
}
