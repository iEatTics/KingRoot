package com.kingroot.kinguser;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.kingroot.kinguser.ceo;
import com.kingroot.kinguser.cff;
import java.util.LinkedList;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes.dex */
public class cep {
    private static String TAG = "HttpNetworkManager";
    private ceu bYt;
    private cfu bYu;
    private boolean bYx;
    private Context mContext;
    private final Object mLock = new Object();
    private int bYy = 0;
    private LinkedList<C2714a> bYz = new LinkedList<>();
    private Handler mHandler = new Handler(cfd.getLooper()) { // from class: com.kingroot.kinguser.cep.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            C2714a c2714a;
            switch (message.what) {
                case 1:
                    synchronized (cep.this.mLock) {
                        if (cep.this.bYy < 4 && (c2714a = (C2714a) cep.this.bYz.poll()) != null) {
                            cep.m4751d(cep.this);
                            cep.this.m4753b(c2714a.bYH, c2714a.data, c2714a.bYI);
                        }
                    }
                    return;
                default:
                    return;
            }
        }
    };

    /* renamed from: d */
    static /* synthetic */ int m4751d(cep cepVar) {
        int i = cepVar.bYy;
        cepVar.bYy = i + 1;
        return i;
    }

    /* renamed from: i */
    static /* synthetic */ int m4746i(cep cepVar) {
        int i = cepVar.bYy;
        cepVar.bYy = i - 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.cep$a */
    /* loaded from: classes.dex */
    public class C2714a {
        public cff.C2744d bYH;
        public ceo.InterfaceC2710a bYI;
        public byte[] data;

        public C2714a(byte[] bArr, cff.C2744d c2744d, ceo.InterfaceC2710a interfaceC2710a) {
            this.data = null;
            this.bYH = null;
            this.bYI = null;
            this.data = bArr;
            this.bYH = c2744d;
            this.bYI = interfaceC2710a;
        }
    }

    public cep(Context context, ceu ceuVar, cfu cfuVar, boolean z) {
        this.bYx = false;
        this.mContext = context;
        this.bYt = ceuVar;
        this.bYu = cfuVar;
        this.bYx = z;
    }

    /* renamed from: a */
    public void m4755a(cff.C2744d c2744d, byte[] bArr, ceo.InterfaceC2710a interfaceC2710a) {
        synchronized (this.mLock) {
            this.bYz.add(new C2714a(bArr, c2744d, interfaceC2710a));
        }
        this.mHandler.sendEmptyMessage(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m4753b(final cff.C2744d c2744d, final byte[] bArr, final ceo.InterfaceC2710a interfaceC2710a) {
        bze.ajZ().m5142a(new Runnable() { // from class: com.kingroot.kinguser.cep.2
            @Override // java.lang.Runnable
            public void run() {
                final int i;
                AtomicReference<byte[]> atomicReference = new AtomicReference<>();
                try {
                    i = new ceo(cep.this.mContext, cep.this.bYt, cep.this.bYu, cep.this.bYx).m4763a(c2744d, bArr, atomicReference);
                } catch (Throwable th) {
                    i = -1200;
                }
                final byte[] bArr2 = atomicReference.get();
                bze.ajZ().m5142a(new Runnable() { // from class: com.kingroot.kinguser.cep.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (interfaceC2710a != null) {
                            interfaceC2710a.mo4467a(i, bArr2);
                        }
                    }
                }, "shark-http-callback");
                synchronized (cep.this.mLock) {
                    cep.m4746i(cep.this);
                    if (cep.this.bYz.size() > 0) {
                        cep.this.mHandler.sendEmptyMessage(1);
                    }
                }
            }
        }, "shark-http-send");
    }
}
