package com.kingroot.kinguser;

import android.text.TextUtils;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
/* loaded from: classes.dex */
public class avl extends avj {
    private static volatile avl aTA;
    private final HashSet<String> aTB;
    private final HashSet<String> aTC;
    private final HashSet<String> aTD;
    private final HashSet<String> aTE;
    private final HashSet<String> aTF;
    private final HashSet<String> aTG;
    private final HashSet<String> aTH;
    private final Object mLock;

    private avl() {
        super(40296);
        this.mLock = new Object();
        this.aTB = new HashSet<>();
        this.aTC = new HashSet<>();
        this.aTD = new HashSet<>();
        this.aTE = new HashSet<>();
        this.aTF = new HashSet<>();
        this.aTG = new HashSet<>();
        this.aTH = new HashSet<>();
        m8823RD();
    }

    /* renamed from: RC */
    public static avl m8824RC() {
        if (aTA == null) {
            synchronized (avl.class) {
                if (aTA == null) {
                    aTA = new avl();
                }
            }
        }
        return aTA;
    }

    /* renamed from: RD */
    private void m8823RD() {
        synchronized (this.mLock) {
            C2585br Rw = m8833Rw();
            if (Rw != null && Rw.f2063kU != null) {
                HashSet hashSet = new HashSet();
                HashSet hashSet2 = new HashSet();
                HashSet hashSet3 = new HashSet();
                HashSet hashSet4 = new HashSet();
                HashSet hashSet5 = new HashSet();
                HashSet hashSet6 = new HashSet();
                HashSet hashSet7 = new HashSet();
                Iterator<C2565bq> it = Rw.f2063kU.iterator();
                while (it.hasNext()) {
                    C2565bq next = it.next();
                    if (!TextUtils.isEmpty(next.f2002kM) && !TextUtils.isEmpty(next.f2005kP)) {
                        try {
                            switch (Integer.parseInt(next.f2002kM)) {
                                case 1:
                                    hashSet.add(next.f2005kP);
                                    continue;
                                case 2:
                                    if (!TextUtils.isEmpty(next.f2003kN)) {
                                        if (!TextUtils.isEmpty(next.f2004kO)) {
                                            try {
                                                int parseInt = Integer.parseInt(next.f2003kN);
                                                try {
                                                    int parseInt2 = Integer.parseInt(next.f2004kO);
                                                    if (parseInt == 1) {
                                                        if (parseInt2 == 1) {
                                                            hashSet3.add(next.f2005kP);
                                                            break;
                                                        } else if (parseInt2 != 2) {
                                                            break;
                                                        } else {
                                                            hashSet5.add(next.f2005kP);
                                                            break;
                                                        }
                                                    } else if (parseInt == 2) {
                                                        if (parseInt2 == 1) {
                                                            hashSet2.add(next.f2005kP);
                                                            break;
                                                        } else if (parseInt2 != 2) {
                                                            break;
                                                        } else {
                                                            hashSet4.add(next.f2005kP);
                                                            break;
                                                        }
                                                    } else {
                                                        break;
                                                    }
                                                } catch (NumberFormatException e) {
                                                    break;
                                                }
                                            } catch (NumberFormatException e2) {
                                                break;
                                            }
                                        } else {
                                            break;
                                        }
                                    } else {
                                        continue;
                                    }
                                case 3:
                                    hashSet6.add(next.f2005kP);
                                    continue;
                                case 4:
                                    hashSet7.add(next.f2005kP);
                                    continue;
                            }
                        } catch (NumberFormatException e3) {
                        }
                    }
                }
                synchronized (this.aTB) {
                    this.aTB.clear();
                    this.aTB.addAll(hashSet);
                }
                synchronized (this.aTC) {
                    this.aTC.clear();
                    this.aTC.addAll(hashSet2);
                }
                synchronized (this.aTD) {
                    this.aTD.clear();
                    this.aTD.addAll(hashSet3);
                }
                synchronized (this.aTE) {
                    this.aTE.clear();
                    this.aTE.addAll(hashSet4);
                }
                synchronized (this.aTF) {
                    this.aTF.clear();
                    this.aTF.addAll(hashSet5);
                }
                synchronized (this.aTG) {
                    this.aTG.clear();
                    this.aTG.addAll(hashSet6);
                }
                synchronized (this.aTH) {
                    this.aTH.clear();
                    this.aTH.addAll(hashSet7);
                }
            }
        }
    }

    /* renamed from: RE */
    public Set<String> m8822RE() {
        HashSet hashSet = new HashSet();
        synchronized (this.aTB) {
            hashSet.addAll(this.aTB);
        }
        return hashSet;
    }

    /* renamed from: RF */
    public Set<String> m8821RF() {
        HashSet hashSet = new HashSet();
        synchronized (this.aTC) {
            hashSet.addAll(this.aTC);
        }
        return hashSet;
    }

    /* renamed from: RG */
    public Set<String> m8820RG() {
        HashSet hashSet = new HashSet();
        synchronized (this.aTD) {
            hashSet.addAll(this.aTD);
        }
        return hashSet;
    }

    /* renamed from: RH */
    public Set<String> m8819RH() {
        HashSet hashSet = new HashSet();
        synchronized (this.aTE) {
            hashSet.addAll(this.aTE);
        }
        return hashSet;
    }

    /* renamed from: RI */
    public Set<String> m8818RI() {
        HashSet hashSet = new HashSet();
        synchronized (this.aTF) {
            hashSet.addAll(this.aTF);
        }
        return hashSet;
    }

    /* renamed from: RJ */
    public Set<String> m8817RJ() {
        HashSet hashSet = new HashSet();
        synchronized (this.aTG) {
            hashSet.addAll(this.aTG);
        }
        return hashSet;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.avj
    /* renamed from: uy */
    public void mo1472uy() {
        m8823RD();
        ahl.m11725xm().syncListWithDaemon();
    }
}
