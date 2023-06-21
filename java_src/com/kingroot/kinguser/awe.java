package com.kingroot.kinguser;

import android.text.TextUtils;
import com.kingroot.loader.common.KlConst;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes.dex */
public class awe extends avj {
    private static volatile awe aUM;
    private static final int[] aUN = {4, 3, 1, 2, 5};
    private final Object aTW;
    private volatile boolean aTX;
    private bed aTY;
    private HashMap<String, Integer> aUc;

    private awe() {
        super(40436);
        this.aUc = new HashMap<>();
        this.aTX = true;
        this.aTW = new Object();
        this.aTY = new bed(bem.IMMEDIATE, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.awe.1
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                awe.this.m8676SJ();
            }
        });
        beg.m7461Zj().m7450c(this.aTY);
    }

    /* renamed from: SI */
    public static awe m8677SI() {
        if (aUM == null) {
            synchronized (awe.class) {
                if (aUM == null) {
                    aUM = new awe();
                }
            }
        }
        return aUM;
    }

    /* renamed from: jw */
    public int m8667jw(String str) {
        try {
            return m8671az(str, aaz.m12872dZ(str));
        } catch (Exception e) {
            return 0;
        }
    }

    /* renamed from: aB */
    public int m8672aB(String str, String str2) {
        try {
            String m12872dZ = aaz.m12872dZ(str);
            if (m12872dZ == null) {
                m12872dZ = aaz.m12871ea(str2);
            }
            return m8671az(str, m12872dZ);
        } catch (Exception e) {
            return 0;
        }
    }

    /* renamed from: az */
    public int m8671az(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        if (this.aTX) {
            m8676SJ();
        }
        if (m8679RW()) {
            return 0;
        }
        int m8668jA = m8668jA(m8673aA(str, str2));
        if (m8668jA == 0) {
            int m8668jA2 = m8668jA(m8673aA(str, null));
            if (m8668jA2 == 0) {
                int m8668jA3 = m8668jA(m8673aA(null, str2));
                return m8668jA3 == 0 ? m8666jx(str) : m8668jA3;
            }
            return m8668jA2;
        }
        return m8668jA;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: SJ */
    public synchronized void m8676SJ() {
        HashMap<String, Integer> hashMap = new HashMap<>();
        if (this.aTX) {
            C2585br Rw = m8833Rw();
            if (Rw != null && Rw.f2063kU != null) {
                Iterator<C2565bq> it = Rw.f2063kU.iterator();
                while (it.hasNext()) {
                    C2565bq next = it.next();
                    String m8674a = m8674a(next);
                    int m8670h = m8670h(m8665jz(next.f2004kO));
                    if (m8670h != 0) {
                        hashMap.put(m8674a, Integer.valueOf(m8670h));
                    }
                }
            }
            if (!hashMap.isEmpty()) {
                synchronized (this.aTW) {
                    this.aUc.clear();
                    this.aUc = hashMap;
                }
            }
            this.aTX = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.avj
    /* renamed from: uy */
    public void mo1472uy() {
        this.aTX = true;
        m8676SJ();
    }

    /* renamed from: h */
    private int m8670h(String[] strArr) {
        if (strArr == null || strArr.length <= 0) {
            return 0;
        }
        int[] m8669i = m8669i(strArr);
        if (m8669i != null) {
            for (int i : m8669i) {
                if (i != 0) {
                    return i;
                }
            }
        }
        return 0;
    }

    /* renamed from: i */
    private int[] m8669i(String[] strArr) {
        int i;
        if (strArr == null || strArr.length <= 0) {
            return null;
        }
        int[] iArr = new int[aUN.length];
        for (int i2 = 0; i2 < iArr.length; i2++) {
            iArr[i2] = 0;
        }
        for (String str : strArr) {
            try {
                i = Integer.parseInt(str);
            } catch (Exception e) {
                i = 0;
            }
            if (i != 0) {
                int i3 = 0;
                while (true) {
                    if (i3 < aUN.length) {
                        if (aUN[i3] != i) {
                            i3++;
                        } else {
                            iArr[i3] = i;
                            break;
                        }
                    } else {
                        break;
                    }
                }
            }
        }
        return iArr;
    }

    /* renamed from: jx */
    private int m8666jx(String str) {
        if (TextUtils.isEmpty(str) || m8679RW()) {
            return 0;
        }
        String[] split = str.split("\\.");
        if (split.length > 0) {
            int i = 0;
            for (int length = split.length - 1; length > 0; length--) {
                String str2 = "";
                for (int i2 = 0; i2 < length; i2++) {
                    str2 = str2 + split[i2] + ".";
                }
                if (TextUtils.isEmpty(str2)) {
                    break;
                }
                i = m8668jA(str2 + "*");
                if (i != 0) {
                    return i;
                }
            }
            return i;
        }
        return 0;
    }

    /* renamed from: a */
    private String m8674a(C2565bq c2565bq) {
        return m8673aA(c2565bq.f2002kM, c2565bq.f2003kN);
    }

    /* renamed from: aA */
    private String m8673aA(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return TextUtils.isEmpty(str2) ? str : str2;
        }
        return str + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + str2;
    }

    /* renamed from: jz */
    private String[] m8665jz(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return str.split(";");
    }

    /* renamed from: jA */
    private int m8668jA(String str) {
        int i = 0;
        try {
            synchronized (this.aTW) {
                try {
                    int intValue = this.aUc.get(str).intValue();
                    try {
                        return intValue;
                    } catch (Throwable th) {
                        i = intValue;
                        th = th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
            throw th;
        } catch (Exception e) {
            return i;
        }
    }

    /* renamed from: RW */
    private boolean m8679RW() {
        return this.aUc == null || this.aUc.isEmpty();
    }

    /* renamed from: RX */
    public Map<String, Integer> m8678RX() {
        m8676SJ();
        return new HashMap(this.aUc);
    }
}
