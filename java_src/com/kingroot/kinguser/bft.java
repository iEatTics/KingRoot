package com.kingroot.kinguser;

import android.text.TextUtils;
import com.kingroot.kinguser.urlcheck.aidl.UrlCheckRule;
import com.kingroot.kinguser.urlcheck.p016db.UrlCheckLog;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class bft {
    private static cce<bft> bnd = new cce<bft>() { // from class: com.kingroot.kinguser.bft.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: aaN */
        public bft create() {
            return new bft();
        }
    };

    private bft() {
    }

    public static bft aaL() {
        return bnd.get();
    }

    /* renamed from: a */
    public List<UrlCheckLog> m7229a(boolean z, long j) {
        List<UrlCheckLog> m7215ws = bfu.m7215ws();
        Iterator<UrlCheckLog> it = m7215ws.iterator();
        while (it.hasNext()) {
            UrlCheckLog next = it.next();
            if (next.bnx != z) {
                it.remove();
            } else if (j != 0 && acu.m12571g(next.bnv, j)) {
                if (j == 7776000000L) {
                    m7226d(next);
                }
                it.remove();
            }
        }
        return m7215ws;
    }

    /* renamed from: c */
    public void m7227c(UrlCheckLog urlCheckLog) {
        if (bfu.m7217li(urlCheckLog.url) == null) {
            bfu.m7221f(urlCheckLog);
        } else {
            m7224e(urlCheckLog);
        }
    }

    /* renamed from: d */
    public void m7226d(UrlCheckLog urlCheckLog) {
        bfu.m7219h(urlCheckLog);
    }

    /* renamed from: lh */
    public void m7223lh(String str) {
        if (!TextUtils.isEmpty(str)) {
            bfu.m7216lj(str);
        }
    }

    /* renamed from: dP */
    public void m7225dP(boolean z) {
        bfu.m7222dR(z);
    }

    /* renamed from: bR */
    public void m7228bR(List<UrlCheckLog> list) {
        for (UrlCheckLog urlCheckLog : list) {
            if (urlCheckLog != null && !TextUtils.isEmpty(urlCheckLog.url)) {
                m7224e(urlCheckLog);
            }
        }
    }

    /* renamed from: e */
    public void m7224e(UrlCheckLog urlCheckLog) {
        UrlCheckLog m7217li = bfu.m7217li(urlCheckLog.url);
        if (m7217li != null) {
            urlCheckLog.bnx = true;
            m7217li.bnx = urlCheckLog.bnx;
            if (urlCheckLog.bnu > 0) {
                m7217li.bnu += urlCheckLog.bnu;
                m7217li.bnu = Math.min(m7217li.bnu, 999);
            }
            if (urlCheckLog.bnv > 0) {
                m7217li.bnv = urlCheckLog.bnv;
            }
            bfu.m7220g(m7217li);
            return;
        }
        bfu.m7221f(urlCheckLog);
    }

    public void addRule(UrlCheckRule urlCheckRule) {
        if (urlCheckRule != null) {
            bfv.m7214a(urlCheckRule);
        }
    }

    public List<UrlCheckRule> aaJ() {
        return bfv.aaJ();
    }

    public void aaM() {
        bfv.aaR();
    }

    public void deleteRule(UrlCheckRule urlCheckRule) {
        if (urlCheckRule != null) {
            bfv.m7213b(urlCheckRule);
        }
    }
}
