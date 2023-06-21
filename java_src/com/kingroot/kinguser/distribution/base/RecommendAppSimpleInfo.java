package com.kingroot.kinguser.distribution.base;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import com.kingroot.kinguser.C2859df;
import com.kingroot.kinguser.C2862di;
import com.kingroot.kinguser.InterfaceC3562rr;
import com.kingroot.kinguser.aom;
/* loaded from: classes.dex */
public class RecommendAppSimpleInfo implements Parcelable, aom, InterfaceC3562rr {
    public static final Parcelable.Creator<RecommendAppSimpleInfo> CREATOR = new Parcelable.Creator<RecommendAppSimpleInfo>() { // from class: com.kingroot.kinguser.distribution.base.RecommendAppSimpleInfo.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: au */
        public RecommendAppSimpleInfo createFromParcel(Parcel parcel) {
            return RecommendAppSimpleInfo.m4111at(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: fQ */
        public RecommendAppSimpleInfo[] newArray(int i) {
            return new RecommendAppSimpleInfo[i];
        }
    };
    public static final aom.InterfaceC1387a<RecommendAppSimpleInfo, C2862di> aGp = new aom.InterfaceC1387a<RecommendAppSimpleInfo, C2862di>() { // from class: com.kingroot.kinguser.distribution.base.RecommendAppSimpleInfo.2
        @Override // com.kingroot.kinguser.aom.InterfaceC1387a
        /* renamed from: a */
        public RecommendAppSimpleInfo mo3755p(@NonNull C2862di c2862di) {
            return new RecommendAppSimpleInfo(c2862di);
        }
    };
    public static final long serialVersionUID = 0;
    public String apkMd5;
    public String apkUrl;
    public String categoryId;
    public String describe;
    public int fileId;
    public int fileSize;
    public String iconUrl;
    public int jumptype;
    public String mainTitle;
    public String name;
    public int partnerId;
    public String pkgName;
    public int position;
    public int productId;
    public int softId;
    public String softTitle;
    public C2859df softkey;
    public String type;
    public String version;
    public int versionCode;

    /* JADX INFO: Access modifiers changed from: protected */
    public RecommendAppSimpleInfo(Parcel parcel) {
        this.pkgName = "";
        this.mainTitle = "";
        this.name = "";
        this.iconUrl = "";
        this.describe = "";
        this.fileSize = 0;
        this.type = "";
        this.apkMd5 = "";
        this.softTitle = "";
        this.apkUrl = "";
        this.jumptype = 0;
        this.partnerId = 0;
        this.softkey = null;
        this.productId = 0;
        this.softId = 0;
        this.fileId = 0;
        this.position = 0;
        this.categoryId = "";
        this.version = "";
        this.versionCode = 0;
        this.pkgName = parcel.readString();
        this.mainTitle = parcel.readString();
        this.iconUrl = parcel.readString();
        this.describe = parcel.readString();
        this.fileSize = parcel.readInt();
        this.type = parcel.readString();
        this.apkMd5 = parcel.readString();
        this.softTitle = parcel.readString();
        this.apkUrl = parcel.readString();
        this.jumptype = parcel.readInt();
        this.partnerId = parcel.readInt();
        this.softkey = (C2859df) parcel.readValue(C2859df.class.getClassLoader());
        this.productId = parcel.readInt();
        this.softId = parcel.readInt();
        this.fileId = parcel.readInt();
        this.position = parcel.readInt();
        this.name = parcel.readString();
        this.categoryId = parcel.readString();
        this.version = parcel.readString();
        this.versionCode = parcel.readInt();
    }

    public RecommendAppSimpleInfo(C2862di c2862di) {
        this.pkgName = "";
        this.mainTitle = "";
        this.name = "";
        this.iconUrl = "";
        this.describe = "";
        this.fileSize = 0;
        this.type = "";
        this.apkMd5 = "";
        this.softTitle = "";
        this.apkUrl = "";
        this.jumptype = 0;
        this.partnerId = 0;
        this.softkey = null;
        this.productId = 0;
        this.softId = 0;
        this.fileId = 0;
        this.position = 0;
        this.categoryId = "";
        this.version = "";
        this.versionCode = 0;
        if (c2862di != null) {
            this.pkgName = c2862di.softkey.softname;
            this.mainTitle = c2862di.softTitle;
            this.describe = c2862di.short_desc;
            this.iconUrl = c2862di.logourl;
            this.fileSize = c2862di.filesize;
            this.type = c2862di.type;
            this.apkMd5 = c2862di.softkey.apkFileMd5;
            this.softTitle = c2862di.subSoftTitle;
            this.apkUrl = c2862di.fileurl;
            this.jumptype = c2862di.jumptype;
            this.partnerId = c2862di.softkey.partnerId;
            this.softkey = c2862di.softkey;
            this.productId = c2862di.iProductID;
            this.softId = c2862di.iSoftID;
            this.fileId = c2862di.iFileID;
            this.position = c2862di.position;
            this.name = c2862di.softkey.name;
            this.version = c2862di.softkey.version;
            this.versionCode = c2862di.softkey.versioncode;
        }
    }

    /* renamed from: at */
    public static RecommendAppSimpleInfo m4111at(Parcel parcel) {
        return new RecommendAppSimpleInfo(parcel);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.pkgName);
        parcel.writeString(this.mainTitle);
        parcel.writeString(this.iconUrl);
        parcel.writeString(this.describe);
        parcel.writeInt(this.fileSize);
        parcel.writeString(this.type);
        parcel.writeString(this.apkMd5);
        parcel.writeString(this.softTitle);
        parcel.writeString(this.apkUrl);
        parcel.writeInt(this.jumptype);
        parcel.writeInt(this.partnerId);
        parcel.writeValue(this.softkey);
        parcel.writeInt(this.productId);
        parcel.writeInt(this.softId);
        parcel.writeInt(this.fileId);
        parcel.writeInt(this.position);
        parcel.writeString(this.name);
        parcel.writeString(this.categoryId);
        parcel.writeString(this.version);
        parcel.writeInt(this.versionCode);
    }
}
