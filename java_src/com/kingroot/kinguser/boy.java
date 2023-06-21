package com.kingroot.kinguser;

import android.os.SystemClock;
import android.util.Log;
import java.util.Iterator;
import java.util.Vector;
import java.util.concurrent.LinkedBlockingQueue;
/* loaded from: classes.dex */
public final class boy {
    private bpi bFS;
    private volatile boq bFT = boq.PENDING;
    private Vector bFU = new Vector();
    private Vector bFV = new Vector();

    /* renamed from: e */
    private int f1858e = 0;

    /* renamed from: f */
    private volatile boolean f1859f = false;
    private LinkedBlockingQueue bFW = new LinkedBlockingQueue();

    /* renamed from: com.kingroot.kinguser.boy$a */
    /* loaded from: classes.dex */
    public enum EnumC2546a {
        Inform_Pending,
        Inform_Started,
        Inform_Detected,
        Inform_Received,
        Inform_Paused,
        Inform_Failed,
        Inform_Succeed,
        Inform_Deleted
    }

    public boy(bpi bpiVar) {
        this.bFS = bpiVar;
    }

    /* renamed from: a */
    private synchronized void m6018a(boq boqVar, boolean z) {
        if ((this.bFT != boq.COMPLETE && this.bFT != boq.FAILED && this.bFT != boq.PAUSED && this.bFT != boq.DELETED) || boqVar == boq.PENDING) {
            this.bFT = boqVar;
            EnumC2546a enumC2546a = null;
            switch (boqVar) {
                case PENDING:
                    enumC2546a = EnumC2546a.Inform_Pending;
                    break;
                case STARTED:
                    enumC2546a = EnumC2546a.Inform_Started;
                    break;
                case DOWNLOADING:
                    enumC2546a = EnumC2546a.Inform_Received;
                    break;
                case COMPLETE:
                    enumC2546a = EnumC2546a.Inform_Succeed;
                    break;
                case FAILED:
                    enumC2546a = EnumC2546a.Inform_Failed;
                    break;
                case PAUSED:
                    enumC2546a = EnumC2546a.Inform_Paused;
                    break;
                case DELETED:
                    enumC2546a = EnumC2546a.Inform_Deleted;
                    break;
            }
            m6017a(enumC2546a);
        }
    }

