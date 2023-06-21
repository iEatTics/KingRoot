package com.kingroot.kinguser;

import android.content.Context;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.C3979zv;
import com.kingroot.kinguser.receiver.MediaMountedReceiver;
import java.lang.ref.WeakReference;
/* loaded from: classes.dex */
public abstract class bkw extends AbstractC3520ri {
    private HandlerC2489a bzq;
    private AbstractC3793vo bzr = new adz();
    private C3979zv bzs;
    private bkx bzt;
    private bla bzu;

    public bkw() {
        aeR();
        this.bzt = new bkx();
        this.bzu = new bla();
        this.bzq = new HandlerC2489a(this) { // from class: com.kingroot.kinguser.bkw.1
            @Override // com.kingroot.kinguser.bkw.HandlerC2489a, android.os.Handler
            public void handleMessage(Message message) {
                bkw aeS = aeS();
                if (aeS != null) {
                    aeS.mo6514a(message);
                }
            }
        };
        aeQ();
    }

    private void aeQ() {
        IntentFilter intentFilter = new IntentFilter("android.intent.action.MEDIA_MOUNTED");
        intentFilter.addAction("android.intent.action.MEDIA_REMOVED");
        intentFilter.addAction("android.intent.action.MEDIA_UNMOUNTED");
        intentFilter.addAction("android.intent.action.MEDIA_CHECKING");
        intentFilter.addAction("android.intent.action.MEDIA_BAD_REMOVAL");
        intentFilter.addDataScheme("file");
        getContext().registerReceiver(new MediaMountedReceiver(), intentFilter);
    }

    protected void aeR() {
        this.bzs = new C3979zv.C3981a().m1238aa(86400000L).m1237pH();
    }

    /* renamed from: a */
    protected void mo6514a(Message message) {
    }

    public Context getContext() {
        return KApplication.m13453ge();
    }

    public Handler getHandler() {
        return this.bzq;
    }

    @Override // com.kingroot.kinguser.AbstractC3520ri
    /* renamed from: hW */
    public cbw mo2473hW() {
        return acl.m12726rI();
    }

    @Override // com.kingroot.kinguser.AbstractC3520ri
    /* renamed from: hV */
    public InterfaceC3519rh mo2474hV() {
        return this.bzt;
    }

    @Override // com.kingroot.kinguser.AbstractC3520ri
    /* renamed from: ir */
    public abs mo2469ir() {
        return this.bzu;
    }

    @Override // com.kingroot.kinguser.AbstractC3520ri
    /* renamed from: if */
    public AbstractC3793vo mo2471if() {
        return this.bzr;
    }

    @Override // com.kingroot.kinguser.AbstractC3520ri
    /* renamed from: ig */
    public C3979zv mo2470ig() {
        return this.bzs;
    }

    /* renamed from: com.kingroot.kinguser.bkw$a */
    /* loaded from: classes.dex */
    public static class HandlerC2489a extends Handler {
        private final WeakReference<bkw> bzw;

        public HandlerC2489a(bkw bkwVar) {
            super(Looper.getMainLooper());
            this.bzw = new WeakReference<>(bkwVar);
        }

        public bkw aeS() {
            return this.bzw.get();
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
        }
    }

    @Override // com.kingroot.kinguser.AbstractC3520ri
    /* renamed from: a */
    public void mo2475a(Throwable th, String str, byte[] bArr) {
    }

    @Override // com.kingroot.kinguser.AbstractC3520ri
    /* renamed from: hX */
    public InterfaceC3950zf mo2472hX() {
        return null;
    }
}
