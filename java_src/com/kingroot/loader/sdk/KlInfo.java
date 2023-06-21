package com.kingroot.loader.sdk;

import android.content.ContentValues;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.BaseColumns;
import android.text.TextUtils;
/* loaded from: classes.dex */
public class KlInfo implements Parcelable {
    public static final Parcelable.Creator<KlInfo> CREATOR = new Parcelable.Creator<KlInfo>() { // from class: com.kingroot.loader.sdk.KlInfo.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: aV */
        public KlInfo createFromParcel(Parcel parcel) {
            return new KlInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: jC */
        public KlInfo[] newArray(int i) {
            return new KlInfo[i];
        }
    };
    public static final int INVALID_INT_VALUE = -1;
    public String backEntryClass;
    public int buildHostId;
    public int buildHostVersion;
    public String foreEntryClass;
    public int installState;
    public String packageMd5;
    public String packageName;
    public int pluginId;
    public String rawPluginPath;
    public int versionCode;
    public String versionName;

    /* loaded from: classes.dex */
    public static abstract class KlInfoEntry implements BaseColumns {
        public static final String COLUMN_BACK_ENTRY_CLASS = "xc";
        public static final String COLUMN_FORE_ENTRY_CLASS = "xd";
        public static final String COLUMN_PACKAGE_MD5 = "xe";
        public static final String COLUMN_PKG_NAME = "xa";
        public static final String COLUMN_PLUGIN_BUILD_HOST_ID = "xj";
        public static final String COLUMN_PLUGIN_BUILD_HOST_VERSION = "xk";
        public static final String COLUMN_PLUGIN_ID = "xl";
        public static final String COLUMN_PLUGIN_INSTALL_STATE = "xg";
        public static final String COLUMN_PLUGIN_VERSION_NAME = "xi";
        public static final String COLUMN_RAW_PLUGIN_PATH = "xf";
        public static final String COLUMN_VER_CODE = "xb";
    }

    public KlInfo() {
        this.pluginId = -1;
        this.versionName = "";
        this.packageName = "";
        this.versionCode = -1;
        this.buildHostId = -1;
        this.buildHostVersion = -1;
        this.backEntryClass = "";
        this.foreEntryClass = "";
        this.packageMd5 = "";
        this.rawPluginPath = "";
        this.installState = 0;
    }

    public KlInfo(String str) {
        this.pluginId = -1;
        this.versionName = "";
        this.packageName = "";
        this.versionCode = -1;
        this.buildHostId = -1;
        this.buildHostVersion = -1;
        this.backEntryClass = "";
        this.foreEntryClass = "";
        this.packageMd5 = "";
        this.rawPluginPath = "";
        this.installState = 0;
        this.rawPluginPath = str;
    }

    public ContentValues transferToContentValues() {
        ContentValues contentValues = new ContentValues();
        contentValues.put(KlInfoEntry.COLUMN_PLUGIN_ID, Integer.valueOf(this.pluginId));
        contentValues.put("xa", this.packageName);
        contentValues.put("xb", Integer.valueOf(this.versionCode));
        contentValues.put("xj", Integer.valueOf(this.buildHostId));
        contentValues.put(KlInfoEntry.COLUMN_PLUGIN_BUILD_HOST_VERSION, Integer.valueOf(this.buildHostVersion));
        contentValues.put("xc", this.backEntryClass);
        contentValues.put("xd", this.foreEntryClass);
        contentValues.put("xe", this.packageMd5);
        contentValues.put("xf", this.rawPluginPath);
        contentValues.put("xg", Integer.valueOf(this.installState));
        contentValues.put("xi", this.versionName);
        return contentValues;
    }

    public boolean isInfoParsed() {
        return ((TextUtils.isEmpty(this.foreEntryClass) && TextUtils.isEmpty(this.backEntryClass)) || TextUtils.isEmpty(this.packageName) || this.versionCode == -1 || this.buildHostId == -1 || this.buildHostVersion == -1) ? false : true;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.pluginId);
        parcel.writeString(this.versionName);
        parcel.writeString(this.packageName);
        parcel.writeInt(this.versionCode);
        parcel.writeInt(this.buildHostId);
        parcel.writeInt(this.buildHostVersion);
        parcel.writeString(this.backEntryClass);
        parcel.writeString(this.foreEntryClass);
        parcel.writeString(this.packageMd5);
        parcel.writeString(this.rawPluginPath);
        parcel.writeInt(this.installState);
    }

    private KlInfo(Parcel parcel) {
        this.pluginId = -1;
        this.versionName = "";
        this.packageName = "";
        this.versionCode = -1;
        this.buildHostId = -1;
        this.buildHostVersion = -1;
        this.backEntryClass = "";
        this.foreEntryClass = "";
        this.packageMd5 = "";
        this.rawPluginPath = "";
        this.installState = 0;
        readFromParcel(parcel);
    }

    private void readFromParcel(Parcel parcel) {
        this.pluginId = parcel.readInt();
        this.versionName = parcel.readString();
        this.packageName = parcel.readString();
        this.versionCode = parcel.readInt();
        this.buildHostId = parcel.readInt();
        this.buildHostVersion = parcel.readInt();
        this.backEntryClass = parcel.readString();
        this.foreEntryClass = parcel.readString();
        this.packageMd5 = parcel.readString();
        this.rawPluginPath = parcel.readString();
        this.installState = parcel.readInt();
    }
}
