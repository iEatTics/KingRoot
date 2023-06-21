package com.kingroot.kinguser;

import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class avp extends avj {
    private static String TAG = "ku_cloud_list_BlackWhite4ChannelCloudListManager";
    private static volatile avp aTT;
    private HashMap<String, List<avq>> aTU;
    private int aTV;
    private final Object aTW;
    private volatile boolean aTX;
    private bed aTY;
    private String ary;

    private avp() {
        super(40251);
        this.aTU = new HashMap<>();
        this.ary = "";
        this.aTV = 0;
        this.aTW = new Object();
        this.aTX = true;
        this.aTY = new bed(bem.IMMEDIATE, bec.Light_Weight, true, new bek() { // from class: com.kingroot.kinguser.avp.1
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                avp.this.m8799RS();
            }
        });
        beg.m7461Zj().m7450c(this.aTY);
    }

    /* renamed from: RQ */
    public static avp m8801RQ() {
        if (aTT == null) {
            synchronized (avp.class) {
                if (aTT == null) {
                    aTT = new avp();
                }
            }
        }
        return aTT;
    }

    /* renamed from: jw */
    public int m8792jw(String str) {
        if (!aks.m11143BP().m11109CX() || TextUtils.isEmpty(str)) {
            return 0;
        }
        String m13442ib = KApplication.m13442ib();
        if (TextUtils.isEmpty(this.ary) || !this.ary.contentEquals(m13442ib) || this.aTX) {
            m8799RS();
        }
        if (m8798RT()) {
            return 0;
        }
        int m8793bz = m8793bz(m8790jy(str));
        if (m8793bz == 0) {
            return m8791jx(str);
        }
        return m8793bz;
    }

    /* renamed from: RR */
    public int m8800RR() {
        if (!aks.m11143BP().m11109CX()) {
            return 0;
        }
        String m13442ib = KApplication.m13442ib();
        if (TextUtils.isEmpty(this.ary) || !this.ary.contentEquals(m13442ib) || this.aTX) {
            m8799RS();
        }
        return this.aTV;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: RS */
    public synchronized void m8799RS() {
        boolean z;
        if (aks.m11143BP().m11109CX()) {
            HashMap<String, List<avq>> hashMap = new HashMap<>();
            String m13442ib = KApplication.m13442ib();
            if (this.aTX) {
                C2585br Rw = m8833Rw();
                if (Rw != null && Rw.f2063kU != null) {
                    Iterator<C2565bq> it = Rw.f2063kU.iterator();
                    while (it.hasNext()) {
                        C2565bq next = it.next();
                        if (m8795ay(m13442ib, next.f2003kN)) {
                            String str = next.f2004kO;
                            List<avq> list = hashMap.get(str);
                            if (list == null) {
                                z = true;
                                list = new ArrayList<>();
                            } else {
                                z = false;
                            }
                            m8796a(m13442ib, str, next, list);
                            if (z) {
                                hashMap.put(str, list);
                            }
                        }
                    }
                }
                if (!hashMap.isEmpty()) {
                    synchronized (this.aTW) {
                        this.aTU.clear();
                        this.aTU = hashMap;
                    }
                }
                this.aTX = false;
            }
            this.ary = m13442ib;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.avj
    /* renamed from: uy */
    public void mo1472uy() {
        this.aTX = true;
        m8799RS();
    }

    /* renamed from: bz */
    private int m8793bz(List<avq> list) {
        int[] m8794bA;
        if (list == null || (m8794bA = m8794bA(list)) == null) {
            return 0;
        }
        for (int i = 0; i < m8794bA.length; i++) {
            if (m8794bA[i] != 0) {
                return m8794bA[i];
            }
        }
        return 0;
    }

    /* renamed from: bA */
    private int[] m8794bA(List<avq> list) {
        if (list == null) {
            return null;
        }
        int[] m8888QZ = auw.m8888QZ();
        int[] iArr = new int[m8888QZ.length];
        for (int i = 0; i < iArr.length; i++) {
            iArr[i] = 0;
        }
        for (avq avqVar : list) {
            avqVar.m8789RU();
            int type = avqVar.getType();
            int i2 = 0;
            while (true) {
                if (i2 < m8888QZ.length) {
                    if (m8888QZ[i2] != type) {
                        i2++;
                    } else {
                        iArr[i2] = type;
                        break;
                    }
                } else {
                    break;
                }
            }
        }
        for (int i3 = 0; i3 < iArr.length; i3++) {
        }
        return iArr;
    }

    /* renamed from: a */
    private void m8796a(String str, String str2, C2565bq c2565bq, List<avq> list) {
        int i = 0;
        try {
            i = Integer.valueOf(c2565bq.f2005kP).intValue();
            this.aTV = Integer.valueOf(c2565bq.f2006kQ).intValue();
        } catch (Exception e) {
        }
        list.add(new avq(str, str2, i));
    }

    /* renamed from: ay */
    private boolean m8795ay(String str, String str2) {
        String[] split;
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str) || (split = str2.split(";")) == null || split.length <= 0) {
            return false;
        }
        for (String str3 : split) {
            if (str.contentEquals(str3)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: jx */
    private int m8791jx(String str) {
        if (TextUtils.isEmpty(str) || m8798RT()) {
            return 0;
        }
        String[] split = str.split("\\.");
        if (split == null || split.length <= 0) {
            return 0;
        }
        int i = 0;
        for (int length = split.length - 1; length > 0; length--) {
            String str2 = "";
            for (int i2 = 0; i2 < length; i2++) {
                str2 = str2 + split[i2] + ".";
            }
            if (!TextUtils.isEmpty(str2)) {
                List<avq> m8790jy = m8790jy(str2 + "*");
                if (m8790jy != null && (i = m8793bz(m8790jy)) != 0) {
                    return i;
                }
            } else {
                return i;
            }
        }
        return i;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:8:0x000e -> B:9:0x000f). Please submit an issue!!! */
    /* renamed from: jy */
    private List<avq> m8790jy(String str) {
        List<avq> list = null;
        try {
            synchronized (this.aTW) {
                try {
                    List<avq> list2 = this.aTU.get(str);
                    try {
                        return list2;
                    } catch (Throwable th) {
                        list = list2;
                        th = th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
            try {
                throw th;
            } catch (Exception e) {
                return list;
            }
        } catch (Exception e2) {
            return null;
        }
    }

    /* renamed from: RT */
    private boolean m8798RT() {
        return this.aTU == null || this.aTU.isEmpty();
    }
}
