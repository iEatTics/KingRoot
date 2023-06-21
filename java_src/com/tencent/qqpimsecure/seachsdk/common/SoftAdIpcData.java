package com.tencent.qqpimsecure.seachsdk.common;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class SoftAdIpcData extends AdIpcData {
    public static final Parcelable.Creator<SoftAdIpcData> CREATOR = new Parcelable.Creator<SoftAdIpcData>() { // from class: com.tencent.qqpimsecure.seachsdk.common.SoftAdIpcData.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: bc */
        public SoftAdIpcData createFromParcel(Parcel parcel) {
            return new SoftAdIpcData(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: kr */
        public SoftAdIpcData[] newArray(int i) {
            return new SoftAdIpcData[i];
        }
    };
    public int bMd;
    public int bOP;
    public ArrayList<AppInfo> bOQ;
    public String bOR;
    public String bOS;
    public String bOT;
    public String bOU;
    public String bOV;

    /* renamed from: gF */
    public int f4894gF;
    public int priority;
    public String searchKeyWord;
    public String softName;
    public long tagId;

    public SoftAdIpcData() {
    }

    SoftAdIpcData(Parcel parcel) {
        super(parcel);
        this.bMd = parcel.readInt();
        this.priority = parcel.readInt();
        this.f4894gF = parcel.readInt();
        this.bOP = parcel.readInt();
        this.bOQ = (ArrayList) parcel.readSerializable();
        this.bOR = parcel.readString();
        this.bOS = parcel.readString();
        this.bOT = parcel.readString();
        this.bOU = parcel.readString();
        this.bOV = parcel.readString();
        this.softName = parcel.readString();
        this.tagId = parcel.readLong();
        this.searchKeyWord = parcel.readString();
    }

    @Override // com.tencent.qqpimsecure.seachsdk.common.AdIpcData, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.bMd);
        parcel.writeInt(this.priority);
        parcel.writeInt(this.f4894gF);
        parcel.writeInt(this.bOP);
        parcel.writeSerializable(this.bOQ);
        parcel.writeString(this.bOR);
        parcel.writeString(this.bOS);
        parcel.writeString(this.bOT);
        parcel.writeString(this.bOU);
        parcel.writeString(this.bOV);
        parcel.writeString(this.softName);
        parcel.writeLong(this.tagId);
        parcel.writeString(this.searchKeyWord);
    }
}
