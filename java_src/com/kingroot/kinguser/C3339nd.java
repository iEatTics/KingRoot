package com.kingroot.kinguser;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import com.king.uranus.C0373C;
import com.king.uranus.C0376F;
import com.king.uranus.C0377G;
import com.king.uranus.C0410e;
import com.king.uranus.C0419n;
import com.king.uranus.C0423r;
import com.king.uranus.C0425t;
import com.king.uranus.C0427v;
import com.king.uranus.C0431z;
import java.util.HashMap;
/* renamed from: com.kingroot.kinguser.nd */
/* loaded from: classes.dex */
public class C3339nd implements InterfaceC3207jb {

    /* renamed from: wR */
    private static C0425t f3182wR;

    /* renamed from: wS */
    private static C0377G f3183wS;

    /* renamed from: wT */
    private static C0431z f3184wT;

    /* renamed from: wU */
    private static C0419n f3185wU;

    /* renamed from: wV */
    private String f3188wV;

    /* renamed from: wQ */
    private static C3339nd f3181wQ = new C3339nd();

    /* renamed from: ur */
    private static HashMap<String, String> f3180ur = new HashMap<>();

    /* renamed from: sT */
    private int f3187sT = -1;

    /* renamed from: hM */
    private int f3186hM = -1;

    static {
        f3180ur.put("com.kingroot.kinguser", String.valueOf(100001));
        f3180ur.put("com.kingroot.master", String.valueOf(100002));
        f3180ur.put("com.tencent.qqpimsecure", String.valueOf(100003));
        f3180ur.put("com.cafeteam.kingsu", String.valueOf(100004));
    }

    private C3339nd() {
    }

    /* renamed from: eY */
    public static C3339nd m2917eY() {
        return f3181wQ;
    }

    /* renamed from: B */
    public String m2926B(Context context) {
        if (this.f3188wV != null) {
            return this.f3188wV;
        }
        this.f3188wV = f3180ur.get(context.getPackageName());
        if (TextUtils.isEmpty(this.f3188wV)) {
            this.f3188wV = String.valueOf(100000);
        }
        return this.f3188wV;
    }

    /* renamed from: eZ */
    private String m2916eZ() {
        return "096CE82CAD7A6725";
    }

    @Override // com.kingroot.kinguser.InterfaceC3207jb
    /* renamed from: o */
    public C0377G mo2910o(Context context) {
        if (f3183wS == null) {
            f3183wS = new C0377G();
            f3183wS.f197i = C3309mi.m3076br(C3303me.m3096v(context));
            f3183wS.f198j = C3309mi.m3076br(C3303me.m3095w(context));
            f3183wS.f201n = m2915fa();
            f3183wS.f202o = m2916eZ();
            f3183wS.f203p = 40;
            f3183wS.f205v = C3309mi.m3076br(C3303me.m3092z(context));
            f3183wS.f186aY = Build.VERSION.SDK_INT;
            String[] split = "1.6.1".split("[\\.]");
            f3183wS.f193cn = new C0427v();
            try {
                f3183wS.f193cn.f413bt = split.length >= 1 ? Integer.parseInt(split[0]) : 1;
            } catch (Exception e) {
                f3183wS.f193cn.f413bt = 1;
            }
            try {
                f3183wS.f193cn.f414bu = split.length >= 2 ? Integer.parseInt(split[1]) : 0;
            } catch (Exception e2) {
                f3183wS.f193cn.f414bu = 0;
            }
            try {
                f3183wS.f193cn.f415bv = split.length >= 3 ? Integer.parseInt(split[2]) : 0;
            } catch (Exception e3) {
                f3183wS.f193cn.f415bv = 0;
            }
            f3183wS.f194co = ((InterfaceC3195it) C3183ih.m3501a(InterfaceC3195it.class)).mo3126h(true) ? 8 : 0;
            f3183wS.f204q = m2926B(context);
        }
        f3183wS.f191bk = C3309mi.m3076br(mo2913i(context));
        f3183wS.f192cm = C3237kb.m3311l(context) == 0 ? 2 : 1;
        f3183wS.f190bR = C3309mi.m3076br(mo2920cq());
        return f3183wS;
    }

