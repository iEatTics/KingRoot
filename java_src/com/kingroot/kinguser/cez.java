package com.kingroot.kinguser;

import android.content.Context;
import android.text.TextUtils;
import com.p019qq.taf.jce.JceStruct;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.spec.X509EncodedKeySpec;
import java.util.ArrayList;
import java.util.Random;
import javax.crypto.Cipher;
/* loaded from: classes.dex */
public class cez {
    private cff bYN;
    private final String TAG = "RsaKeyCertifier";
    private Object mLock = new Object();
    private C2723b bZq = new C2723b();

    /* renamed from: com.kingroot.kinguser.cez$a */
    /* loaded from: classes.dex */
    public interface InterfaceC2722a {
        /* renamed from: l */
        void mo4566l(int i, int i2, int i3);
    }

    /* renamed from: com.kingroot.kinguser.cez$b */
    /* loaded from: classes.dex */
    public static class C2723b {
        public volatile String bZu = "";
        public volatile String bZv = "";

        public String toString() {
            return "mSessionId: " + this.bZu + " mEncodeKey: " + this.bZv;
        }
    }

    public cez(Context context, cff cffVar) {
        this.bYN = cffVar;
        alx();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: bh */
    public void m4675bh(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            synchronized (this.mLock) {
                this.bZq.bZv = str;
                this.bZq.bZu = str2;
                this.bYN.alL().mo2736b(this.bZq);
            }
        }
    }

    private void alx() {
        C2723b mo2729fJ = this.bYN.alL().mo2729fJ();
        if (mo2729fJ != null) {
            synchronized (this.mLock) {
                this.bZq.bZv = mo2729fJ.bZv;
                this.bZq.bZu = mo2729fJ.bZu;
            }
        }
    }

    /* renamed from: fw */
    public C2723b m4674fw() {
        C2723b c2723b = new C2723b();
        synchronized (this.mLock) {
            c2723b.bZu = this.bZq.bZu;
            c2723b.bZv = this.bZq.bZv;
        }
        return c2723b;
    }

    /* renamed from: a */
    public void m4677a(final InterfaceC2722a interfaceC2722a) {
        final int alo = cfb.aly().alo();
        String m4673le = m4673le(16);
        byte[] m4672nR = m4672nR(m4673le);
        if (m4672nR == null) {
            interfaceC2722a.mo4566l(alo, 152, -20001000);
            return;
        }
        C1471as c1471as = new C1471as();
        c1471as.f1545iC = m4672nR;
        ArrayList<C2036az> arrayList = new ArrayList<>();
        final C2036az c2036az = new C2036az();
        c2036az.seqNo = alo;
        c2036az.cmd = 152;
        c2036az.flag |= 2;
        c2036az.data = ceq.m4744a((Context) null, c1471as, c2036az.cmd, c2036az);
        arrayList.add(c2036az);
        cfc.alC().m4657b(c2036az.seqNo, -1L, null);
        this.bYN.m4608a(arrayList, new cfa(m4673le) { // from class: com.kingroot.kinguser.cez.1
            @Override // com.kingroot.kinguser.cff.InterfaceC2741a
            /* renamed from: a */
            public void mo4412a(boolean z, int i, int i2, ArrayList<C2235bg> arrayList2) {
                if (i != 0) {
                    interfaceC2722a.mo4566l(alo, 152, i);
                } else if (arrayList2 == null) {
                    interfaceC2722a.mo4566l(alo, 152, -21250000);
                } else if (arrayList2.size() <= 0) {
                    interfaceC2722a.mo4566l(alo, 152, -21250000);
                } else {
                    C2235bg c2235bg = arrayList2.get(0);
                    if (c2235bg == null) {
                        interfaceC2722a.mo4566l(alo, 152, -21250000);
                    } else if (c2235bg.retCode != 0) {
                        interfaceC2722a.mo4566l(alo, 152, c2235bg.retCode);
                    } else if (c2235bg.f1670jZ != 0) {
                        interfaceC2722a.mo4566l(alo, 152, -21300000);
                    } else if (c2235bg.data == null) {
                        interfaceC2722a.mo4566l(alo, 152, -21000005);
                    } else {
                        try {
                            JceStruct m4739a = ceq.m4739a(null, this.bZw.getBytes(), c2235bg.data, new C1509at(), false, c2235bg.flag);
                            if (m4739a == null) {
                                interfaceC2722a.mo4566l(alo, 152, -21000400);
                                return;
                            }
                            C1509at c1509at = (C1509at) m4739a;
                            if (!TextUtils.isEmpty(c1509at.f1547iv)) {
                                cez.this.m4675bh(this.bZw, c1509at.f1547iv);
                                interfaceC2722a.mo4566l(alo, 152, 0);
                                return;
                            }
                            interfaceC2722a.mo4566l(alo, 152, -21280000);
                        } catch (Exception e) {
                            interfaceC2722a.mo4566l(alo, 152, -21000400);
                        }
                    }
                }
            }
        });
    }

    /* renamed from: nR */
    private byte[] m4672nR(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            PublicKey generatePublic = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(cgn.decode("MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDb49jFnNqMDLdl87UtY5jOMqqdMuvQg65Zuva3Qm1tORQGBuM04u7fqygA64XbOx9e/KPNkDNDmqS8SlsAPL1fV2lqM/phgV0NY62TJqSR+PLngwJd2rhYR8wQ1N0JE+R59a5c08EGsd6axStjHsVu2+evCf/SWU9Y/oQpEtOjGwIDAQAB", 0)));
            Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            cipher.init(1, generatePublic);
            return cipher.doFinal(str.getBytes());
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: le */
    private String m4673le(int i) {
        Random random = new Random();
        StringBuffer stringBuffer = new StringBuffer();
        for (int i2 = 0; i2 < i; i2++) {
            stringBuffer.append("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".charAt(random.nextInt(62)));
        }
        return stringBuffer.toString();
    }
}
