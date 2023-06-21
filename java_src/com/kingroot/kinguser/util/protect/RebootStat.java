package com.kingroot.kinguser.util.protect;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.kingroot.kinguser.InterfaceC3562rr;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class RebootStat implements Parcelable, InterfaceC3562rr {
    public static final Parcelable.Creator<RebootStat> CREATOR = new Parcelable.Creator<RebootStat>() { // from class: com.kingroot.kinguser.util.protect.RebootStat.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: aO */
        public RebootStat createFromParcel(Parcel parcel) {
            return new RebootStat(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: iQ */
        public RebootStat[] newArray(int i) {
            return new RebootStat[i];
        }
    };
    private static final long serialVersionUID = 1;
    public int androidRebootCount;
    public int androidRebootPeekCount;
    public int currentStep;
    public DeviceStat deviceStat;
    public String errCodeJSON;
    public int failCount;
    public int failPeekCount;
    public int initStep;
    public String key;
    public int linuxRebootCount;
    public int linuxRebootPeekCount;
    public String savedMsgJSON;
    public int successCount;
    public int successPeekCount;

    public RebootStat(String str, int i) {
        this.key = str;
        this.deviceStat = null;
        this.successCount = 0;
        this.successPeekCount = 0;
        this.failCount = 0;
        this.failPeekCount = 0;
        this.linuxRebootCount = 0;
        this.androidRebootCount = 0;
        this.initStep = i;
        this.errCodeJSON = null;
        this.androidRebootPeekCount = 0;
        this.linuxRebootPeekCount = 0;
    }

    public void acD() {
        this.deviceStat = DeviceStat.acx();
        this.currentStep = this.initStep;
        this.errCodeJSON = null;
        this.savedMsgJSON = null;
    }

    /* renamed from: iO */
    public String m1978iO(int i) {
        if (TextUtils.isEmpty(this.errCodeJSON)) {
            return "-999";
        }
        try {
            return new JSONObject(this.errCodeJSON).getString("" + i);
        } catch (Throwable th) {
            return "-999";
        }
    }

    /* renamed from: Q */
    public void m1980Q(int i, String str) {
        JSONObject jSONObject;
        try {
            if (TextUtils.isEmpty(this.errCodeJSON)) {
                jSONObject = new JSONObject();
            } else {
                jSONObject = new JSONObject(this.errCodeJSON);
            }
            jSONObject.put("" + i, str);
            this.errCodeJSON = jSONObject.toString();
        } catch (Throwable th) {
        }
    }

    /* renamed from: iP */
    public String m1977iP(int i) {
        if (TextUtils.isEmpty(this.savedMsgJSON)) {
            return "-999";
        }
        try {
            return new JSONObject(this.savedMsgJSON).getString("" + i);
        } catch (Throwable th) {
            return "-999";
        }
    }

    /* renamed from: R */
    public void m1979R(int i, String str) {
        JSONObject jSONObject;
        try {
            if (TextUtils.isEmpty(this.savedMsgJSON)) {
                jSONObject = new JSONObject();
            } else {
                jSONObject = new JSONObject(this.savedMsgJSON);
            }
            jSONObject.put("" + i, str);
            this.savedMsgJSON = jSONObject.toString();
        } catch (Throwable th) {
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.key);
        parcel.writeInt(this.initStep);
        parcel.writeInt(this.currentStep);
        parcel.writeString(this.errCodeJSON);
        parcel.writeString(this.savedMsgJSON);
        parcel.writeInt(this.successCount);
        parcel.writeInt(this.successPeekCount);
        parcel.writeInt(this.failCount);
        parcel.writeInt(this.failPeekCount);
        parcel.writeInt(this.linuxRebootCount);
        parcel.writeInt(this.linuxRebootPeekCount);
        parcel.writeInt(this.androidRebootCount);
        parcel.writeInt(this.androidRebootPeekCount);
    }

    private RebootStat(Parcel parcel) {
        this.key = parcel.readString();
        this.initStep = parcel.readInt();
        this.currentStep = parcel.readInt();
        this.errCodeJSON = parcel.readString();
        this.savedMsgJSON = parcel.readString();
        this.successCount = parcel.readInt();
        this.successPeekCount = parcel.readInt();
        this.failCount = parcel.readInt();
        this.failPeekCount = parcel.readInt();
        this.linuxRebootCount = parcel.readInt();
        this.linuxRebootPeekCount = parcel.readInt();
        this.androidRebootCount = parcel.readInt();
        this.androidRebootPeekCount = parcel.readInt();
    }
}
