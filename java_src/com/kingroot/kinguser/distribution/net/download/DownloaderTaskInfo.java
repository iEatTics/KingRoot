package com.kingroot.kinguser.distribution.net.download;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.kingroot.kinguser.aab;
import com.kingroot.kinguser.bom;
import com.kingroot.kinguser.boq;
/* loaded from: classes.dex */
public class DownloaderTaskInfo implements Parcelable {
    public static final Parcelable.Creator<DownloaderTaskInfo> CREATOR = new Parcelable.Creator<DownloaderTaskInfo>() { // from class: com.kingroot.kinguser.distribution.net.download.DownloaderTaskInfo.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: ax */
        public DownloaderTaskInfo createFromParcel(Parcel parcel) {
            DownloaderTaskInfo downloaderTaskInfo = new DownloaderTaskInfo();
            downloaderTaskInfo.aGK = parcel.readString();
            downloaderTaskInfo.anc = parcel.readString();
            downloaderTaskInfo.f2452ra = parcel.readString();
            downloaderTaskInfo.aGL = parcel.readString();
            downloaderTaskInfo.aGQ = parcel.readString();
            downloaderTaskInfo.aGT = parcel.readInt();
            downloaderTaskInfo.aGS = parcel.readLong();
            downloaderTaskInfo.aGN = parcel.readLong();
            downloaderTaskInfo.aGR = parcel.readInt() == 1;
            downloaderTaskInfo.aGM = (boq) parcel.readSerializable();
            downloaderTaskInfo.aGP = parcel.readString();
            downloaderTaskInfo.aGO = parcel.readInt();
            downloaderTaskInfo.aGU = parcel.readLong();
            downloaderTaskInfo.adZ = parcel.readString();
            downloaderTaskInfo.aGV = parcel.readInt();
            downloaderTaskInfo.aGW = parcel.readLong();
            return downloaderTaskInfo;
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: fT */
        public DownloaderTaskInfo[] newArray(int i) {
            return new DownloaderTaskInfo[i];
        }
    };
    private String aGK;
    private String aGL;
    private boq aGM;
    private long aGN;
    private int aGO;
    private String aGP;
    private String aGQ;
    private boolean aGR;
    private long aGS;
    private int aGT;
    private long aGU;
    private int aGV;
    private long aGW;
    private String adZ;
    private String anc;

    /* renamed from: ra */
    private String f2452ra;

    public DownloaderTaskInfo() {
        this.aGV = 0;
        this.aGW = 0L;
    }

    public DownloaderTaskInfo(@NonNull bom bomVar, @Nullable String str, String str2, AppDownloadRequest appDownloadRequest) {
        this.aGV = 0;
        this.aGW = 0L;
        this.anc = bomVar.getId();
        this.aGK = bomVar.mo5957KH();
        this.aGQ = bomVar.mo5956KI();
        this.f2452ra = bomVar.getUrl();
        this.aGT = bomVar.agI();
        this.aGS = bomVar.agH();
        this.aGN = bomVar.mo5958KG();
        this.aGR = bomVar.isCompleted();
        this.aGM = bomVar.mo5955KJ();
        this.aGP = bomVar.mo5954KK();
        this.aGO = bomVar.mo5953KL();
        this.aGL = TextUtils.isEmpty(str) ? this.f2452ra : str;
        this.aGU = bomVar.mo5959KF();
        this.adZ = aab.m13016dH(str2);
        this.aGV = bomVar.mo5952KN();
        if (appDownloadRequest != null) {
            this.aGW = appDownloadRequest.fileSize;
        }
    }

    /* renamed from: bR */
    public void m4037bR(long j) {
        this.aGU = j;
    }

    /* renamed from: KF */
    public long m4056KF() {
        return this.aGU;
    }

    /* renamed from: KG */
    public long m4055KG() {
        return this.aGN;
    }

    /* renamed from: bS */
    public void m4036bS(long j) {
        this.aGN = j;
    }

    /* renamed from: KH */
    public String m4054KH() {
        return this.aGK;
    }

    /* renamed from: hT */
    public void m4027hT(String str) {
        this.aGK = str;
    }

    public String getUrl() {
        return this.f2452ra;
    }

    public void setUrl(String str) {
        this.f2452ra = str;
    }

    public String getOriginalUrl() {
        return this.aGL;
    }

    /* renamed from: hU */
    public void m4026hU(String str) {
        this.aGL = str;
    }

    /* renamed from: KI */
    public String m4053KI() {
        return this.aGQ;
    }

    /* renamed from: hV */
    public void m4025hV(String str) {
        this.aGQ = str;
    }

    /* renamed from: KJ */
    public boq m4052KJ() {
        return this.aGM;
    }

    /* renamed from: a */
    public void m4046a(boq boqVar) {
        this.aGM = boqVar;
    }

    /* renamed from: KK */
    public String m4051KK() {
        return this.aGP;
    }

    /* renamed from: hW */
    public void m4024hW(String str) {
        this.aGP = str;
    }

    /* renamed from: KL */
    public int m4050KL() {
        return this.aGO;
    }

    public void setPercentage(int i) {
        this.aGO = i;
    }

    /* renamed from: KM */
    public String m4049KM() {
        return this.adZ;
    }

    /* renamed from: KN */
    public int m4048KN() {
        return this.aGV;
    }

    /* renamed from: KO */
    public long m4047KO() {
        return this.aGW;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.aGK);
        parcel.writeString(this.anc);
        parcel.writeString(this.f2452ra);
        parcel.writeString(this.aGL);
        parcel.writeString(this.aGQ);
        parcel.writeInt(this.aGT);
        parcel.writeLong(this.aGS);
        parcel.writeLong(this.aGN);
        parcel.writeInt(this.aGR ? 1 : 0);
        parcel.writeSerializable(this.aGM);
        parcel.writeString(this.aGP);
        parcel.writeInt(this.aGO);
        parcel.writeLong(this.aGU);
        parcel.writeString(this.adZ);
        parcel.writeInt(this.aGV);
        parcel.writeLong(this.aGW);
    }
}
