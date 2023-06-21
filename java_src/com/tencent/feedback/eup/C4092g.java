package com.tencent.feedback.eup;

import android.content.Context;
import com.kingroot.loader.common.KlConst;
import com.tencent.feedback.common.C4071c;
import com.tencent.feedback.common.C4073e;
import com.tencent.feedback.common.C4079h;
import com.tencent.feedback.common.PlugInInfo;
import com.tencent.feedback.proguard.AbstractC4128j;
import com.tencent.feedback.proguard.C4108J;
import com.tencent.feedback.proguard.C4110L;
import com.tencent.feedback.proguard.C4111M;
import com.tencent.feedback.proguard.C4112N;
import com.tencent.feedback.proguard.C4113O;
import com.tencent.feedback.proguard.C4119a;
import com.tencent.feedback.proguard.C4132m;
import com.tencent.feedback.proguard.C4135p;
import com.tencent.feedback.upload.AbstractUploadDatas;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: com.tencent.feedback.eup.g */
/* loaded from: classes.dex */
public final class C4092g extends AbstractUploadDatas {

    /* renamed from: d */
    private static C4092g f4593d = null;

    /* renamed from: e */
    private C4113O f4594e;

    /* renamed from: f */
    private List<C4090e> f4595f;

    /* renamed from: a */
    public static synchronized C4092g m798a(Context context) {
        C4092g c4092g;
        synchronized (C4092g.class) {
            if (context != null) {
                if (f4593d == null) {
                    f4593d = new C4092g(context);
                }
            }
            c4092g = f4593d;
        }
        return c4092g;
    }

    private C4092g(Context context) {
        super(context, 3, 530);
        this.f4594e = null;
        this.f4595f = null;
    }

    @Override // com.tencent.feedback.upload.AbstractUploadDatas
    /* renamed from: a */
    public final synchronized C4113O mo537a() {
        C4113O c4113o = null;
        synchronized (this) {
            if (this.f4594e != null) {
                c4113o = this.f4594e;
            } else {
                C4091f m808l = C4091f.m808l();
                if (m808l != null && m808l.m969a()) {
                    CrashStrategyBean m801s = C4091f.m808l().m801s();
                    this.f4595f = null;
                    boolean isMerged = m801s.isMerged();
                    int maxUploadNum_Wifi = C4079h.m977a(this.f4826c) ? m801s.getMaxUploadNum_Wifi() : m801s.getMaxUploadNum_GPRS();
                    if (!isMerged) {
                        C4073e.m1015b("rqdp{  not merge:}", new Object[0]);
                        this.f4595f = m790b(this.f4826c, maxUploadNum_Wifi);
                    } else {
                        C4073e.m1015b("rqdp{  in merge:}", new Object[0]);
                        this.f4595f = m797a(this.f4826c, maxUploadNum_Wifi);
                    }
                    if (this.f4595f == null || this.f4595f.size() <= 0) {
                        C4073e.m1013c("rqdp{  empty eup!}", new Object[0]);
                    } else {
                        C4073e.m1015b("rqdp{  pack n:}%d ,isM:%b", Integer.valueOf(this.f4595f.size()), Boolean.valueOf(isMerged));
                        C4112N m795a = m795a(this.f4826c, this.f4595f);
                        if (m795a != null) {
                            byte[] m751a = C4119a.m751a((AbstractC4128j) m795a);
                            if (m751a == null) {
                                C4073e.m1013c("rqdp{  empty edatas!}", new Object[0]);
                            } else {
                                this.f4594e = m542a(this.f4826c, this.f4824a, m751a);
                                c4113o = this.f4594e;
                            }
                        }
                    }
                }
            }
        }
        return c4113o;
    }

