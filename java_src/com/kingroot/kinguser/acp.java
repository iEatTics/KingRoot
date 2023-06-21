package com.kingroot.kinguser;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.SparseArray;
import com.tencent.feedback.eup.BuglyBroadcastRecevier;
import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
/* loaded from: classes.dex */
public final class acp {
    private static volatile boolean aaF = false;
    private static volatile acp aaG;
    private static volatile Context mAppContext;
    private final Object aaJ = new Object();
    private Context mContext;
    private Handler mHandler = new AbstractHandlerC0658b(this.mContext, this) { // from class: com.kingroot.kinguser.acp.1
        @Override // com.kingroot.kinguser.acp.AbstractHandlerC0658b
        /* renamed from: a */
        public void mo12692a(Message message, acp acpVar) {
            if (message.what == 0) {
                acpVar.m12694rW();
                synchronized (acp.this) {
                    acpVar.mHandler.sendEmptyMessageDelayed(0, BuglyBroadcastRecevier.UPLOADLIMITED);
                }
            }
        }
    };
    private ReferenceQueue<Object> aaH = new ReferenceQueue<>();
    private SparseArray<C0657a> aaI = new SparseArray<>(100);

    private acp(Context context) {
    }

    /* renamed from: rV */
    private static acp m12695rV() {
        if (aaG == null) {
            synchronized (acp.class) {
                if (aaG == null && mAppContext != null) {
                    aaG = new acp(mAppContext);
                }
            }
        }
        return aaG;
    }

    public static void add(Object obj) {
        m12697e(obj, null);
    }

    /* renamed from: e */
    public static void m12697e(Object obj, String str) {
        acp m12695rV;
        if (aaF && (m12695rV = m12695rV()) != null) {
            m12695rV.m12696f(obj, str);
        }
    }

    /* renamed from: f */
    private void m12696f(Object obj, String str) {
        synchronized (this.aaJ) {
            int hashCode = obj.hashCode();
            if (this.aaI.get(hashCode) == null) {
                this.aaI.put(hashCode, new C0657a(obj, this.aaH, str));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: rW */
    public void m12694rW() {
        System.gc();
        new SimpleDateFormat("MM-dd HH:mm:ss", Locale.getDefault()).format(new Date(System.currentTimeMillis()));
        synchronized (this.aaJ) {
            for (int i = 0; i < this.aaI.size(); i++) {
                if (this.aaI.valueAt(i) != null) {
                }
            }
        }
        while (true) {
            C0657a c0657a = (C0657a) this.aaH.poll();
            if (c0657a != null) {
                synchronized (this.aaJ) {
                    this.aaI.remove(c0657a.m12693rX());
                }
            } else {
                return;
            }
        }
    }

    /* renamed from: com.kingroot.kinguser.acp$b */
    /* loaded from: classes.dex */
    static abstract class AbstractHandlerC0658b extends Handler {
        private final WeakReference<acp> aaO;

        /* renamed from: a */
        public abstract void mo12692a(Message message, acp acpVar);

        public AbstractHandlerC0658b(Context context, acp acpVar) {
            this.aaO = new WeakReference<>(acpVar);
        }

        /* renamed from: rY */
        public acp m12691rY() {
            return this.aaO.get();
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            acp m12691rY = m12691rY();
            if (m12691rY != null) {
                mo12692a(message, m12691rY);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.acp$a */
    /* loaded from: classes.dex */
    public static class C0657a extends PhantomReference<Object> {
        private String aaL;
        private int aaM;
        private long aaN;
        private String mName;

        public C0657a(Object obj, ReferenceQueue<Object> referenceQueue, String str) {
            super(obj, referenceQueue);
            this.aaN = System.currentTimeMillis();
            this.mName = obj.getClass().getName();
            this.aaM = obj.hashCode();
            this.aaL = str;
        }

        /* renamed from: rX */
        public int m12693rX() {
            return this.aaM;
        }
    }
}
