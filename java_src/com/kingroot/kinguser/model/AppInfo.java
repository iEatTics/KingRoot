package com.kingroot.kinguser.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import com.kingroot.kinguser.InterfaceC3562rr;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class AppInfo implements Parcelable, InterfaceC3562rr {
    public static final Parcelable.Creator<AppInfo> CREATOR = new Parcelable.Creator<AppInfo>() { // from class: com.kingroot.kinguser.model.AppInfo.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: aB */
        public AppInfo createFromParcel(Parcel parcel) {
            return new AppInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: gD */
        public AppInfo[] newArray(int i) {
            return new AppInfo[i];
        }
    };
    private static final long serialVersionUID = 1;
    private String mAppName;
    private String mDescInfo;
    private List<String> mDescList;
    private String mPackageName;
    private long mTime;

    public AppInfo() {
    }

    public AppInfo(Parcel parcel) {
        readFromParcel(parcel);
    }

    /* renamed from: PD */
    public String m3056PD() {
        return this.mAppName != null ? this.mAppName : "";
    }

    public void setAppName(String str) {
        this.mAppName = str;
    }

    @NonNull
    public String getPackageName() {
        return this.mPackageName != null ? this.mPackageName : "";
    }

    /* renamed from: ft */
    public void m3053ft(String str) {
        this.mPackageName = str;
    }

    public long getTime() {
        return this.mTime;
    }

    public void setTime(long j) {
        this.mTime = j;
    }

    /* renamed from: bj */
    public void m3054bj(List<String> list) {
        this.mDescList = list;
    }

    /* renamed from: PE */
    public String m3055PE() {
        return this.mDescInfo;
    }

    /* renamed from: ji */
    public void m3052ji(String str) {
        this.mDescInfo = str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mAppName);
        parcel.writeString(this.mPackageName);
        parcel.writeLong(this.mTime);
        parcel.writeStringList(this.mDescList);
        parcel.writeString(this.mDescInfo);
    }

    private void readFromParcel(Parcel parcel) {
        this.mAppName = parcel.readString();
        this.mPackageName = parcel.readString();
        this.mTime = parcel.readLong();
        this.mDescList = new ArrayList();
        parcel.readStringList(this.mDescList);
        this.mDescInfo = parcel.readString();
    }
}
