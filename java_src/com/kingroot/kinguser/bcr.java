package com.kingroot.kinguser;

import android.content.SharedPreferences;
import android.support.annotation.NonNull;
import com.kingroot.common.app.KApplication;
import com.kingroot.common.utils.system.VTCmdResult;
import com.kingroot.kinguser.security.entity.MaliciousFileInfo;
import com.kingroot.kinguser.util.protect.RebootStat;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class bcr extends bcq {
    public static final Map<String, bdh> biB = new HashMap();
    private static final cce<bcr> sInstance = new cce<bcr>() { // from class: com.kingroot.kinguser.bcr.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: XW */
        public bcr create() {
            return new bcr();
        }
    };
    private Map<String, MaliciousFileInfo> biA = new HashMap();

    /* renamed from: XT */
    public static bcr m7604XT() {
        return sInstance.get();
    }

    @Override // com.kingroot.kinguser.bcq
    /* renamed from: dE */
    protected Map<String, bdh> mo7592dE(boolean z) {
        boolean z2;
        boolean z3;
        List<MaliciousFileInfo> m8711dj = awa.m8712Sw().m8711dj(z);
        for (MaliciousFileInfo maliciousFileInfo : m8711dj) {
        }
        if (C3942yy.m1352c(m8711dj)) {
            return biB;
        }
        HashMap hashMap = new HashMap();
        Map<String, ?> m7602XV = m7602XV();
        boolean z4 = false;
        boolean z5 = false;
        for (MaliciousFileInfo maliciousFileInfo2 : m8711dj) {
            String m2281jk = maliciousFileInfo2.m2281jk();
            if (new File(m2281jk).exists()) {
                if (m2281jk.startsWith("/system/")) {
                    if (!z5) {
                        z4 = abc.m12845qK().isRootPermition() && aio.m11606d(abc.m12845qK());
                        z5 = true;
                    }
                    if (z4) {
                    }
                }
                boolean z6 = z5;
                boolean z7 = z4;
                Object obj = m7602XV.get(m2281jk);
                if (obj == null || ((Integer) obj).intValue() < 2) {
                    bdh bdhVar = new bdh();
                    bdhVar.name = maliciousFileInfo2.m2281jk();
                    bdhVar.level = maliciousFileInfo2.m2283Yt();
                    bdhVar.desc = maliciousFileInfo2.m2284Ys();
                    hashMap.put(m2281jk, bdhVar);
                    z2 = z7;
                    z3 = z6;
                } else {
                    z4 = z7;
                    z5 = z6;
                }
            } else {
                z2 = z4;
                z3 = z5;
            }
            z5 = z3;
            z4 = z2;
        }
        return hashMap;
    }

    @Override // com.kingroot.kinguser.bcq
    /* renamed from: i */
    protected boolean mo7591i(List<String> list, int i) {
        boolean z = true;
        Iterator<C2106a> it = m7599bM(list).iterator();
        while (true) {
            boolean z2 = z;
            if (it.hasNext()) {
                C2106a next = it.next();
                if (next.success()) {
                    z = z2;
                } else {
                    m7601a(next, i);
                    z = false;
                }
            } else {
                return z2;
            }
        }
    }

    @Override // com.kingroot.kinguser.bcq
    /* renamed from: XO */
    protected String mo7595XO() {
        return "malicious";
    }

    /* renamed from: XU */
    public void m7603XU() {
        bho.m6977a(bho.m6979S("maliciousrb5001", 0), new bhn() { // from class: com.kingroot.kinguser.bcr.2
            @Override // com.kingroot.kinguser.bhn
            /* renamed from: c */
            public void mo6981c(RebootStat rebootStat) {
            }

            @Override // com.kingroot.kinguser.bhn
            /* renamed from: a */
            public void mo6983a(RebootStat rebootStat, int i) {
                bcr.this.m7597kG(rebootStat.m1977iP(0));
                ady.m12308tK().mo1746bi(100405);
            }

            @Override // com.kingroot.kinguser.bhn
            /* renamed from: b */
            public void mo6982b(RebootStat rebootStat) {
            }

            @Override // com.kingroot.kinguser.bhn
            /* renamed from: d */
            public void mo6980d(RebootStat rebootStat) {
            }
        });
    }

    /* renamed from: bM */
    private List<C2106a> m7599bM(List<String> list) {
        if (C3942yy.m1352c(list)) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        abc m12845qK = abc.m12845qK();
        if (!m12845qK.isRootPermition()) {
            return m7598bN(list);
        }
        bbz.m7742c(new HashSet(list), new HashSet());
        ArrayList arrayList2 = new ArrayList();
        for (String str : list) {
            RebootStat m6979S = bho.m6979S("maliciousrb5001", 0);
            bho.m6977a(m6979S, null);
            m6979S.m1979R(0, str);
            bho.m6976b(m6979S, 1, "");
            arrayList2.addAll(aar.m12944r(str, false));
            arrayList2.add(aas.f1260XV + str);
            List<VTCmdResult> runRootCommands = m12845qK.runRootCommands(arrayList2);
            C2106a c2106a = new C2106a();
            c2106a.filePath = str;
            VTCmdResult vTCmdResult = (runRootCommands.size() <= 0 || runRootCommands.size() != arrayList2.size()) ? null : runRootCommands.get(runRootCommands.size() - 1);
            if (vTCmdResult != null) {
                if (vTCmdResult.success()) {
                    c2106a.biE = 0;
                } else {
                    c2106a.biE = 3;
                    c2106a.info = vTCmdResult.mStdErr;
                }
            }
            bho.m6973d(m6979S, null);
            arrayList2.clear();
            arrayList.add(c2106a);
        }
        m12845qK.m12846el(aas.f1257XS);
        return arrayList;
    }

    /* renamed from: bN */
    private List<C2106a> m7598bN(List<String> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (String str : list) {
            arrayList.add(new C2106a(str, abi.m12831em(new StringBuilder().append(aas.f1260XV).append(str).toString()).success() ? 0 : 3, "", false));
        }
        return arrayList;
    }

    /* renamed from: a */
    private void m7601a(@NonNull C2106a c2106a, int i) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(c2106a.biE));
        arrayList.add(c2106a.info);
        arrayList.add(c2106a.filePath);
        arrayList.add(Integer.valueOf(i));
        arrayList.add(c2106a.biD ? "1" : "2");
        ady.m12308tK().mo1748a(100409, 0, (List<Object>) arrayList, true);
    }

    /* renamed from: XV */
    private Map<String, ?> m7602XV() {
        return KApplication.m13453ge().getSharedPreferences("maliciousrb5000", 0).getAll();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: kG */
    public void m7597kG(String str) {
        SharedPreferences sharedPreferences = KApplication.m13453ge().getSharedPreferences("maliciousrb5000", 0);
        sharedPreferences.edit().putInt(str, sharedPreferences.getInt(str, 0) + 1).commit();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.bcr$a */
    /* loaded from: classes.dex */
    public static final class C2106a {
        public boolean biD;
        public int biE;
        public String filePath;
        public String info;

        public C2106a(String str, int i, String str2, boolean z) {
            this.biD = true;
            this.biE = 0;
            this.info = "";
            this.filePath = str;
            this.biE = i;
            this.info = str2;
            this.biD = z;
        }

        public C2106a() {
            this.biD = true;
            this.biE = 0;
            this.info = "";
        }

        public boolean success() {
            return this.biE == 0;
        }
    }
}
