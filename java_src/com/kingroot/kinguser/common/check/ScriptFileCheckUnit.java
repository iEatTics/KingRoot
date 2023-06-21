package com.kingroot.kinguser.common.check;

import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import com.kingroot.kinguser.C3563rs;
import com.kingroot.kinguser.C3945za;
import com.kingroot.kinguser.C3956zk;
import com.kingroot.kinguser.C3958zl;
import com.kingroot.kinguser.C3966zn;
import com.kingroot.kinguser.aar;
import com.kingroot.kinguser.aas;
import com.kingroot.kinguser.abc;
import com.kingroot.kinguser.aio;
import com.kingroot.kinguser.ajg;
import com.kingroot.kinguser.aka;
import com.kingroot.kinguser.bha;
import com.swift.sandhook.utils.FileUtils;
import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class ScriptFileCheckUnit extends BaseSuCheckUnit {
    private boolean atM = false;
    private boolean atN = false;
    private boolean atO = false;
    private boolean atP = false;
    private boolean atQ = false;
    private boolean atR = false;
    private boolean atS = false;
    private static byte[] atT = {Byte.MAX_VALUE, 69, 76, 70, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    public static final Parcelable.Creator<ScriptFileCheckUnit> CREATOR = new Parcelable.Creator<ScriptFileCheckUnit>() { // from class: com.kingroot.kinguser.common.check.ScriptFileCheckUnit.3
        @Override // android.os.Parcelable.Creator
        /* renamed from: dS */
        public ScriptFileCheckUnit[] newArray(int i) {
            return new ScriptFileCheckUnit[i];
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: T */
        public ScriptFileCheckUnit createFromParcel(Parcel parcel) {
            return new ScriptFileCheckUnit();
        }
    };

    @Override // com.kingroot.kinguser.common.check.BaseSuCheckUnit
    /* renamed from: d */
    public boolean mo4231d(boolean z, boolean z2) {
        this.atM = false;
        this.atN = false;
        this.atO = false;
        this.atP = false;
        String str = bha.bpw + " -d";
        String str2 = bha.bpw + " -d &";
        this.atM = !m4257ac(bha.bpy, str2);
        if (!this.atM) {
            C3966zn.C3968a c3968a = new C3966zn.C3968a();
            c3968a.f4097WN = 0;
            c3968a.f4098WO = 0;
            c3968a.mode = FileUtils.FileMode.MODE_755;
            c3968a.f4099WP = "u:object_r:system_file:s0";
            int m1277a = C3966zn.m1277a(bha.bpy, c3968a);
            if (m1277a != -1) {
                this.atO = m1277a != 0;
            }
        }
        String m11472zi = ajg.m11472zi();
        this.atN = m4250p(m11472zi, str, str2);
        if (!this.atN) {
            C3966zn.C3968a c3968a2 = new C3966zn.C3968a();
            c3968a2.f4097WN = 0;
            c3968a2.f4098WO = 0;
            c3968a2.mode = FileUtils.FileMode.MODE_755;
            c3968a2.f4099WP = "u:object_r:system_file:s0";
            ArrayList arrayList = new ArrayList();
            arrayList.add(m11472zi);
            arrayList.add("/system/etc/install-recovery-2.sh");
            this.atP = C3966zn.m1275a(arrayList, c3968a2);
        }
        return (this.atM || this.atN || this.atO || this.atP) ? false : true;
    }

    /* renamed from: p */
    private boolean m4250p(String str, String str2, String str3) {
        this.atQ = false;
        this.atR = false;
        this.atS = false;
        this.atQ = m4258a(str, str2, str3, true);
        this.atR = m4258a(str, "/system/etc/install-recovery-2.sh", "/system/etc/install-recovery-2.sh", false);
        this.atS = m4258a("/system/etc/install-recovery-2.sh", str2, str3, true);
        return this.atQ ? this.atR && this.atS : (this.atR && this.atS && !Build.MODEL.equals("SM-N9002")) ? false : true;
    }

    /* renamed from: a */
    private static boolean m4258a(String str, String str2, String str3, boolean z) {
        String str4;
        File file = new File(str);
        if (file.exists()) {
            try {
                str4 = new String(C3563rs.m2355cy(file.getAbsolutePath()));
            } catch (Exception e) {
                e.printStackTrace();
                str4 = null;
            }
            if (str4 != null && str4.length() > 0) {
                String[] split = str4.split("\n");
                if (split.length > 1) {
                    if (z) {
                        if (split[1].trim().equals(str3)) {
                            return true;
                        }
                    } else {
                        int length = split.length;
                        int i = 0;
                        int i2 = 0;
                        boolean z2 = false;
                        while (i < length) {
                            String str5 = split[i];
                            if (str5.contains(str2)) {
                                if (str5.trim().equals(str3)) {
                                    z2 = true;
                                }
                                i2++;
                            }
                            i++;
                            z2 = z2;
                            i2 = i2;
                        }
                        if (i2 == 1 || !z2) {
                            return z2;
                        }
                        return false;
                    }
                }
            }
        }
        return false;
    }

    /* renamed from: ac */
    private boolean m4257ac(String str, String str2) {
        String str3;
        if (new File(str).exists() || new File(bha.bpz).exists()) {
            if (!new File(bha.bpA).exists() && m4251go(str)) {
                File file = new File(str);
                if (file.exists()) {
                    try {
                        str3 = new String(C3563rs.m2355cy(file.getAbsolutePath()));
                    } catch (Exception e) {
                        str3 = null;
                    }
                    if (str3 != null && str3.length() > 0) {
                        String[] split = str3.split("\n");
                        if (split.length > 1 && split[1].trim().equals(str2)) {
                            return true;
                        }
                    }
                }
                return false;
            }
            return false;
        }
        return true;
    }

    /* renamed from: go */
    public static boolean m4251go(String str) {
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2;
        boolean z = true;
        File file = new File(str);
        if (file.exists()) {
            byte[] bArr = new byte[1024];
            try {
                fileInputStream = new FileInputStream(file);
                try {
                    try {
                        if (fileInputStream.read(bArr, 0, 1023) == -1) {
                            z = false;
                        } else if (!new String(bArr).contains("#!/system/bin/sh")) {
                            int i = 0;
                            try {
                                while (i < atT.length) {
                                    if (atT[i] == bArr[i] || i >= 4) {
                                        i++;
                                    }
                                }
                                if (i == atT.length) {
                                    z = false;
                                }
                            } catch (Exception e) {
                                fileInputStream2 = fileInputStream;
                                C3945za.m1340c(fileInputStream2);
                                return z;
                            }
                            z = false;
                        }
                        C3945za.m1340c(fileInputStream);
                    } catch (Exception e2) {
                        z = false;
                        fileInputStream2 = fileInputStream;
                    }
                } catch (Throwable th) {
                    th = th;
                    C3945za.m1340c(fileInputStream);
                    throw th;
                }
            } catch (Exception e3) {
                z = false;
                fileInputStream2 = null;
            } catch (Throwable th2) {
                th = th2;
                fileInputStream = null;
            }
            return z;
        }
        return false;
    }

    @Override // com.kingroot.kinguser.common.check.BaseSuCheckUnit
    /* renamed from: yQ */
    public boolean mo4227yQ() {
        boolean z = true;
        String str = bha.bpw + " -d";
        String str2 = bha.bpw + " -d &";
        if (aio.m11606d(abc.m12845qK())) {
            if (this.atM) {
                z = m4256ad(str, str2);
            } else if (this.atO) {
                C3966zn.C3968a c3968a = new C3966zn.C3968a();
                c3968a.f4097WN = 0;
                c3968a.f4098WO = 0;
                c3968a.mode = FileUtils.FileMode.MODE_755;
                c3968a.f4099WP = "u:object_r:system_file:s0";
                C3966zn.m1274b(bha.bpy, c3968a);
            }
            String m11472zi = ajg.m11472zi();
            if (this.atN) {
                return m4248r(m11472zi, str, str2);
            }
            if (this.atP) {
                C3966zn.C3968a c3968a2 = new C3966zn.C3968a();
                c3968a2.f4097WN = 0;
                c3968a2.f4098WO = 0;
                c3968a2.mode = FileUtils.FileMode.MODE_755;
                c3968a2.f4099WP = "u:object_r:system_file:s0";
                ArrayList arrayList = new ArrayList();
                arrayList.add(m11472zi);
                arrayList.add("/system/etc/install-recovery-2.sh");
                C3966zn.m1273b(arrayList, c3968a2);
                return z;
            }
            return z;
        }
        return false;
    }

    /* renamed from: ad */
    private boolean m4256ad(String str, String str2) {
        File file = new File(bha.bpA);
        if (file.exists()) {
            m4252f(file.getAbsolutePath(), bha.bpz, true);
        } else if (!m4251go(bha.bpy)) {
            m4252f(bha.bpy, bha.bpz, false);
        }
        m4249q(bha.bpy, str, str2);
        return m4258a(bha.bpy, str, str2, true);
    }

    /* renamed from: q */
    private static int m4249q(String str, String str2, String str3) {
        StringBuilder sb;
        StringBuilder sb2 = new StringBuilder();
        if (!m4251go(str)) {
            sb = null;
        } else {
            try {
                sb = new StringBuilder(new String(C3563rs.m2355cy(new File(str).getAbsolutePath())));
            } catch (Exception e) {
                sb = null;
            }
        }
        sb2.append("#!/system/bin/sh");
        sb2.append("\n").append(str3).append("\n");
        if (sb != null && sb.length() > 0) {
            String[] split = sb.toString().split("\n");
            if (split.length > 0) {
                for (String str4 : split) {
                    String trim = str4.trim();
                    if (!trim.contains("#!/system/bin/sh") && !trim.contains(str2) && !trim.contains(bha.bpz)) {
                        sb2.append("\n").append(trim);
                    }
                }
            }
        }
        if (new File(bha.bpz).exists()) {
            sb2.append("\n").append(bha.bpz).append("\n");
        }
        try {
            String str5 = C3958zl.getFilesDir() + File.separator + "ddexe.tmp";
            C3563rs.m2362c(sb2.toString().getBytes(), str5);
            m4255ae(str5, str);
            return 1;
        } catch (Exception e2) {
            return -1;
        }
    }

    /* renamed from: r */
    private boolean m4248r(String str, String str2, String str3) {
        if (this.atQ) {
            if (this.atR && this.atS) {
                m4254af("/system/etc/install-recovery-2.sh", bha.bpw);
                return true;
            }
            return true;
        } else if (this.atR && this.atS && !Build.MODEL.equals("SM-N9002")) {
            return true;
        } else {
            m4247s(str, str2, str3);
            this.atQ = m4258a(str, str2, str3, true);
            if (this.atQ) {
                if (this.atR) {
                    m4254af("/system/etc/install-recovery-2.sh", bha.bpw);
                    return true;
                }
                return true;
            }
            if (this.atR && !this.atS) {
                m4247s("/system/etc/install-recovery-2.sh", str2, str3);
                this.atS = m4258a("/system/etc/install-recovery-2.sh", str2, str3, true);
            }
            return this.atR && this.atS;
        }
    }

    /* renamed from: ae */
    public static synchronized void m4255ae(final String str, final String str2) {
        synchronized (ScriptFileCheckUnit.class) {
            C3956zk.m1302a(new C3956zk.InterfaceC3957a<Object>() { // from class: com.kingroot.kinguser.common.check.ScriptFileCheckUnit.1
                @Override // com.kingroot.kinguser.C3956zk.InterfaceC3957a
                public Object execute(List<Object> list) {
                    abc m12845qK = abc.m12845qK();
                    if (m12845qK.isRootPermition(true)) {
                        ArrayList arrayList = new ArrayList(8);
                        arrayList.add(aas.f1256XR);
                        arrayList.addAll(aar.m12944r(str2, false));
                        if (new File(str2).exists()) {
                            arrayList.add(String.format("cat %s > %s", str2, str2 + "-ku.bak"));
                            arrayList.add(aas.f1260XV + str2);
                        }
                        arrayList.add(String.format("cat %s > %s", str, str2));
                        arrayList.add(aas.f1261XW + str2);
                        arrayList.add(aas.f1262XX + str2);
                        arrayList.add(String.format("chcon u:object_r:system_file:s0 %1$s;/system/bin/toolbox chcon u:object_r:system_file:s0 %1$s", str2));
                        arrayList.add(aas.f1260XV + str);
                        arrayList.addAll(aar.m12944r(str2, true));
                        arrayList.add(aas.f1257XS);
                        m12845qK.runRootCommands(arrayList);
                        return null;
                    }
                    return null;
                }
            }, new Object[0]);
        }
    }

    /* renamed from: s */
    private static int m4247s(String str, String str2, String str3) {
        StringBuilder sb;
        StringBuilder sb2 = new StringBuilder();
        File file = new File(str);
        if (!file.exists()) {
            sb = null;
        } else {
            try {
                sb = new StringBuilder(new String(C3563rs.m2355cy(file.getAbsolutePath())));
            } catch (Exception e) {
                sb = null;
            }
        }
        sb2.append("#!/system/bin/sh");
        sb2.append("\n").append(str3).append("\n");
        if (sb != null && sb.length() > 0) {
            String[] split = sb.toString().split("\n");
            if (split.length > 0) {
                for (String str4 : split) {
                    if (!str4.contains("#!/system/bin/sh") && !str4.contains(str2)) {
                        sb2.append("\n").append(str4);
                    }
                }
                sb2.append("\n");
            }
        } else if (!str.trim().endsWith("install-recovery-2.sh")) {
            sb2.append("\n/system/etc/install-recovery-2.sh\n");
        }
        try {
            String str5 = C3958zl.getFilesDir() + File.separator + "sh.tmp";
            C3563rs.m2362c(sb2.toString().getBytes(), str5);
            m4255ae(str5, str);
            return 1;
        } catch (Exception e2) {
            return -1;
        }
    }

    /* renamed from: af */
    private static int m4254af(String str, String str2) {
        int i;
        boolean z = false;
        StringBuilder sb = null;
        StringBuilder sb2 = new StringBuilder();
        File file = new File(str);
        if (file.exists()) {
            try {
                sb = new StringBuilder(new String(C3563rs.m2355cy(file.getAbsolutePath())));
                i = 0;
            } catch (Exception e) {
                i = -1;
            }
        } else {
            i = 0;
        }
        if (sb != null && sb.length() > 0) {
            String[] split = sb.toString().split("\n");
            if (split.length > 0) {
                for (String str3 : split) {
                    if (str3.contains(str2)) {
                        z = true;
                    } else {
                        sb2.append("\n").append(str3);
                    }
                }
            }
            if (z) {
                try {
                    String str4 = C3958zl.getFilesDir() + File.separator + "sh.tmp";
                    C3563rs.m2362c(sb2.toString().getBytes(), str4);
                    m4255ae(str4, str);
                    return 1;
                } catch (Exception e2) {
                    return -1;
                }
            }
        }
        return i;
    }

    /* renamed from: f */
    private static void m4252f(final String str, final String str2, final boolean z) {
        C3956zk.m1302a(new C3956zk.InterfaceC3957a<Object>() { // from class: com.kingroot.kinguser.common.check.ScriptFileCheckUnit.2
            @Override // com.kingroot.kinguser.C3956zk.InterfaceC3957a
            public Object execute(List<Object> list) {
                abc m12845qK = abc.m12845qK();
                if (m12845qK.isRootPermition(true) && new File(str).exists()) {
                    ArrayList arrayList = new ArrayList(8);
                    arrayList.add(aas.f1256XR);
                    arrayList.add(String.format("cat %s > %s", str, str2));
                    arrayList.add(aas.f1261XW + str2);
                    arrayList.add(aas.f1262XX + str2);
                    if (z) {
                        arrayList.addAll(aar.m12944r(str, false));
                        arrayList.add(aas.f1260XV + str);
                    }
                    arrayList.add(aas.f1257XS);
                    m12845qK.runRootCommands(arrayList);
                    return null;
                }
                return null;
            }
        }, new Object[0]);
    }

    @Override // com.kingroot.kinguser.ajf
    /* renamed from: ze */
    public boolean mo4226ze() {
        return true;
    }

    /* renamed from: e */
    public void m4253e(aka akaVar) {
        boolean z = true;
        boolean z2 = false;
        String m11335zQ = akaVar.m11335zQ();
        String str = bha.bpw + " -d";
        String str2 = bha.bpw + " -d &";
        C3966zn.C3968a m1278I = C3966zn.m1278I(null, m11335zQ);
        if (m11335zQ.contentEquals(bha.bpy)) {
            z = m4251go(m11335zQ);
            if (z) {
                z2 = m4257ac(m11335zQ, str2);
            }
        } else if (m11335zQ.contentEquals(bha.bpz) || m11335zQ.contentEquals(bha.bpA)) {
            z = false;
        } else {
            z2 = m4258a(m11335zQ, str, str2, true);
        }
        if (m1278I != null) {
            akaVar.m11344a(m1278I.f4097WN, m1278I.f4098WO, m1278I.mode, m1278I.size, m1278I.f4099WP, z2, z);
        } else {
            akaVar.m11344a(-1, -1, -1, 0L, "", z2, z);
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
