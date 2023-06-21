package com.kingroot.kinguser.common.check;

import android.os.Parcel;
import android.text.TextUtils;
import com.kingroot.common.utils.system.VTCmdResult;
import com.kingroot.common.utils.system.VTCommand;
import com.kingroot.kinguser.aas;
import com.kingroot.kinguser.aaw;
import com.kingroot.kinguser.abc;
import com.kingroot.kinguser.ajj;
import com.kingroot.kinguser.bha;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
/* loaded from: classes.dex */
public class VirtualXbinCheckUnit extends BaseSuCheckUnit {
    /* renamed from: g */
    private static boolean m4230g(abc abcVar) {
        VTCmdResult m12846el = abcVar.m12846el("cat /proc/mounts");
        if (m12846el == null || TextUtils.isEmpty(m12846el.mStdOut)) {
            return true;
        }
        String[] split = m12846el.mStdOut.split("\n");
        for (String str : split) {
            if (str.startsWith("tmpfs /system/xbin tmpfs rw,")) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: h */
    private static boolean m4229h(abc abcVar) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new VTCommand("useless", aas.f1263XY + "/dev/kingroot"));
        arrayList.add(new VTCommand("important", aas.f1262XX + "/dev/kingroot"));
        arrayList.add(new VTCommand("important", "/system/bin/cp -f -a /system/xbin /dev/kingroot/xbin_bind"));
        arrayList.add(new VTCommand("important", aas.f1262XX + "/dev/kingroot/xbin_bind"));
        arrayList.add(new VTCommand("important", String.format(Locale.ENGLISH, "cat %s > %s", ajj.m11467zl(), "/dev/kingroot/xbin_bind/ku.sud")));
        arrayList.add(new VTCommand("important", aas.f1262XX + "/dev/kingroot/xbin_bind/ku.sud"));
        arrayList.add(new VTCommand("useless", aas.f1260XV + "/dev/kingroot/xbin_bind/su"));
        arrayList.add(new VTCommand("important", String.format(Locale.US, "ln -s %s %s", "/dev/kingroot/xbin_bind/ku.sud", "/dev/kingroot/xbin_bind/su")));
        List<VTCmdResult> mo4995q = abcVar.mo4995q(arrayList);
        if (mo4995q == null || mo4995q.size() != arrayList.size()) {
            return false;
        }
        for (VTCmdResult vTCmdResult : mo4995q) {
            if ("important".equals(vTCmdResult.mCmdFlag) && !vTCmdResult.success()) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: i */
    private static boolean m4228i(abc abcVar) {
        abcVar.m12846el("/system/bin/mount -o bind /dev/kingroot/xbin_bind /system/xbin");
        return m4230g(abcVar);
    }

    @Override // com.kingroot.kinguser.common.check.BaseSuCheckUnit
    /* renamed from: d */
    public boolean mo4231d(boolean z, boolean z2) {
        return !aaw.m12888qv() || new File(bha.bpw).exists() || m4230g(abc.m12845qK());
    }

    @Override // com.kingroot.kinguser.common.check.BaseSuCheckUnit
    /* renamed from: yQ */
    public boolean mo4227yQ() {
        abc m12845qK = abc.m12845qK();
        if (m4229h(m12845qK)) {
            return m4228i(m12845qK);
        }
        return false;
    }

    @Override // com.kingroot.kinguser.ajf
    /* renamed from: ze */
    public boolean mo4226ze() {
        return false;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
    }
}
