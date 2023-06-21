package com.kingroot.kinguser.distribution.appsmarket.report;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import com.kingroot.kinguser.InterfaceC3562rr;
import com.tencent.qqpimsecure.seachsdk.common.AppInfo;
import java.util.Arrays;
/* loaded from: classes.dex */
public class ReportInfo implements Parcelable, InterfaceC3562rr {
    public static final Parcelable.Creator<ReportInfo> CREATOR = new Parcelable.Creator<ReportInfo>() { // from class: com.kingroot.kinguser.distribution.appsmarket.report.ReportInfo.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: aq */
        public ReportInfo createFromParcel(Parcel parcel) {
            return new ReportInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: fE */
        public ReportInfo[] newArray(int i) {
            return new ReportInfo[i];
        }
    };
    public static final long serialVersionUID = 0;
    public String appName;
    public byte[] businessData;
    public int businessType;
    public int categoryid;
    public String channelId;
    public String errorMsg;
    public String fileUrl;
    public boolean hadReportedForExposure;
    public String newVersion;
    public int newVersionCode;
    public String pkgName;
    public long size;
    public String strExtend;
    public byte[] transData;

    protected ReportInfo(Parcel parcel) {
        this.strExtend = "";
        this.transData = new byte[0];
        this.businessData = new byte[0];
        this.channelId = "";
        this.pkgName = "";
        this.hadReportedForExposure = false;
        this.fileUrl = parcel.readString();
        this.newVersion = parcel.readString();
        this.newVersionCode = parcel.readInt();
        this.strExtend = parcel.readString();
        this.businessType = parcel.readInt();
        this.businessData = new byte[parcel.readInt()];
        parcel.readByteArray(this.businessData);
        this.size = parcel.readLong();
        this.errorMsg = parcel.readString();
        this.channelId = parcel.readString();
        this.transData = new byte[parcel.readInt()];
        parcel.readByteArray(this.transData);
        this.appName = parcel.readString();
        this.pkgName = parcel.readString();
        this.categoryid = parcel.readInt();
        this.hadReportedForExposure = parcel.readByte() == 1;
    }

    public ReportInfo(AppInfo appInfo) {
        this.strExtend = "";
        this.transData = new byte[0];
        this.businessData = new byte[0];
        this.channelId = "";
        this.pkgName = "";
        this.hadReportedForExposure = false;
        this.fileUrl = appInfo.fileUrl;
        this.newVersion = appInfo.newVersion;
        this.newVersionCode = appInfo.newVersionCode;
        this.strExtend = appInfo.strExtend;
        this.businessType = appInfo.businessType;
        this.businessData = appInfo.busiData;
        this.size = appInfo.mSize;
        this.errorMsg = appInfo.bOs;
        this.channelId = appInfo.channelId;
        this.transData = appInfo.transData;
        this.appName = appInfo.appName;
        this.pkgName = appInfo.pkgName;
        this.categoryid = appInfo.categoryid;
    }

    public ReportInfo(ReportInfo reportInfo) {
        this.strExtend = "";
        this.transData = new byte[0];
        this.businessData = new byte[0];
        this.channelId = "";
        this.pkgName = "";
        this.hadReportedForExposure = false;
        this.fileUrl = reportInfo.fileUrl;
        this.newVersion = reportInfo.newVersion;
        this.newVersionCode = reportInfo.newVersionCode;
        this.strExtend = reportInfo.strExtend;
        this.businessType = reportInfo.businessType;
        if (reportInfo.businessData != null) {
            this.businessData = Arrays.copyOf(reportInfo.businessData, reportInfo.businessData.length);
        }
        this.size = reportInfo.size;
        this.errorMsg = reportInfo.errorMsg;
        this.channelId = reportInfo.channelId;
        if (reportInfo.transData != null) {
            this.transData = Arrays.copyOf(reportInfo.transData, reportInfo.transData.length);
        }
        this.appName = reportInfo.appName;
        this.pkgName = reportInfo.pkgName;
        this.categoryid = reportInfo.categoryid;
        this.hadReportedForExposure = reportInfo.hadReportedForExposure;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        parcel.writeString(this.fileUrl);
        parcel.writeString(this.newVersion);
        parcel.writeInt(this.newVersionCode);
        parcel.writeString(this.strExtend);
        parcel.writeInt(this.businessType);
        parcel.writeInt(this.businessData == null ? 0 : this.businessData.length);
        parcel.writeByteArray(this.businessData == null ? new byte[0] : this.businessData);
        parcel.writeLong(this.size);
        parcel.writeString(this.errorMsg);
        parcel.writeString(this.channelId);
        parcel.writeInt(this.transData == null ? 0 : this.transData.length);
        parcel.writeByteArray(this.transData == null ? new byte[0] : this.transData);
        parcel.writeString(this.appName);
        parcel.writeString(this.pkgName);
        parcel.writeInt(this.categoryid);
        parcel.writeByte((byte) (this.hadReportedForExposure ? 1 : 0));
    }

    public String toString() {
        return "ReportInfo{newVersion='" + this.newVersion + "', newVersionCode=" + this.newVersionCode + ", size=" + this.size + ", errorMsg='" + this.errorMsg + "', appName='" + this.appName + "', strExtend='" + this.strExtend + "', businessType=" + this.businessType + ", transData=" + Arrays.toString(this.transData) + ", businessData=" + Arrays.toString(this.businessData) + ", channelId='" + this.channelId + "', pkgName='" + this.pkgName + "', fileUrl='" + this.fileUrl + "', categoryid=" + this.categoryid + ", hadReportedForExposure=" + this.hadReportedForExposure + '}';
    }

    public int hashCode() {
        return this.pkgName.hashCode();
    }

    public boolean equals(Object obj) {
        if (obj instanceof ReportInfo) {
            return this.pkgName.equals(((ReportInfo) obj).pkgName);
        }
        return false;
    }
}