    /* renamed from: b */
    private List<C4090e> m790b(Context context, int i) {
        List<C4090e> m947a;
        C4073e.m1015b("rqdp{  get MN:}%d", Integer.valueOf(i));
        if (context == null || i <= 0) {
            C4073e.m1013c("rqdp{  params!}", new Object[0]);
            return null;
        }
        try {
            List m947a2 = C4085b.m947a(context, i, "desc", 1, null, -1, -1, -1, 3, -1L, -1L, null);
            if (m947a2 == null) {
                m947a2 = new ArrayList();
            }
            if (m947a2.size() < i && (m947a = C4085b.m947a(context, i - m947a2.size(), "desc", 2, null, -1, -1, -1, 3, -1L, -1L, null)) != null && m947a.size() > 0) {
                m947a2.addAll(m947a);
            }
            m793a(m947a2);
            C4085b.m923b(context, m947a2);
            return m947a2;
        } catch (Throwable th) {
            if (!C4073e.m1016a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    /* renamed from: a */
    private C4112N m795a(Context context, List<C4090e> list) {
        if (context == null || list == null || list.size() <= 0) {
            C4073e.m1013c("rqdp{  params!}", new Object[0]);
            return null;
        }
        try {
            ArrayList<C4111M> arrayList = new ArrayList<>();
            ArrayList arrayList2 = new ArrayList();
            for (C4090e c4090e : list) {
                if (!C4071c.m1088a(context).m1106C().equals(c4090e.m897Q())) {
                    C4073e.m1013c("updated drop it", new Object[0]);
                    arrayList2.add(c4090e);
                } else {
                    C4111M m796a = m796a(context, c4090e);
                    if (m796a != null) {
                        arrayList.add(m796a);
                    } else {
                        arrayList2.add(c4090e);
                    }
                }
            }
            C4112N c4112n = new C4112N();
            c4112n.f4666a = arrayList;
            if (arrayList2.size() > 0) {
                C4073e.m1013c("rqdp{ delete error eup} %d", Integer.valueOf(C4085b.m943a(context, arrayList2)));
                list.removeAll(arrayList2);
                return c4112n;
            }
            return c4112n;
        } catch (Throwable th) {
            if (!C4073e.m1016a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    /* renamed from: a */
    private C4111M m796a(Context context, C4090e c4090e) {
        String str;
        C4110L m794a;
        C4110L m792a;
        C4110L m792a2;
        if (c4090e == null) {
            C4073e.m1013c("rqdp{  params!}", new Object[0]);
            return null;
        }
        C4073e.m1015b("rqdp{  pack n:}%s , rqdp{  iM:}%b , rqdp{  tp:}%d", c4090e.m858f(), Boolean.valueOf(c4090e.m873c()), Byte.valueOf(c4090e.m895S()));
        try {
            if (c4090e.m866d()) {
                str = c4090e.m873c() ? "201" : "101";
            } else if (c4090e.m818y()) {
                str = c4090e.m873c() ? "203" : "103";
            } else if (c4090e.m880b()) {
                str = c4090e.m873c() ? "200" : "100";
            } else {
                str = c4090e.m873c() ? "202" : "102";
            }
            C4111M c4111m = new C4111M();
            c4111m.f4646a = str;
            c4111m.f4647b = c4090e.m849i();
            c4111m.f4648c = c4090e.m861e();
            c4111m.f4649d = c4090e.m858f();
            c4111m.f4650e = c4090e.m855g();
            c4111m.f4653h = c4090e.m910D();
            c4111m.f4652g = c4090e.m852h();
            c4111m.f4654i = c4090e.m820w();
            c4111m.f4656k = c4090e.m843k();
            c4111m.f4657l = c4090e.m909E();
            c4111m.f4651f = c4090e.m826s();
            Map<String, PlugInInfo> m821v = c4090e.m821v();
            Object[] objArr = new Object[1];
            objArr[0] = Integer.valueOf(m821v == null ? 0 : m821v.size());
            C4073e.m1015b("plugin size :%d", objArr);
            if (m821v != null && m821v.size() > 0) {
                c4111m.f4659n = new ArrayList<>();
                for (Map.Entry<String, PlugInInfo> entry : m821v.entrySet()) {
                    C4108J c4108j = new C4108J();
                    c4108j.f4626a = entry.getValue().plugInId;
                    c4108j.f4628c = entry.getValue().plugInUUID;
                    c4108j.f4629d = entry.getValue().plugInVersion;
                    c4111m.f4659n.add(c4108j);
                }
            }
            if (c4090e.m873c() && c4090e.m838m() > 1) {
                c4111m.f4655j = c4090e.m838m();
                if (c4090e.m840l() != null && c4090e.m840l().length() > 0) {
                    if (c4111m.f4660o == null) {
                        c4111m.f4660o = new ArrayList<>();
                    }
                    c4111m.f4660o.add(new C4110L((byte) 1, "alltimes.txt", c4090e.m840l().getBytes("utf-8")));
                }
            }
            if (c4090e.m836n() != null) {
                if (c4111m.f4660o == null) {
                    c4111m.f4660o = new ArrayList<>();
                }
                c4111m.f4660o.add(new C4110L((byte) 1, "log.txt", c4090e.m836n()));
            }
            if (c4090e.m834o() != null) {
                C4110L c4110l = new C4110L((byte) 2, "CustomLog.zip", c4090e.m834o());
                C4073e.m1015b("attach user log", new Object[0]);
                if (c4111m.f4660o == null) {
                    c4111m.f4660o = new ArrayList<>();
                }
                c4111m.f4660o.add(c4110l);
            }
            if (c4090e.m824t() != null && !c4090e.m818y() && (m792a2 = m792a(c4090e.m824t().getBytes("utf8"), "extraMessage.txt")) != null) {
                if (c4111m.f4660o == null) {
                    c4111m.f4660o = new ArrayList<>();
                }
                C4073e.m1015b("rqdp{  attach extra msg}", new Object[0]);
                c4111m.f4660o.add(m792a2);
            }
            if (c4090e.m822u() != null && (m792a = m792a(c4090e.m822u(), "extraDatas.txt")) != null) {
                C4073e.m1015b("rqdp{  attach extra datas}", new Object[0]);
                if (c4111m.f4660o == null) {
                    c4111m.f4660o = new ArrayList<>();
                }
                c4111m.f4660o.add(m792a);
            }
            if (c4090e.m866d() && c4090e.m830q() != null && (m794a = m794a("tomb.zip", context, c4090e.m830q())) != null) {
                C4073e.m1015b("attach tomb", new Object[0]);
                c4111m.f4660o.add(m794a);
            }
            if (c4090e.m818y() && c4090e.m830q() != null) {
                if (c4111m.f4660o == null) {
                    c4111m.f4660o = new ArrayList<>();
                }
                try {
                    c4111m.f4660o.add(new C4110L((byte) 1, "anrMessage.txt", c4090e.m824t().getBytes("utf8")));
                    C4073e.m1015b("attach anr message", new Object[0]);
                } catch (UnsupportedEncodingException e) {
                    e.printStackTrace();
                    c4111m.f4660o = null;
                }
                C4110L m794a2 = m794a("trace.zip", context, c4090e.m830q());
                if (m794a2 != null) {
                    C4073e.m1015b("attach traces", new Object[0]);
                    c4111m.f4660o.add(m794a2);
                }
            }
            C4071c m1088a = C4071c.m1088a(context);
            c4111m.f4661p = new HashMap();
            c4111m.f4661p.put("A9", new StringBuilder().append(c4090e.m905I()).toString());
            c4111m.f4661p.put("A11", new StringBuilder().append(c4090e.m904J()).toString());
            c4111m.f4661p.put("A10", new StringBuilder().append(c4090e.m903K()).toString());
            c4111m.f4661p.put("A23", c4090e.m897Q());
            c4111m.f4661p.put("A7", m1088a.m1073e());
            c4111m.f4661p.put("A6", m1088a.m1045x());
            c4111m.f4661p.put("A5", m1088a.m1046w());
            c4111m.f4661p.put("A22", m1088a.m1065i());
            c4111m.f4661p.put("A2", new StringBuilder().append(c4090e.m901M()).toString());
            c4111m.f4661p.put("A1", new StringBuilder().append(c4090e.m902L()).toString());
            c4111m.f4661p.put("A24", m1088a.m1069g());
            c4111m.f4661p.put("A17", new StringBuilder().append(c4090e.m900N()).toString());
            c4111m.f4661p.put("A3", m1088a.m1053p());
            c4111m.f4661p.put("A16", m1088a.m1051r());
            c4111m.f4661p.put("A25", m1088a.m1050s());
            c4111m.f4661p.put("A14", m1088a.m1052q());
            c4111m.f4661p.put("A15", m1088a.m1108A());
            c4111m.f4661p.put("A13", new StringBuilder().append(m1088a.m1105D()).toString());
            c4111m.f4661p.put("A34", c4090e.m828r());
            c4111m.f4661p.put("A30", c4090e.m911C());
            c4111m.f4661p.put("productIdentify", m1088a.m1059l().trim().length() > 0 ? m1088a.m1059l() : m1088a.m1057m());
            c4111m.f4661p.put("A36", (!c4090e.m908F()) + KlConst.PLUGIN_COMMON_PACKAGE_PREFIX_SPLIT_CHAR + c4090e.m907G());
            if (c4090e.m866d()) {
                c4111m.f4661p.put("A27", c4090e.m912B());
                c4111m.f4661p.put("A28", c4090e.m913A());
                c4111m.f4661p.put("A29", new StringBuilder().append(c4090e.m906H()).toString());
            }
            ArrayList<C4108J> m791b = m791b(context);
            if (m791b != null && m791b.size() > 0) {
                c4111m.f4658m = m791b;
            }
            try {
                c4111m.f4661p.put("A26", URLEncoder.encode(c4090e.m817z(), "utf-8"));
                if (c4090e.f4561a >= 0) {
                    c4111m.f4661p.put("C01", new StringBuilder().append(c4090e.f4561a).toString());
                }
                if (c4090e.f4562b >= 0) {
                    c4111m.f4661p.put("C02", new StringBuilder().append(c4090e.f4562b).toString());
                }
                if (c4090e.f4563c != null && c4090e.f4563c.size() > 0) {
                    for (Map.Entry<String, String> entry2 : c4090e.f4563c.entrySet()) {
                        c4111m.f4661p.put("C03_" + entry2.getKey(), entry2.getValue());
                    }
                }
                if (c4090e.f4564d != null && c4090e.f4564d.size() > 0) {
                    for (Map.Entry<String, String> entry3 : c4090e.f4564d.entrySet()) {
                        c4111m.f4661p.put("C04_" + entry3.getKey(), entry3.getValue());
                    }
                }
                return c4111m;
            } catch (UnsupportedEncodingException e2) {
                if (!C4073e.m1016a(e2)) {
                    e2.printStackTrace();
                }
                return null;
            }
        } catch (Throwable th) {
            if (!C4073e.m1016a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    /* renamed from: a */
    private static C4110L m792a(byte[] bArr, String str) {
        if (bArr == null || bArr.length <= 0 || str == null || str.trim().length() <= 0) {
            return null;
        }
        try {
            C4110L c4110l = new C4110L();
            c4110l.f4635a = (byte) 1;
            c4110l.f4636b = str;
            c4110l.f4637c = bArr;
            return c4110l;
        } catch (Throwable th) {
            if (!C4073e.m1016a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    @Override // com.tencent.feedback.upload.AbstractUploadDatas
    public final synchronized void done(boolean z) {
        Object[] objArr = new Object[1];
        objArr[0] = z ? "SUCC" : "FAIL";
        C4073e.m1015b("rqdp{  eupdone :} %s", objArr);
        if (this.f4595f != null && z) {
            if (C4091f.m808l().m801s().isMerged()) {
                long m727c = C4119a.m727c();
                Iterator<C4090e> it = this.f4595f.iterator();
                ArrayList arrayList = new ArrayList();
                while (it.hasNext()) {
                    C4090e next = it.next();
                    if (next.m849i() > m727c) {
                        next.m875b(true);
                        next.m886a(0);
                        arrayList.add(next);
                        it.remove();
                    }
                }
                C4073e.m1015b("rqdp{  merge update today eup n:}%d , res:%b", Integer.valueOf(this.f4595f.size()), Boolean.valueOf(C4085b.m923b(this.f4826c, arrayList)));
                C4073e.m1015b("rqdp{  me rm num:}%d", Integer.valueOf(C4085b.m943a(this.f4826c, this.f4595f)));
            } else {
                C4073e.m1015b("rqdp{  rm n:}" + C4085b.m943a(this.f4826c, this.f4595f), new Object[0]);
            }
        }
        this.f4594e = null;
        this.f4595f = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final List<C4090e> m797a(Context context, int i) {
        List<C4090e> m947a;
        List<C4090e> m947a2;
        C4073e.m1015b("rqdp{  getEupInMe}", new Object[0]);
        if (context == null || i <= 0) {
            C4073e.m1012d("rqdp{  params!}", new Object[0]);
            return null;
        }
        try {
            long m727c = C4119a.m727c();
            ArrayList arrayList = new ArrayList();
            List<C4090e> m947a3 = C4085b.m947a(context, i, "desc", -1, null, -1, -1, -1, 3, m727c, -1L, false);
            if (m947a3 != null && m947a3.size() > 0) {
                C4073e.m1015b("rqdp{  tdeup ge c=1, n:}%d", Integer.valueOf(m947a3.size()));
                arrayList.addAll(m947a3);
                m947a3.clear();
            }
            if (arrayList.size() < i && (m947a2 = C4085b.m947a(context, i, "desc", -1, null, 2, -1, -1, 3, -1L, m727c, null)) != null && m947a2.size() > 0) {
                C4073e.m1015b("rqdp{  yeseup c>=2,n:}%d" + m947a2.size(), new Object[0]);
                arrayList.addAll(m947a2);
                m947a2.clear();
            }
            if (arrayList.size() < i && (m947a = C4085b.m947a(context, i, "desc", -1, null, 0, 1, -1, -1, 3L, m727c, false)) != null && m947a.size() > 0) {
                C4073e.m1015b("rqdp{  yeseup c>=2,n:}%d" + m947a.size(), new Object[0]);
                arrayList.addAll(m947a);
                m947a.clear();
            }
            m793a(arrayList);
            C4085b.m923b(context, arrayList);
            return arrayList;
        } catch (Throwable th) {
            if (!C4073e.m1016a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    /* renamed from: a */
    private static C4110L m794a(String str, Context context, String str2) {
        FileInputStream fileInputStream;
        if (str2 == null || context == null) {
            C4073e.m1013c("rqdp{  createZipAttachment sourcePath == null || context == null ,pls check}", new Object[0]);
            return null;
        }
        C4073e.m1015b("rqdp{  zp}%s", str2);
        File file = new File(str2);
        File file2 = new File(context.getCacheDir(), str);
        if (!C4119a.m750a(file, file2, 5000)) {
            C4073e.m1013c("rqdp{  fail!}", new Object[0]);
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            fileInputStream = new FileInputStream(file2);
            try {
                byte[] bArr = new byte[1000];
                while (true) {
                    int read = fileInputStream.read(bArr);
                    if (read <= 0) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, read);
                    byteArrayOutputStream.flush();
                }
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                C4073e.m1015b("rqdp{  re sz:}%d", Integer.valueOf(byteArray.length));
                C4110L c4110l = new C4110L((byte) 2, file2.getName(), byteArray);
                try {
                    fileInputStream.close();
                } catch (IOException e) {
                    if (!C4073e.m1016a(e)) {
                        e.printStackTrace();
                    }
                }
                if (file2.exists()) {
                    C4073e.m1015b("rqdp{  del tmp}", new Object[0]);
                    file2.delete();
                }
                return c4110l;
            } catch (Throwable th) {
                th = th;
                try {
                    if (!C4073e.m1016a(th)) {
                        th.printStackTrace();
                    }
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e2) {
                            if (!C4073e.m1016a(e2)) {
                                e2.printStackTrace();
                            }
                        }
                    }
                    if (file2.exists()) {
                        C4073e.m1015b("rqdp{  del tmp}", new Object[0]);
                        file2.delete();
                        return null;
                    }
                    return null;
                } catch (Throwable th2) {
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e3) {
                            if (!C4073e.m1016a(e3)) {
                                e3.printStackTrace();
                            }
                        }
                    }
                    if (file2.exists()) {
                        C4073e.m1015b("rqdp{  del tmp}", new Object[0]);
                        file2.delete();
                    }
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = null;
        }
    }

    /* renamed from: b */
    private static ArrayList<C4108J> m791b(Context context) {
        try {
            List<C4135p> m1107B = C4071c.m1088a(context).m1107B();
            if (m1107B == null) {
                C4073e.m1015b("no setted solist from db", new Object[0]);
                m1107B = C4132m.m653a(context, (String) null, 1, 50);
            }
            if (m1107B != null && m1107B.size() > 0) {
                ArrayList<C4108J> arrayList = new ArrayList<>();
                for (C4135p c4135p : m1107B) {
                    C4108J c4108j = new C4108J();
                    c4108j.f4627b = c4135p.m619f();
                    c4108j.f4626a = c4135p.m631a();
                    c4108j.f4628c = c4135p.m621d();
                    arrayList.add(c4108j);
                    C4073e.m1015b("up %s %s %s", c4108j.f4627b, c4108j.f4626a, c4108j.f4628c);
                }
                return arrayList;
            }
        } catch (Throwable th) {
            if (!C4073e.m1016a(th)) {
                th.printStackTrace();
            }
            C4073e.m1012d("rqdp{  Error: lb pack fail!}", new Object[0]);
        }
        return null;
    }

    /* renamed from: a */
    private static void m793a(List<C4090e> list) {
        if (list != null) {
            for (C4090e c4090e : list) {
                c4090e.m886a(c4090e.m846j() + 1);
            }
        }
    }
}
