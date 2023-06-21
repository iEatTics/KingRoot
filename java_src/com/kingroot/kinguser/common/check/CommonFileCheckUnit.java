package com.kingroot.kinguser.common.check;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.kingroot.common.utils.system.VTCmdResult;
import com.kingroot.kinguser.C3941yx;
import com.kingroot.kinguser.C3956zk;
import com.kingroot.kinguser.C3966zn;
import com.kingroot.kinguser.aar;
import com.kingroot.kinguser.aas;
import com.kingroot.kinguser.abc;
import com.kingroot.kinguser.abd;
import com.kingroot.kinguser.abf;
import com.kingroot.kinguser.aio;
import com.kingroot.kinguser.common.check.ICheckUnitListener;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class CommonFileCheckUnit extends BaseSuCheckUnit {
    public static final Parcelable.Creator<CommonFileCheckUnit> CREATOR = new Parcelable.Creator<CommonFileCheckUnit>() { // from class: com.kingroot.kinguser.common.check.CommonFileCheckUnit.2
        @Override // android.os.Parcelable.Creator
        /* renamed from: M */
        public CommonFileCheckUnit createFromParcel(Parcel parcel) {
            return new CommonFileCheckUnit((FileDetailInfo) parcel.readParcelable(FileDetailInfo.class.getClassLoader()), parcel.readStrongBinder(), parcel.readByte() == 1);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: dK */
        public CommonFileCheckUnit[] newArray(int i) {
            return new CommonFileCheckUnit[i];
        }
    };
    private WeakReference<IBinder> akz;
    private boolean atf;
    private boolean atg;
    private int ath;
    private FileDetailInfo ati;
    private IBinder atj;

    public CommonFileCheckUnit(FileDetailInfo fileDetailInfo) {
        this.atf = true;
        this.atg = false;
        this.ath = 0;
        this.ati = fileDetailInfo;
    }

    public CommonFileCheckUnit(FileDetailInfo fileDetailInfo, IBinder iBinder, boolean z) {
        this.atf = true;
        this.atg = false;
        this.ath = 0;
        this.ati = fileDetailInfo;
        this.atg = z;
        if (z) {
            this.atj = iBinder;
        } else if (iBinder != null) {
            this.akz = new WeakReference<>(iBinder);
        }
    }

    /* renamed from: zc */
    private ICheckUnitListener m4281zc() {
        if (this.akz != null) {
            return ICheckUnitListener.Stub.asInterface(this.akz.get());
        }
        return null;
    }

    /* renamed from: zd */
    public boolean m4280zd() {
        return this.atf;
    }

    @Override // com.kingroot.kinguser.common.check.BaseSuCheckUnit
    /* renamed from: d */
    public boolean mo4231d(boolean z, boolean z2) {
        int m1279H;
        this.atf = true;
        this.ath = 0;
        if (this.ati == null || TextUtils.isEmpty(this.ati.atq)) {
            return true;
        }
        if (!this.ati.ato || abf.m12838qP()) {
            if (this.ati.atl == -1 || abd.m12839qb() >= this.ati.atl) {
                if ((this.ati.atm != -1 && abd.m12839qb() > this.ati.atm) || -3 == (m1279H = C3966zn.m1279H(this.ati.atq, this.ati.atr)) || -4 == m1279H) {
                    return true;
                }
                this.atf = m1279H == 0;
                if (this.atf) {
                    C3966zn.C3968a c3968a = new C3966zn.C3968a();
                    c3968a.f4097WN = this.ati.f2376WN;
                    c3968a.f4098WO = this.ati.f2377WO;
                    c3968a.mode = this.ati.mode;
                    c3968a.f4099WP = this.ati.f2378WP;
                    this.ath = C3966zn.m1277a(this.ati.atr, c3968a);
                } else {
                    this.ath = 15;
                }
                return this.atf && this.ath == 0;
            }
            return true;
        }
        return true;
    }

    @Override // com.kingroot.kinguser.common.check.BaseSuCheckUnit
    /* renamed from: yQ */
    public boolean mo4227yQ() {
        if (this.ati == null) {
            return true;
        }
        boolean booleanValue = ((Boolean) C3956zk.m1302a(new C3956zk.InterfaceC3957a<Boolean>() { // from class: com.kingroot.kinguser.common.check.CommonFileCheckUnit.1
            @Override // com.kingroot.kinguser.C3956zk.InterfaceC3957a
            /* renamed from: N */
            public Boolean execute(List<Object> list) {
                abc m12845qK = abc.m12845qK();
                if (m12845qK.isRootPermition(true)) {
                    ArrayList arrayList = new ArrayList();
                    if (CommonFileCheckUnit.this.ati.atn == 2 || CommonFileCheckUnit.this.ati.atn == 1) {
                        switch (CommonFileCheckUnit.this.ati.atn) {
                            case 1:
                                arrayList.add(aas.f1258XT);
                                break;
                            case 2:
                                if (aio.m11606d(m12845qK)) {
                                    arrayList.add(aas.f1256XR);
                                    break;
                                }
                                break;
                        }
                    }
                    arrayList.addAll(aar.m12944r(CommonFileCheckUnit.this.ati.atr, false));
                    if (CommonFileCheckUnit.this.ati.atr.length() > 1 && CommonFileCheckUnit.this.ati.atr.endsWith(File.separator)) {
                        CommonFileCheckUnit.this.ati.atr = CommonFileCheckUnit.this.ati.atr.substring(0, CommonFileCheckUnit.this.ati.atr.length() - 1);
                    }
                    int i = 0;
                    while (true) {
                        i = CommonFileCheckUnit.this.ati.atr.indexOf(File.separatorChar, i + 1);
                        if (i == -1) {
                            if (!CommonFileCheckUnit.this.atf) {
                                arrayList.add(aas.f1260XV + CommonFileCheckUnit.this.ati.atr);
                                arrayList.add(String.format("cat %s > %s", CommonFileCheckUnit.this.ati.atq, CommonFileCheckUnit.this.ati.atr));
                            }
                            if (C3941yx.m1356B(CommonFileCheckUnit.this.ath, 1)) {
                                arrayList.add(String.format("chown %d.%d %s", Integer.valueOf(CommonFileCheckUnit.this.ati.f2376WN), Integer.valueOf(CommonFileCheckUnit.this.ati.f2377WO), CommonFileCheckUnit.this.ati.atr));
                                CommonFileCheckUnit.this.ath |= 2;
                            }
                            if (C3941yx.m1356B(CommonFileCheckUnit.this.ath, 2)) {
                                arrayList.add(String.format("chmod 0%o %s", Integer.valueOf(CommonFileCheckUnit.this.ati.mode), CommonFileCheckUnit.this.ati.atr));
                            }
                            if (C3941yx.m1356B(CommonFileCheckUnit.this.ath, 8)) {
                                arrayList.add(String.format("chcon %1$s %2$s;/system/bin/toolbox chcon %1$s %2$s", CommonFileCheckUnit.this.ati.f2378WP, CommonFileCheckUnit.this.ati.atr));
                            }
                            if (CommonFileCheckUnit.this.ati.atp) {
                                arrayList.addAll(aar.m12944r(CommonFileCheckUnit.this.ati.atr, true));
                            }
                            List<VTCmdResult> runRootCommands = m12845qK.runRootCommands(arrayList);
                            if (runRootCommands != null && runRootCommands.size() == arrayList.size()) {
                                for (int i2 = 0; i2 < runRootCommands.size(); i2++) {
                                    if (!runRootCommands.get(i2).success()) {
                                        String str = runRootCommands.get(i2).mCmdFlag;
                                        if (!str.startsWith(aas.f1260XV) && !str.startsWith(aas.f1263XY) && !str.startsWith(aar.m12946pQ()) && !str.startsWith(aas.f1255XQ)) {
                                            return false;
                                        }
                                    }
                                }
                            }
                            return true;
                        }
                        File file = new File(CommonFileCheckUnit.this.ati.atr.substring(0, i));
                        if (!file.getAbsolutePath().equals("/system") && !file.getAbsolutePath().equals("/system/bin") && !file.getAbsolutePath().equals("/system/xbin") && !file.getAbsolutePath().equals("/data")) {
                            if (!file.exists()) {
                                arrayList.add(aas.f1263XY + file.getAbsolutePath());
                                arrayList.add(aas.f1261XW + file.getAbsolutePath());
                                arrayList.add(aas.f1262XX + file.getAbsolutePath());
                                arrayList.add(String.format("chcon u:object_r:system_file:s0 %1$s;/system/bin/toolbox chcon u:object_r:system_file:s0 %1$s", file.getAbsolutePath()));
                            } else if (!file.isDirectory()) {
                                arrayList.addAll(aar.m12944r(file.getAbsolutePath(), false));
                                arrayList.add(aas.f1260XV + file.getAbsolutePath());
                                arrayList.add(aas.f1263XY + file.getAbsolutePath());
                                arrayList.add(aas.f1261XW + file.getAbsolutePath());
                                arrayList.add(aas.f1262XX + file.getAbsolutePath());
                                arrayList.add(String.format("chcon u:object_r:system_file:s0 %1$s;/system/bin/toolbox chcon u:object_r:system_file:s0 %1$s", file.getAbsolutePath()));
                            } else {
                                arrayList.add(aas.f1261XW + file.getAbsolutePath());
                                arrayList.add(aas.f1262XX + file.getAbsolutePath());
                                arrayList.add(String.format("chcon u:object_r:system_file:s0 %1$s;/system/bin/toolbox chcon u:object_r:system_file:s0 %1$s", file.getAbsolutePath()));
                            }
                        }
                    }
                } else {
                    return false;
                }
            }
        }, new Object[0])).booleanValue();
        try {
            ICheckUnitListener m4281zc = m4281zc();
            Bundle bundle = new Bundle();
            bundle.putBoolean("bundle_key_is_content_right", m4280zd());
            if (m4281zc != null) {
                m4281zc.onCheckEvent(bundle, booleanValue ? 1 : 0);
            }
            if (this.atj != null) {
                ICheckUnitListener.Stub.asInterface(this.atj).onCheckEvent(bundle, booleanValue ? 1 : 0);
                return booleanValue;
            }
            return booleanValue;
        } catch (Exception e) {
            return booleanValue;
        }
    }

    /* loaded from: classes.dex */
    public static class FileDetailInfo implements Parcelable {
        public static final Parcelable.Creator<FileDetailInfo> CREATOR = new Parcelable.Creator<FileDetailInfo>() { // from class: com.kingroot.kinguser.common.check.CommonFileCheckUnit.FileDetailInfo.1
            @Override // android.os.Parcelable.Creator
            /* renamed from: N */
            public FileDetailInfo createFromParcel(Parcel parcel) {
                return new FileDetailInfo(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readByte() == 1, parcel.readByte() == 1, parcel.readString(), parcel.readString(), parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: dL */
            public FileDetailInfo[] newArray(int i) {
                return new FileDetailInfo[i];
            }
        };

        /* renamed from: WN */
        public int f2376WN;

        /* renamed from: WO */
        public int f2377WO;

        /* renamed from: WP */
        public String f2378WP;
        public int atl;
        public int atm;
        public int atn;
        public boolean ato;
        public boolean atp;
        public String atq;
        public String atr;
        public int mode;

        public FileDetailInfo(int i, int i2, int i3, int i4, int i5, int i6, boolean z, boolean z2, String str, String str2, String str3) {
            this.atn = 0;
            this.f2376WN = i;
            this.f2377WO = i2;
            this.mode = i3;
            this.atl = i4;
            this.atm = i5;
            this.atn = i6;
            this.atp = z;
            this.ato = z2;
            this.f2378WP = str;
            this.atq = str2;
            this.atr = str3;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f2376WN);
            parcel.writeInt(this.f2377WO);
            parcel.writeInt(this.mode);
            parcel.writeInt(this.atl);
            parcel.writeInt(this.atm);
            parcel.writeInt(this.atn);
            parcel.writeByte((byte) (this.atp ? 1 : 0));
            parcel.writeByte((byte) (this.ato ? 1 : 0));
            parcel.writeString(this.f2378WP);
            parcel.writeString(this.atq);
            parcel.writeString(this.atr);
        }
    }

    @Override // com.kingroot.kinguser.ajf
    /* renamed from: ze */
    public boolean mo4226ze() {
        return (this.ati == null || this.ati.atn == 0) ? false : true;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.ati, i);
        parcel.writeStrongBinder(this.atj);
        parcel.writeByte((byte) (this.atg ? 1 : 0));
    }
}
