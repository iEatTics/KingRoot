package com.kingroot.loader.sdk;

import android.content.ContentValues;
import android.os.Parcel;
import android.os.Parcelable;
import com.kingroot.kinguser.bko;
/* loaded from: classes.dex */
public class KlConfig implements Parcelable {
    public static final Parcelable.Creator<KlConfig> CREATOR = new Parcelable.Creator<KlConfig>() { // from class: com.kingroot.loader.sdk.KlConfig.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: aU */
        public KlConfig createFromParcel(Parcel parcel) {
            return new KlConfig(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: jB */
        public KlConfig[] newArray(int i) {
            return new KlConfig[i];
        }
    };
    public static final int FLAG_DISABLE = 1;
    private int mFlag;
    private int mPluginId;

    /* loaded from: classes.dex */
    public static class KlConfigEntry {
        public static final String COLUMN_FLAG = "xb";
        public static final String COLUMN_PLACEHOLDER_0 = "xc";
        public static final String COLUMN_PLACEHOLDER_1 = "xd";
        public static final String COLUMN_PLACEHOLDER_2 = "xe";
        public static final String COLUMN_PLACEHOLDER_3 = "xf";
        public static final String COLUMN_PLACEHOLDER_4 = "xg";
        public static final String COLUMN_PLACEHOLDER_5 = "xh";
        public static final String COLUMN_PLACEHOLDER_6 = "xi";
        public static final String COLUMN_PLACEHOLDER_7 = "xj";
        public static final String COLUMN_PLUGIN_ID = "xa";
    }

    public KlConfig(int i, int i2) {
        this.mPluginId = -1;
        this.mFlag = 0;
        this.mPluginId = i;
        this.mFlag = i2;
    }

    public boolean isPluginDisabled() {
        return bko.m6559B(this.mFlag, 1);
    }

    public int getPluginId() {
        return this.mPluginId;
    }

    public void setFlagSetting(int i, boolean z) {
        if (z) {
            this.mFlag |= i;
        } else {
            this.mFlag &= i ^ (-1);
        }
    }

    public boolean isValid() {
        return this.mPluginId != -1;
    }

    public ContentValues transferToContentValues() {
        ContentValues contentValues = new ContentValues();
        contentValues.put("xa", Integer.valueOf(this.mPluginId));
        contentValues.put("xb", Integer.valueOf(this.mFlag));
        return contentValues;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.mPluginId);
        parcel.writeInt(this.mFlag);
    }

    private KlConfig(Parcel parcel) {
        this.mPluginId = -1;
        this.mFlag = 0;
        this.mPluginId = parcel.readInt();
        this.mFlag = parcel.readInt();
    }
}
