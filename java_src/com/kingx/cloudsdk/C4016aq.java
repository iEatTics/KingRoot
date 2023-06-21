package com.kingx.cloudsdk;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: com.kingx.cloudsdk.aq */
/* loaded from: classes.dex */
public final class C4016aq implements Parcelable {

    /* renamed from: aH */
    public int f4138aH;

    /* renamed from: aM */
    public String f4139aM;
    public int bAI;
    public String bAJ;
    public long bAK;
    public long bAL;
    public int bAM;

    /* renamed from: bZ */
    public int f4140bZ;

    /* renamed from: bj */
    public boolean f4141bj;
    public int size;
    public int versionCode;

    /* renamed from: xA */
    public String f4142xA;

    /* renamed from: xD */
    public int f4143xD;

    /* renamed from: xu */
    public String f4144xu;

    /* renamed from: xv */
    public String f4145xv;

    /* renamed from: xy */
    public String f4146xy;

    /* renamed from: com.kingx.cloudsdk.aq$a */
    /* loaded from: classes.dex */
    public static abstract class AbstractC4018a {

        /* renamed from: xH */
        public static String f4154xH = "pluginId";

        /* renamed from: vp */
        public static String f4153vp = "versionCode";
        public static String bAN = "packageMd5";
        public static String bAO = "size";
        public static String bAP = "url";
        public static String bAQ = "downloadCount";
        public static String bAR = "downloadPath";

        /* renamed from: sV */
        public static String f4148sV = "notificationContent";
        public static String bAS = "windowContent";

        /* renamed from: sX */
        public static String f4149sX = "upgradeType";

        /* renamed from: sY */
        public static String f4150sY = "pluginOrderFlag";

        /* renamed from: sZ */
        public static String f4151sZ = "orderCreateTime";

        /* renamed from: ta */
        public static String f4152ta = "orderFilterId";
        public static String bAT = "silentInstallCount";
        public static String bAU = "packageName";

        /* renamed from: ff */
        public static String f4147ff = "isVisible";
    }

    /* synthetic */ C4016aq(Parcel parcel, byte b) {
        this(parcel);
    }

    public C4016aq() {
        this.f4138aH = -1;
        this.versionCode = -1;
        this.f4144xu = "";
        this.f4139aM = "";
        this.size = 0;
        this.f4145xv = "";
        this.bAI = 0;
        this.f4146xy = "";
        this.f4142xA = "";
        this.bAJ = "";
        this.f4140bZ = -1;
        this.f4143xD = 0;
        this.bAK = 0L;
        this.bAL = 0L;
        this.bAM = 0;
        this.f4141bj = true;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f4138aH);
        parcel.writeInt(this.versionCode);
        parcel.writeString(this.f4144xu);
        parcel.writeInt(this.size);
        parcel.writeString(this.f4145xv);
        parcel.writeInt(this.bAI);
        parcel.writeString(this.f4146xy);
        parcel.writeString(this.f4142xA);
        parcel.writeString(this.bAJ);
        parcel.writeInt(this.f4140bZ);
        parcel.writeInt(this.f4143xD);
        parcel.writeLong(this.bAK);
        parcel.writeLong(this.bAL);
        parcel.writeInt(this.bAM);
    }

    private C4016aq(Parcel parcel) {
        this.f4138aH = -1;
        this.versionCode = -1;
        this.f4144xu = "";
        this.f4139aM = "";
        this.size = 0;
        this.f4145xv = "";
        this.bAI = 0;
        this.f4146xy = "";
        this.f4142xA = "";
        this.bAJ = "";
        this.f4140bZ = -1;
        this.f4143xD = 0;
        this.bAK = 0L;
        this.bAL = 0L;
        this.bAM = 0;
        this.f4141bj = true;
        this.f4138aH = parcel.readInt();
        this.versionCode = parcel.readInt();
        this.f4144xu = parcel.readString();
        this.size = parcel.readInt();
        this.f4145xv = parcel.readString();
        this.bAI = parcel.readInt();
        this.f4146xy = parcel.readString();
        this.f4142xA = parcel.readString();
        this.bAJ = parcel.readString();
        this.f4140bZ = parcel.readInt();
        this.f4143xD = parcel.readInt();
        this.bAK = parcel.readLong();
        this.bAL = parcel.readLong();
        this.bAM = parcel.readInt();
    }

    static {
        new Parcelable.Creator<C4016aq>() { // from class: com.kingx.cloudsdk.aq.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ C4016aq createFromParcel(Parcel parcel) {
                return new C4016aq(parcel, (byte) 0);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ C4016aq[] newArray(int i) {
                return new C4016aq[i];
            }
        };
    }

    public static void afz() {
    }
}
