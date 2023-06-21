package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import com.kingroot.common.framework.broadcast.IBroadCastServiceCallback;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.kingroot.kinguser.tf */
/* loaded from: classes.dex */
public class C3627tf {

    /* renamed from: Hc */
    private static volatile C3627tf f3559Hc;

    /* renamed from: Hd */
    private Map<Integer, AbstractC3629a> f3560Hd = new HashMap();

    private C3627tf() {
        this.f3560Hd.put(0, new C3631c());
        this.f3560Hd.put(1, new C3630b());
    }

    /* renamed from: jB */
    private static C3627tf m2182jB() {
        if (f3559Hc == null) {
            synchronized (C3627tf.class) {
                if (f3559Hc == null) {
                    f3559Hc = new C3627tf();
                }
            }
        }
        return f3559Hc;
    }

    /* renamed from: a */
    public static void m2187a(Context context, Intent intent) {
        m2182jB().m2185b(context, intent);
    }

    /* renamed from: a */
    public static void m2188a(int i, Class<? extends AbstractC3634th> cls, String... strArr) {
        m2182jB().m2186b(i, cls, strArr);
    }

    /* renamed from: b */
    public static void m2184b(Class<? extends AbstractC3634th> cls) {
        m2182jB().m2183c(cls);
    }

    /* renamed from: b */
    public synchronized void m2185b(Context context, Intent intent) {
        for (Map.Entry<Integer, AbstractC3629a> entry : this.f3560Hd.entrySet()) {
            AbstractC3629a value = entry.getValue();
            if (value != null) {
                value.m2180c(context, intent);
            }
        }
    }

    /* renamed from: b */
    public synchronized void m2186b(int i, Class<? extends AbstractC3634th> cls, String... strArr) {
        AbstractC3629a abstractC3629a = this.f3560Hd.get(Integer.valueOf(i));
        if (abstractC3629a != null) {
            abstractC3629a.m2181a(cls, strArr);
        }
    }

    /* renamed from: c */
    public synchronized void m2183c(Class<? extends AbstractC3634th> cls) {
        if (cls != null) {
            for (Map.Entry<Integer, AbstractC3629a> entry : this.f3560Hd.entrySet()) {
                AbstractC3629a value = entry.getValue();
                if (value != null) {
                    value.m2179d(cls);
                }
            }
        }
    }

    /* renamed from: com.kingroot.kinguser.tf$c */
    /* loaded from: classes.dex */
    static class C3631c extends AbstractC3629a {
        private C3631c() {
        }

        @Override // com.kingroot.kinguser.C3627tf.AbstractC3629a
        /* renamed from: a */
        public void mo2178a(Context context, Intent intent, Class<? extends AbstractC3634th> cls) {
            if (cls != null) {
                try {
                    AbstractC3634th newInstance = cls.newInstance();
                    if (newInstance != null) {
                        newInstance.onReceive(context, intent);
                    }
                } catch (Exception e) {
                }
            }
        }
    }

    /* renamed from: com.kingroot.kinguser.tf$b */
    /* loaded from: classes.dex */
    static class C3630b extends AbstractC3629a {
        private C3630b() {
        }

        @Override // com.kingroot.kinguser.C3627tf.AbstractC3629a
        /* renamed from: a */
        public void mo2178a(Context context, Intent intent, Class<? extends AbstractC3634th> cls) {
            if (cls != null) {
                try {
                    IBroadCastServiceCallback m2174jE = C3635ti.m2174jE();
                    if (m2174jE != null) {
                        m2174jE.onReceive(cls.getName(), intent);
                    }
                } catch (Exception e) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.tf$a */
    /* loaded from: classes.dex */
    public static abstract class AbstractC3629a {

        /* renamed from: He */
        private Map<String, List<Class<? extends AbstractC3634th>>> f3561He = new HashMap();

        /* renamed from: a */
        public abstract void mo2178a(Context context, Intent intent, Class<? extends AbstractC3634th> cls);

        /* renamed from: a */
        public synchronized void m2181a(Class<? extends AbstractC3634th> cls, String... strArr) {
            if (strArr != null && cls != null) {
                for (String str : strArr) {
                    List<Class<? extends AbstractC3634th>> list = this.f3561He.get(str);
                    if (list == null) {
                        list = new ArrayList<>();
                        this.f3561He.put(str, list);
                    }
                    if (!list.contains(cls)) {
                        list.add(cls);
                    }
                }
            }
        }

        /* renamed from: d */
        public synchronized void m2179d(Class<? extends AbstractC3634th> cls) {
            if (cls != null) {
                for (Map.Entry<String, List<Class<? extends AbstractC3634th>>> entry : this.f3561He.entrySet()) {
                    List<Class<? extends AbstractC3634th>> value = entry.getValue();
                    if (value != null) {
                        value.remove(cls);
                    }
                }
            }
        }

        /* renamed from: c */
        public synchronized void m2180c(Context context, Intent intent) {
            List<Class<? extends AbstractC3634th>> list = this.f3561He.get(intent.getAction());
            if (list != null) {
                for (Class<? extends AbstractC3634th> cls : list) {
                    mo2178a(context, intent, cls);
                }
            }
        }
    }
}
