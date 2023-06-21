package com.kingroot.kinguser.distribution.examination.entity;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import com.kingroot.kinguser.C2862di;
import com.kingroot.kinguser.C3952zh;
import com.kingroot.kinguser.adk;
import com.kingroot.kinguser.aiq;
import com.kingroot.kinguser.aks;
import com.kingroot.kinguser.aom;
import com.kingroot.kinguser.apu;
import com.kingroot.kinguser.apv;
import com.kingroot.kinguser.distribution.base.RecommendAppSimpleInfo;
import com.kingroot.kinguser.distribution.net.download.AppDownloadRequest;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class ExamRecommendAppInfo extends RecommendAppSimpleInfo {
    public String bigIconUrl;
    public String detailDescribe;
    public String functionDesc;
    public int ignoreCount;
    public long lastIgnoreTime;
    public List<String> picUrls;
    public static final String TAG = aiq.arY + "_ExamRecommendAppInfo";
    public static final Parcelable.Creator<ExamRecommendAppInfo> CREATOR = new Parcelable.Creator<ExamRecommendAppInfo>() { // from class: com.kingroot.kinguser.distribution.examination.entity.ExamRecommendAppInfo.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: av */
        public ExamRecommendAppInfo createFromParcel(Parcel parcel) {
            return new ExamRecommendAppInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: fR */
        public ExamRecommendAppInfo[] newArray(int i) {
            return new ExamRecommendAppInfo[i];
        }
    };
    public static final aom.InterfaceC1387a<ExamRecommendAppInfo, C2862di> aGp = new aom.InterfaceC1387a<ExamRecommendAppInfo, C2862di>() { // from class: com.kingroot.kinguser.distribution.examination.entity.ExamRecommendAppInfo.2
        @Override // com.kingroot.kinguser.aom.InterfaceC1387a
        /* renamed from: b */
        public ExamRecommendAppInfo mo3755p(@NonNull C2862di c2862di) {
            return new ExamRecommendAppInfo(c2862di);
        }
    };

    protected ExamRecommendAppInfo(Parcel parcel) {
        super(parcel);
        this.picUrls = new ArrayList();
        this.detailDescribe = "";
        this.ignoreCount = 0;
        this.lastIgnoreTime = 0L;
        this.bigIconUrl = "";
        this.functionDesc = "";
        parcel.readStringList(this.picUrls);
        this.detailDescribe = parcel.readString();
        this.ignoreCount = parcel.readInt();
        this.lastIgnoreTime = parcel.readLong();
        this.bigIconUrl = parcel.readString();
        this.functionDesc = parcel.readString();
    }

    /* renamed from: b */
    public void m4103b(ExamRecommendAppInfo examRecommendAppInfo) {
        this.ignoreCount = examRecommendAppInfo.ignoreCount;
        this.lastIgnoreTime = examRecommendAppInfo.lastIgnoreTime;
    }

    @NonNull
    /* renamed from: Kk */
    public List<String> m4107Kk() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.picUrls);
        arrayList.add(this.iconUrl);
        arrayList.add(this.bigIconUrl);
        return arrayList;
    }

    /* renamed from: Kl */
    public void m4106Kl() {
        File m9741h = apu.m9741h(AppDownloadRequest.m4063a(this));
        if (m9741h != null && m9741h.exists()) {
            m9741h.delete();
        }
        for (File file : apv.m9735LO().m9722d(this)) {
            if (file != null && file.exists()) {
                file.delete();
            }
        }
        aks.m11143BP().m10726hk(this.pkgName);
    }

    /* renamed from: Km */
    public boolean m4105Km() {
        return !(this.ignoreCount >= 2) && adk.m12539b(this.lastIgnoreTime, System.currentTimeMillis(), 259200000L) && apv.m9735LO().m9723c(this) && !C3952zh.m1312pq().m1314du(this.pkgName);
    }

    /* renamed from: Kn */
    public boolean m4104Kn() {
        return !(this.ignoreCount >= 2) && adk.m12539b(this.lastIgnoreTime, System.currentTimeMillis(), 259200000L) && apv.m9735LO().m9723c(this);
    }

    /* renamed from: yf */
    public boolean m4102yf() {
        return C3952zh.m1312pq().m1314du(this.pkgName);
    }

    @Override // com.kingroot.kinguser.distribution.base.RecommendAppSimpleInfo, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeStringList(this.picUrls);
        parcel.writeString(this.detailDescribe);
        parcel.writeInt(this.ignoreCount);
        parcel.writeLong(this.lastIgnoreTime);
        parcel.writeString(this.bigIconUrl);
        parcel.writeString(this.functionDesc);
    }

    public ExamRecommendAppInfo(C2862di c2862di) {
        super(c2862di);
        this.picUrls = new ArrayList();
        this.detailDescribe = "";
        this.ignoreCount = 0;
        this.lastIgnoreTime = 0L;
        this.bigIconUrl = "";
        this.functionDesc = "";
    }
}
