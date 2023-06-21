package com.kingroot.kinguser;

import android.text.TextUtils;
import com.kingroot.kinguser.bpg;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes.dex */
public final class bph {
    public bpg bGL;
    private bpg bGn;

    /* renamed from: c */
    private Map f1922c = new ConcurrentHashMap();
    private AtomicInteger bGM = new AtomicInteger(0);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.bph$a */
    /* loaded from: classes.dex */
    public class C2552a {

        /* renamed from: b */
        boolean f1923b = false;
        private List bFP;
        List bFl;
        private bpg bGN;
        private List bGO;
        private bpg bGP;

        /* renamed from: c */
        private String f1924c;

        /* renamed from: e */
        private List f1925e;

        /* renamed from: f */
        private List f1926f;

        public C2552a(String str) {
            this.f1924c = str;
        }

        /* renamed from: a */
        private static void m5964a(StringBuilder sb, List list) {
            if (list != null) {
                synchronized (list) {
                    if (sb != null && list != null) {
                        if (list.size() > 0) {
                            Iterator it = list.iterator();
                            while (it.hasNext()) {
                                bpg bpgVar = (bpg) it.next();
                                if (bpgVar != null) {
                                    sb.append(bpgVar).append(",");
                                }
                            }
                        }
                    }
                }
            }
        }

        /* renamed from: c */
        private List m5962c(bpg.EnumC2551a enumC2551a) {
            if (enumC2551a == bpg.EnumC2551a.Type_CDN_Ip_App_Input) {
                return this.bFP;
            }
            if (enumC2551a == bpg.EnumC2551a.Type_CDN_Ip_Http_Header) {
                return this.bFl;
            }
            if (enumC2551a == bpg.EnumC2551a.Type_CDN_Ip_Socket_Schedule) {
                return this.f1925e;
            }
            if (enumC2551a == bpg.EnumC2551a.Type_CDN_Ip_Socket_Schedule_Https) {
                return this.f1926f;
            }
            if (enumC2551a == bpg.EnumC2551a.Type_Src_Ip_App_Input) {
                return this.bGO;
            }
            return null;
        }

        /* JADX WARN: Code restructure failed: missing block: B:15:0x0021, code lost:
            if (r1 == (r2.size() - 1)) goto L4;
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x0023, code lost:
            r0 = (com.kingroot.kinguser.bpg) r2.get(r1 + 1);
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final synchronized bpg m5967a(bpg bpgVar) {
            bpg bpgVar2 = null;
            synchronized (this) {
                if (bpgVar != null) {
                    List m5962c = m5962c(bpgVar.bGA);
                    if (m5962c != null) {
                        int i = 0;
                        while (true) {
                            if (i >= m5962c.size()) {
                                break;
                            } else if (bpgVar == m5962c.get(i)) {
                                break;
                            } else {
                                i++;
                            }
                        }
                    }
                }
            }
            return bpgVar2;
        }

        /* renamed from: a */
        public final synchronized void m5966a(String str) {
            if (!TextUtils.isEmpty(str)) {
                if (this.bGN == null) {
                    this.bGN = new bpg(str, bpg.EnumC2551a.Type_CDN_Ip_Jumped);
                    this.bGN.m5981a(bph.this.bGM.getAndIncrement());
                } else {
                    this.bGN.f1920a = str;
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:43:0x0080, code lost:
            r0 = new com.kingroot.kinguser.bpg(r4, r5);
            r0.m5981a(r3.bGQ.bGM.getAndIncrement());
            r1.add(r0);
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final synchronized void m5965a(String str, bpg.EnumC2551a enumC2551a) {
            List list;
            if (!TextUtils.isEmpty(str)) {
                if (enumC2551a == bpg.EnumC2551a.Type_CDN_Ip_App_Input) {
                    if (this.bFP == null) {
                        this.bFP = new ArrayList();
                    }
                    list = this.bFP;
                } else if (enumC2551a == bpg.EnumC2551a.Type_CDN_Ip_Http_Header) {
                    if (this.bFl == null) {
                        this.bFl = new ArrayList();
                    }
                    list = this.bFl;
                } else if (enumC2551a == bpg.EnumC2551a.Type_CDN_Ip_Socket_Schedule) {
                    if (this.f1925e == null) {
                        this.f1925e = new ArrayList();
                    }
                    list = this.f1925e;
                } else if (enumC2551a == bpg.EnumC2551a.Type_CDN_Ip_Socket_Schedule_Https) {
                    if (this.f1926f == null) {
                        this.f1926f = new ArrayList();
                    }
                    list = this.f1926f;
                } else if (enumC2551a == bpg.EnumC2551a.Type_Src_Ip_App_Input) {
                    if (this.bGO == null) {
                        this.bGO = new ArrayList();
                    }
                    list = this.bGO;
                }
                Iterator it = list.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    } else if (str.equalsIgnoreCase(((bpg) it.next()).f1920a)) {
                        break;
                    }
                }
            }
        }

        /* renamed from: b */
        public final synchronized void m5963b(String str) {
            if (!TextUtils.isEmpty(str)) {
                if (this.bGP == null) {
                    this.bGP = new bpg(str, bpg.EnumC2551a.Type_Src_Ip_Jumped);
                    this.bGP.m5981a(bph.this.bGM.getAndIncrement());
                } else {
                    this.bGP.f1920a = str;
                }
            }
        }

        /* renamed from: d */
        public final synchronized bpg m5961d(bpg.EnumC2551a enumC2551a) {
            List m5962c;
            return enumC2551a == bpg.EnumC2551a.Type_CDN_Ip_Jumped ? this.bGN : enumC2551a == bpg.EnumC2551a.Type_Src_Ip_Jumped ? this.bGP : (!bpg.m5978b(enumC2551a) || (m5962c = m5962c(enumC2551a)) == null) ? null : (bpg) m5962c.get(0);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(bok.m6066b(this.f1924c));
            sb.append(",");
            m5964a(sb, this.bFP);
            m5964a(sb, this.bFl);
            m5964a(sb, this.f1925e);
            m5964a(sb, this.f1926f);
            if (this.bGN != null) {
                sb.append(this.bGN).append(",");
            }
            m5964a(sb, this.bGO);
            if (this.bGP != null) {
                sb.append(this.bGP);
            }
            sb.deleteCharAt(sb.length() - 1);
            return sb.toString();
        }
    }

