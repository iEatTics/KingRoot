package com.kingroot.kinguser.distribution.appsmarket.entity;

import android.os.Parcel;
import android.os.Parcelable;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.kingcore.uilib.TextRoundCornerProgressBar;
import com.kingroot.kinguser.C3942yy;
import com.kingroot.kinguser.ame;
import com.kingroot.kinguser.distribution.net.download.AppDownloadRequest;
import com.tencent.qqpimsecure.seachsdk.common.AppInfo;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class AppDownLoadModel extends AppBaseModel implements Parcelable, ame {
    public static final Parcelable.Creator<AppDownLoadModel> CREATOR = new Parcelable.Creator<AppDownLoadModel>() { // from class: com.kingroot.kinguser.distribution.appsmarket.entity.AppDownLoadModel.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: ad */
        public AppDownLoadModel createFromParcel(Parcel parcel) {
            return AppDownLoadModel.m4177ac(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: fs */
        public AppDownLoadModel[] newArray(int i) {
            return new AppDownLoadModel[i];
        }
    };
    public int appStatus;
    private transient WeakReference<TextRoundCornerProgressBar> azF;
    private transient WeakReference<ImageView> azG;
    private transient WeakReference<LinearLayout> azH;
    public boolean isExpand;

    /* JADX INFO: Access modifiers changed from: protected */
    public AppDownLoadModel(Parcel parcel) {
        super(parcel);
        this.appStatus = 0;
        this.appStatus = parcel.readInt();
    }

    public AppDownLoadModel() {
        this.appStatus = 0;
    }

    /* renamed from: ac */
    public static AppDownLoadModel m4177ac(Parcel parcel) {
        return new AppDownLoadModel(parcel);
    }

    /* renamed from: a */
    public static AppDownLoadModel m4178a(AppDownloadRequest appDownloadRequest) {
        AppDownLoadModel appDownLoadModel = new AppDownLoadModel();
        appDownLoadModel.apkMd5 = appDownloadRequest.apkMd5;
        appDownLoadModel.pkgName = appDownloadRequest.pkgName;
        appDownLoadModel.apkUrl = appDownloadRequest.apkUrl;
        appDownLoadModel.appName = appDownloadRequest.appName;
        appDownLoadModel.fileSize = appDownloadRequest.fileSize;
        appDownLoadModel.downloadCount = appDownloadRequest.downloadCount;
        appDownLoadModel.iconUrl = appDownloadRequest.iconUrl;
        appDownLoadModel.describe = appDownloadRequest.describe;
        appDownLoadModel.appStatus = appDownloadRequest.appStatus;
        appDownLoadModel.isUpdate = appDownloadRequest.isUpdate;
        appDownLoadModel.isDiff = appDownloadRequest.isDiff;
        appDownLoadModel.reportInfo = appDownloadRequest.reportInfo;
        appDownLoadModel.version = appDownloadRequest.version;
        appDownLoadModel.versioncode = appDownloadRequest.versionCode;
        return appDownLoadModel;
    }

    public AppDownLoadModel(AppInfo appInfo, long j) {
        super(appInfo, j);
        this.appStatus = 0;
    }

    public AppDownLoadModel(AppBaseModel appBaseModel) {
        super(appBaseModel);
        this.appStatus = 0;
    }

    /* renamed from: az */
    public static List<AppDownLoadModel> m4176az(List<AppBaseModel> list) {
        ArrayList arrayList = new ArrayList();
        for (AppBaseModel appBaseModel : C3942yy.m1350e(list)) {
            arrayList.add(new AppDownLoadModel(appBaseModel));
        }
        return arrayList;
    }

    @Override // com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.appStatus);
    }

    public int getType() {
        return 1;
    }

    /* renamed from: a */
    public void m4179a(TextRoundCornerProgressBar textRoundCornerProgressBar) {
        this.azF = new WeakReference<>(textRoundCornerProgressBar);
        textRoundCornerProgressBar.setTag(this);
    }

    /* renamed from: Ih */
    public TextRoundCornerProgressBar m4188Ih() {
        if (this.azF == null || this.azF.get() == null) {
            return null;
        }
        if (this.azF.get().getTag() == this) {
            return this.azF.get();
        }
        return null;
    }

    /* renamed from: Ii */
    public boolean m4187Ii() {
        return (this.appStatus >= 0 && this.appStatus < 5) || this.appStatus == 9;
    }

    /* renamed from: Ij */
    public boolean m4186Ij() {
        return this.appStatus >= 5 && this.appStatus < 8;
    }

    /* renamed from: b */
    public void m4175b(AppDownloadRequest appDownloadRequest) {
        this.apkMd5 = appDownloadRequest.apkMd5;
        this.pkgName = appDownloadRequest.pkgName;
        this.apkUrl = appDownloadRequest.apkUrl;
        this.appName = appDownloadRequest.appName;
        this.fileSize = appDownloadRequest.fileSize;
        this.downloadCount = appDownloadRequest.downloadCount;
        this.iconUrl = appDownloadRequest.iconUrl;
        this.describe = appDownloadRequest.describe;
        this.appStatus = appDownloadRequest.appStatus;
        this.versioncode = appDownloadRequest.versionCode;
        this.version = appDownloadRequest.version;
        this.isUpdate = appDownloadRequest.isUpdate;
        this.isDiff = appDownloadRequest.isDiff;
    }

    /* renamed from: a */
    public void m4181a(ImageView imageView) {
        this.azG = new WeakReference<>(imageView);
    }

    /* renamed from: Ik */
    public ImageView m4185Ik() {
        if (this.azG == null || this.azG.get() == null) {
            return null;
        }
        return this.azG.get();
    }

    /* renamed from: a */
    public void m4180a(LinearLayout linearLayout) {
        this.azH = new WeakReference<>(linearLayout);
    }

    /* renamed from: Il */
    public LinearLayout m4184Il() {
        if (this.azH == null || this.azH.get() == null) {
            return null;
        }
        return this.azH.get();
    }

    /* renamed from: Im */
    public boolean m4183Im() {
        return this.appStatus == 3 || this.appStatus == 4 || this.appStatus == 9;
    }

    /* renamed from: In */
    public boolean m4182In() {
        return (this instanceof AppReserveModel) && ((AppReserveModel) this).m4169Ip();
    }
}
