package com.kingroot.kinguser.common.check;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.kingroot.common.utils.system.VTCmdResult;
import com.kingroot.kinguser.AbstractC3976zt;
import com.kingroot.kinguser.C3945za;
import com.kingroot.kinguser.C3958zl;
import com.kingroot.kinguser.C3959zm;
import com.kingroot.kinguser.aaa;
import com.kingroot.kinguser.aae;
import com.kingroot.kinguser.abc;
import com.kingroot.kinguser.abd;
import com.kingroot.kinguser.abi;
import com.kingroot.kinguser.adk;
import com.kingroot.kinguser.aks;
import com.kingroot.kinguses.R;
import com.kingroot.master.app.KUApplication;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
/* loaded from: classes.dex */
public class IscanPlaceCheckUnit extends BaseSuCheckUnit {
    private int atH = 0;
    private static final String atF = AbstractC3976zt.get("cdpm2");
    private static final String atG = AbstractC3976zt.get("cdpm3");
    public static final Parcelable.Creator<IscanPlaceCheckUnit> CREATOR = new Parcelable.Creator<IscanPlaceCheckUnit>() { // from class: com.kingroot.kinguser.common.check.IscanPlaceCheckUnit.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: dQ */
        public IscanPlaceCheckUnit[] newArray(int i) {
            return new IscanPlaceCheckUnit[i];
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: S */
        public IscanPlaceCheckUnit createFromParcel(Parcel parcel) {
            return new IscanPlaceCheckUnit();
        }
    };

    @Override // com.kingroot.kinguser.ajf
    /* renamed from: ze */
    public boolean mo4226ze() {
        return true;
    }

    @Override // com.kingroot.kinguser.common.check.BaseSuCheckUnit
    /* renamed from: d */
    public boolean mo4231d(boolean z, boolean z2) {
        if (adk.m12539b(aks.m11143BP().m11130CC(), System.currentTimeMillis(), 86400000L)) {
            this.atH = 1;
            return false;
        }
        return true;
    }

    @Override // com.kingroot.kinguser.common.check.BaseSuCheckUnit
    /* renamed from: yQ */
    public boolean mo4227yQ() {
        boolean z = false;
        String m4262zj = m4262zj();
        if (m4262zj != null) {
            switch (this.atH) {
                case 1:
                    if (!TextUtils.isEmpty(atF)) {
                        VTCmdResult m12846el = abc.m12845qK().m12846el(m4262zj + " " + atF);
                        if (m12846el != null && (z = m12846el.success())) {
                            aks.m11143BP().m10901aU(System.currentTimeMillis());
                        }
                        if (abd.m12839qb() >= 21 && !TextUtils.isEmpty(atG)) {
                            abc.m12845qK().m12846el(m4262zj + " " + atG + " " + (abd.m12840qO() ? "/system/bin/debuggerd" : "/system/bin/debuggerd64"));
                            break;
                        }
                    }
                    break;
                case 2:
                    break;
                default:
                    z = true;
                    break;
            }
            if (m4262zj != null) {
                new File(m4262zj).delete();
            }
        }
        return z;
    }

    /* renamed from: zj */
    private static String m4262zj() {
        String str = C3958zl.m1295pw().getAbsolutePath() + File.separator + "iscan";
        if (!new File(str).exists()) {
            C3959zm.m1293a(new C3959zm.C3962a(str, (int) R.raw.eiscan, 1));
        }
        return m4263gn(str);
    }

    /* renamed from: gn */
    private static String m4263gn(String str) {
        FileOutputStream fileOutputStream;
        FileInputStream fileInputStream;
        Throwable th;
        FileOutputStream fileOutputStream2;
        FileInputStream fileInputStream2;
        File file = new File(str);
        if (!file.exists()) {
            return null;
        }
        String str2 = KUApplication.m13453ge().getFilesDir().getAbsolutePath() + File.separator + "tmp_" + file.getName();
        File file2 = new File(str2);
        if (file2.exists() && !file2.delete()) {
            abc m12845qK = abc.m12845qK();
            if (m12845qK.isRootPermition(true)) {
                m12845qK.m12846el("rm -r " + file2.getAbsolutePath());
            }
        }
        try {
            fileInputStream = new FileInputStream(file);
            try {
                fileOutputStream = new FileOutputStream(file2);
                try {
                    byte[] bArr = new byte[4];
                    if (fileInputStream.read(bArr) != 4) {
                        C3945za.m1340c(fileInputStream);
                        C3945za.m1340c(fileOutputStream);
                        return null;
                    }
                    int m13023A = aaa.m13023A(bArr);
                    byte[] bArr2 = new byte[m13023A];
                    if (fileInputStream.read(bArr2) != m13023A) {
                        C3945za.m1340c(fileInputStream);
                        C3945za.m1340c(fileOutputStream);
                        return null;
                    }
                    byte[] mo12988D = aae.m13007a(aae.EnumC0609a.XXTEA2).mo12988D(bArr2);
                    if (mo12988D == null) {
                        C3945za.m1340c(fileInputStream);
                        C3945za.m1340c(fileOutputStream);
                        return null;
                    }
                    fileOutputStream.write(mo12988D);
                    byte[] bArr3 = new byte[1024];
                    while (true) {
                        int read = fileInputStream.read(bArr3);
                        if (read <= 0) {
                            abi.m12831em("chmod 500 " + file2.getAbsolutePath());
                            C3945za.m1340c(fileInputStream);
                            C3945za.m1340c(fileOutputStream);
                            return str2;
                        }
                        fileOutputStream.write(bArr3, 0, read);
                    }
                } catch (Exception e) {
                    fileOutputStream2 = fileOutputStream;
                    fileInputStream2 = fileInputStream;
                    C3945za.m1340c(fileInputStream2);
                    C3945za.m1340c(fileOutputStream2);
                    return null;
                } catch (Throwable th2) {
                    th = th2;
                    C3945za.m1340c(fileInputStream);
                    C3945za.m1340c(fileOutputStream);
                    throw th;
                }
            } catch (Exception e2) {
                fileOutputStream2 = null;
                fileInputStream2 = fileInputStream;
            } catch (Throwable th3) {
                fileOutputStream = null;
                th = th3;
            }
        } catch (Exception e3) {
            fileOutputStream2 = null;
            fileInputStream2 = null;
        } catch (Throwable th4) {
            fileOutputStream = null;
            fileInputStream = null;
            th = th4;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
    }
}
