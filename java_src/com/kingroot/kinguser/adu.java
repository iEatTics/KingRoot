package com.kingroot.kinguser;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.kingroot.kinguser.ado;
import com.kingroot.kinguser.adq;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentLinkedQueue;
/* loaded from: classes.dex */
public class adu implements ado {
    private ConcurrentLinkedQueue<ado.InterfaceC0728a> adz;
    private final List<adq> adw = new ArrayList();
    private adn adx = new ads();
    private byte[] ady = new byte[0];
    private long adA = 0;
    private Handler mHandler = new Handler(Looper.getMainLooper()) { // from class: com.kingroot.kinguser.adu.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = 0;
            switch (message.what) {
                case 1:
                    adu.this.notifyDataSetChanged();
                    return;
                case 2:
                case 5:
                case 6:
                default:
                    return;
                case 3:
                    ((adq) message.obj).onStart();
                    return;
                case 4:
                    adq[] adqVarArr = (adq[]) message.obj;
                    if (adqVarArr != null) {
                        int length = adqVarArr.length;
                        while (i < length) {
                            adqVarArr[i].mo12464sT();
                            i++;
                        }
                        return;
                    }
                    return;
                case 7:
                    adq[] adqVarArr2 = (adq[]) message.obj;
                    if (adqVarArr2 != null) {
                        int length2 = adqVarArr2.length;
                        while (i < length2) {
                            adqVarArr2[i].mo12463sU();
                            i++;
                        }
                        return;
                    }
                    return;
                case 8:
                    adq adqVar = (adq) message.obj;
                    int i2 = message.arg1;
                    int i3 = message.arg2;
                    if (adqVar != null) {
                        adqVar.mo12463sU();
                        return;
                    }
                    return;
                case 9:
                    int i4 = message.arg1;
                    int i5 = message.arg2;
                    adu.this.m12455b((adq) message.obj, i4, i5);
                    return;
                case 10:
                    adq adqVar2 = (adq) message.obj;
                    int i6 = message.arg1;
                    int i7 = message.arg2;
                    if (adqVar2 != null) {
                        adqVar2.m12465sV();
                    }
                    adu.this.m12455b(adqVar2, i6, i7);
                    return;
                case 11:
                    adq adqVar3 = (adq) message.obj;
                    int i8 = message.arg1;
                    int i9 = message.arg2;
                    if (adqVar3 != null) {
                        adqVar3.mo12464sT();
                        return;
                    }
                    return;
                case 12:
                    adq adqVar4 = (adq) message.obj;
                    int i10 = message.arg1;
                    int i11 = message.arg2;
                    if (adqVar4 != null) {
                        adqVar4.mo12463sU();
                        return;
                    }
                    return;
            }
        }
    };
    private adq.InterfaceC0729a adB = new adq.InterfaceC0729a() { // from class: com.kingroot.kinguser.adu.2
    };

    public adu() {
        init();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyDataSetChanged() {
        if (this.adz != null) {
            Iterator<ado.InterfaceC0728a> it = this.adz.iterator();
            while (it.hasNext()) {
                it.next().m12471sQ();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m12455b(Object obj, int i, int i2) {
        if (this.adz != null) {
            Iterator<ado.InterfaceC0728a> it = this.adz.iterator();
            while (it.hasNext()) {
                it.next().m12472a(obj, i, i2);
            }
        }
    }

    public void init() {
        List<adq> mo12460sP = this.adx.mo12460sP();
        if (mo12460sP != null && mo12460sP.size() > 0) {
            synchronized (this.adw) {
                this.adw.clear();
                this.adw.addAll(mo12460sP);
                Collections.sort(this.adw);
            }
        }
        m12453sZ();
    }

    @Override // com.kingroot.kinguser.ado
    /* renamed from: f */
    public <T extends adq> T mo12454f(Class<T> cls) {
        return (T) this.adx.mo12461f(cls);
    }

    /* renamed from: sZ */
    private void m12453sZ() {
        synchronized (this.adw) {
            for (adq adqVar : this.adw) {
                if (adqVar != null) {
                    adqVar.m12468a(this.adB);
                }
            }
        }
    }
}
