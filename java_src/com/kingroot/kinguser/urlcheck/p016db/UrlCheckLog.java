package com.kingroot.kinguser.urlcheck.p016db;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.kingroot.kinguser.C3953zi;
import com.kingroot.kinguser.bfp;
import com.kingroot.kinguser.urlcheck.aidl.UrlCheckRule;
import com.kingroot.kinguses.R;
import com.tencent.feedback.eup.BuglyBroadcastRecevier;
import java.net.URL;
/* renamed from: com.kingroot.kinguser.urlcheck.db.UrlCheckLog */
/* loaded from: classes.dex */
public class UrlCheckLog implements Parcelable {

    /* renamed from: GY */
    public String f3653GY;
    public int bno;
    public int bnu;
    public long bnv;
    public int bnw;
    public boolean bnx;

    /* renamed from: id */
    public long f3654id;
    public String url;
    private static final String[] bny = {C3953zi.m1311pr().getString(R.string.urlcheck_dialog_risk_desc_1), C3953zi.m1311pr().getString(R.string.urlcheck_dialog_risk_desc_2), C3953zi.m1311pr().getString(R.string.urlcheck_dialog_risk_desc_2), C3953zi.m1311pr().getString(R.string.urlcheck_dialog_risk_desc_2), C3953zi.m1311pr().getString(R.string.urlcheck_dialog_risk_desc_3), C3953zi.m1311pr().getString(R.string.urlcheck_dialog_risk_desc_4), C3953zi.m1311pr().getString(R.string.urlcheck_dialog_risk_desc_5), C3953zi.m1311pr().getString(R.string.urlcheck_dialog_risk_desc_6), C3953zi.m1311pr().getString(R.string.urlcheck_dialog_risk_desc_7), C3953zi.m1311pr().getString(R.string.urlcheck_dialog_risk_desc_7)};
    private static final String[] bnz = {C3953zi.m1311pr().getString(R.string.urlcheck_log_short_risk_desc_0), C3953zi.m1311pr().getString(R.string.urlcheck_log_short_risk_desc_1), C3953zi.m1311pr().getString(R.string.urlcheck_log_short_risk_desc_2), C3953zi.m1311pr().getString(R.string.urlcheck_log_short_risk_desc_3), C3953zi.m1311pr().getString(R.string.urlcheck_log_short_risk_desc_4), C3953zi.m1311pr().getString(R.string.urlcheck_log_short_risk_desc_5), C3953zi.m1311pr().getString(R.string.urlcheck_log_short_risk_desc_6), C3953zi.m1311pr().getString(R.string.urlcheck_log_short_risk_desc_7), C3953zi.m1311pr().getString(R.string.urlcheck_log_short_risk_desc_8)};
    private static final String amI = C3953zi.m1311pr().getString(R.string.silent_install_log_page_time_just);
    private static final String amJ = C3953zi.m1311pr().getString(R.string.silent_install_log_page_time_minute);
    private static final String amK = C3953zi.m1311pr().getString(R.string.silent_install_log_page_time_hour);
    private static final String amL = C3953zi.m1311pr().getString(R.string.silent_install_log_page_time_day);
    public static final Parcelable.Creator<UrlCheckLog> CREATOR = new Parcelable.Creator<UrlCheckLog>() { // from class: com.kingroot.kinguser.urlcheck.db.UrlCheckLog.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: aN */
        public UrlCheckLog createFromParcel(Parcel parcel) {
            return new UrlCheckLog(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: iD */
        public UrlCheckLog[] newArray(int i) {
            return new UrlCheckLog[i];
        }
    };

    public UrlCheckLog(int i, String str, String str2) {
        this.url = "";
        this.f3653GY = "";
        this.url = str;
        this.bno = i;
        this.f3653GY = str2;
    }

    public UrlCheckLog(long j, int i, String str, int i2, long j2, boolean z, String str2) {
        this.url = "";
        this.f3653GY = "";
        this.f3654id = j;
        this.bno = i;
        this.url = str;
        this.bnu = i2;
        this.bnv = j2;
        this.bnx = z;
        this.f3653GY = str2;
    }

    protected UrlCheckLog(Parcel parcel) {
        this.url = "";
        this.f3653GY = "";
        this.f3654id = parcel.readLong();
        this.url = parcel.readString();
        this.bno = parcel.readInt();
        this.bnu = parcel.readInt();
        this.bnv = parcel.readLong();
        this.bnw = parcel.readInt();
        this.bnx = parcel.readInt() == 1;
        this.f3653GY = parcel.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f3654id);
        parcel.writeString(this.url);
        parcel.writeInt(this.bno);
        parcel.writeInt(this.bnu);
        parcel.writeLong(this.bnv);
        parcel.writeInt(this.bnw);
        parcel.writeInt(this.bnx ? 1 : 0);
        parcel.writeString(this.f3653GY);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String aaO() {
        if (this.bno <= 0) {
            this.bno = 1;
        }
        if (this.bno >= bny.length) {
            this.bno = 7;
        }
        return C3953zi.m1311pr().getString(R.string.security_protect_pop_dialog_title) + ":" + bny[this.bno];
    }

    public String aaP() {
        if (this.bno <= 0) {
            this.bno = 1;
        }
        if (this.bno >= bny.length) {
            this.bno = 7;
        }
        return bnz[this.bno];
    }

    public String aaQ() {
        long currentTimeMillis = System.currentTimeMillis() - this.bnv;
        if (currentTimeMillis <= BuglyBroadcastRecevier.UPLOADLIMITED) {
            return amI;
        }
        if (currentTimeMillis <= 3600000) {
            return (currentTimeMillis / BuglyBroadcastRecevier.UPLOADLIMITED) + amJ;
        }
        if (currentTimeMillis <= 86400000) {
            return (currentTimeMillis / 3600000) + amK;
        }
        return (currentTimeMillis / 86400000) + amL;
    }

    /* renamed from: dQ */
    public void m1995dQ(boolean z) {
        try {
            bfp.aay().addRule(new UrlCheckRule(1, new URL(this.url).getHost(), 0, z));
        } catch (Exception e) {
        }
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof UrlCheckLog)) {
            return false;
        }
        return TextUtils.equals(this.url, ((UrlCheckLog) obj).url);
    }
}
