package com.kingroot.kinguser;

import java.util.Iterator;
/* loaded from: classes.dex */
public class cfe {
    /* renamed from: bi */
    private static final void m4635bi(String str, String str2) {
    }

    /* renamed from: bj */
    public static final void m4634bj(String str, String str2) {
        cgl.m4332d(65539, str + "|" + str2);
        m4635bi(str, str2);
    }

    /* renamed from: bk */
    public static final void m4633bk(String str, String str2) {
        cgl.m4333c(65539, str + "|" + str2);
        m4635bi(str, str2);
    }

    /* renamed from: v */
    public static final void m4630v(String str, String str2) {
        cgl.m4335a(65539, str + "|" + str2);
    }

    /* renamed from: a */
    public static final void m4637a(String str, String str2, C2036az c2036az, C2235bg c2235bg) {
        cgl.m4332d(65539, str + "|" + str2);
    }

    /* renamed from: b */
    public static final void m4636b(String str, String str2, C2036az c2036az, C2235bg c2235bg) {
        cgl.m4334b(65539, str + "|" + str2);
    }

    /* renamed from: c */
    public static final void m4632c(String str, String str2, C2036az c2036az, C2235bg c2235bg) {
        cgl.m4333c(65539, str + "|" + str2);
    }

    /* renamed from: a */
    public static final void m4638a(String str, C2273bh c2273bh) {
        StringBuilder sb = new StringBuilder();
        sb.append("ServerShark seqNo|" + c2273bh.seqNo + "|refSeqNo|" + c2273bh.f1675jX);
        if (c2273bh.f1676km != null && c2273bh.f1676km.size() > 0) {
            Iterator<C2235bg> it = c2273bh.f1676km.iterator();
            while (it.hasNext()) {
                C2235bg next = it.next();
                if (next.f1669jX != 0) {
                    sb.append(" || sashimi cmd|" + next.cmd + "|seqNo|" + next.seqNo + "|refSeqNo|" + next.f1669jX + "|retCode|" + next.retCode + "|dataRetCode|" + next.f1670jZ);
                } else {
                    sb.append(" || push cmd|" + next.cmd + "|seqNo|" + next.seqNo + "|refSeqNo|" + next.f1669jX + "|retCode|" + next.retCode + "|dataRetCode|" + next.f1670jZ + "|pushId|" + next.f1671kk.f1664jW);
                }
            }
        }
        m4630v(str, sb.toString());
    }

    /* renamed from: e */
    public static final void m4631e(String str, byte[] bArr) {
        try {
            m4638a(str, cew.m4685ae(bArr));
        } catch (Throwable th) {
            m4632c(str, cgp.getStackTraceString(th), null, null);
        }
    }
}
