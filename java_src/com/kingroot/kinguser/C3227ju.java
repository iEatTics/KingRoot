package com.kingroot.kinguser;

import android.text.TextUtils;
import com.king.uranus.UranusException;
import com.kingroot.kinguser.C3199ix;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.Locale;
/* renamed from: com.kingroot.kinguser.ju */
/* loaded from: classes.dex */
public final class C3227ju implements InterfaceC3225js {
    private final String mPackageName;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.ju$a */
    /* loaded from: classes.dex */
    public static class C3228a {

        /* renamed from: tj */
        private static final C3227ju f2902tj = new C3227ju();
    }

    /* renamed from: cK */
    public static C3227ju m3359cK() {
        return C3228a.f2902tj;
    }

    private C3227ju() {
        this.mPackageName = C3183ih.m3497bW().getPackageName();
    }

    @Override // com.kingroot.kinguser.InterfaceC3225js
    /* renamed from: a */
    public synchronized InterfaceC3145ha mo3366a(InterfaceC3224jr interfaceC3224jr, AbstractC3223jq abstractC3223jq, InterfaceC3195it interfaceC3195it) {
        InterfaceC3145ha c3233jy;
        C3226jt c3226jt = new C3226jt(abstractC3223jq);
        try {
            c3233jy = m3365a(m3362b(interfaceC3224jr, c3226jt, interfaceC3195it), c3226jt, interfaceC3195it);
        } catch (UranusException e) {
            c3233jy = new C3233jy(e.m13681cb(), e.getMessage());
        }
        return c3233jy;
    }

    /* renamed from: a */
    private InterfaceC3145ha m3365a(C3232jx c3232jx, AbstractC3223jq abstractC3223jq, InterfaceC3195it interfaceC3195it) {
        String str;
        String m3340cM = c3232jx.m3340cM();
        abstractC3223jq.mo3107a(c3232jx.f2911tq, c3232jx.f2909to);
        C3199ix.C3201b mo3131aC = interfaceC3195it.mo3131aC(m3340cM);
        if (mo3131aC.m3447co()) {
            C3234jz.m3328cN();
            str = mo3131aC.mStdOut;
        } else {
            str = mo3131aC.mExitValue + " " + mo3131aC.mStdOut + " " + mo3131aC.mStdErr;
        }
        InterfaceC3145ha m3331b = C3233jy.m3331b(mo3131aC.mStdOut, c3232jx.pid, str);
        abstractC3223jq.mo3108a(c3232jx.f2911tq, m3331b);
        return m3331b;
    }

    /* renamed from: b */
    private C3232jx m3362b(InterfaceC3224jr interfaceC3224jr, AbstractC3223jq abstractC3223jq, InterfaceC3195it interfaceC3195it) {
        if (!interfaceC3195it.mo3129cf()) {
            throw new UranusException(2, "no root");
        }
        int pid = interfaceC3224jr.getPid();
        if (pid <= 0) {
            pid = m3363aP(interfaceC3224jr.mo3283cG());
        }
        String m3364a = m3364a(m3358f(pid, interfaceC3224jr.mo3283cG()), interfaceC3195it);
        if (m3364a == null) {
            throw new UranusException(6, "");
        }
        String m3364a2 = m3364a(interfaceC3224jr.mo3279w(), interfaceC3195it);
        if (m3364a2 == null) {
            throw new UranusException(7, "");
        }
        C3232jx c3232jx = new C3232jx(m3364a, pid, m3364a2, interfaceC3224jr);
        String str = interfaceC3195it.mo3131aC(c3232jx.m3341E()).mStdOut;
        if (str != null && str.equals("1")) {
            if (abstractC3223jq != null) {
                abstractC3223jq.mo3368a(interfaceC3224jr);
            }
            throw new UranusException(1, "injected already");
        }
        return c3232jx;
    }

    /* renamed from: a */
    private String m3364a(String str, InterfaceC3195it interfaceC3195it) {
        C3297lz.m3112eq();
        String m3361b = m3361b(str, interfaceC3195it);
        if (m3361b == null || !m3360c(m3361b, interfaceC3195it)) {
            return null;
        }
        return m3361b;
    }

    /* renamed from: b */
    private String m3361b(String str, InterfaceC3195it interfaceC3195it) {
        C3297lz.m3112eq();
        if (TextUtils.isEmpty(str) || !new File(str).exists()) {
            throw new UranusException(4, new FileNotFoundException(str));
        }
        try {
            return new C3230jw(interfaceC3195it).m3354a(this.mPackageName, new File(str));
        } catch (FileNotFoundException e) {
            throw new UranusException(6, "redirct " + str);
        }
    }

    /* renamed from: c */
    private boolean m3360c(String str, InterfaceC3195it interfaceC3195it) {
        if (interfaceC3195it.mo3131aC("chmod 0755 " + str).m3447co() && interfaceC3195it.mo3131aC("chown 0.0 " + str).m3447co()) {
            String str2 = "chcon u:object_r:system_file:s0 " + str;
            if (!interfaceC3195it.mo3131aC(str2).m3447co() && !interfaceC3195it.mo3131aC("/system/bin/toolbox " + str2).m3447co()) {
                if (C3304mf.m3091ev() >= 22) {
                    interfaceC3195it.mo3131aC("/system/bin/toybox " + str2);
                }
                return true;
            }
            return true;
        }
        return false;
    }

    /* renamed from: f */
    private String m3358f(int i, String str) {
        int mo3136bc;
        C3180if m3497bW = C3183ih.m3497bW();
        InterfaceC3281lm interfaceC3281lm = (InterfaceC3281lm) C3183ih.m3501a(InterfaceC3281lm.class);
        if (i > 0) {
            mo3136bc = interfaceC3281lm.mo3138ai(i);
        } else {
            mo3136bc = interfaceC3281lm.mo3136bc(str);
        }
        if (mo3136bc == 64) {
            return m3497bW.m3532by();
        }
        return m3497bW.m3533bx();
    }

    /* renamed from: aP */
    public static int m3363aP(String str) {
        int i;
        InterfaceC3195it interfaceC3195it = (InterfaceC3195it) C3183ih.m3501a(InterfaceC3195it.class);
        if (interfaceC3195it.mo3126h(true)) {
            try {
                C3180if m3497bW = C3183ih.m3497bW();
                String str2 = interfaceC3195it.mo3131aC(String.format(Locale.getDefault(), "%s %s %s", new C3230jw(interfaceC3195it).m3354a(m3497bW.getPackageName(), new File(m3497bW.m3533bx())), "-n", str)).mStdOut;
                if (TextUtils.isEmpty(str2)) {
                    return 0;
                }
                try {
                    i = Integer.parseInt(str2);
                } catch (Throwable th) {
                    i = 0;
                }
                return i;
            } catch (FileNotFoundException e) {
                return 0;
            }
        }
        return 0;
    }
}
