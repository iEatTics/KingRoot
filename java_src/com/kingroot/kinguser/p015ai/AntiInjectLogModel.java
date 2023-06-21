package com.kingroot.kinguser.p015ai;

import android.content.ContentValues;
import android.database.Cursor;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.kingroot.kinguser.C3952zh;
import com.swift.sandhook.annotation.MethodReflectParams;
import java.util.List;
/* renamed from: com.kingroot.kinguser.ai.AntiInjectLogModel */
/* loaded from: classes.dex */
public class AntiInjectLogModel implements Parcelable {
    public static final Parcelable.Creator<AntiInjectLogModel> CREATOR = new Parcelable.Creator<AntiInjectLogModel>() { // from class: com.kingroot.kinguser.ai.AntiInjectLogModel.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: L */
        public AntiInjectLogModel createFromParcel(Parcel parcel) {
            return new AntiInjectLogModel(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: du */
        public AntiInjectLogModel[] newArray(int i) {
            return new AntiInjectLogModel[i];
        }
    };
    public String apW;
    public String apX;
    public String apY;
    public boolean apZ;

    /* renamed from: id */
    public int f1440id;
    public String processName;
    public long time;
    public int uid;
    public String version;

    /* renamed from: com.kingroot.kinguser.ai.AntiInjectLogModel$a */
    /* loaded from: classes.dex */
    public static class C0953a {
        public static final String[] COLUMNS = {"aa", "ac", "ad", "ae", "af"};

        /* renamed from: GK */
        public static final String[] f1441GK = {MethodReflectParams.LONG, "text", "text", "text", "text"};
    }

    public AntiInjectLogModel() {
        this.f1440id = -1;
        this.time = 0L;
        this.version = "";
        this.uid = -1;
        this.processName = "";
        this.apW = "";
        this.apX = "";
        this.apY = "";
        this.apZ = true;
    }

    public AntiInjectLogModel(String str) {
        String[] split;
        this.f1440id = -1;
        this.time = 0L;
        this.version = "";
        this.uid = -1;
        this.processName = "";
        this.apW = "";
        this.apX = "";
        this.apY = "";
        this.apZ = true;
        if (!TextUtils.isEmpty(str) && (split = str.split("&&")) != null && split.length >= 8) {
            String trim = split[0].trim();
            if (trim.contentEquals("1")) {
                this.apZ = true;
            } else if (trim.contentEquals("0")) {
                this.apZ = false;
            } else {
                return;
            }
            this.version = split[1].trim();
            this.processName = split[2].trim();
            this.apW = split[3].trim();
            this.apX = split[4].trim();
            this.apY = split[5].trim();
            try {
                this.uid = Integer.parseInt(split[7].trim());
            } catch (NumberFormatException e) {
            }
            this.time = System.currentTimeMillis();
            if ((TextUtils.isEmpty(this.processName) || this.processName.equals("<pre-initialized>")) && this.uid != -1) {
                String nameForUid = C3952zh.m1312pq().getNameForUid(this.uid);
                if (!TextUtils.isEmpty(nameForUid)) {
                    this.processName = nameForUid;
                }
            }
        }
    }

    public boolean isValid() {
        return (TextUtils.isEmpty(this.processName) || TextUtils.isEmpty(this.apY) || TextUtils.isEmpty(this.apW) || this.uid == -1) ? false : true;
    }

    /* renamed from: xe */
    public ContentValues m11703xe() {
        ContentValues contentValues = new ContentValues();
        contentValues.put("aa", Long.valueOf(this.time));
        m11705a(contentValues, "ac", this.processName);
        m11705a(contentValues, "ad", this.apW);
        m11705a(contentValues, "ae", this.apX);
        m11705a(contentValues, "af", this.apY);
        return contentValues;
    }

    /* renamed from: a */
    private void m11705a(ContentValues contentValues, String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            contentValues.put(str, str2);
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f1440id);
        parcel.writeLong(this.time);
        parcel.writeString(this.processName);
        parcel.writeString(this.apW);
        parcel.writeString(this.apX);
        parcel.writeString(this.apY);
    }

    private AntiInjectLogModel(Parcel parcel) {
        this.f1440id = -1;
        this.time = 0L;
        this.version = "";
        this.uid = -1;
        this.processName = "";
        this.apW = "";
        this.apX = "";
        this.apY = "";
        this.apZ = true;
        readFromParcel(parcel);
    }

    private void readFromParcel(Parcel parcel) {
        this.f1440id = parcel.readInt();
        this.time = parcel.readLong();
        this.processName = parcel.readString();
        this.apW = parcel.readString();
        this.apX = parcel.readString();
        this.apY = parcel.readString();
    }

    /* renamed from: b */
    public static void m11704b(List<AntiInjectLogModel> list, Cursor cursor) {
        if (cursor != null && cursor.moveToFirst()) {
            try {
                int columnIndex = cursor.getColumnIndex("_id");
                int columnIndexOrThrow = cursor.getColumnIndexOrThrow("aa");
                int columnIndexOrThrow2 = cursor.getColumnIndexOrThrow("ac");
                int columnIndexOrThrow3 = cursor.getColumnIndexOrThrow("ad");
                int columnIndexOrThrow4 = cursor.getColumnIndexOrThrow("ae");
                int columnIndexOrThrow5 = cursor.getColumnIndexOrThrow("af");
                do {
                    try {
                        AntiInjectLogModel antiInjectLogModel = new AntiInjectLogModel();
                        antiInjectLogModel.f1440id = cursor.getInt(columnIndex);
                        antiInjectLogModel.time = cursor.getLong(columnIndexOrThrow);
                        antiInjectLogModel.processName = cursor.getString(columnIndexOrThrow2);
                        antiInjectLogModel.apW = cursor.getString(columnIndexOrThrow3);
                        antiInjectLogModel.apX = cursor.getString(columnIndexOrThrow4);
                        antiInjectLogModel.apY = cursor.getString(columnIndexOrThrow5);
                        list.add(antiInjectLogModel);
                    } catch (Throwable th) {
                    }
                } while (cursor.moveToNext());
            } catch (Throwable th2) {
            }
        }
    }
}
