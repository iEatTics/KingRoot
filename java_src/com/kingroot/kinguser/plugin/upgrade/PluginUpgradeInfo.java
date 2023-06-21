package com.kingroot.kinguser.plugin.upgrade;

import android.content.ContentValues;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.kingroot.kinguser.C3563rs;
import com.kingroot.loader.sdk.KlInfo;
import java.io.File;
import java.util.Locale;
/* loaded from: classes.dex */
public class PluginUpgradeInfo implements Parcelable {
    public static final Parcelable.Creator<PluginUpgradeInfo> CREATOR = new Parcelable.Creator<PluginUpgradeInfo>() { // from class: com.kingroot.kinguser.plugin.upgrade.PluginUpgradeInfo.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: aI */
        public PluginUpgradeInfo createFromParcel(Parcel parcel) {
            return new PluginUpgradeInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: hI */
        public PluginUpgradeInfo[] newArray(int i) {
            return new PluginUpgradeInfo[i];
        }
    };
    public String bdO;
    public String bdP;
    public String bdQ;
    public int bdR;
    public long bdS;
    public long bdT;
    public int bdU;
    public int downloadCount;
    public long lastDownloadTime;
    public String packageMd5;

    /* renamed from: pf */
    public int f3307pf;
    public int pluginId;
    public int size;
    public String url;
    public int versionCode;

    public PluginUpgradeInfo() {
        this.pluginId = -1;
        this.versionCode = -1;
        this.packageMd5 = "";
        this.size = 0;
        this.url = "";
        this.downloadCount = 0;
        this.bdO = "";
        this.bdP = "";
        this.bdQ = "";
        this.f3307pf = -1;
        this.bdR = 0;
        this.bdS = 0L;
        this.bdT = 0L;
        this.bdU = 0;
        this.lastDownloadTime = 0L;
    }

    /* renamed from: Vt */
    public boolean m2625Vt() {
        return this.f3307pf == 1 || this.f3307pf == 0 || this.f3307pf == 2;
    }

    public ContentValues transferToContentValues() {
        ContentValues contentValues = new ContentValues();
        contentValues.put("xa", Integer.valueOf(this.pluginId));
        contentValues.put("xb", Integer.valueOf(this.versionCode));
        contentValues.put("xc", this.packageMd5);
        contentValues.put("xd", Integer.valueOf(this.size));
        contentValues.put("xe", this.url);
        contentValues.put("xf", Integer.valueOf(this.downloadCount));
        contentValues.put("xg", this.bdO);
        contentValues.put("xi", this.bdP);
        contentValues.put(KlInfo.KlInfoEntry.COLUMN_PLUGIN_BUILD_HOST_VERSION, this.bdQ);
        contentValues.put(KlInfo.KlInfoEntry.COLUMN_PLUGIN_ID, Integer.valueOf(this.f3307pf));
        contentValues.put("xm", Integer.valueOf(this.bdR));
        contentValues.put("xn", Long.valueOf(this.bdS));
        contentValues.put("xo", Long.valueOf(this.bdT));
        contentValues.put("xp", Integer.valueOf(this.bdU));
        contentValues.put("xq", Long.valueOf(this.lastDownloadTime));
        return contentValues;
    }

    /* renamed from: Vu */
    public boolean m2624Vu() {
        if (TextUtils.isEmpty(this.bdO) || TextUtils.isEmpty(this.packageMd5)) {
            return false;
        }
        File file = new File(this.bdO);
        return file.exists() && this.packageMd5.equalsIgnoreCase(C3563rs.getFileMD5(file).toLowerCase(Locale.US));
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.pluginId);
        parcel.writeInt(this.versionCode);
        parcel.writeString(this.packageMd5);
        parcel.writeInt(this.size);
        parcel.writeString(this.url);
        parcel.writeInt(this.downloadCount);
        parcel.writeString(this.bdO);
        parcel.writeString(this.bdP);
        parcel.writeString(this.bdQ);
        parcel.writeInt(this.f3307pf);
        parcel.writeInt(this.bdR);
        parcel.writeLong(this.bdS);
        parcel.writeLong(this.bdT);
        parcel.writeInt(this.bdU);
        parcel.writeLong(this.lastDownloadTime);
    }

    protected PluginUpgradeInfo(Parcel parcel) {
        this.pluginId = -1;
        this.versionCode = -1;
        this.packageMd5 = "";
        this.size = 0;
        this.url = "";
        this.downloadCount = 0;
        this.bdO = "";
        this.bdP = "";
        this.bdQ = "";
        this.f3307pf = -1;
        this.bdR = 0;
        this.bdS = 0L;
        this.bdT = 0L;
        this.bdU = 0;
        this.lastDownloadTime = 0L;
        this.pluginId = parcel.readInt();
        this.versionCode = parcel.readInt();
        this.packageMd5 = parcel.readString();
        this.size = parcel.readInt();
        this.url = parcel.readString();
        this.downloadCount = parcel.readInt();
        this.bdO = parcel.readString();
        this.bdP = parcel.readString();
        this.bdQ = parcel.readString();
        this.f3307pf = parcel.readInt();
        this.bdR = parcel.readInt();
        this.bdS = parcel.readLong();
        this.bdT = parcel.readLong();
        this.bdU = parcel.readInt();
        this.lastDownloadTime = parcel.readLong();
    }
}
