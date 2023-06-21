package com.kingroot.kinguser;

import android.os.Process;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.kingroot.common.utils.system.ProcessUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
/* loaded from: classes.dex */
public class bbn {
    private static final String TAG = aiq.ask + "_RequestCallStackDump";

    /* renamed from: hN */
    private static HashSet<Integer> m7796hN(int i) {
        List<ProcessUtils.ProcessInfo> m13134qJ = ProcessUtils.m13134qJ();
        if (C3942yy.m1351d(m13134qJ)) {
            return new HashSet<>();
        }
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        for (ProcessUtils.ProcessInfo processInfo : m13134qJ) {
            if (processInfo.uid == 0 && processInfo.name.contains("zygote")) {
                hashSet.add(Integer.valueOf(processInfo.pid));
            }
            if (processInfo.uid == i) {
                hashSet2.add(processInfo);
                hashSet3.add(Integer.valueOf(processInfo.pid));
            }
        }
        HashSet<Integer> hashSet4 = new HashSet<>();
        Iterator it = hashSet2.iterator();
        while (it.hasNext()) {
            ProcessUtils.ProcessInfo processInfo2 = (ProcessUtils.ProcessInfo) it.next();
            int i2 = processInfo2.ppid;
            if (hashSet.contains(Integer.valueOf(i2))) {
                hashSet4.add(Integer.valueOf(processInfo2.pid));
            } else if (i2 != 1 && !hashSet3.contains(Integer.valueOf(i2))) {
                hashSet4.add(Integer.valueOf(processInfo2.pid));
            }
        }
        return hashSet4;
    }

    @Nullable
    /* renamed from: M */
    public static List<String> m7798M(String str, int i) {
        if (i < 10000 || i == Process.myUid() || TextUtils.equals(str, akf.m11306An())) {
            return null;
        }
        abc m12845qK = abc.m12845qK();
        if (!m12845qK.isRootPermition() || avy.m8721Sr().m8716jD(str) == null) {
            return null;
        }
        return m7797a(m12845qK, str, i);
    }

    /* renamed from: a */
    private static synchronized List<String> m7797a(abc abcVar, String str, int i) {
        ArrayList arrayList;
        synchronized (bbn.class) {
            arrayList = new ArrayList();
            avy m8721Sr = avy.m8721Sr();
            avx m8716jD = m8721Sr.m8716jD(str);
            if (m8716jD == null) {
                arrayList = null;
            } else {
                File m7819ac = bbj.m7819ac(1, 8);
                if (m7819ac == null) {
                    m8721Sr.m8717a(m8716jD);
                    arrayList.add(bbi.m7820hM(-1));
                } else {
                    HashSet<Integer> m7796hN = m7796hN(i);
                    if (C3942yy.m1351d(m7796hN)) {
                        m8721Sr.m8717a(m8716jD);
                        arrayList.add(bbi.m7820hM(-2));
                    } else {
                        String m11492a = aja.m11492a("/dev/kinguser.req.cache/rd.cache", new ArrayList(m7796hN));
                        if (m11492a == null) {
                            m8721Sr.m8717a(m8716jD);
                            arrayList.add(bbi.m7820hM(-3));
                        } else {
                            ArrayList arrayList2 = new ArrayList();
                            arrayList2.add(m11492a);
                            arrayList2.add(String.format(Locale.US, "chown %d.%d %s", Integer.valueOf(Process.myUid()), Integer.valueOf(Process.myUid()), "/dev/kinguser.req.cache/rd.cache"));
                            arrayList2.add(String.format(Locale.US, "chmod 0%o %s", 384, "/dev/kinguser.req.cache/rd.cache"));
                            arrayList2.add(String.format(Locale.US, "chcon %1$s %2$s;/system/bin/toolbox chcon %1$s %2$s", "u:r:untrusted_app:s0", "/dev/kinguser.req.cache/rd.cache"));
                            abcVar.mo4996e(arrayList2, true);
                            try {
                                AbstractC3969zo.m1271a(new File("/dev/kinguser.req.cache/rd.cache"), m7819ac, false);
                                arrayList.add(m7819ac.getAbsolutePath());
                                abcVar.m12846el(aas.f1260XV + "/dev/kinguser.req.cache/rd.cache");
                                m8721Sr.m8717a(m8716jD);
                            } catch (Exception e) {
                                m8721Sr.m8717a(m8716jD);
                                arrayList.add(bbi.m7820hM(-4));
                            }
                        }
                    }
                }
            }
        }
        return arrayList;
    }
}
