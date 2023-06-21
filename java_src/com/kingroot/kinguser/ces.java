package com.kingroot.kinguser;

import android.content.Context;
import android.text.TextUtils;
import com.kingroot.kinguser.cfv;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
/* loaded from: classes.dex */
public class ces implements cfu {
    private static ces bYV = null;
    private static C2718a bZb = null;
    private static C2718a bZc = null;
    private ceu bYW;
    private String bYX;
    private C2718a bYZ;
    private boolean bYx;
    private C2718a bZa;
    private Context mContext;
    private final Object avz = new Object();
    private String bYY = "key_notset";

    /* renamed from: a */
    public static void m4710a(ces cesVar) {
        bYV = cesVar;
    }

    public static ces ale() {
        return bYV;
    }

    /* renamed from: a */
    public static String m4709a(ceu ceuVar) {
        return ceuVar.mo2715fX() == 1 ? "mazuburst-hk.3g.qq.com" : "mazuburst.3g.qq.com";
    }

    /* renamed from: com.kingroot.kinguser.ces$a */
    /* loaded from: classes.dex */
    public static class C2718a {
        public long bZd;
        public boolean bZf;
        public List<String> bZe = new ArrayList();
        private int bZg = 0;

        public C2718a(long j, List<String> list, boolean z) {
            this.bZf = false;
            this.bZd = j;
            if (list != null) {
                this.bZe.addAll(list);
            }
            this.bZf = z;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("|mValidTimeMills=").append(this.bZd).append("|mIsDefault=").append(this.bZf).append("|mIPPortList=").append(this.bZe);
            return sb.toString();
        }