    @Override // com.kingroot.kinguser.InterfaceC3207jb
    /* renamed from: p */
    public C0431z mo2909p(Context context) {
        if (f3184wT == null) {
            f3184wT = new C0431z();
            f3184wT.f446i = C3309mi.m3076br(C3303me.m3096v(context));
            f3184wT.f447j = C3309mi.m3076br(C3303me.m3095w(context));
            f3184wT.name = "EP_KingCommon";
            DisplayMetrics displayMetrics = null;
            try {
                displayMetrics = context.getResources().getDisplayMetrics();
            } catch (Throwable th) {
            }
            if (displayMetrics != null) {
                int i = displayMetrics.widthPixels;
                int i2 = displayMetrics.heightPixels;
                f3184wT.f438bM = "screen=" + i + "*" + i2;
            } else {
                f3184wT.f438bM = "screen=0*0";
            }
            f3184wT.f452s = 0;
            f3184wT.f439bN = 0;
            f3184wT.f451q = m2926B(context);
            f3184wT.f450o = m2916eZ();
            f3184wT.type = 2;
            f3184wT.f436bK = String.valueOf(Build.VERSION.SDK_INT);
            f3184wT.f437bL = C3309mi.m3076br(C3303me.m3100eu());
        }
        f3184wT.f445bk = C3309mi.m3076br(mo2913i(context));
        return f3184wT;
    }

    @Override // com.kingroot.kinguser.InterfaceC3207jb
    /* renamed from: q */
    public C0419n mo2908q(Context context) {
        if (f3185wU == null) {
            f3185wU = new C0419n();
            f3185wU.f390i = C3309mi.m3076br(C3303me.m3096v(context));
            f3185wU.f391j = C3309mi.m3076br(C3303me.m3095w(context));
            f3185wU.f392k = C3309mi.m3076br(C3303me.m3094x(context));
            f3185wU.f384aX = C3309mi.m3076br(C3303me.m3093y(context));
            f3185wU.f389bc = C3309mi.m3076br(mo2913i(context));
            f3185wU.f393x = C3309mi.m3076br(C3303me.m3101et());
            f3185wU.f385aY = C3303me.m3099ev();
            f3185wU.f386aZ = C3309mi.m3076br(C3303me.m3100eu());
            f3185wU.f387ba = "EP_KingCommon";
        }
        return f3185wU;
    }

    @Override // com.kingroot.kinguser.InterfaceC3207jb
    /* renamed from: r */
    public C0425t mo2907r(Context context) {
        if (f3182wR == null) {
            f3182wR = new C0425t();
            f3182wR.f408bp = 2;
            f3182wR.f409s = 201;
        }
        return f3182wR;
    }

    @Override // com.kingroot.kinguser.InterfaceC3207jb
    /* renamed from: i */
    public String mo2913i(Context context) {
        return C3249kk.m3277cY().getString("wup_guid");
    }

    @Override // com.kingroot.kinguser.InterfaceC3207jb
    /* renamed from: a */
    public void mo2922a(String str, Context context) {
        C3249kk.m3277cY().mo3164j("wup_guid", str);
    }

    /* renamed from: fa */
    public int m2915fa() {
        return 44;
    }

    @Override // com.kingroot.kinguser.InterfaceC3207jb
    /* renamed from: s */
    public C0410e mo2906s(Context context) {
        String m3094x = C3303me.m3094x(context);
        String[] m2914fb = m2914fb();
        C0410e c0410e = new C0410e();
        c0410e.f325i = C3303me.m3096v(context);
        c0410e.f326j = C3303me.m3095w(context);
        if (m3094x == null) {
            m3094x = "";
        }
        c0410e.f327k = m3094x;
        c0410e.f328l = "0";
        c0410e.f329m = "0";
        c0410e.f330n = 44;
        c0410e.f331o = m2916eZ();
        c0410e.f332p = 40;
        c0410e.f333q = m2926B(context);
        c0410e.f334r = 2;
        c0410e.f335s = 201;
        c0410e.f336t = (context.getApplicationInfo().flags & 1) != 0;
        c0410e.f312Z = "";
        c0410e.f337u = context.getPackageName();
        c0410e.f338v = C3309mi.m3076br(C3303me.m3092z(context));
        c0410e.f339w = Build.VERSION.SDK_INT;
        c0410e.f340x = "";
        c0410e.f341y = (short) 2052;
        c0410e.f342z = 1;
        c0410e.f287A = m2914fb[2];
        c0410e.f288B = "";
        c0410e.f289C = Runtime.getRuntime().availableProcessors();
        c0410e.f290D = m2914fb[3];
        c0410e.f291E = 1L;
        c0410e.f292F = 1L;
        c0410e.f293G = 1L;
        c0410e.f299M = C3309mi.m3076br(Build.MANUFACTURER);
        c0410e.f294H = C3309mi.m3076br(Build.BRAND);
        c0410e.f295I = C3309mi.m3076br(Build.VERSION.INCREMENTAL);
        c0410e.f296J = C3309mi.m3076br(Build.VERSION.RELEASE);
        c0410e.f300N = C3309mi.m3076br(Build.BOARD);
        c0410e.f322aj = C3309mi.m3076br("");
        c0410e.f310X = "1.6.1";
        c0410e.f311Y = 1;
        c0410e.f320ah = "";
        c0410e.f317ae = C3309mi.m3076br(C3303me.m3097ex());
        c0410e.f323ak = C3309mi.m3076br(C3303me.m3102dI());
        return c0410e;
    }

