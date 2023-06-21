package com.kingroot.kinguser;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import java.util.List;
import java.util.concurrent.LinkedBlockingQueue;
/* renamed from: com.kingroot.kinguser.kg */
/* loaded from: classes.dex */
public class HandlerC3243kg extends Handler {
    private Context mContext;

    /* renamed from: tJ */
    private String f2940tJ;

    /* renamed from: tK */
    private LinkedBlockingQueue<InterfaceC3245b> f2941tK;

    /* renamed from: tL */
    private C3247ki<C3242kf> f2942tL;

    /* renamed from: tM */
    private InterfaceC3244a f2943tM;

    /* renamed from: com.kingroot.kinguser.kg$a */
    /* loaded from: classes.dex */
    public interface InterfaceC3244a {
        /* renamed from: a */
        void mo3296a(C3242kf c3242kf);

        /* renamed from: b */
        void mo3295b(C3242kf c3242kf);
    }

    /* renamed from: com.kingroot.kinguser.kg$b */
    /* loaded from: classes.dex */
    public interface InterfaceC3245b {
        String getLocalName();

        String getUrl();
    }

    public HandlerC3243kg(Context context, String str, InterfaceC3244a interfaceC3244a) {
        super(context.getMainLooper());
        this.mContext = context;
        this.f2940tJ = str;
        this.f2943tM = interfaceC3244a;
    }

    /* renamed from: n */
    public void m3297n(List<InterfaceC3245b> list) {
        if (list != null && list.size() > 0) {
            if (this.f2941tK == null) {
                this.f2941tK = new LinkedBlockingQueue<>();
            }
            for (int i = 0; i < list.size(); i++) {
                this.f2941tK.offer(list.get(i));
            }
        }
        sendEmptyMessage(1);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        switch (message.what) {
            case 1:
                m3299cU();
                return;
            case 2:
                if (message.obj != null && (message.obj instanceof C3242kf) && this.f2943tM != null) {
                    this.f2943tM.mo3296a((C3242kf) message.obj);
                }
                m3299cU();
                return;
            case 3:
                if (message.obj != null && (message.obj instanceof C3242kf) && this.f2943tM != null) {
                    this.f2943tM.mo3295b((C3242kf) message.obj);
                }
                m3299cU();
                return;
            default:
                return;
        }
    }

    /* renamed from: cU */
    private void m3299cU() {
        InterfaceC3245b poll;
        if (this.f2941tK != null && this.f2942tL == null) {
            do {
                poll = this.f2941tK.poll();
                if (poll == null) {
                    return;
                }
            } while (!m3298m(poll.getLocalName(), poll.getUrl()));
        }
    }

    /* renamed from: m */
    private boolean m3298m(String str, String str2) {
        if (str == null || str.length() <= 0 || str2 == null || str2.length() <= 0) {
            return false;
        }
        this.f2942tL = new C3247ki<>(this.mContext, new C3242kf(str, str2));
        this.f2942tL.m3284r(this.f2940tJ);
        this.f2942tL.m3290a(new C3246kh(this));
        this.f2942tL.m3287cV();
        return true;
    }
}
