package com.kingroot.kinguser;

import android.content.Context;
import android.text.TextUtils;
import com.king.uranus.C0430y;
import com.kingroot.loader.common.KlConst;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* renamed from: com.kingroot.kinguser.na */
/* loaded from: classes.dex */
public final class C3336na implements InterfaceC3283lo, InterfaceC3326mt {
    private static final String TAG = "Uranus_" + C3336na.class.getSimpleName();

    /* renamed from: wL */
    private static C3336na f3175wL = new C3336na();
    private Context mContext;

    /* renamed from: wM */
    private InterfaceC3284lp f3176wM;

    private C3336na() {
    }

    /* renamed from: eT */
    public static C3336na m2931eT() {
        return f3175wL;
    }

    /* renamed from: a */
    public void m2936a(Context context, InterfaceC3284lp interfaceC3284lp) {
        this.mContext = context;
        this.f3176wM = interfaceC3284lp;
    }

    private Context getContext() {
        return this.mContext;
    }

    /* renamed from: eU */
    public InterfaceC3284lp m2930eU() {
        return this.f3176wM;
    }

    /* renamed from: b */
    public void m2933b(long j) {
        C3357no.m2832fl().m2833a(new C3337nb(this, getContext()), j);
    }

    @Override // com.kingroot.kinguser.InterfaceC3283lo
    /* renamed from: c */
    public void mo2932c() {
        m2938A(getContext());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: A */
    public synchronized void m2938A(Context context) {
        int m2929eV;
        if (C3237kb.m3312k(context) && (m2929eV = m2929eV()) != 0) {
            Set<Map.Entry<String, String>> entrySet = m2930eU().getAll().entrySet();
            if (entrySet.size() != 0) {
                m2928eW();
                ArrayList arrayList = new ArrayList();
                HashSet hashSet = new HashSet();
                for (Map.Entry<String, String> entry : entrySet) {
                    String value = entry.getValue();
                    String key = entry.getKey();
                    if (value != null && !TextUtils.isEmpty(key)) {
                        String[] split = key.split(KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR);
                        if (split.length != 2) {
                            m2930eU().remove(key);
                        } else {
                            int intValue = Integer.valueOf(split[0]).intValue();
                            long longValue = Long.valueOf(split[1]).longValue();
                            C0430y c0430y = new C0430y();
                            c0430y.f433id = intValue;
                            c0430y.f428aJ = (int) (System.currentTimeMillis() / 1000);
                            c0430y.f429bD = "1";
                            c0430y.f431bF = m2937a(intValue, longValue, value.toString());
                            hashSet.add(key);
                            arrayList.add(c0430y);
                            if (arrayList.size() >= m2929eV) {
                                break;
                            }
                        }
                    }
                }
                if (arrayList.size() != 0) {
                    int m3435a = C3208jc.m3435a(context, arrayList, C3339nd.m2917eY());
                    InterfaceC3158hn interfaceC3158hn = (InterfaceC3158hn) C3183ih.m3501a(InterfaceC3158hn.class);
                    if (m3435a == 0) {
                        interfaceC3158hn.mo3399bc();
                        m2934as(hashSet.size());
                        m2930eU().mo3166a(hashSet);
                    } else {
                        interfaceC3158hn.mo3401J(m3435a);
                    }
                }
            }
        }
    }

    /* renamed from: eV */
    private int m2929eV() {
        C3249kk m3277cY = C3249kk.m3277cY();
        long j = m3277cY.getLong("last_upload_period_start_time");
        long currentTimeMillis = System.currentTimeMillis();
        if (Math.abs(currentTimeMillis - j) >= 86400000) {
            m3277cY.mo3165b("last_upload_period_start_time", currentTimeMillis);
            m3277cY.mo3167a("already_upload_stat_count_today", 0);
            return 50;
        }
        int i = m3277cY.getInt("already_upload_stat_count_today");
        if (i >= 50) {
            return 0;
        }
        return 50 - i;
    }

    /* renamed from: as */
    private void m2934as(int i) {
        C3249kk m3277cY = C3249kk.m3277cY();
        m3277cY.mo3167a("already_upload_stat_count_today", m3277cY.getInt("already_upload_stat_count_today") + i);
    }

    /* renamed from: a */
    private String m2937a(int i, long j, String str) {
        try {
            String m2923a = C3339nd.m2917eY().m2923a(this.mContext, (int) (j / 1000));
            StringBuilder sb = new StringBuilder();
            for (String str2 : str.split("\\|")) {
                sb.append(C3328mv.m2977bA(str2));
                sb.append("|");
            }
            ((InterfaceC3158hn) C3183ih.m3501a(InterfaceC3158hn.class)).mo3397c(i, str);
            return m2923a + "|" + sb.toString();
        } catch (Throwable th) {
            return "";
        }
    }

    /* renamed from: eW */
    private void m2928eW() {
        C3339nd m2917eY = C3339nd.m2917eY();
        ((InterfaceC3158hn) C3183ih.m3501a(InterfaceC3158hn.class)).mo3395e(m2917eY.mo2918cs(), m2917eY.m2924D(this.mContext), "096CE82CAD7A6725|40|1.6.1");
    }
}
