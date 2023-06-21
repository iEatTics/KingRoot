package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceStruct;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
/* loaded from: classes.dex */
public class awl {
    /* renamed from: SV */
    public static synchronized void m8634SV() {
        synchronized (awl.class) {
            try {
                ArrayList<C1715a> m8633SW = m8633SW();
                if (m8633SW == null || m8633SW.size() <= 0) {
                    awj.m8641f(141, 1001, "");
                } else {
                    C3235k c3235k = new C3235k();
                    c3235k.f2922ev = 141;
                    c3235k.f2923ew = new ArrayList<>();
                    Iterator<C1715a> it = m8633SW.iterator();
                    while (it.hasNext()) {
                        C1715a next = it.next();
                        C3267l c3267l = new C3267l();
                        c3267l.f2988ey = new HashMap();
                        c3267l.f2988ey.put(1, next.f1621kF);
                        c3267l.f2988ey.put(7, String.valueOf(next.time));
                        c3235k.f2923ew.add(c3267l);
                    }
                    cav.akt().m5033a(4060, c3235k, null, new cat() { // from class: com.kingroot.kinguser.awl.1
                        @Override // com.kingroot.kinguser.cat
                        /* renamed from: a */
                        public void mo2689a(int i, int i2, int i3, int i4, JceStruct jceStruct) {
                            if (i3 == 0 && i4 == 0) {
                                awi.m8652ck(System.currentTimeMillis() / 1000);
                            }
                        }
                    });
                }
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: SW */
    private static ArrayList<C1715a> m8633SW() {
        File[] listFiles;
        ArrayList<C1715a> arrayList = new ArrayList<>();
        try {
            File file = new File(C3565ru.m2320iY() + "/tencent/MicroMsg/");
            if (file.exists()) {
                for (File file2 : file.listFiles()) {
                    if (file2.getName().length() == 32) {
                        C1715a c1715a = new C1715a();
                        c1715a.f1621kF = file2.getName();
                        c1715a.time = m8635G(file2) / 1000;
                        arrayList.add(c1715a);
                    }
                }
            }
        } catch (Throwable th) {
        }
        return arrayList;
    }

    /* renamed from: G */
    private static long m8635G(File file) {
        File[] listFiles = file.listFiles();
        long j = 0;
        int length = listFiles.length;
        int i = 0;
        while (i < length) {
            long lastModified = listFiles[i].lastModified();
            if (lastModified <= j) {
                lastModified = j;
            }
            i++;
            j = lastModified;
        }
        return j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.awl$a */
    /* loaded from: classes.dex */
    public static class C1715a {

        /* renamed from: kF */
        public String f1621kF;
        public long time;

        C1715a() {
        }
    }
}
