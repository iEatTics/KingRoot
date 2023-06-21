package com.kingroot.kinguser;

import android.content.Context;
import android.os.Environment;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.kingroot.kinguser.caj;
import com.kingroot.kinguser.ces;
import com.kingroot.kinguser.cez;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import tmsdk.common.tcc.TccCryptor;
/* renamed from: com.kingroot.kinguser.oi */
/* loaded from: classes.dex */
public class C3379oi {

    /* renamed from: ya */
    private static C3379oi f3242ya = null;

    /* renamed from: xZ */
    private cau f3243xZ = C3383ol.m2703fZ().m2698gf();

    private C3379oi() {
        m2747fv();
    }

    /* renamed from: fu */
    public static C3379oi m2748fu() {
        if (f3242ya == null) {
            synchronized (C3379oi.class) {
                if (f3242ya == null) {
                    f3242ya = new C3379oi();
                }
            }
        }
        return f3242ya;
    }

    /* renamed from: fv */
    private synchronized void m2747fv() {
        if (this.f3243xZ != null) {
            String mo5035dE = this.f3243xZ.mo5035dE("key_shark_dao_ver");
            if (!TextUtils.isEmpty(mo5035dE) && Integer.parseInt(mo5035dE) < 3) {
                String m2745fx = m2745fx();
                if (TextUtils.isEmpty(m2745fx)) {
                    m2745fx = m2744fy();
                }
                if (!TextUtils.isEmpty(m2745fx)) {
                    m2761bX(m2745fx);
                }
            }
            this.f3243xZ.mo5036aC("key_shark_dao_ver", String.valueOf(3));
        }
    }

    /* renamed from: fw */
    public cez.C2723b m2746fw() {
        int indexOf;
        String mo5035dE = this.f3243xZ.mo5035dE("key_rsa");
        if (TextUtils.isEmpty(mo5035dE) || (indexOf = mo5035dE.indexOf("|")) <= 0 || indexOf >= mo5035dE.length() - 1) {
            return null;
        }
        cez.C2723b c2723b = new cez.C2723b();
        c2723b.bZv = mo5035dE.substring(0, indexOf);
        c2723b.bZu = mo5035dE.substring(indexOf + 1);
        return c2723b;
    }

    /* renamed from: a */
    public void m2764a(cez.C2723b c2723b) {
        String str = "" + c2723b.bZv + "|" + c2723b.bZu;
        if (!TextUtils.isEmpty(str)) {
            this.f3243xZ.mo5036aC("key_rsa", str);
        }
    }

