package com.kingroot.kinguser;

import android.content.Context;
import com.kingroot.kinguser.ceo;
import com.kingroot.kinguser.cff;
import com.kingroot.kinguser.cfo;
/* loaded from: classes.dex */
public class cfl implements cev {
    private cff bYN;
    private ceu bYt;
    private boolean bYx;
    private InterfaceC2779a cau;
    private cep ccG;
    private cfo ccH;
    private cfu ccI;

    /* renamed from: yb */
    private boolean f2308yb;

    /* renamed from: com.kingroot.kinguser.cfl$a */
    /* loaded from: classes.dex */
    public interface InterfaceC2779a {
        /* renamed from: a */
        void mo4466a(boolean z, int i, byte[] bArr, cff.C2744d c2744d);

        /* renamed from: b */
        void mo4465b(boolean z, int i, cff.C2744d c2744d);
    }

    public cfl(boolean z, Context context, ceu ceuVar, boolean z2, InterfaceC2779a interfaceC2779a, cfo.InterfaceC2785d interfaceC2785d, cff.InterfaceC2743c interfaceC2743c, cff cffVar, String str) {
        this.f2308yb = false;
        this.bYx = false;
        this.f2308yb = z;
        this.cau = interfaceC2779a;
        this.bYt = ceuVar;
        this.bYN = cffVar;
        this.bYx = z2;
        if (this.f2308yb) {
            this.ccI = new ces(context, z2, ceuVar, str);
            this.ccG = new cep(context, ceuVar, this.ccI, this.bYx);
            this.ccH = new cfo(ceuVar, this.ccI, interfaceC2779a, interfaceC2785d, this, interfaceC2743c, this.bYN);
        }
    }

    public cfu amq() {
        return this.ccI;
    }

    public cfo alK() {
        if (!this.f2308yb) {
            throw new RuntimeException("getTmsTcpManager(), not in sending process!");
        }
        return this.ccH;
    }

    /* renamed from: d */
    public synchronized void m4468d(final cff.C2744d c2744d) {
        boolean z = false;
        synchronized (this) {
            if (!this.f2308yb) {
                throw new RuntimeException("sendData(), not in sending process!");
            }
            if (c2744d != null) {
                if (c2744d.alP()) {
                    if (c2744d.caL) {
                        this.cau.mo4465b(true, -30000007, c2744d);
                    }
                } else {
                    boolean z2 = (this.ccH.amu() || c2744d.caE == 1024) ? false : true;
                    if (c2744d.caE == 2048 || c2744d.caE == 512 || c2744d.caL || z2) {
                        z = true;
                    }
                }
                if (z) {
                    c2744d.caK = false;
                    byte[] m4737a = ceq.m4737a(c2744d, false, this.bYN.getGuid(), this.bYt);
                    if (m4737a != null) {
                        m4470a(c2744d, 15, 0, m4737a.length);
                        this.ccG.m4755a(c2744d, m4737a, new ceo.InterfaceC2710a() { // from class: com.kingroot.kinguser.cfl.1
                            @Override // com.kingroot.kinguser.ceo.InterfaceC2710a
                            /* renamed from: a */
                            public void mo4467a(int i, byte[] bArr) {
                                if (i != 0) {
                                    i -= 42000000;
                                }
                                cfl.m4470a(c2744d, 16, i, 0);
                                cfl.this.cau.mo4466a(false, i, bArr, c2744d);
                            }
                        });
                    }
                } else {
                    c2744d.caK = true;
                    if (c2744d.caJ) {
                        this.ccH.m4429f(c2744d);
                    } else if (c2744d.alQ()) {
                        this.ccH.m4429f(c2744d);
                    } else {
                        this.ccH.m4432e(c2744d);
                    }
                }
            }
        }
    }

    @Override // com.kingroot.kinguser.cev
    /* renamed from: a */
    public void mo4471a(final cff.C2744d c2744d, int i) {
        if (c2744d != null) {
            if (c2744d.caE == 1024) {
                this.cau.mo4465b(true, i, c2744d);
            } else if (c2744d.alP()) {
                this.cau.mo4465b(true, i, c2744d);
            } else {
                c2744d.caK = false;
                byte[] m4737a = ceq.m4737a(c2744d, false, this.bYN.getGuid(), this.bYt);
                if (m4737a != null) {
                    m4470a(c2744d, 15, 0, m4737a.length);
                    this.ccG.m4755a(c2744d, m4737a, new ceo.InterfaceC2710a() { // from class: com.kingroot.kinguser.cfl.2
                        @Override // com.kingroot.kinguser.ceo.InterfaceC2710a
                        /* renamed from: a */
                        public void mo4467a(int i2, byte[] bArr) {
                            if (i2 != 0) {
                                i2 -= 42000000;
                            }
                            cfl.m4470a(c2744d, 16, i2, 0);
                            cfl.this.cau.mo4466a(false, i2, bArr, c2744d);
                        }
                    });
                }
            }
        }
    }

    /* renamed from: a */
    public static void m4470a(cff.C2744d c2744d, int i, int i2, int i3) {
        if (c2744d != null && c2744d.caQ != null) {
            int size = c2744d.caQ.size();
            for (int i4 = 0; i4 < size; i4++) {
                C2036az c2036az = c2744d.caQ.get(i4);
                if (c2036az != null) {
                    cfc.alC().m4660a("SharkWharf", c2036az.cmd, c2036az.seqNo, c2036az, i, i2, i3 > 0 ? String.format("%d/%d", Integer.valueOf(i3), Integer.valueOf(size)) : null);
                }
            }
        }
    }
}
