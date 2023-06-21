package com.kingroot.kinguser.advance.model;

import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Process;
import android.text.TextUtils;
import com.kingroot.kinguser.C3952zh;
import com.kingroot.kinguser.C3953zi;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class QuickInstallerInfo implements Parcelable {
    public static final Parcelable.Creator<QuickInstallerInfo> CREATOR = new Parcelable.Creator<QuickInstallerInfo>() { // from class: com.kingroot.kinguser.advance.model.QuickInstallerInfo.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: I */
        public QuickInstallerInfo createFromParcel(Parcel parcel) {
            return new QuickInstallerInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: dq */
        public QuickInstallerInfo[] newArray(int i) {
            return new QuickInstallerInfo[i];
        }
    };
    public Uri apA;
    public Uri apB;
    public Uri apC;
    public String apD;
    public String apE;
    public int apF;
    public int apG;
    public int apH;
    public String apI;
    public String apkPath;
    public String appName;
    public int apz;
    public String pkgName;
    public int state;

    public QuickInstallerInfo() {
        this.apz = -1;
        this.apG = 4;
        this.apH = 0;
        this.apI = "";
    }

    public QuickInstallerInfo(Parcel parcel) {
        this.apz = -1;
        this.apG = 4;
        this.apH = 0;
        this.apI = "";
        this.apz = parcel.readInt();
        this.apA = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.apB = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.apC = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.apD = parcel.readString();
        this.apE = parcel.readString();
        this.apkPath = parcel.readString();
        this.pkgName = parcel.readString();
        this.appName = parcel.readString();
        this.state = parcel.readInt();
        this.apF = parcel.readInt();
        this.apG = parcel.readInt();
        this.apH = parcel.readInt();
        this.apI = parcel.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.apz);
        parcel.writeParcelable(this.apA, i);
        parcel.writeParcelable(this.apB, i);
        parcel.writeParcelable(this.apC, i);
        parcel.writeString(this.apD);
        parcel.writeString(this.apE);
        parcel.writeString(this.apkPath);
        parcel.writeString(this.pkgName);
        parcel.writeString(this.appName);
        parcel.writeInt(this.state);
        parcel.writeInt(this.apF);
        parcel.writeInt(this.apG);
        parcel.writeInt(this.apH);
        parcel.writeString(this.apI);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: b */
    public static QuickInstallerInfo m12405b(Intent intent, int i) {
        try {
            QuickInstallerInfo quickInstallerInfo = new QuickInstallerInfo();
            quickInstallerInfo.apz = i;
            quickInstallerInfo.apA = intent.getData();
            quickInstallerInfo.apB = (Uri) intent.getParcelableExtra("android.intent.extra.ORIGINATING_URI");
            quickInstallerInfo.apC = (Uri) intent.getParcelableExtra("android.intent.extra.REFERRER");
            quickInstallerInfo.apkPath = quickInstallerInfo.apA.getPath();
            try {
                quickInstallerInfo.apD = C3952zh.m1312pq().getPackagesForUid(i)[0];
                quickInstallerInfo.apE = C3952zh.m1312pq().getApplicationLabel(C3952zh.m1312pq().getApplicationInfo(quickInstallerInfo.apD, 0)).toString();
            } catch (Exception e) {
            }
            PackageInfo packageArchiveInfo = C3952zh.m1312pq().getPackageArchiveInfo(quickInstallerInfo.apkPath, 0);
            if (packageArchiveInfo != null) {
                quickInstallerInfo.pkgName = packageArchiveInfo.packageName;
                ApplicationInfo applicationInfo = packageArchiveInfo.applicationInfo;
                applicationInfo.sourceDir = quickInstallerInfo.apkPath;
                applicationInfo.publicSourceDir = quickInstallerInfo.apkPath;
                quickInstallerInfo.appName = C3952zh.m1312pq().getApplicationLabel(applicationInfo).toString();
            }
            return quickInstallerInfo;
        } catch (Exception e2) {
            return null;
        }
    }

    public boolean valid() {
        return (TextUtils.isEmpty(this.apkPath) || TextUtils.isEmpty(this.pkgName)) ? false : true;
    }

    /* renamed from: xa */
    public boolean m12403xa() {
        return Process.myUid() == this.apz;
    }

    /* renamed from: xb */
    public String m12402xb() {
        switch (this.apG) {
            case 2:
                return C3953zi.m1311pr().getString(R.string.quick_install_risk_content_no_official);
            case 3:
                return C3953zi.m1311pr().getString(R.string.quick_install_risk_content_pay_risk);
            case 4:
                return C3953zi.m1311pr().getString(R.string.quick_install_risk_content_viruses);
            case 5:
                return C3953zi.m1311pr().getString(R.string.quick_install_risk_content_steal_account_risk);
            case 6:
                return C3953zi.m1311pr().getString(R.string.quick_install_risk_content_other);
            default:
                return "";
        }
    }

    /* renamed from: fM */
    public static Drawable m12404fM(String str) {
        try {
            ApplicationInfo applicationInfo = C3952zh.m1312pq().getPackageArchiveInfo(str, 0).applicationInfo;
            applicationInfo.sourceDir = str;
            applicationInfo.publicSourceDir = str;
            return C3952zh.m1312pq().getApplicationIcon(applicationInfo);
        } catch (Exception e) {
            return null;
        }
    }
}
