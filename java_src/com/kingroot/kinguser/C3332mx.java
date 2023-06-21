package com.kingroot.kinguser;

import andhook.lib.xposed.callbacks.XCallback;
import android.os.SystemClock;
import android.text.TextUtils;
import com.king.uranus.EnumC0405cg;
import com.kingroot.loader.common.KlConst;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.kingroot.kinguser.mx */
/* loaded from: classes.dex */
public class C3332mx extends AbstractC3210je implements InterfaceC3283lo {
    private static final String TAG = "Uranus_" + C3332mx.class.getSimpleName();

    /* renamed from: ww */
    private static C3332mx f3166ww = new C3332mx();

    /* renamed from: wy */
    private int f3167wy;

    /* renamed from: wz */
    private String f3168wz;

    private C3332mx() {
        super("uranus_start_result.dat");
        this.f3167wy = 2;
    }

    /* renamed from: eL */
    public static C3332mx m2961eL() {
        return f3166ww;
    }

    /* renamed from: ao */
    public void m2968ao(int i) {
        this.f3167wy = i;
    }

    @Override // com.kingroot.kinguser.InterfaceC3283lo
    /* renamed from: c */
    public void mo2932c() {
        m2960eM();
    }

    /* renamed from: eM */
    public void m2960eM() {
        Map<String, String> all = getAll();
        HashMap hashMap = new HashMap();
        if (all.size() != 0) {
            if (all.size() > 10) {
                mo3166a(all.keySet());
                return;
            }
            long currentTimeMillis = System.currentTimeMillis();
            for (Map.Entry<String, String> entry : all.entrySet()) {
                String key = entry.getKey();
                String value = entry.getValue();
                if (Math.abs(Long.parseLong(key.split(KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR)[1]) - currentTimeMillis) >= 15000) {
                    hashMap.put(key, value);
                }
            }
            if (hashMap.size() > 0) {
                C3338nc.m2927eX().m3428a(hashMap);
                mo3166a(hashMap.keySet());
            }
        }
    }

    /* renamed from: a */
    public void m2971a(long j) {
        C3357no.m2832fl().m2833a(new C3333my(this), j);
    }

    /* renamed from: eN */
    private String m2959eN() {
        if (this.f3168wz == null) {
            this.f3168wz = C3249kk.m3277cY().getString("start_one_time_key");
        }
        return this.f3168wz;
    }

    /* renamed from: bB */
    private void m2964bB(String str) {
        this.f3168wz = str;
        C3249kk.m3277cY().mo3164j("start_one_time_key", str);
    }

    /* renamed from: g */
    public void m2952g(String str, int i) {
        C3327mu m2955eR = m2955eR();
        if (m2955eR != null) {
            int m2963bC = m2963bC(str);
            m2955eR.f3158wp = m2963bC;
            if (m2955eR.f3154wl == 0) {
                m2955eR.f3154wl = XCallback.PRIORITY_HIGHEST;
            }
            m2970a(m2955eR);
            C3334mz.m2942eS().m2941h(m2963bC, i);
        }
    }

    /* renamed from: bC */
    private int m2963bC(String str) {
        if ("zygote".equals(str)) {
            return 1;
        }
        if ("zygote64".equals(str)) {
            return 3;
        }
        if (!"system_server".equals(str)) {
            return 0;
        }
        return 2;
    }

    /* renamed from: ap */
    public void m2967ap(int i) {
        C3327mu m2957eP = m2957eP();
        m2957eP.f3154wl = 1;
        m2957eP.f3155wm = i;
        m2957eP.f3153hh = 0;
        m2969a("" + System.currentTimeMillis(), m2957eP);
        m2972Z(i);
    }

    /* renamed from: eO */
    public void m2958eO() {
        C3327mu m2955eR = m2955eR();
        if (m2955eR != null) {
            m2955eR.f3153hh = 0;
            m2970a(m2955eR);
        }
    }

    /* renamed from: f */
    public void m2954f(int i, int i2) {
        m2965b(i, i2, 0);
    }

    /* renamed from: b */
    public void m2965b(int i, int i2, int i3) {
        if (i == this.f3167wy) {
            m2953g(i, i2);
        } else {
            m2962c(i, i2, i3);
        }
        m2972Z(i2);
    }

