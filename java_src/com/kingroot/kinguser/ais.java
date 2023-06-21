package com.kingroot.kinguser;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.net.Uri;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.kingroot.kingmaster.network.download.KuDownloadInfo;
import com.kingroot.kinguser.bed;
import com.kingroot.master.app.KUApplication;
import java.io.File;
import java.util.List;
/* loaded from: classes.dex */
public class ais {
    public static volatile ais asn;
    private KuDownloadInfo adH = null;
    private bed adL = new bed(bem.IMMEDIATE, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.ais.1
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            for (int i = 0; i < 3 && adw.m12388tb().m12377tm() != 1; i++) {
                try {
                    Thread.sleep(100L);
                } catch (InterruptedException e) {
                }
            }
            if (!TextUtils.isEmpty(adw.m12388tb().m12378tl())) {
                ais.this.adH = adw.m12388tb().m12384tf();
            }
        }
    });
    private bed aso = new bed(bem.LOW, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.ais.2
        private C3637tk asq;

        @Override // com.kingroot.kinguser.bek
        /* renamed from: a */
        public void mo1208a(@NonNull bed.InterfaceC2117a interfaceC2117a) {
            boolean z;
            super.mo1208a(interfaceC2117a);
            try {
                this.asq = C3637tk.m2167cS("ku_utils_KingMasterMgr");
                if (this.asq != null) {
                    this.asq.lock();
                }
                C3952zh m1312pq = C3952zh.m1312pq();
                int i = 0;
                boolean z2 = false;
                while (true) {
                    if (i >= 20) {
                        z = z2;
                        break;
                    }
                    Thread.sleep(30000L);
                    if (m1312pq.m1314du("com.kingroot.master")) {
                        z2 = true;
                    } else if (m1312pq.m1314du("com.kingstudio.purify")) {
                        z2 = true;
                    }
                    if (z2) {
                        int m12383tg = adw.m12388tb().m12383tg();
                        int m12382th = adw.m12388tb().m12382th();
                        ady m12308tK = ady.m12308tK();
                        Object[] objArr = new Object[5];
                        objArr[0] = 4;
                        objArr[1] = 4;
                        objArr[2] = Integer.valueOf(m12383tg);
                        if (m12383tg != 5) {
                            m12382th = 0;
                        }
                        objArr[3] = Integer.valueOf(m12382th);
                        objArr[4] = Integer.valueOf(adw.m12388tb().m12379tk() ? 1 : 2);
                        m12308tK.m12311f(objArr);
                        z = z2;
                    } else {
                        i++;
                    }
                }
                List<Object> mo7445nF = interfaceC2117a.mo7445nF();
                if (mo7445nF.size() < 2) {
                    if (this.asq != null) {
                        this.asq.release();
                    }
                } else if (!(mo7445nF.get(0) instanceof String)) {
                    if (this.asq != null) {
                        this.asq.release();
                    }
                } else if (!(mo7445nF.get(1) instanceof Integer)) {
                    if (this.asq != null) {
                        this.asq.release();
                    }
                } else {
                    String str = (String) mo7445nF.get(0);
                    int intValue = ((Integer) mo7445nF.get(1)).intValue();
                    if (z) {
                        ais.this.m11588r(str, intValue);
                    } else {
                        ais.this.m11590gd(str);
                    }
                    if (this.asq != null) {
                        this.asq.release();
                    }
                }
            } catch (Exception e) {
                if (this.asq != null) {
                    this.asq.release();
                }
            } catch (Throwable th) {
                if (this.asq != null) {
                    this.asq.release();
                }
                throw th;
            }
        }
    });

    private ais() {
    }

    /* renamed from: ye */
    public static ais m11585ye() {
        if (asn == null) {
            synchronized (ais.class) {
                if (asn == null) {
                    asn = new ais();
                }
            }
        }
        return asn;
    }

    public void init() {
        beg.m7461Zj().m7450c(this.adL);
    }

    /* renamed from: yf */
    public boolean m11584yf() {
        boolean m11579yk = m11579yk();
        if (m11579yk) {
            aks.m11143BP().m10882bE(m11579yk);
        }
        return m11579yk;
    }

    /* renamed from: yg */
    public boolean m11583yg() {
        if (aks.m11143BP().m11038Dq()) {
            return true;
        }
        return m11584yf();
    }

    /* renamed from: yh */
    public static void m11582yh() {
        try {
            m11581yi();
        } catch (Exception e) {
        }
    }

    /* renamed from: yi */
    public static void m11581yi() {
        String m11578yl = m11585ye().m11578yl();
        Intent intent = new Intent("com.kingroot.master.intent.action.EXCHANGE");
        intent.setFlags(268435456);
        intent.setPackage(m11578yl);
        intent.putExtra("km_exchange_code", 268435460);
        intent.putExtra("result_show_type", 1);
        KUApplication.m13453ge().startActivity(intent);
        aks.m11143BP().m10797cf(true);
        adm.m12480st().m12495sA();
        if (aks.m11143BP().m10931Ft()) {
            int m12383tg = adw.m12388tb().m12383tg();
            int m12382th = adw.m12388tb().m12382th();
            ady m12308tK = ady.m12308tK();
            Object[] objArr = new Object[5];
            objArr[0] = 5;
            objArr[1] = 1;
            objArr[2] = Integer.valueOf(m12383tg);
            if (m12383tg != 5) {
                m12382th = 0;
            }
            objArr[3] = Integer.valueOf(m12382th);
            objArr[4] = Integer.valueOf(adw.m12388tb().m12379tk() ? 1 : 2);
            m12308tK.m12311f(objArr);
        }
    }

    /* renamed from: yj */
    public String m11580yj() {
        String m12380tj = adw.m12388tb().m12380tj();
        if (TextUtils.isEmpty(m12380tj) || !m11589ge(m12380tj)) {
            File file = new File(adw.m12388tb().m12376tn() + File.separator + "kmPlugins.apk");
            if (file.exists() && file.isFile() && m11598B(file)) {
                return file.getAbsolutePath();
            }
            return adw.m12388tb().m12376tn() + File.separator + "kmPlugins.zip";
        }
        return m12380tj;
    }

    /* renamed from: dB */
    public boolean m11591dB(int i) {
        int m12383tg = adw.m12388tb().m12383tg();
        int m12382th = adw.m12388tb().m12382th();
        ady m12308tK = ady.m12308tK();
        Object[] objArr = new Object[5];
        objArr[0] = 3;
        objArr[1] = 0;
        objArr[2] = Integer.valueOf(m12383tg);
        if (m12383tg != 5) {
            m12382th = 0;
        }
        objArr[3] = Integer.valueOf(m12382th);
        objArr[4] = Integer.valueOf(adw.m12388tb().m12379tk() ? 1 : 2);
        m12308tK.m12311f(objArr);
        boolean m11597a = m11597a(i, m11580yj(), m12383tg != 1);
        ady.m12308tK().mo1746bi(m11597a ? 100183 : 100184);
        return m11597a;
    }

    @Nullable
    /* renamed from: c */
    private String m11592c(File file, int i) {
        String m11532gk = aiv.m11525yw().m11532gk(file.getAbsolutePath());
        if (TextUtils.isEmpty(m11532gk)) {
            return null;
        }
        akk.m11262AO().mo11156a(m11532gk, C3563rs.getFileMD5(file), i, abc.m12845qK().isRootPermition());
        return m11532gk;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: r */
    public void m11588r(String str, int i) {
        if (!TextUtils.isEmpty(str)) {
            String str2 = null;
            try {
                str2 = C3952zh.m1312pq().getPackageInfo(str, 0).applicationInfo.sourceDir;
            } catch (Throwable th) {
            }
            if (!TextUtils.isEmpty(str2)) {
                akk.m11262AO().mo11156a(str, C3563rs.getFileMD5(new File(str2)), i, abc.m12845qK().isRootPermition());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: gd */
    public void m11590gd(String str) {
        if (!TextUtils.isEmpty(str)) {
            akk.m11262AO().mo11155gJ(str);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0052 A[Catch: all -> 0x0121, Exception -> 0x0124, TryCatch #0 {, blocks: (B:3:0x0001, B:8:0x000a, B:10:0x0015, B:12:0x0040, B:15:0x004a, B:18:0x0052, B:19:0x0060, B:20:0x0063, B:21:0x0068, B:23:0x0099, B:26:0x00ab, B:43:0x011b, B:30:0x00b9, B:32:0x00c7, B:34:0x00cd, B:36:0x00d3, B:37:0x00e9, B:38:0x00f4, B:39:0x00fb), top: B:51:0x0001 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private synchronized boolean m11597a(int i, String str, boolean z) {
        boolean z2;
        File file;
        boolean z3;
        int i2;
        if (TextUtils.isEmpty(str)) {
            z2 = false;
        } else {
            try {
                File file2 = new File(str);
                if (file2.isFile()) {
                    boolean z4 = false;
                    File file3 = new File(file2.getParent() + File.separator + "kmPlugins.apk");
                    if (str.endsWith(".zip")) {
                        z4 = true;
                        if (!m11593a(file2, file3)) {
                            file = file2;
                            z3 = false;
                            if (m11598B(file)) {
                                z2 = false;
                            } else {
                                String m11592c = m11592c(file, i);
                                int i3 = aiv.m11525yw().m11547a(file, z).retCode;
                                switch (i3) {
                                    case 0:
                                        m11588r(m11592c, i);
                                        i2 = 1;
                                        break;
                                    case 1:
                                        beg.m7461Zj().m7454a(this.aso, m11592c, Integer.valueOf(i));
                                        i2 = 3;
                                        break;
                                    default:
                                        m11590gd(m11592c);
                                        i2 = 2;
                                        break;
                                }
                                int m12383tg = adw.m12388tb().m12383tg();
                                int m12382th = adw.m12388tb().m12382th();
                                ady m12308tK = ady.m12308tK();
                                Object[] objArr = new Object[5];
                                objArr[0] = 4;
                                objArr[1] = Integer.valueOf(i2);
                                objArr[2] = Integer.valueOf(m12383tg);
                                if (m12383tg != 5) {
                                    m12382th = 0;
                                }
                                objArr[3] = Integer.valueOf(m12382th);
                                objArr[4] = Integer.valueOf(adw.m12388tb().m12379tk() ? 1 : 2);
                                m12308tK.m12311f(objArr);
                                if (i3 == 0 || i3 == 1) {
                                    String m12380tj = adw.m12388tb().m12380tj();
                                    String absolutePath = file.getAbsolutePath();
                                    if (i3 == 0 && (TextUtils.isEmpty(m12380tj) || m12380tj.equalsIgnoreCase(absolutePath))) {
                                        abi.m12831em(aas.f1260XV + absolutePath);
                                    }
                                    aks.m11143BP().m10882bE(true);
                                    z2 = true;
                                } else if (z3) {
                                    m11593a(file, file2);
                                }
                            }
                        }
                    }
                    file = file3;
                    z3 = z4;
                    if (m11598B(file)) {
                    }
                }
            } catch (Exception e) {
            }
            z2 = false;
        }
        return z2;
    }

    /* renamed from: a */
    private boolean m11593a(File file, File file2) {
        if (file.exists()) {
            if (file2.exists()) {
                file2.delete();
            }
            return file.renameTo(file2);
        }
        return false;
    }

    /* renamed from: yk */
    private boolean m11579yk() {
        C3952zh m1312pq = C3952zh.m1312pq();
        return m1312pq.m1314du("com.kingroot.master") || m1312pq.m1314du("com.kingstudio.purify");
    }

    /* renamed from: yl */
    public String m11578yl() {
        C3952zh m1312pq = C3952zh.m1312pq();
        if (m1312pq.m1314du("com.kingroot.master")) {
            return "com.kingroot.master";
        }
        if (m1312pq.m1314du("com.kingstudio.purify")) {
            return "com.kingstudio.purify";
        }
        if (this.adH == null) {
            this.adH = adw.m12388tb().m12384tf();
        }
        if (this.adH == null || TextUtils.isEmpty(this.adH.adZ)) {
            return "com.kingroot.master";
        }
        return this.adH.adZ;
    }

    /* renamed from: B */
    private boolean m11598B(File file) {
        return aiv.m11525yw().m11548a(file, "191240FCB048127DB9110D1B30537FDE", "com.kingroot.master") || aiv.m11525yw().m11548a(file, "DA78C454E6850DB1C07117C9B6DA529D", "com.kingstudio.purify");
    }

    /* renamed from: ym */
    public String m11577ym() {
        if (this.adH == null || TextUtils.isEmpty(this.adH.adY)) {
            this.adH = adw.m12388tb().m12384tf();
        }
        return (this.adH == null || TextUtils.isEmpty(this.adH.adY)) ? "" : this.adH.adY;
    }

    /* renamed from: s */
    public boolean m11587s(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
            return true;
        } catch (ActivityNotFoundException e) {
            return false;
        } catch (Exception e2) {
            return false;
        }
    }

    /* renamed from: ge */
    public boolean m11589ge(String str) {
        boolean z = false;
        try {
            PackageInfo packageArchiveInfo = C3952zh.m1312pq().getPackageArchiveInfo(str, 0);
            if (packageArchiveInfo != null) {
                if (adw.m12388tb().m12381ti() == 0) {
                    z = "com.kingroot.master".equals(packageArchiveInfo.packageName);
                } else {
                    z = "com.kingstudio.purify".equals(packageArchiveInfo.packageName);
                }
            }
        } catch (Exception e) {
        }
        return z;
    }

    /* renamed from: yn */
    public int m11576yn() {
        C3952zh m1312pq = C3952zh.m1312pq();
        if (m1312pq.m1314du("com.kingroot.master")) {
            return 1;
        }
        return (m1312pq.m1314du("com.kingstudio.purify") || m11578yl().equalsIgnoreCase("com.kingstudio.purify")) ? 2 : 1;
    }

    /* renamed from: un */
    public int m11586un() {
        if (this.adH == null) {
            this.adH = adw.m12388tb().m12384tf();
            if (this.adH == null) {
                return 0;
            }
        }
        return this.adH.adX;
    }

    /* renamed from: yo */
    public long m11575yo() {
        if (this.adH == null) {
            this.adH = adw.m12388tb().m12384tf();
            if (this.adH == null) {
                return 0L;
            }
        }
        return this.adH.adW;
    }

    /* renamed from: yp */
    public static boolean m11574yp() {
        return abd.m12839qb() >= 16;
    }
}
