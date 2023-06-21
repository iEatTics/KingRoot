package com.kingroot.kinguser;

import com.kingroot.loader.host.stub.KlActivityMultiple1;
import com.kingroot.loader.host.stub.KlActivityMultiple2;
import com.kingroot.loader.host.stub.KlActivitySingleInstance1;
import com.kingroot.loader.host.stub.KlActivitySingleInstance2;
import com.kingroot.loader.host.stub.KlActivitySingleTask1;
import com.kingroot.loader.host.stub.KlActivitySingleTask2;
import com.kingroot.loader.host.stub.KlActivitySingleTop1;
import com.kingroot.loader.host.stub.KlActivitySingleTop2;
import java.util.HashMap;
import java.util.LinkedList;
/* loaded from: classes.dex */
public class bke {

    /* renamed from: a */
    private static final String f1711a = bke.class.getName();
    private static final LinkedList<C2481a> byZ = new LinkedList<>();
    private static final LinkedList<C2481a> bza;
    private static final LinkedList<C2481a> bzb;
    private static final LinkedList<C2481a> bzc;

    /* renamed from: f */
    private static final HashMap<String, Class<?>> f1712f;

    static {
        byZ.add(new C2481a(KlActivityMultiple1.class));
        byZ.add(new C2481a(KlActivityMultiple2.class));
        bza = new LinkedList<>();
        bza.add(new C2481a(KlActivitySingleInstance1.class));
        bza.add(new C2481a(KlActivitySingleInstance2.class));
        bzb = new LinkedList<>();
        bzb.add(new C2481a(KlActivitySingleTask1.class));
        bzb.add(new C2481a(KlActivitySingleTask2.class));
        bzc = new LinkedList<>();
        bzc.add(new C2481a(KlActivitySingleTop1.class));
        bzc.add(new C2481a(KlActivitySingleTop2.class));
        f1712f = new HashMap<>();
    }

    /* renamed from: com.kingroot.kinguser.bke$a */
    /* loaded from: classes.dex */
    static class C2481a {

        /* renamed from: b */
        String f1713b = null;
        final Class<?> bzd;

        C2481a(Class<?> cls) {
            this.bzd = cls;
        }
    }

    /* renamed from: e */
    private static String m6571e(int i, String str, int i2) {
        return i + ":" + str + ":" + i2;
    }

    /* renamed from: f */
    public static synchronized Class<?> m6570f(int i, String str, int i2) {
        Class<?> cls;
        LinkedList<C2481a> linkedList;
        synchronized (bke.class) {
            bkq.m6551d(f1711a, "getActivityClass, id : " + i + ", fname : " + str + ", launch mode : " + i2);
            String m6571e = m6571e(i, str, 0);
            cls = f1712f.get(m6571e);
            if (cls == null) {
                switch (i2) {
                    case 0:
                        linkedList = byZ;
                        break;
                    case 1:
                        linkedList = bzc;
                        break;
                    case 2:
                        linkedList = bzb;
                        break;
                    case 3:
                        linkedList = bza;
                        break;
                    default:
                        linkedList = byZ;
                        break;
                }
                C2481a removeFirst = linkedList.removeFirst();
                linkedList.addLast(removeFirst);
                Class<?> cls2 = removeFirst.bzd;
                bkq.m6551d(f1711a, "got clz : " + cls2.getName() + ", pre key : " + removeFirst.f1713b);
                if (removeFirst.f1713b != null) {
                    f1712f.remove(removeFirst.f1713b);
                }
                removeFirst.f1713b = m6571e;
                f1712f.put(removeFirst.f1713b, removeFirst.bzd);
                cls = cls2;
            } else {
                bkq.m6551d(f1711a, "got cached clz : " + cls.getName());
            }
        }
        return cls;
    }
}
