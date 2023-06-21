package com.kingroot.kinguser.distribution.base;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import com.kingroot.kinguser.C2858de;
import com.kingroot.kinguser.C3942yy;
import com.kingroot.kinguser.InterfaceC3562rr;
import com.kingroot.kinguser.aom;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class RecommendAppDetailInfo implements Parcelable, aom, InterfaceC3562rr {
    public static final Parcelable.Creator<RecommendAppDetailInfo> CREATOR = new Parcelable.Creator<RecommendAppDetailInfo>() { // from class: com.kingroot.kinguser.distribution.base.RecommendAppDetailInfo.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: as */
        public RecommendAppDetailInfo createFromParcel(Parcel parcel) {
            return new RecommendAppDetailInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: fP */
        public RecommendAppDetailInfo[] newArray(int i) {
            return new RecommendAppDetailInfo[i];
        }
    };
    public static final aom.InterfaceC1387a<RecommendAppDetailInfo, C2858de> aGp = new aom.InterfaceC1387a<RecommendAppDetailInfo, C2858de>() { // from class: com.kingroot.kinguser.distribution.base.RecommendAppDetailInfo.2
        @Override // com.kingroot.kinguser.aom.InterfaceC1387a
        /* renamed from: a */
        public RecommendAppDetailInfo mo3755p(@NonNull C2858de c2858de) {
            return new RecommendAppDetailInfo(c2858de);
        }
    };
    public static final long serialVersionUID = 0;
    public String describe;
    public String functionDesc;
    public String logoUrl;
    public List<String> picUrls = new ArrayList();
    public String pkgName;

    /* JADX INFO: Access modifiers changed from: protected */
    public RecommendAppDetailInfo(Parcel parcel) {
        this.describe = "";
        this.logoUrl = "";
        this.pkgName = "";
        this.functionDesc = "";
        this.describe = parcel.readString();
        parcel.readStringList(this.picUrls);
        this.pkgName = parcel.readString();
        this.logoUrl = parcel.readString();
        this.functionDesc = parcel.readString();
    }

    public RecommendAppDetailInfo(@NonNull C2858de c2858de) {
        this.describe = "";
        this.logoUrl = "";
        this.pkgName = "";
        this.functionDesc = "";
        if (!C3942yy.m1352c(c2858de.picurls)) {
            this.picUrls.addAll(c2858de.picurls);
        }
        this.describe = c2858de.description;
        this.pkgName = c2858de.softkey == null ? "" : c2858de.softkey.softname;
        this.logoUrl = c2858de.logourl;
        this.functionDesc = c2858de.function;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        parcel.writeString(this.describe);
        parcel.writeStringList(this.picUrls);
        parcel.writeString(this.pkgName);
        parcel.writeString(this.logoUrl);
        parcel.writeString(this.functionDesc);
    }
}