    /* renamed from: Z */
    private void m2972Z(int i) {
        InterfaceC3162hr m3540bS = C3183ih.m3497bW().m3540bS();
        if (m3540bS != null) {
            try {
                m3540bS.m3607L(i);
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: g */
    private void m2953g(int i, int i2) {
        String str = "" + System.currentTimeMillis();
        m2964bB(str);
        C3327mu m2957eP = m2957eP();
        m2957eP.f3154wl = i;
        if (i == 2) {
            m2957eP.f3156wn = i2;
        } else {
            m2957eP.f3157wo = i2;
        }
        m2969a(str, m2957eP);
    }

    /* renamed from: c */
    private void m2962c(int i, int i2, int i3) {
        C3327mu m2955eR = m2955eR();
        if (m2955eR != null) {
            m2955eR.f3154wl = i;
            if (i <= 3) {
                m2955eR.f3156wn = i2;
                m2955eR.f3159wq = i3;
            } else if (i <= 5) {
                m2955eR.f3157wo = i2;
                m2955eR.f3160wr = i3;
            } else if (i >= 102 && i <= 103) {
                m2955eR.f3156wn = i2;
            } else if (i == 6) {
                if (i2 == 50331648) {
                    m2955eR.f3154wl = 0;
                }
                m2955eR.f3155wm = i2;
            }
            m2970a(m2955eR);
        }
    }

    /* renamed from: eP */
    private C3327mu m2957eP() {
        C3327mu c3327mu = new C3327mu();
        c3327mu.f3152hg = C3183ih.m3497bW().m3537bt();
        c3327mu.f3161ws = m2956eQ();
        return c3327mu;
    }

    /* renamed from: eQ */
    private long m2956eQ() {
        int m3363aP = C3227ju.m3363aP("zygote");
        if (m3363aP == 0) {
            return -1L;
        }
        long m2966aq = m2966aq(m3363aP);
        if (m2966aq == 0) {
            return -2L;
        }
        return SystemClock.elapsedRealtime() - m2966aq;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v5, types: [java.io.Closeable, java.io.FileInputStream, java.io.InputStream] */
    /* renamed from: aq */
    private static long m2966aq(int i) {
        InputStreamReader inputStreamReader;
        BufferedReader bufferedReader;
        Closeable closeable;
        BufferedReader bufferedReader2;
        InputStreamReader inputStreamReader2 = null;
        try {
            ?? fileInputStream = new FileInputStream("/proc/" + i + "/stat");
            try {
                inputStreamReader = new InputStreamReader(fileInputStream);
                try {
                    bufferedReader = new BufferedReader(inputStreamReader, 1024);
                } catch (Exception e) {
                    bufferedReader2 = null;
                    inputStreamReader2 = inputStreamReader;
                    closeable = fileInputStream;
                } catch (Throwable th) {
                    th = th;
                    bufferedReader = null;
                    inputStreamReader2 = fileInputStream;
                }
                try {
                    String readLine = bufferedReader.readLine();
                    r0 = readLine != null ? Long.parseLong(readLine.split(" ")[21]) : 0L;
                    C3356nn.m2841a(bufferedReader);
                    C3356nn.m2841a(inputStreamReader);
                    C3356nn.m2841a(fileInputStream);
                } catch (Exception e2) {
                    inputStreamReader2 = inputStreamReader;
                    bufferedReader2 = bufferedReader;
                    closeable = fileInputStream;
                    C3356nn.m2841a(bufferedReader2);
                    C3356nn.m2841a(inputStreamReader2);
                    C3356nn.m2841a(closeable);
                    return (r0 * 1000) / C3310mj.f3127vO;
                } catch (Throwable th2) {
                    th = th2;
                    inputStreamReader2 = fileInputStream;
                    C3356nn.m2841a(bufferedReader);
                    C3356nn.m2841a(inputStreamReader);
                    C3356nn.m2841a(inputStreamReader2);
                    throw th;
                }
            } catch (Exception e3) {
                bufferedReader2 = null;
                closeable = fileInputStream;
            } catch (Throwable th3) {
                th = th3;
                inputStreamReader = null;
                bufferedReader = null;
                inputStreamReader2 = fileInputStream;
            }
        } catch (Exception e4) {
            closeable = null;
            bufferedReader2 = null;
        } catch (Throwable th4) {
            th = th4;
            inputStreamReader = null;
            bufferedReader = null;
        }
        return (r0 * 1000) / C3310mj.f3127vO;
    }

    /* renamed from: eR */
    private C3327mu m2955eR() {
        String m2959eN = m2959eN();
        if (TextUtils.isEmpty(m2959eN)) {
            return null;
        }
        return C3327mu.m2979bz(getString(EnumC0405cg.EMID_KingCommon_Uranus_Start_Result.f266id + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + m2959eN));
    }

    /* renamed from: a */
    private void m2969a(String str, C3327mu c3327mu) {
        m2951r(EnumC0405cg.EMID_KingCommon_Uranus_Start_Result.f266id + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + str, c3327mu.toString());
    }

    /* renamed from: a */
    private void m2970a(C3327mu c3327mu) {
        m2951r(EnumC0405cg.EMID_KingCommon_Uranus_Start_Result.f266id + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + m2959eN(), c3327mu.toString());
    }

    /* renamed from: r */
    private void m2951r(String str, String str2) {
        mo3164j(str, str2);
        ((InterfaceC3158hn) C3183ih.m3501a(InterfaceC3158hn.class)).mo3394g(str, str2);
    }
}
