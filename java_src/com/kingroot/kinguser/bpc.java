package com.kingroot.kinguser;

import com.kingroot.kinguser.boy;
import java.util.Iterator;
import java.util.Vector;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class bpc implements Runnable {
    private /* synthetic */ boy.EnumC2546a bFZ;
    private /* synthetic */ boy bGw;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bpc(boy boyVar, boy.EnumC2546a enumC2546a) {
        this.bGw = boyVar;
        this.bFZ = enumC2546a;
    }

    @Override // java.lang.Runnable
    public final void run() {
        bpi bpiVar;
        Vector vector;
        Vector vector2;
        bpi bpiVar2;
        bpi bpiVar3;
        Vector vector3;
        Vector vector4;
        bpi bpiVar4;
        bpi bpiVar5;
        Vector vector5;
        Vector vector6;
        bpi bpiVar6;
        bpi bpiVar7;
        Vector vector7;
        Vector vector8;
        bpi bpiVar8;
        bpi bpiVar9;
        Vector vector9;
        Vector vector10;
        bpi bpiVar10;
        bpi bpiVar11;
        Vector vector11;
        Vector vector12;
        bpi bpiVar12;
        bpi bpiVar13;
        Vector vector13;
        Vector vector14;
        bpi bpiVar14;
        switch (this.bFZ) {
            case Inform_Pending:
                bot agK = bot.agK();
                bpiVar13 = this.bGw.bFS;
                agK.mo6051b(bpiVar13);
                vector13 = this.bGw.bFV;
                synchronized (vector13) {
                    vector14 = this.bGw.bFV;
                    Iterator it = vector14.iterator();
                    while (it.hasNext()) {
                        boo booVar = (boo) it.next();
                        if (booVar != null) {
                            bpiVar14 = this.bGw.bFS;
                            booVar.mo6051b(bpiVar14);
                        }
                    }
                }
                return;
            case Inform_Started:
                bot agK2 = bot.agK();
                bpiVar11 = this.bGw.bFS;
                agK2.mo6054a(bpiVar11);
                vector11 = this.bGw.bFV;
                synchronized (vector11) {
                    vector12 = this.bGw.bFV;
                    Iterator it2 = vector12.iterator();
                    while (it2.hasNext()) {
                        boo booVar2 = (boo) it2.next();
                        if (booVar2 != null) {
                            bpiVar12 = this.bGw.bFS;
                            booVar2.mo6054a(bpiVar12);
                        }
                    }
                }
                return;
            case Inform_Detected:
                bot agK3 = bot.agK();
                bpiVar9 = this.bGw.bFS;
                agK3.mo6049c(bpiVar9);
                vector9 = this.bGw.bFV;
                synchronized (vector9) {
                    vector10 = this.bGw.bFV;
                    Iterator it3 = vector10.iterator();
                    while (it3.hasNext()) {
                        boo booVar3 = (boo) it3.next();
                        if (booVar3 != null) {
                            bpiVar10 = this.bGw.bFS;
                            booVar3.mo6049c(bpiVar10);
                        }
                    }
                }
                return;
            case Inform_Received:
                bot agK4 = bot.agK();
                bpiVar7 = this.bGw.bFS;
                agK4.mo6047d(bpiVar7);
                vector7 = this.bGw.bFV;
                synchronized (vector7) {
                    vector8 = this.bGw.bFV;
                    Iterator it4 = vector8.iterator();
                    while (it4.hasNext()) {
                        boo booVar4 = (boo) it4.next();
                        if (booVar4 != null) {
                            bpiVar8 = this.bGw.bFS;
                            booVar4.mo6047d(bpiVar8);
                        }
                    }
                }
                return;
            case Inform_Paused:
                bot agK5 = bot.agK();
                bpiVar5 = this.bGw.bFS;
                agK5.mo6044f(bpiVar5);
                vector5 = this.bGw.bFV;
                synchronized (vector5) {
                    vector6 = this.bGw.bFV;
                    Iterator it5 = vector6.iterator();
                    while (it5.hasNext()) {
                        boo booVar5 = (boo) it5.next();
                        if (booVar5 != null) {
                            bpiVar6 = this.bGw.bFS;
                            booVar5.mo6044f(bpiVar6);
                        }
                    }
                }
                return;
            case Inform_Failed:
                bot agK6 = bot.agK();
                bpiVar3 = this.bGw.bFS;
                agK6.mo6042g(bpiVar3);
                vector3 = this.bGw.bFV;
                synchronized (vector3) {
                    vector4 = this.bGw.bFV;
                    Iterator it6 = vector4.iterator();
                    while (it6.hasNext()) {
                        boo booVar6 = (boo) it6.next();
                        if (booVar6 != null) {
                            bpiVar4 = this.bGw.bFS;
                            booVar6.mo6042g(bpiVar4);
                        }
                    }
                }
                return;
            case Inform_Succeed:
                bot agK7 = bot.agK();
                bpiVar = this.bGw.bFS;
                agK7.mo6046e(bpiVar);
                vector = this.bGw.bFV;
                synchronized (vector) {
                    vector2 = this.bGw.bFV;
                    Iterator it7 = vector2.iterator();
                    while (it7.hasNext()) {
                        boo booVar7 = (boo) it7.next();
                        if (booVar7 != null) {
                            bpiVar2 = this.bGw.bFS;
                            booVar7.mo6046e(bpiVar2);
                        }
                    }
                }
                return;
            default:
                return;
        }
    }
}
