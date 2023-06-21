package com.tencent.feedback.proguard;

import android.content.Context;
import com.tencent.feedback.common.C4071c;
import com.tencent.feedback.common.C4073e;
import com.tencent.feedback.upload.AbstractUploadDatas;
import java.util.ArrayList;
import java.util.HashMap;
/* renamed from: com.tencent.feedback.proguard.B */
/* loaded from: classes.dex */
public final class C4100B extends AbstractUploadDatas {

    /* renamed from: d */
    private RunnableC4148z f4622d;

    /* renamed from: e */
    private byte f4623e;

    public C4100B(Context context, RunnableC4148z runnableC4148z, byte b) {
        super(context, 1111, 520);
        this.f4622d = null;
        this.f4623e = (byte) -1;
        this.f4622d = runnableC4148z;
        this.f4623e = b;
    }

    @Override // com.tencent.feedback.upload.AbstractUploadDatas
    public final synchronized void done(boolean z) {
    }

    @Override // com.tencent.feedback.upload.AbstractUploadDatas
    /* renamed from: a */
    public final synchronized C4113O mo537a() {
        return m767e();
    }

    /* renamed from: e */
    private synchronized C4113O m767e() {
        C4113O c4113o = null;
        synchronized (this) {
            try {
                C4118T m768a = m768a(this.f4826c, this.f4622d, this.f4623e);
                if (m768a != null) {
                    c4113o = m542a(this.f4826c, this.f4824a, m768a.m668a());
                }
            } catch (Throwable th) {
                if (!C4073e.m1016a(th)) {
                    th.printStackTrace();
                }
            }
        }
        return c4113o;
    }

    /* renamed from: a */
    public static C4118T m768a(Context context, RunnableC4148z runnableC4148z, byte b) {
        C4071c m1088a;
        String m1101H;
        C4137r[] m556a;
        if (runnableC4148z == null || context == null || (m556a = runnableC4148z.m556a((m1101H = (m1088a = C4071c.m1088a(context)).m1101H()))) == null || m556a.length <= 0) {
            return null;
        }
        runnableC4148z.m555a(m556a);
        ArrayList<C4117S> arrayList = new ArrayList<>(m556a.length);
        for (C4137r c4137r : m556a) {
            C4117S c4117s = new C4117S();
            c4117s.f4699a = c4137r.m616a();
            c4117s.f4702d = c4137r.m608c();
            c4117s.f4701c = c4137r.m606e();
            switch (c4137r.m611b()) {
                case 1:
                    c4117s.f4700b = (byte) 1;
                    break;
                case 2:
                    c4117s.f4700b = (byte) 2;
                    break;
                case 3:
                    c4117s.f4700b = (byte) 3;
                    break;
                case 4:
                    c4117s.f4700b = (byte) 4;
                    break;
                default:
                    C4073e.m1013c("rqdp{  unknown app state :%d ,drop it}", Integer.valueOf(c4137r.m611b()));
                    continue;
            }
            c4117s.f4703e = new HashMap();
            if (m1088a.m1100I() >= 0) {
                c4117s.f4703e.put("C01", new StringBuilder().append(m1088a.m1100I()).toString());
            }
            if (m1088a.m1099J() >= 0) {
                c4117s.f4703e.put("C02", new StringBuilder().append(m1088a.m1099J()).toString());
            }
            if (m1088a.m1097L() > 0) {
                for (String str : m1088a.m1096M()) {
                    c4117s.f4703e.put("C03_" + str, m1088a.m1058l(str));
                }
            }
            if (m1088a.m1094O() > 0) {
                for (String str2 : m1088a.m1093P()) {
                    c4117s.f4703e.put("C04_" + str2, m1088a.m1056m(str2));
                }
            }
            arrayList.add(c4117s);
            C4073e.m1015b("rqdp{  loc st :%s , uid:%s ,  tm:%d , st:%d }", c4137r.m608c(), c4137r.m606e(), Long.valueOf(c4137r.m616a()), Integer.valueOf(c4137r.m611b()));
        }
        if (arrayList.size() > 0) {
            C4118T c4118t = new C4118T();
            c4118t.f4708b = m1101H;
            c4118t.f4710d = arrayList;
            c4118t.f4707a = b;
            c4118t.f4709c = m1088a.m1065i();
            c4118t.f4711e = new HashMap();
            c4118t.f4711e.put("A7", m1088a.m1073e());
            c4118t.f4711e.put("A6", m1088a.m1045x());
            c4118t.f4711e.put("A5", m1088a.m1046w());
            c4118t.f4711e.put("A2", new StringBuilder().append(m1088a.m1048u()).toString());
            c4118t.f4711e.put("A1", new StringBuilder().append(m1088a.m1048u()).toString());
            c4118t.f4711e.put("A24", m1088a.m1069g());
            c4118t.f4711e.put("A17", new StringBuilder().append(m1088a.m1047v()).toString());
            c4118t.f4711e.put("A15", m1088a.m1108A());
            c4118t.f4711e.put("A13", new StringBuilder().append(m1088a.m1105D()).toString());
            c4118t.f4711e.put("A3", m1088a.m1053p());
            c4118t.f4711e.put("A22", m1088a.m1065i());
            return c4118t;
        }
        return null;
    }
}
