package com.kingroot.kinguser;

import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class bed {
    private beb bkA;
    private Throwable bkB;
    InterfaceC2117a bkC;
    boolean bkD;
    final AtomicBoolean bkE;
    private final InterfaceC2117a bku;
    bed bkv;
    private bem bkw;
    private bec bkx;
    private boolean bky;
    private bek bkz;

    /* renamed from: com.kingroot.kinguser.bed$a */
    /* loaded from: classes.dex */
    public interface InterfaceC2117a {
        /* renamed from: nF */
        List<Object> mo7445nF();
    }

    public bed(bem bemVar, bec becVar, boolean z, bek bekVar) {
        this.bku = new InterfaceC2117a() { // from class: com.kingroot.kinguser.bed.1
            @Override // com.kingroot.kinguser.bed.InterfaceC2117a
            /* renamed from: nF */
            public List<Object> mo7445nF() {
                return Collections.emptyList();
            }
        };
        this.bkA = beb.None;
        this.bkD = false;
        this.bkw = bemVar;
        this.bkx = becVar;
        this.bky = z;
        this.bkz = bekVar;
        this.bkE = new AtomicBoolean(false);
    }

    public bed(bek bekVar) {
        this(bem.MEDIUM, bec.Normal, true, bekVar);
    }

    /* renamed from: Zb */
    public bem m7484Zb() {
        return this.bkw;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void run() {
        if (this.bkz != null) {
            this.bkz.mo1208a(this.bkC != null ? this.bkC : this.bku);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: Zc */
    public bek m7483Zc() {
        return this.bkz;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m7478a(bek bekVar) {
        this.bkz = bekVar;
    }

    /* renamed from: Zd */
    public bec m7482Zd() {
        return this.bkx;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setException(Throwable th) {
        this.bkB = th;
    }

    /* renamed from: Ze */
    public boolean m7481Ze() {
        return this.bky;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m7479a(beb bebVar) {
        this.bkA = bebVar;
    }

    /* renamed from: Zf */
    public void m7480Zf() {
    }

    public void onRunning() {
        this.bkE.set(true);
    }

    /* renamed from: xr */
    public void m7476xr() {
        this.bkE.set(false);
    }

    /* renamed from: g */
    public void m7477g(Throwable th) {
        this.bkE.set(false);
    }

    public boolean isRunning() {
        return this.bkE.get();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void recycle() {
        this.bkv = null;
        this.bky = true;
        this.bkx = bec.Normal;
        this.bkw = bem.MEDIUM;
        this.bkA = beb.None;
        this.bkB = null;
    }

    public String toString() {
        return "KJob{Priority=" + this.bkw + ", JobType=" + this.bkx + ", isSingle=" + this.bky + ", JobStatus=" + this.bkA + ", Throwable=" + (this.bkB != null ? this.bkB.getMessage() : "null") + '}';
    }
}