        public boolean isValid() {
            return (this.bZf || System.currentTimeMillis() <= this.bZd) && this.bZe.size() > 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: cw */
        public void m4694cw(List<String> list) {
            int size = this.bZe.size();
            if (size >= 2) {
                this.bZe.addAll(size - 1, ces.m4702n(list, true));
            } else {
                this.bZe.addAll(ces.m4702n(list, true));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public C2718a alk() {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            for (String str : this.bZe) {
                String m4692nQ = m4692nQ(str);
                if (m4692nQ != null) {
                    linkedHashSet.add(m4692nQ);
                }
            }
            return new C2718a(this.bZd, new ArrayList(linkedHashSet), this.bZf);
        }

        /* renamed from: nQ */
        private static String m4692nQ(String str) {
            int lastIndexOf;
            String str2;
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            if (str.lastIndexOf(":") >= 0) {
                str2 = str.substring(0, lastIndexOf) + ":80";
            } else {
                str2 = str + ":80";
            }
            if (str2.length() < 7 || !str2.substring(0, 7).equalsIgnoreCase("http://")) {
                return "http://" + str2;
            }
            return str2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public cfv.C2797b all() {
            if (this.bZg >= this.bZe.size()) {
                this.bZg = 0;
            }
            return ces.m4701nN(this.bZe.get(this.bZg));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void alm() {
            this.bZg++;
            if (this.bZg >= this.bZe.size()) {
                this.bZg = 0;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void aln() {
            this.bZg = 0;
        }
    }

    public ces(Context context, boolean z, ceu ceuVar, String str) {
        this.bYx = false;
        this.bYX = "mazu.3g.qq.com";
        this.mContext = context;
        this.bYx = z;
        this.bYW = ceuVar;
        if (this.bYx) {
            if (!TextUtils.isEmpty(str)) {
                this.bYX = str;
            } else {
                this.bYX = "mazutest.3g.qq.com";
            }
        } else if (this.bYW.mo2715fX() == 1) {
            this.bYX = "mazu-hk.3g.qq.com";
        } else {
            this.bYX = "mazu.3g.qq.com";
        }
        alf();
        m4710a(this);
    }

    @Override // com.kingroot.kinguser.cfu
    /* renamed from: KD */
    public void mo4390KD() {
        alf();
    }

    @Override // com.kingroot.kinguser.cfu
    /* renamed from: a */
    public void mo4389a(long j, int i, JceStruct jceStruct) {
        if (jceStruct != null && (jceStruct instanceof C1348ao)) {
            C1348ao c1348ao = (C1348ao) jceStruct;
            C2718a c2718a = new C2718a(System.currentTimeMillis() + (1000 * c1348ao.f1502hF), m4702n(c1348ao.f1501hE, false), false);
            if (c2718a.isValid()) {
                int m4729cs = ceq.m4729cs(this.mContext);
                int i2 = c1348ao.f1504hT;
                if (i2 == m4729cs) {
                    String alh = alh();
                    this.bYW.mo2735b(alh, c2718a.bZd, c2718a.bZe);
                    m4708a(alh, c2718a, true);
                    return;
                }
                this.bYW.mo2735b(m4703lb(i2), c2718a.bZd, c2718a.bZe);
            }
        }
    }

    private void alf() {
        String alh = alh();
        synchronized (this.avz) {
            if (this.bYY == null || !this.bYY.equals(alh) || this.bYZ == null || !this.bYZ.isValid()) {
                C2718a m4712N = m4712N(alh, true);
                if (m4712N != null && m4712N.isValid()) {
                    m4708a(alh, m4712N, true);
                } else {
                    alg();
                }
            }
        }
    }

    private void alg() {
        synchronized (this.avz) {
            if (this.bYY == null || !this.bYY.equals("key_default") || this.bYZ == null || !this.bYZ.isValid()) {
                m4708a("key_default", m4707eL(true), false);
            }
        }
    }

    /* renamed from: a */
    private void m4708a(String str, C2718a c2718a, boolean z) {
        if (str != null && c2718a != null && c2718a.isValid()) {
            C2718a c2718a2 = new C2718a(c2718a.bZd, c2718a.bZe, c2718a.bZf);
            if (z) {
                c2718a2.m4694cw(m4706eM(true));
            }
            synchronized (this.avz) {
                this.bYZ = c2718a2;
                this.bZa = this.bYZ.alk();
                this.bYY = str;
            }
        }
    }

    /* renamed from: eL */
    private C2718a m4707eL(boolean z) {
        if (z && bZb != null) {
            return bZb;
        }
        if (!z && bZc != null) {
            return bZc;
        }
        List<String> m4706eM = m4706eM(z);
        List<String> m4705eN = m4705eN(z);
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(m4706eM);
        arrayList.addAll(m4705eN);
        C2718a c2718a = new C2718a(0L, arrayList, true);
        if (z) {
            bZb = c2718a;
            return c2718a;
        }
        bZc = c2718a;
        return c2718a;
    }

    /* renamed from: eM */
    private List<String> m4706eM(boolean z) {
        ArrayList arrayList = new ArrayList();
        ArrayList<Integer> arrayList2 = new ArrayList();
        if (z) {
            arrayList2.add(443);
        } else {
            arrayList2.add(80);
        }
        String str = this.bYX;
        for (Integer num : arrayList2) {
            arrayList.add(String.format("%s:%d", str, Integer.valueOf(num.intValue())));
        }
        return arrayList;
    }

    /* renamed from: eN */
    private List<String> m4705eN(boolean z) {
        Object obj;
        ArrayList arrayList = new ArrayList();
        if (this.bYx) {
            return arrayList;
        }
        ArrayList<Integer> arrayList2 = new ArrayList();
        if (z) {
            arrayList2.add(443);
        } else {
            arrayList2.add(80);
        }
        if (this.bYW.mo2715fX() == 1) {
            for (Integer num : arrayList2) {
                int intValue = num.intValue();
                arrayList.add(String.format("%s:%d", "203.205.143.147", Integer.valueOf(intValue)));
                arrayList.add(String.format("%s:%d", "203.205.146.46", Integer.valueOf(intValue)));
                arrayList.add(String.format("%s:%d", "203.205.146.45", Integer.valueOf(intValue)));
            }
        } else {
            switch (alj()) {
                case 0:
                    obj = "183.232.125.162";
                    break;
                case 1:
                    obj = "163.177.71.153";
                    break;
                default:
                    obj = "120.198.203.156";
                    break;
            }
            for (Integer num2 : arrayList2) {
                arrayList.add(String.format("%s:%d", obj, Integer.valueOf(num2.intValue())));
            }
        }
        return arrayList;
    }

    /* renamed from: N */
    private C2718a m4712N(String str, boolean z) {
        C2718a mo2734cd = this.bYW.mo2734cd(str);
        if (mo2734cd != null) {
            if (!mo2734cd.isValid()) {
                if (z) {
                    this.bYW.mo2735b(str, 0L, (List<String>) null);
                }
            } else {
                return mo2734cd;
            }
        }
        return null;
    }

    private String alh() {
        String str;
        String str2 = "" + (this.bYx ? "t_" : "r_");
        int m4729cs = ceq.m4729cs(this.mContext);
        if (m4729cs == 1) {
            str = "wifi_" + cgy.getSSID();
        } else {
            str = "apn_" + m4729cs;
        }
        return str2 + str;
    }

    /* renamed from: lb */
    private String m4703lb(int i) {
        String str;
        String str2 = "" + (this.bYx ? "t_" : "r_");
        if (i == 1) {
            if (cgy.anj()) {
                str = "wifi_" + cgy.getSSID();
            } else {
                str = "wifi_nonessid";
            }
        } else {
            str = "apn_" + i;
        }
        return str2 + str;
    }

    /* renamed from: n */
    public static List<String> m4702n(List<String> list, boolean z) {
        ArrayList arrayList = new ArrayList();
        if (list != null && list.size() > 0) {
            for (String str : list) {
                if (m4711O(str, z)) {
                    arrayList.add(str);
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: nN */
    public static cfv.C2797b m4701nN(String str) {
        int lastIndexOf;
        if (TextUtils.isEmpty(str) || (lastIndexOf = str.lastIndexOf(":")) <= 0 || lastIndexOf == str.length() - 1) {
            return null;
        }
        String substring = str.substring(0, lastIndexOf);
        String substring2 = str.substring(lastIndexOf + 1);
        if (TextUtils.isDigitsOnly(substring2)) {
            return new cfv.C2797b(substring, Integer.parseInt(substring2));
        }
        return null;
    }

    /* renamed from: O */
    private static boolean m4711O(String str, boolean z) {
        int lastIndexOf;
        if (TextUtils.isEmpty(str) || (lastIndexOf = str.lastIndexOf(":")) <= 0 || lastIndexOf == str.length() - 1) {
            return false;
        }
        return (z || m4700nO(str.substring(0, lastIndexOf))) && TextUtils.isDigitsOnly(str.substring(lastIndexOf + 1));
    }

    /* renamed from: nO */
    private static boolean m4700nO(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            if (str.matches("\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}")) {
                String[] split = str.split("\\.");
                if (split.length < 4 || Integer.parseInt(split[0]) > 255 || Integer.parseInt(split[1]) > 255 || Integer.parseInt(split[2]) > 255) {
                    return false;
                }
                return Integer.parseInt(split[3]) <= 255;
            }
            return false;
        } catch (Exception e) {
            return false;
        }
    }

    /* renamed from: eO */
    private void m4704eO(boolean z) {
        C2718a c2718a;
        synchronized (this.avz) {
            if (z) {
                c2718a = this.bYZ;
            } else {
                c2718a = this.bZa;
            }
        }
        if (c2718a == null) {
            alf();
        } else if (!c2718a.isValid()) {
            alg();
        }
    }

    @Override // com.kingroot.kinguser.cfu
    /* renamed from: eP */
    public cfv.C2797b mo4388eP(boolean z) {
        C2718a c2718a;
        m4704eO(true);
        synchronized (this.avz) {
            if (z) {
                c2718a = this.bYZ;
            } else {
                c2718a = this.bZa;
            }
            if (c2718a != null) {
                return c2718a.all();
            }
            return null;
        }
    }

    @Override // com.kingroot.kinguser.cfu
    /* renamed from: eQ */
    public void mo4387eQ(boolean z) {
        C2718a c2718a;
        m4704eO(true);
        synchronized (this.avz) {
            if (z) {
                c2718a = this.bYZ;
            } else {
                c2718a = this.bZa;
            }
            if (c2718a != null) {
                c2718a.alm();
            }
        }
    }

    @Override // com.kingroot.kinguser.cfu
    /* renamed from: eR */
    public void mo4386eR(boolean z) {
        C2718a c2718a;
        m4704eO(true);
        synchronized (this.avz) {
            if (z) {
                c2718a = this.bYZ;
            } else {
                c2718a = this.bZa;
            }
            if (c2718a != null) {
                c2718a.aln();
            }
        }
    }

    @Override // com.kingroot.kinguser.cfu
    /* renamed from: eS */
    public void mo4385eS(boolean z) {
    }

    @Override // com.kingroot.kinguser.cfu
    /* renamed from: eT */
    public ArrayList<String> mo4384eT(boolean z) {
        C2718a c2718a;
        m4704eO(true);
        synchronized (this.avz) {
            if (z) {
                c2718a = this.bYZ;
            } else {
                c2718a = this.bZa;
            }
            if (c2718a != null) {
                return (ArrayList) c2718a.bZe;
            }
            return null;
        }
    }

    @Override // com.kingroot.kinguser.cfu
    /* renamed from: eU */
    public int mo4383eU(boolean z) {
        ArrayList<String> mo4384eT = mo4384eT(z);
        if (mo4384eT != null) {
            return mo4384eT.size();
        }
        return 0;
    }

    @Override // com.kingroot.kinguser.cfu
    public String ali() {
        String str = null;
        cfv.C2797b mo4388eP = mo4388eP(false);
        if (mo4388eP != null && (str = mo4388eP.amE()) != null && (str.length() < 7 || !str.substring(0, 7).equalsIgnoreCase("http://"))) {
            str = "http://" + str;
        }
        if (str == null) {
            return "http://" + this.bYX;
        }
        return str;
    }

    @Override // com.kingroot.kinguser.cfu
    /* renamed from: fB */
    public boolean mo4382fB() {
        return this.bYx;
    }

    private int alj() {
        int m4307cz;
        if (4 == cef.bXX || -1 == (m4307cz = cgt.m4307cz(this.mContext))) {
            return 2;
        }
        return m4307cz;
    }
}