    /* renamed from: a */
    public final void m6019a(boo booVar) {
        if (booVar == null) {
            return;
        }
        try {
            synchronized (this.bFU) {
                if (!this.bFU.contains(booVar)) {
                    this.bFU.add(booVar);
                }
            }
            synchronized (this.bFV) {
                if (!this.bFV.contains(booVar)) {
                    this.bFV.add(booVar);
                }
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: a */
    public final void m6017a(EnumC2546a enumC2546a) {
        if (enumC2546a != null) {
            if (enumC2546a != null && enumC2546a != EnumC2546a.Inform_Deleted) {
                boi.agB().post(new bpc(this, enumC2546a));
            }
            if (enumC2546a != null) {
                try {
                    this.bFW.put(enumC2546a);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public final boq agO() {
        return this.bFT;
    }

    /* renamed from: c */
    public final synchronized void m6014c() {
        this.bFW.clear();
    }

    /* renamed from: c */
    public final synchronized void m6013c(boq boqVar) {
        m6018a(boqVar, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:112:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x001b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0004 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00af  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void m6012d() {
        boolean z;
        boolean z2;
        boolean z3 = true;
        this.f1859f = true;
        while (true) {
            EnumC2546a enumC2546a = null;
            try {
                EnumC2546a enumC2546a2 = (EnumC2546a) this.bFW.take();
                try {
                    switch (enumC2546a2) {
                        case Inform_Pending:
                            z2 = false;
                            if (!z2) {
                                break;
                            } else {
                                Log.w("DownloadTest", "loopInform finish on command:" + enumC2546a2);
                                break;
                            }
                        case Inform_Started:
                            bot.agK().mo6040h(this.bFS);
                            synchronized (this.bFU) {
                                Iterator it = this.bFU.iterator();
                                while (it.hasNext()) {
                                    boo booVar = (boo) it.next();
                                    if (booVar != null) {
                                        booVar.mo6040h(this.bFS);
                                    }
                                }
                            }
                            z2 = false;
                            if (!z2) {
                            }
                            break;
                        case Inform_Detected:
                            bot.agK().mo6035l(this.bFS);
                            synchronized (this.bFU) {
                                Iterator it2 = this.bFU.iterator();
                                while (it2.hasNext()) {
                                    boo booVar2 = (boo) it2.next();
                                    if (booVar2 != null) {
                                        booVar2.mo6035l(this.bFS);
                                    }
                                }
                            }
                            z2 = false;
                            if (!z2) {
                            }
                            break;
                        case Inform_Received:
                            bot.agK().mo6039i(this.bFS);
                            synchronized (this.bFU) {
                                Iterator it3 = this.bFU.iterator();
                                while (it3.hasNext()) {
                                    boo booVar3 = (boo) it3.next();
                                    if (booVar3 != null) {
                                        booVar3.mo6039i(this.bFS);
                                    }
                                }
                            }
                            z2 = false;
                            if (!z2) {
                            }
                            break;
                        case Inform_Paused:
                            try {
                                bot.agK().mo6037j(this.bFS);
                                synchronized (this.bFU) {
                                    Iterator it4 = this.bFU.iterator();
                                    while (it4.hasNext()) {
                                        boo booVar4 = (boo) it4.next();
                                        if (booVar4 != null) {
                                            booVar4.mo6037j(this.bFS);
                                        }
                                    }
                                }
                                z2 = true;
                                if (!z2) {
                                }
                            } catch (InterruptedException e) {
                                z = true;
                                e = e;
                                enumC2546a = enumC2546a2;
                                try {
                                    e.printStackTrace();
                                } catch (Throwable th) {
                                    th = th;
                                    z3 = z;
                                    if (z3) {
                                        throw th;
                                    }
                                    Log.w("DownloadTest", "loopInform finish on command:" + enumC2546a);
                                    this.f1859f = false;
                                }
                                if (z) {
                                    Log.w("DownloadTest", "loopInform finish on command:" + enumC2546a);
                                    this.f1859f = false;
                                }
                            } catch (Throwable th2) {
                                enumC2546a = enumC2546a2;
                                th = th2;
                                if (z3) {
                                }
                            }
                            break;
                        case Inform_Failed:
                            bot.agK().mo6036k(this.bFS);
                            synchronized (this.bFU) {
                                Iterator it5 = this.bFU.iterator();
                                while (it5.hasNext()) {
                                    boo booVar5 = (boo) it5.next();
                                    if (booVar5 != null) {
                                        booVar5.mo6036k(this.bFS);
                                    }
                                }
                            }
                            z2 = true;
                            if (!z2) {
                            }
                            break;
                        case Inform_Succeed:
                            long elapsedRealtime = SystemClock.elapsedRealtime();
                            synchronized (this.bFU) {
                                Iterator it6 = this.bFU.iterator();
                                while (it6.hasNext()) {
                                    boo booVar6 = (boo) it6.next();
                                    if (booVar6 != null) {
                                        booVar6.mo6034m(this.bFS);
                                    }
                                }
                            }
                            long elapsedRealtime2 = SystemClock.elapsedRealtime();
                            this.f1858e = (int) (elapsedRealtime2 - elapsedRealtime);
                            this.bFS.m5928cC();
                            this.bFS.f1931F = (int) (SystemClock.elapsedRealtime() - elapsedRealtime2);
                            bot.agK().mo6034m(this.bFS);
                            z2 = true;
                            if (!z2) {
                            }
                            break;
                        case Inform_Deleted:
                            z2 = true;
                            if (!z2) {
                            }
                            break;
                        default:
                            z2 = false;
                            if (!z2) {
                            }
                            break;
                    }
                } catch (InterruptedException e2) {
                    z = false;
                    e = e2;
                    enumC2546a = enumC2546a2;
                } catch (Throwable th3) {
                    z3 = false;
                    th = th3;
                    enumC2546a = enumC2546a2;
                }
            } catch (InterruptedException e3) {
                e = e3;
                z = false;
            } catch (Throwable th4) {
                th = th4;
                z3 = false;
            }
        }
        this.f1859f = false;
    }

    /* renamed from: e */
    public final boolean m6011e() {
        return this.f1859f;
    }

    /* renamed from: f */
    public final int m6010f() {
        return this.f1858e;
    }
}