    @Override // com.kingroot.kinguser.InterfaceC3207jb
    /* renamed from: t */
    public C0373C mo2905t(Context context) {
        C0373C c0373c = new C0373C();
        c0373c.f175cf = "";
        c0373c.f176p = 40;
        c0373c.f172cc = m2925C(context);
        c0373c.f173cd = 0;
        c0373c.f171bk = mo2920cq();
        return c0373c;
    }

    /* renamed from: C */
    private static int m2925C(Context context) {
        byte m3311l = C3237kb.m3311l(context);
        if (m3311l == -1) {
            return 0;
        }
        if (m3311l == 1) {
            return 3;
        }
        if (m3311l == 2) {
            return 2;
        }
        return m3311l == 0 ? 1 : 0;
    }

    @Override // com.kingroot.kinguser.InterfaceC3207jb
    /* renamed from: aG */
    public void mo2921aG(String str) {
        C3249kk.m3277cY().mo3164j("wup_guid_v3", str);
    }

    @Override // com.kingroot.kinguser.InterfaceC3207jb
    /* renamed from: cq */
    public String mo2920cq() {
        return C3249kk.m3277cY().getString("wup_guid_v3");
    }

    @Override // com.kingroot.kinguser.InterfaceC3207jb
    /* renamed from: cr */
    public C0423r mo2919cr() {
        C0423r c0423r = new C0423r();
        c0423r.f403bl = "";
        c0423r.f404c = new C0376F();
        return c0423r;
    }

    @Override // com.kingroot.kinguser.InterfaceC3207jb
    /* renamed from: k */
    public byte[] mo2912k(byte[] bArr) {
        return C3222jp.m3370m(bArr);
    }

    @Override // com.kingroot.kinguser.InterfaceC3207jb
    /* renamed from: l */
    public byte[] mo2911l(byte[] bArr) {
        return C3222jp.m3369n(bArr);
    }

    @Override // com.kingroot.kinguser.InterfaceC3207jb
    /* renamed from: cs */
    public String mo2918cs() {
        return "http://pmir.3g.qq.com/";
    }

    /* renamed from: fb */
    public static String[] m2914fb() {
        String[] strArr = new String[4];
        strArr[0] = Build.MODEL;
        strArr[1] = Build.VERSION.RELEASE;
        return strArr;
    }

    /* renamed from: D */
    public String m2924D(Context context) {
        return m2923a(context, (int) (System.currentTimeMillis() / 1000));
    }

    /* renamed from: a */
    public String m2923a(Context context, int i) {
        if (this.f3187sT == -1) {
            String packageName = context.getPackageName();
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null) {
                try {
                    this.f3187sT = packageManager.getPackageInfo(packageName, 0).versionCode;
                } catch (PackageManager.NameNotFoundException e) {
                }
            }
        }
        if (this.f3186hM == -1) {
            this.f3186hM = C3304mf.m3090ey() ? 64 : 32;
        }
        return C3328mv.m2978a(0, -1, this.f3186hM, m2926B(context), this.f3187sT, 1, "" + ((int) (System.currentTimeMillis() / 1000)), i);
    }
}
