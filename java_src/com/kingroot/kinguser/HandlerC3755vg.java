package com.kingroot.kinguser;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.List;
import java.util.concurrent.LinkedBlockingQueue;
/* renamed from: com.kingroot.kinguser.vg */
/* loaded from: classes.dex */
public class HandlerC3755vg extends Handler {

    /* renamed from: Kw */
    private String f3731Kw;

    /* renamed from: Kx */
    private LinkedBlockingQueue<InterfaceC3758b> f3732Kx;

    /* renamed from: Ky */
    private C3759vh<C3754vf> f3733Ky;

    /* renamed from: Kz */
    private InterfaceC3757a f3734Kz;
    private Context mContext;

    /* renamed from: com.kingroot.kinguser.vg$a */
    /* loaded from: classes.dex */
    public interface InterfaceC3757a {
        /* renamed from: c */
        void mo1892c(C3754vf c3754vf);

        /* renamed from: d */
        void mo1891d(C3754vf c3754vf);
    }

    /* renamed from: com.kingroot.kinguser.vg$b */
    /* loaded from: classes.dex */
    public interface InterfaceC3758b {
        String getLocalName();

        long getSize();

        String getUrl();

        /* renamed from: lk */
        String mo1890lk();
    }

    public HandlerC3755vg(Looper looper, Context context, String str, InterfaceC3757a interfaceC3757a) {
        super(looper);
        this.mContext = context;
        this.f3731Kw = str;
        this.f3734Kz = interfaceC3757a;
    }

    /* renamed from: y */
    public void m1895y(List<InterfaceC3758b> list) {
        if (list != null && list.size() > 0) {
            if (this.f3732Kx == null) {
                this.f3732Kx = new LinkedBlockingQueue<>();
            }
            for (int i = 0; i < list.size(); i++) {
                this.f3732Kx.offer(list.get(i));
            }
        }
        sendEmptyMessage(1);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        switch (message.what) {
            case 1:
                m1896lj();
                return;
            case 2:
                if (message.obj != null && (message.obj instanceof C3754vf) && this.f3734Kz != null) {
                    this.f3734Kz.mo1892c((C3754vf) message.obj);
                }
                m1896lj();
                return;
            case 3:
                if (message.obj != null && (message.obj instanceof C3754vf) && this.f3734Kz != null) {
                    this.f3734Kz.mo1891d((C3754vf) message.obj);
                }
                m1896lj();
                return;
            default:
                return;
        }
    }

    /* renamed from: lj */
    private void m1896lj() {
        InterfaceC3758b poll;
        if (this.f3732Kx != null && this.f3733Ky == null) {
            do {
                poll = this.f3732Kx.poll();
                if (poll == null) {
                    return;
                }
            } while (!m1897a(poll.getLocalName(), poll.getUrl(), poll.mo1890lk(), poll.getSize()));
        }
    }

    /* renamed from: a */
    private boolean m1897a(String str, String str2, String str3, long j) {
        if (str == null || str.length() <= 0 || str2 == null || str2.length() <= 0) {
            return false;
        }
        this.f3733Ky = new C3759vh<>(this.mContext, new C3754vf(str, str2, str3, j));
        this.f3733Ky.m1883dc(this.f3731Kw);
        this.f3733Ky.m1887a(new C3785vk<C3754vf>() { // from class: com.kingroot.kinguser.vg.1
            @Override // com.kingroot.kinguser.C3785vk
            /* renamed from: a  reason: avoid collision after fix types in other method */
            public void mo1796b(C3754vf c3754vf) {
                HandlerC3755vg.this.f3733Ky = null;
                HandlerC3755vg.this.sendMessage(HandlerC3755vg.this.obtainMessage(2, c3754vf));
            }

            @Override // com.kingroot.kinguser.C3785vk
            /* renamed from: b  reason: avoid collision after fix types in other method */
            public void mo1797a(C3754vf c3754vf) {
                HandlerC3755vg.this.f3733Ky = null;
                HandlerC3755vg.this.sendMessage(HandlerC3755vg.this.obtainMessage(3, c3754vf));
            }
        });
        this.f3733Ky.m1882ll();
        return true;
    }
}