    public bph(String str) {
        this.bGL = new bpg(str, bpg.EnumC2551a.Type_CDN_Domain);
        this.bGL.m5981a(this.bGM.getAndIncrement());
    }

    /* renamed from: mN */
    private C2552a m5968mN(String str) {
        C2552a c2552a;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        synchronized (this.f1922c) {
            c2552a = (C2552a) this.f1922c.get(str);
            if (c2552a == null) {
                c2552a = new C2552a(str);
                this.f1922c.put(str, c2552a);
            }
        }
        return c2552a;
    }

    /* renamed from: a */
    public final bpg m5974a(String str, bpg bpgVar) {
        C2552a m5968mN;
        bpg m5961d;
        return ((bpgVar.bGA != bpg.EnumC2551a.Type_CDN_Domain && bpgVar.bGA != bpg.EnumC2551a.Type_Outer) || (m5968mN = m5968mN(str)) == null || (m5961d = m5968mN.m5961d(bpg.EnumC2551a.Type_CDN_Ip_Jumped)) == null) ? bpgVar : m5961d;
    }

    /* renamed from: a */
    public final bpg m5973a(String str, bpg bpgVar, boolean z, boolean z2) {
        bpg.EnumC2551a enumC2551a;
        bpg bpgVar2;
        C2552a c2552a;
        bpg bpgVar3 = null;
        if (bpgVar != null) {
            bpg.EnumC2551a enumC2551a2 = bpgVar.bGA;
            if (!z2 && bpg.m5978b(bpgVar.bGA) && (c2552a = (C2552a) this.f1922c.get(str)) != null && (bpgVar3 = c2552a.m5967a(bpgVar)) != null) {
                return bpgVar3;
            }
            enumC2551a = enumC2551a2;
        } else {
            enumC2551a = null;
        }
        int length = bpg.EnumC2551a.values().length;
        bpg bpgVar4 = bpgVar3;
        while (bpgVar4 == null && length > 0) {
            bpg.EnumC2551a m5979a = bpg.m5979a(enumC2551a, z);
            if (bpg.m5980a(m5979a)) {
                C2552a c2552a2 = (C2552a) this.f1922c.get(str);
                bpgVar2 = c2552a2 != null ? c2552a2.m5961d(m5979a) : bpgVar4;
            } else {
                bpgVar2 = m5979a == bpg.EnumC2551a.Type_Src_Domain ? this.bGn : this.bGL;
            }
            length--;
            bpgVar4 = bpgVar2;
            enumC2551a = m5979a;
        }
        if (bpgVar4 == null) {
            bpgVar4 = this.bGL;
        }
        return bpgVar4;
    }

    /* renamed from: a */
    public final String m5977a() {
        StringBuilder sb = new StringBuilder();
        if (this.bGL != null) {
            sb.append("0,").append(this.bGL).append(";");
        }
        if (this.bGn != null) {
            sb.append("1,").append(this.bGn).append(";");
        }
        for (String str : this.f1922c.keySet()) {
            C2552a c2552a = (C2552a) this.f1922c.get(str);
            if (c2552a != null) {
                sb.append(c2552a).append(";");
            }
        }
        return sb.toString();
    }

    /* renamed from: a */
    public final void m5972a(String str, String str2) {
        C2552a m5968mN;
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || (m5968mN = m5968mN(str)) == null) {
            return;
        }
        m5968mN.m5966a(str2);
    }

    /* renamed from: a */
    public final void m5971a(String str, String str2, bpg.EnumC2551a enumC2551a) {
        C2552a m5968mN;
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || (m5968mN = m5968mN(str)) == null) {
            return;
        }
        m5968mN.m5965a(str2, enumC2551a);
    }

    /* renamed from: a */
    public final boolean m5975a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        C2552a c2552a = (C2552a) this.f1922c.get(str);
        if (c2552a != null) {
            if (!(c2552a.f1923b ? false : c2552a.bFl == null || c2552a.bFl.size() <= 0)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: aP */
    public final void m5970aP(String str, String str2) {
        C2552a m5968mN;
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || (m5968mN = m5968mN(str)) == null) {
            return;
        }
        m5968mN.m5963b(str2);
    }

    /* renamed from: c */
    public final void m5969c(String str) {
        C2552a m5968mN;
        if (TextUtils.isEmpty(str) || (m5968mN = m5968mN(str)) == null) {
            return;
        }
        m5968mN.f1923b = true;
    }
}