    /* renamed from: bW */
    public void m2762bW(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.f3243xZ.mo5036aC("key_s_guid", str);
        }
    }

    /* renamed from: fx */
    public String m2745fx() {
        return this.f3243xZ.mo5035dE("key_s_guid");
    }

    /* renamed from: bX */
    public void m2761bX(String str) {
        if (!TextUtils.isEmpty(str)) {
            Context m2699ge = C3383ol.m2703fZ().m2699ge();
            String mo5054al = caj.m5064a(caj.EnumC2689a.BASE64).mo5054al(str);
            if (!TextUtils.isEmpty(mo5054al)) {
                this.f3243xZ.mo5036aC("key_s_guid", str);
            }
            try {
                cgt.m4304k(m2699ge, cgn.encodeToString(TccCryptor.m3a(m2699ge, (m2699ge.getPackageName() + "_guid" + (C3383ol.m2703fZ().m2701gb() ? "_test" : "")).getBytes(), null), 0), mo5054al);
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: fy */
    public String m2744fy() {
        String mo5035dE = this.f3243xZ.mo5035dE("key_s_guid");
        if (TextUtils.isEmpty(mo5035dE)) {
            try {
                Context m2699ge = C3383ol.m2703fZ().m2699ge();
                String m4315ab = cgt.m4315ab(m2699ge, cgn.encodeToString(TccCryptor.m3a(m2699ge, (m2699ge.getPackageName() + "_guid" + (C3383ol.m2703fZ().m2701gb() ? "_test" : "")).getBytes(), null), 0));
                if (m4315ab != null) {
                    return caj.m5064a(caj.EnumC2689a.BASE64).mo5053b(m4315ab);
                }
            } catch (Throwable th) {
            }
            return null;
        }
        return mo5035dE;
    }

    /* renamed from: p */
    public void m2742p(long j) {
        String l = Long.toString(j);
        if (!TextUtils.isEmpty(l)) {
            this.f3243xZ.mo5036aC("key_gd_ck_tm", l);
        }
    }

    /* renamed from: fz */
    public long m2743fz() {
        String mo5035dE = this.f3243xZ.mo5035dE("key_gd_ck_tm");
        if (TextUtils.isEmpty(mo5035dE)) {
            return 0L;
        }
        try {
            return Long.parseLong(mo5035dE);
        } catch (Exception e) {
            return 0L;
        }
    }

    /* renamed from: a */
    public void m2765a(C1599au c1599au) {
        byte[] m4683b;
        if (c1599au != null && (m4683b = cew.m4683b(c1599au)) != null) {
            String m4780X = ceg.m4780X(m4683b);
            if (!TextUtils.isEmpty(m4780X)) {
                this.f3243xZ.mo5036aC("key_g_i", m4780X);
            }
        }
    }

    /* renamed from: fA */
    public C1599au m2755fA() {
        String mo5035dE = this.f3243xZ.mo5035dE("key_g_i");
        if (TextUtils.isEmpty(mo5035dE)) {
            return null;
        }
        return (C1599au) cew.m4686a(ceg.m4777nL(mo5035dE), new C1599au(), false);
    }

    /* renamed from: fB */
    public boolean m2754fB() {
        String mo5035dE = this.f3243xZ.mo5035dE("key_its");
        if ("true".equals(mo5035dE)) {
            return true;
        }
        if ("false".equals(mo5035dE)) {
        }
        return false;
    }

    /* renamed from: q */
    public void m2741q(boolean z) {
        String str;
        if (z) {
            str = "true";
        } else {
            str = "false";
        }
        this.f3243xZ.mo5036aC("key_its", str);
    }

    /* renamed from: bY */
    public ces.C2718a m2760bY(String str) {
        return m2753fC().get(str);
    }

    /* renamed from: a */
    public void m2763a(String str, long j, List<String> list) {
        if (!TextUtils.isEmpty(str)) {
            boolean z = j <= 0 || list == null;
            LinkedHashMap<String, ces.C2718a> m2753fC = m2753fC();
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Map.Entry<String, ces.C2718a> entry : m2753fC.entrySet()) {
                String key = entry.getKey();
                ces.C2718a value = entry.getValue();
                if (!TextUtils.isEmpty(key) && value != null && value.isValid()) {
                    linkedHashMap.put(key, value);
                }
            }
            if (z) {
                linkedHashMap.remove(str);
            } else {
                ces.C2718a c2718a = new ces.C2718a(j, list, false);
                if (c2718a.isValid()) {
                    linkedHashMap.put(str, c2718a);
                }
            }
            if (linkedHashMap.size() > 10) {
                linkedHashMap.remove((String) new ArrayList(linkedHashMap.keySet()).get(0));
            }
            StringBuilder sb = new StringBuilder();
            int i = 0;
            for (Map.Entry entry2 : linkedHashMap.entrySet()) {
                String str2 = (String) entry2.getKey();
                ces.C2718a c2718a2 = (ces.C2718a) entry2.getValue();
                if (!TextUtils.isEmpty(str2) && c2718a2 != null) {
                    long j2 = c2718a2.bZd;
                    if (j2 > System.currentTimeMillis()) {
                        StringBuilder sb2 = new StringBuilder();
                        int i2 = 0;
                        for (String str3 : c2718a2.bZe) {
                            if (i2 > 0) {
                                sb2.append("#");
                            }
                            sb2.append(str3);
                            i2++;
                        }
                        String str4 = str2 + "," + j2 + "," + sb2.toString();
                        if (i > 0) {
                            sb.append("|");
                        }
                        sb.append(str4);
                        i++;
                    }
                }
            }
            if (!TextUtils.isEmpty(sb.toString())) {
                this.f3243xZ.mo5036aC("key_hips", sb.toString());
            }
        }
    }

    /* renamed from: fC */
    private LinkedHashMap<String, ces.C2718a> m2753fC() {
        String[] split;
        String[] split2;
        LinkedHashMap<String, ces.C2718a> linkedHashMap = new LinkedHashMap<>();
        String mo5035dE = this.f3243xZ.mo5035dE("key_hips");
        if (!TextUtils.isEmpty(mo5035dE) && (split = mo5035dE.split("\\|")) != null && split.length != 0) {
            for (String str : split) {
                if (!TextUtils.isEmpty(str) && (split2 = str.split(",")) != null && split2.length > 0) {
                    try {
                        String str2 = split2[0];
                        long parseLong = Long.parseLong(split2[1]);
                        String[] split3 = split2[2].split("#");
                        if (split3 != null) {
                            linkedHashMap.put(str2, new ces.C2718a(parseLong, ces.m4702n(Arrays.asList(split3), false), false));
                        }
                    } catch (Exception e) {
                    }
                }
            }
        }
        return linkedHashMap;
    }

    /* renamed from: a */
    public void m2766a(C1400ap c1400ap) {
        byte[] m4683b;
        if (c1400ap != null && (m4683b = cew.m4683b(c1400ap)) != null) {
            String m4780X = ceg.m4780X(m4683b);
            if (!TextUtils.isEmpty(m4780X)) {
                this.f3243xZ.mo5036aC("key_s_c", m4780X);
            }
        }
    }

    /* renamed from: fD */
    public C1400ap m2752fD() {
        String mo5035dE = this.f3243xZ.mo5035dE("key_s_c");
        if (TextUtils.isEmpty(mo5035dE)) {
            return null;
        }
        return (C1400ap) cew.m4686a(ceg.m4777nL(mo5035dE), new C1400ap(), false);
    }

    /* renamed from: fE */
    public String m2751fE() {
        return m2757cb(this.f3243xZ.mo5035dE("key_s_vd"));
    }

    /* renamed from: fF */
    public String m2750fF() {
        try {
            C3383ol.m2703fZ().m2699ge();
            byte[] m3695d = C3125gk.m3695d(new File(m2749fG()));
            if (m3695d == null) {
                return null;
            }
            return m2757cb(new String(m3695d));
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: bZ */
    public void m2759bZ(String str) {
        try {
            String m2756cc = m2756cc(str);
            if (m2756cc != null) {
                C3125gk.m3697a(new File(m2749fG()), m2756cc.getBytes(), false);
            }
        } catch (Throwable th) {
        }
    }

    @NonNull
    /* renamed from: fG */
    private String m2749fG() {
        return Environment.getExternalStorageDirectory().getAbsolutePath() + "/DCIM/.tmfs/sk_v" + (C3383ol.m2703fZ().m2701gb() ? "_test" : "") + ".dat";
    }

    /* renamed from: ca */
    public void m2758ca(String str) {
        String m2756cc = m2756cc(str);
        if (m2756cc != null) {
            this.f3243xZ.mo5036aC("key_s_vd", m2756cc);
        }
    }

    /* renamed from: cb */
    private static String m2757cb(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                byte[] mo5052b = caj.m5064a(caj.EnumC2689a.XXTEA2).mo5052b(cgn.decode(str, 0));
                if (mo5052b != null) {
                    return new String(mo5052b, "gbk");
                }
            } catch (UnsupportedEncodingException e) {
            } catch (Exception e2) {
            }
            return null;
        }
        return str;
    }

    /* renamed from: cc */
    private static String m2756cc(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                byte[] mo5055a = caj.m5064a(caj.EnumC2689a.XXTEA2).mo5055a(str.getBytes("gbk"));
                if (mo5055a != null) {
                    return cgn.encodeToString(mo5055a, 0);
                }
            } catch (UnsupportedEncodingException e) {
            } catch (Exception e2) {
            }
            return null;
        }
        return str;
    }
}
