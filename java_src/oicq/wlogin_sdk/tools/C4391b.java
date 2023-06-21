package oicq.wlogin_sdk.tools;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
/* renamed from: oicq.wlogin_sdk.tools.b */
/* loaded from: classes.dex */
public class C4391b implements Handler.Callback {

    /* renamed from: a */
    private static C4391b f5334a = null;

    /* renamed from: c */
    private static final Object f5335c = new Object();

    /* renamed from: d */
    private static StringBuilder f5336d = new StringBuilder();

    /* renamed from: e */
    private static StringBuilder f5337e = new StringBuilder();

    /* renamed from: f */
    private Context f5339f;

    /* renamed from: h */
    private Handler f5341h;

    /* renamed from: b */
    private volatile boolean f5338b = false;

    /* renamed from: g */
    private HandlerThread f5340g = new HandlerThread("FileTracer");

    private C4391b(Context context) {
        this.f5339f = context;
        this.f5340g.start();
        if (this.f5340g.isAlive()) {
            this.f5341h = new Handler(this.f5340g.getLooper(), this);
        }
        this.f5341h.sendEmptyMessage(1024);
    }

    /* renamed from: a */
    private void m29a() {
        try {
            this.f5341h.sendEmptyMessageDelayed(1024, 2000L);
        } catch (Throwable th) {
        }
    }

    /* renamed from: a */
    public static void m28a(Context context, String str, String str2) {
        if (context == null || str2 == null) {
            return;
        }
        if (f5334a == null) {
            f5334a = new C4391b(context);
        }
        synchronized (f5335c) {
            if (f5337e.length() > 25600) {
                f5337e.delete(0, f5337e.length() / 2);
                f5337e.append("log has been cut len ").append(f5337e.length() / 2).append("\n");
            }
            try {
                f5337e.append(C4393util.getDate()).append(C4393util.getThreadId()).append(C4393util.getLineInfo(3)).append(C4393util.getSdkVersion()).append(C4393util.getUser(str)).append(str2).append("\n");
            } catch (Exception e) {
                f5337e = new StringBuilder();
            }
        }
    }

    /* renamed from: b */
    private void m27b() {
        if (Thread.currentThread() == this.f5340g && !this.f5338b) {
            this.f5338b = true;
            m26c();
            this.f5338b = false;
        }
    }

    /* renamed from: c */
    private void m26c() {
        if (f5337e == null || f5337e.length() == 0) {
            return;
        }
        f5336d = f5337e;
        f5337e = new StringBuilder();
        byte[] compress = C4393util.compress(f5336d.toString().getBytes());
        if (compress == null || compress.length == 0) {
            return;
        }
        byte[] bArr = new byte[compress.length + 4];
        C4393util.int32_to_buf(bArr, 0, compress.length);
        System.arraycopy(compress, 0, bArr, 4, compress.length);
        C4393util.writeFile(C4393util.getLogFileName(this.f5339f, C4393util.getCurrentDay()), bArr);
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        switch (message.what) {
            case 1024:
                m27b();
                m29a();
                return true;
            default:
                return true;
        }
    }
}
