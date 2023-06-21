package com.tencent.tps.client;

import android.content.Context;
import com.kingroot.kinguser.C3036ex;
import com.kingroot.kinguser.C3050fb;
import com.kingroot.kinguser.C3054ff;
import com.kingroot.kinguser.C3067fs;
import com.kingroot.kinguser.C3070fv;
import com.kingroot.kinguser.C3074fz;
import com.kingroot.kinguser.C3116gb;
import com.kingroot.kinguser.C3121gg;
import com.kingroot.kinguser.C3123gi;
import com.tencent.tps.client.p024kr.ISharkForXMod;
import java.io.File;
/* loaded from: classes.dex */
public abstract class AbsTPSClientBase {
    public static final String TAG = "AbsTPSClientBase";
    private static volatile boolean isInit = false;
    private static Context sContext;
    private ISharkForXMod mShark;

    public abstract void onExploitDenied(int i, String str, String str2);

    public abstract void onTPSServiceStop();

    public AbsTPSClientBase(Context context, ISharkForXMod iSharkForXMod) {
        sContext = context.getApplicationContext();
        this.mShark = iSharkForXMod;
    }

    private synchronized void initialize() {
        if (!isInit) {
            C3050fb.m3868ae();
            C3074fz.m3793ak().m3795a(this.mShark);
            C3123gi.m3709ae();
            C3121gg.m3723au().start();
            isInit = true;
        }
    }

    public final boolean startTPSService(IRootShell iRootShell) {
        String lowerCase;
        initialize();
        String str = "/data/data-lib/tps" + File.separator + C3067fs.m3831b("105702").toLowerCase();
        String str2 = str + File.separator + "tpsd";
        if (!C3054ff.m3859a(iRootShell, str, str2)) {
            throw new TPSException("Unable to release TPSService to /data/data-lib/tps");
        }
        iRootShell.runCmd(str2);
        boolean m3821a = C3070fv.m3819ai().m3821a(this);
        if (!m3821a) {
            iRootShell.runCmd(("/mnt/asec/lkjhg" + lowerCase) + " " + str2);
            m3821a = C3070fv.m3819ai().m3821a(this);
        }
        m398a(m3821a, null, 0);
        return m3821a;
    }

    public final boolean enableExploitMonitor() {
        boolean m3813d = C3070fv.m3819ai().m3813d();
        m398a(m3813d, null, 2);
        return m3813d;
    }

    public final boolean disableExploitMonitor() {
        boolean m3811e = C3070fv.m3819ai().m3811e();
        m398a(m3811e, null, 3);
        return m3811e;
    }

    public final boolean isExploitMonitorEnabled() {
        boolean m3810f = C3070fv.m3819ai().m3810f();
        m398a(m3810f, null, 4);
        return m3810f;
    }

    public final boolean stopTPSService() {
        boolean stopTPSService = C3070fv.m3819ai().stopTPSService();
        m398a(stopTPSService, null, 5);
        return stopTPSService;
    }

    public static Context getContext() {
        return sContext;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public void m398a(boolean z, String str, int i) {
        int i2 = z ? 0 : 19000;
        String str2 = "";
        if (i == 0) {
            str2 = C3054ff.m3860G();
        }
        C3116gb.m3729d(new C3036ex(i2, str, 1, i, str2));
    }
}
