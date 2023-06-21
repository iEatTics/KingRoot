package com.kingroot.kinguser;

import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.kingroot.kinguser.bed;
import com.kingroot.kinguser.common.check.DataFileCheckUnit;
import com.kingroot.kinguser.common.check.ScriptFileCheckUnit;
import com.kingroot.kinguser.common.check.SuFilesCheckUnit;
import com.kingroot.kinguser.model.SuRequestCmdModel;
import com.kingroot.master.app.KUApplication;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
class ajt {
    private static volatile ajt aun;
    private boolean auo = false;
    private final List<C1024a> aup = new ArrayList();

    /* renamed from: zz */
    public static ajt m11408zz() {
        if (aun == null) {
            synchronized (ajt.class) {
                if (aun == null) {
                    aun = new ajt();
                }
            }
        }
        return aun;
    }

    private ajt() {
    }

    /* renamed from: b */
    public void m11418b(SuRequestCmdModel suRequestCmdModel) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(suRequestCmdModel);
        beg.m7461Zj().m7453a(new bek() { // from class: com.kingroot.kinguser.ajt.1
            @Override // com.kingroot.kinguser.bek
            /* renamed from: a */
            public void mo1208a(@NonNull bed.InterfaceC2117a interfaceC2117a) {
                SuRequestCmdModel suRequestCmdModel2;
                super.mo1208a(interfaceC2117a);
                List<Object> mo7445nF = interfaceC2117a.mo7445nF();
                if (mo7445nF.size() > 0 && (suRequestCmdModel2 = (SuRequestCmdModel) mo7445nF.get(0)) != null) {
                    ajt.this.m11417e(suRequestCmdModel2.aRp, suRequestCmdModel2.aRo, suRequestCmdModel2.aRm);
                }
            }
        }, arrayList);
    }

    /* renamed from: e */
    protected synchronized void m11417e(String str, String str2, int i) {
        if (m11409zC()) {
            m11413gz(str);
        } else if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            m11413gz(str);
        } else {
            if ((i & 4046) > 0) {
                boolean z = false;
                if (!new File(str2).exists()) {
                    z = true;
                }
                C1024a m11415gB = m11415gB(str2);
                long currentTimeMillis = System.currentTimeMillis();
                if (z || (i & 512) > 0 || (i & 1024) > 0) {
                    if ((m11415gB != null ? Math.abs(currentTimeMillis - m11415gB.aut) : currentTimeMillis) > 1000) {
                        if ((i & 1024) > 0) {
                            m11412t(str2, i);
                        }
                        if (m11416gA(str2)) {
                            m11419ah(str, str2);
                        }
                        if (m11415gB == null) {
                            C1024a c1024a = new C1024a();
                            c1024a.aur = str2;
                            c1024a.aus = 0L;
                            c1024a.aut = currentTimeMillis;
                            this.aup.add(c1024a);
                        } else {
                            m11415gB.aut = currentTimeMillis;
                        }
                    }
                } else {
                    if ((m11415gB != null ? Math.abs(currentTimeMillis - m11415gB.aus) : currentTimeMillis) > 3000) {
                        m11412t(str2, i);
                        m11416gA(str2);
                        if (m11415gB == null) {
                            C1024a c1024a2 = new C1024a();
                            c1024a2.aur = str2;
                            c1024a2.aus = currentTimeMillis;
                            c1024a2.aut = 0L;
                            this.aup.add(c1024a2);
                        } else {
                            m11415gB.aus = currentTimeMillis;
                        }
                    }
                }
            }
            m11413gz(str);
        }
    }

    /* renamed from: gy */
    public void m11414gy(String str) {
        bbd.m7855aJ(str, m11411zA());
    }

    /* renamed from: ah */
    public void m11419ah(String str, String str2) {
        bbd.m7855aJ(str, m11421G(1, str2));
    }

    /* renamed from: gz */
    private void m11413gz(String str) {
        if (!TextUtils.isEmpty(str)) {
            bbd.m7855aJ(str, m11421G(0, ""));
        }
    }

    /* renamed from: G */
    private String m11421G(int i, String str) {
        return String.format("%d:%s", Integer.valueOf(i), str);
    }

    /* renamed from: zA */
    private String m11411zA() {
        return m11421G(1, m11410zB());
    }

    /* renamed from: zB */
    private String m11410zB() {
        File filesDir;
        StringBuilder sb = new StringBuilder();
        sb.append("/system/xbin/");
        sb.append(";");
        sb.append("/system/bin/");
        sb.append(";");
        sb.append(bha.bpv);
        sb.append(";");
        sb.append(bha.bpu);
        sb.append(";");
        if (!abf.m12838qP()) {
            sb.append(abu.f1378ZV);
            sb.append(";");
        }
        sb.append(abu.f1379ZW);
        sb.append(";");
        sb.append(bha.bpw);
        sb.append(";");
        sb.append(ajg.m11472zi());
        sb.append(";");
        sb.append(bha.bpy);
        sb.append(";");
        sb.append(bha.bpz);
        sb.append(";");
        File file = new File(KUApplication.m13453ge().getFilesDir().getParentFile(), "applib");
        sb.append(";");
        sb.append(file.getAbsolutePath() + File.separator + AbstractC3976zt.get("fn5"));
        sb.append(";");
        sb.append(file.getAbsolutePath() + File.separator + AbstractC3976zt.get("fn7"));
        sb.append(";");
        sb.append(file.getAbsolutePath() + File.separator + (abd.m12840qO() ? AbstractC3976zt.get("fn6") : AbstractC3976zt.get("fn3")));
        sb.append(";");
        sb.append(filesDir.getAbsolutePath() + File.separator + "40372.dat");
        sb.append(";");
        sb.append(filesDir.getAbsolutePath() + File.separator + "40251.dat");
        sb.append(";");
        sb.append(filesDir.getAbsolutePath() + File.separator + "40305.dat");
        sb.append(";");
        sb.append(filesDir.getAbsolutePath() + File.separator + "40351.dat");
        String sb2 = sb.toString();
        sb.delete(0, sb.length());
        return sb2;
    }

    /* renamed from: aS */
    public void m11420aS(boolean z) {
        this.auo = z;
    }

    /* renamed from: zC */
    public boolean m11409zC() {
        return this.auo;
    }

    /* renamed from: gA */
    private boolean m11416gA(String str) {
        ArrayList arrayList = new ArrayList();
        String absolutePath = KUApplication.m13453ge().getFilesDir().getParentFile().getAbsolutePath();
        if (str.contentEquals(bha.bpw) || str.contentEquals(bha.bpv) || str.contentEquals(bha.bpu)) {
            arrayList.add(new SuFilesCheckUnit());
        } else if (str.contentEquals(abu.f1374ZR) || str.contentEquals(abu.f1375ZS)) {
            arrayList.addAll(ajb.m11485yV());
        } else if (str.contentEquals(ajg.m11472zi()) || str.contentEquals(bha.bpy)) {
            arrayList.add(new ScriptFileCheckUnit());
        } else if (str.startsWith(absolutePath)) {
            arrayList.add(new DataFileCheckUnit());
        }
        if (arrayList.size() > 0) {
            ajn.m11456zp().m11455zq();
            return ajb.m11487yT().checkSync(false, true, null, arrayList);
        }
        return false;
    }

    /* renamed from: t */
    private void m11412t(String str, int i) {
        if (!TextUtils.isEmpty(str)) {
            KUApplication.m13453ge().getFilesDir().getParentFile().getAbsolutePath();
            if (!str.contentEquals("/system/bin/")) {
                if ((i & 4038) > 0) {
                    ajz.m11359dU(1);
                }
            } else if (str.startsWith("/system/bin/")) {
                ail.m11618xT().m11619p(1, true);
            }
        }
    }

    /* renamed from: gB */
    private C1024a m11415gB(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        for (C1024a c1024a : this.aup) {
            if (c1024a.aur.contains(str)) {
                return c1024a;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.ajt$a */
    /* loaded from: classes.dex */
    public static class C1024a {
        public String aur;
        public long aus;
        public long aut;

        C1024a() {
        }
    }
}
