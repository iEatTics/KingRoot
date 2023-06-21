package com.kingroot.kinguser;

import android.content.Context;
import com.kingroot.kinguser.cff;
import com.kingroot.kinguser.cfx;
/* loaded from: classes.dex */
public class cfy {
    private final int bYp = 3;
    private cfx cdY;
    private Context context;

    public cfy(Context context, cfx.InterfaceC2801a interfaceC2801a, cfu cfuVar) {
        this.context = null;
        this.cdY = null;
        this.context = context;
        this.cdY = new cfx(context, interfaceC2801a, cfuVar);
    }

    public String amG() {
        return this.cdY.amG();
    }

    public cfu amq() {
        return this.cdY.amq();
    }

    public int amO() {
        cgl.m4332d(65541, "[ocean] close");
        return this.cdY.stop();
    }

    public int amP() {
        if (cej.akX()) {
            return -230000;
        }
        int m4370cu = this.cdY.m4370cu(this.context);
        cgl.m4332d(65541, "[ocean] connect |ret|" + m4370cu);
        return m4370cu;
    }

    public int amQ() {
        if (cej.akX()) {
            return -230000;
        }
        int amH = this.cdY.amH();
        cgl.m4332d(65541, "[ocean] reconnect |ret|" + amH);
        return amH;
    }

    public boolean amM() {
        return this.cdY.amM();
    }

    public boolean amN() {
        return this.cdY.amN();
    }

    /* renamed from: a */
    public int m4363a(cff.C2744d c2744d, byte[] bArr) {
        if (c2744d == null || bArr == null) {
            return -10;
        }
        int i = -1;
        for (int i2 = 0; i2 < 3; i2++) {
            if (c2744d.alO()) {
                return -17;
            }
            i = this.cdY.m4379a(c2744d, bArr);
            if (i != 0) {
                if (2 != i2) {
                    try {
                        Thread.sleep(300L);
                    } catch (InterruptedException e) {
                    }
                }
            } else {
                return i;
            }
        }
        return i;
    }
}
