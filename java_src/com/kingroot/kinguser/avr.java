package com.kingroot.kinguser;

import android.text.TextUtils;
import com.kingroot.loader.common.KlConst;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes.dex */
public class avr extends avj {
    private static volatile avr aUb;
    private final Object aTW;
    private volatile boolean aTX;
    private bed aTY;
    private HashMap<String, Integer> aUc;

    private avr() {
        super(40351);
        this.aUc = new HashMap<>();
        this.aTX = true;
        this.aTW = new Object();
        this.aTY = new bed(bem.HIGH, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.avr.1
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                avr.this.m8788RS();
            }
        });
        beg.m7461Zj().m7450c(this.aTY);
    }

    /* renamed from: RV */
    public static avr m8787RV() {
        if (aUb == null) {
            synchronized (avr.class) {
                if (aUb == null) {
                    aUb = new avr();
                }
            }
        }
        return aUb;
    }

    /* renamed from: az */
    public int m8781az(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        if (this.aTX) {
            m8788RS();
        }
        if (m8786RW()) {
            return 0;
        }
        int m8778jA = m8778jA(m8782aA(str, str2));
        if (m8778jA == 0) {
            int m8778jA2 = m8778jA(m8782aA(str, null));
            if (m8778jA2 == 0) {
                int m8778jA3 = m8778jA(m8782aA(null, str2));
                return m8778jA3 == 0 ? m8777jx(str) : m8778jA3;
            }
            return m8778jA2;
        }
        return m8778jA;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: RS */
    public synchronized void m8788RS() {
        HashMap<String, Integer> hashMap = new HashMap<>();
        if (this.aTX) {
            C2585br Rw = m8833Rw();
            if (Rw != null && Rw.f2063kU != null) {
                Iterator<C2565bq> it = Rw.f2063kU.iterator();
                while (it.hasNext()) {
                    C2565bq next = it.next();
                    String m8783a = m8783a(next);
                    int m8780h = m8780h(m8776jz(next.f2003kN));
                    if (m8780h != 0) {
                        hashMap.put(m8783a, Integer.valueOf(m8780h));
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
        m8788RS();
    }

    /* renamed from: h */
    private int m8780h(String[] strArr) {
        int[] m8779i;
        if (strArr == null || strArr.length <= 0 || (m8779i = m8779i(strArr)) == null) {
            return 0;
        }
        for (int i = 0; i < m8779i.length; i++) {
            if (m8779i[i] != 0) {
                return m8779i[i];
            }
        }
        return 0;
    }

    /* renamed from: i */
    private int[] m8779i(String[] strArr) {
        int i;
        if (strArr == null || strArr.length <= 0) {
            return null;
        }
        int[] m8888QZ = auw.m8888QZ();
        int[] iArr = new int[m8888QZ.length];
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
                    if (i3 < m8888QZ.length) {
                        if (m8888QZ[i3] != i) {
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
    private int m8777jx(String str) {
        if (TextUtils.isEmpty(str) || m8786RW()) {
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
                i = m8778jA(str2 + "*");
                if (i != 0) {
                    return i;
                }
            } else {
                return i;
            }
        }
        return i;
    }

    /* renamed from: a */
    private String m8783a(C2565bq c2565bq) {
        return m8782aA(c2565bq.f2002kM, c2565bq.f2004kO);
    }

    /* renamed from: aA */
    private String m8782aA(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return TextUtils.isEmpty(str2) ? str : str2;
        }
        return str + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + str2;
    }

    /* renamed from: jz */
    private String[] m8776jz(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return str.split(";");
    }

    /* renamed from: jA */
    private int m8778jA(String str) {
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
    private boolean m8786RW() {
        return this.aUc == null || this.aUc.isEmpty();
    }

    /* renamed from: RX */
    public Map<String, Integer> m8785RX() {
        m8788RS();
        return new HashMap(this.aUc);
    }
}
