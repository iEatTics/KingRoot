package com.kingroot.kinguser;

import android.os.Process;
import com.p019qq.taf.jce.JceStruct;
import java.lang.ref.WeakReference;
/* loaded from: classes.dex */
public class cfj implements cfi {
    private static boolean ccy = false;
    protected long bVi;
    private cfh ccw;
    private cfg ccx;

    public cfj(long j) {
        this.bVi = j;
    }

    /* renamed from: a */
    public static synchronized void m4489a(ceu ceuVar, boolean z, boolean z2, String str) {
        synchronized (cfj.class) {
            if (!cfd.bZT) {
                cfd.m4648eV(z2);
                cfd.m4639nU(str);
                cfd.m4646eX(z ? false : true);
                cfd.m4647eW(ceuVar.mo2730fI());
                ((cfh) ced.m4790j(cfh.class)).m4526c(ceuVar);
                cfd.bZT = true;
            }
        }
    }

    public static synchronized void amd() {
        synchronized (cfj.class) {
            if (cfd.alG() && !cfd.bZT) {
                throw new RuntimeException("must call initSync() before initAsync()!");
            }
            if (!ccy) {
                ccy = true;
                bze.ajZ().m5142a(new Runnable() { // from class: com.kingroot.kinguser.cfj.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        ((cfh) ced.m4790j(cfh.class)).m4522e(cfd.alE(), cfd.alF());
                    }
                }, "init SharkProtocolQueue async");
            }
        }
    }

    @Override // com.kingroot.kinguser.cfi
    /* renamed from: a */
    public WeakReference<ccn> mo4493a(int i, JceStruct jceStruct, JceStruct jceStruct2, int i2, cci cciVar) {
        return mo4492a(i, jceStruct, jceStruct2, i2, cciVar, 0L);
    }

    @Override // com.kingroot.kinguser.cfi
    /* renamed from: a */
    public WeakReference<ccn> mo4492a(int i, JceStruct jceStruct, JceStruct jceStruct2, int i2, cci cciVar, long j) {
        return m4491a(i, jceStruct, jceStruct2, i2, cciVar, j, 0L);
    }

    /* renamed from: a */
    public WeakReference<ccn> m4491a(int i, JceStruct jceStruct, JceStruct jceStruct2, int i2, cci cciVar, long j, long j2) {
        return m4487b(Process.myPid(), 0, 0, 0L, this.bVi, i, jceStruct, null, jceStruct2, i2, cciVar, null, j, j2);
    }

    /* renamed from: b */
    public WeakReference<ccn> m4487b(int i, int i2, int i3, long j, long j2, int i4, JceStruct jceStruct, byte[] bArr, JceStruct jceStruct2, int i5, cci cciVar, ccj ccjVar, long j3, long j4) {
        if (amf().alX()) {
            if (ccm.m4956kV(i5)) {
                ceu alL = amf().alL();
                if (alL == null) {
                    return null;
                }
                return alL.m4691a(i, i2, i3, j, j2, i4, jceStruct, bArr, jceStruct2, i5, cciVar, ccjVar, j3, j4);
            }
            return amf().m4533b(i, i2, i3, j, j2, i4, jceStruct, bArr, jceStruct2, i5, cciVar, ccjVar, j3, j4);
        }
        ame().m4563a(i, this.bVi, i3, j, i4, jceStruct, jceStruct2, i5, cciVar, j3, j4);
        return null;
    }

    /* renamed from: a */
    public void m4494a(int i, JceStruct jceStruct, int i2, cck cckVar) {
        m4490a(0L, i, jceStruct, i2, cckVar, false);
    }

    /* renamed from: a */
    public void m4490a(long j, int i, JceStruct jceStruct, int i2, cck cckVar, boolean z) {
        if (amf().alX()) {
            amf().mo4544a(z ? j : this.bVi, i, jceStruct, i2, cckVar, z);
        } else {
            ame().m4562a(this.bVi, i, jceStruct, i2, cckVar);
        }
    }

    /* renamed from: aA */
    public cck m4488aA(int i, int i2) {
        return amf().alX() ? amf().m4534aA(i, i2) : ame().m4557aA(i, i2);
    }

    public void amb() {
        amf().amb();
    }

    private cfg ame() {
        if (cfd.alG() && !cfd.bZT) {
            throw new RuntimeException("getSharkProcessProxy too early");
        }
        synchronized (this) {
            if (this.ccx == null) {
                this.ccx = cfg.alV();
            }
        }
        return this.ccx;
    }

    private cfh amf() {
        if (cfd.alG() && !cfd.bZT) {
            throw new RuntimeException("getSharkProtocolQueue too early");
        }
        synchronized (this) {
            if (this.ccw == null) {
                this.ccw = (cfh) ced.m4790j(cfh.class);
            }
        }
        return this.ccw;
    }
}
