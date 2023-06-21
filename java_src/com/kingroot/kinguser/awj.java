package com.kingroot.kinguser;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.kingroot.kinguser.aae;
import com.p019qq.taf.jce.JceStruct;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import tmsdk.common.TMSDKContext;
/* loaded from: classes.dex */
public class awj {
    /* renamed from: bF */
    public static synchronized void m8642bF(List<String> list) {
        synchronized (awj.class) {
            awi.m8653bE(list);
        }
    }

    /* renamed from: ST */
    public static synchronized void m8644ST() {
        int i;
        int i2;
        synchronized (awj.class) {
            long currentTimeMillis = System.currentTimeMillis() / 1000;
            Context akS = TMSDKContext.akS();
            boolean m1917S = C3748vb.m1917S(akS);
            C3748vb.m1918R(akS);
            awh m8648ho = awi.m8648ho(141);
            if (m8648ho != null && m8648ho.aUR && m1917S) {
                int i3 = 0;
                try {
                    i3 = Integer.valueOf(m8648ho.aUT).intValue();
                } catch (Throwable th) {
                }
                if (i3 <= 0) {
                    i3 = 168;
                }
                if (currentTimeMillis - awi.m8659SN() > i3 * 3600) {
                    awl.m8634SV();
                }
            }
            awh m8648ho2 = awi.m8648ho(163);
            if (m8648ho2 != null && m8648ho2.aUR) {
                int i4 = 0;
                try {
                    i4 = m8648ho2.aUS;
                    i = i4;
                    i2 = Integer.valueOf(m8648ho2.aUT).intValue();
                } catch (Throwable th2) {
                    i = i4;
                    i2 = 0;
                }
                if (i <= 0) {
                    i = 1;
                }
                if (i2 <= 0) {
                    i2 = 1;
                }
                if (awi.m8657SP() <= 0 || currentTimeMillis - awi.m8657SP() >= i * 3600) {
                    awm.m8632SX();
                }
                if (awi.m8656SQ() <= 0) {
                    awi.m8650cm(currentTimeMillis);
                } else if (m1917S && currentTimeMillis - awi.m8656SQ() > i2 * 3600) {
                    awm.m8631SY();
                }
            }
        }
    }

    /* renamed from: f */
    public static synchronized void m8640f(String str, String str2, int i) {
        synchronized (awj.class) {
            try {
                if (!TextUtils.isEmpty(str)) {
                    ArrayList<byte[]> m8638jM = m8638jM(str2);
                    if (m8638jM.size() < 500) {
                        File file = new File(str2);
                        if (!file.exists()) {
                            file.createNewFile();
                        }
                        if (i == 163) {
                            m8638jM = new ArrayList<>();
                        }
                        m8638jM.add(aae.m13007a(aae.EnumC0609a.XXTEA2).mo12989C(str.getBytes()));
                        ObjectOutputStream objectOutputStream = new ObjectOutputStream(new FileOutputStream(file));
                        objectOutputStream.writeObject(m8638jM);
                        objectOutputStream.flush();
                        objectOutputStream.close();
                    }
                }
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: jL */
    public static synchronized ArrayList<String> m8639jL(String str) {
        ArrayList<String> arrayList;
        synchronized (awj.class) {
            arrayList = new ArrayList<>();
            try {
                ArrayList<byte[]> m8638jM = m8638jM(str);
                if (m8638jM.size() > 0) {
                    Iterator<byte[]> it = m8638jM.iterator();
                    while (it.hasNext()) {
                        arrayList.add(new String(aae.m13007a(aae.EnumC0609a.XXTEA2).mo12988D(it.next())));
                    }
                }
            } catch (Throwable th) {
            }
        }
        return arrayList;
    }

    /* renamed from: jM */
    static synchronized ArrayList<byte[]> m8638jM(String str) {
        ArrayList<byte[]> arrayList;
        synchronized (awj.class) {
            ArrayList<byte[]> arrayList2 = new ArrayList<>();
            if (new File(str).exists()) {
                ObjectInputStream objectInputStream = new ObjectInputStream(new FileInputStream(str));
                ArrayList arrayList3 = (ArrayList) objectInputStream.readObject();
                if (arrayList3 != null && arrayList3.size() > 0) {
                    arrayList2.addAll(arrayList3);
                }
                objectInputStream.close();
                arrayList = arrayList2;
            } else {
                arrayList = arrayList2;
            }
        }
        return arrayList;
    }

    /* renamed from: jN */
    public static synchronized void m8637jN(String str) {
        synchronized (awj.class) {
            try {
                File file = new File(str);
                if (file.exists()) {
                    file.delete();
                }
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: SU */
    public static boolean m8643SU() {
        long m8655SR = awi.m8655SR();
        long currentTimeMillis = System.currentTimeMillis() - SystemClock.elapsedRealtime();
        if (Math.abs(currentTimeMillis - m8655SR) < 2000) {
            return false;
        }
        awi.m8649cn(currentTimeMillis);
        return true;
    }

    /* renamed from: f */
    public static synchronized void m8641f(int i, int i2, String str) {
        synchronized (awj.class) {
            if (str == null) {
                str = "";
            }
            try {
                C3235k c3235k = new C3235k();
                c3235k.f2922ev = 184;
                c3235k.f2923ew = new ArrayList<>();
                C3267l c3267l = new C3267l();
                c3267l.f2988ey = new HashMap();
                c3267l.f2988ey.put(1, String.valueOf(i));
                c3267l.f2988ey.put(2, String.valueOf(i2));
                c3267l.f2988ey.put(3, str);
                c3235k.f2923ew.add(c3267l);
                awn.m8629Ta().m8628a(4060, c3235k, null, new cat() { // from class: com.kingroot.kinguser.awj.1
                    @Override // com.kingroot.kinguser.cat
                    /* renamed from: a */
                    public void mo2689a(int i3, int i4, int i5, int i6, JceStruct jceStruct) {
                    }
                });
            } catch (Throwable th) {
            }
        }
    }
}
