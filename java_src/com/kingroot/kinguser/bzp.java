package com.kingroot.kinguser;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import java.util.List;
import java.util.concurrent.LinkedBlockingQueue;
/* loaded from: classes.dex */
public class bzp extends Handler {

    /* renamed from: a */
    private Context f2185a;

    /* renamed from: b */
    private String f2186b;
    private LinkedBlockingQueue<InterfaceC2683b> bVM;
    private cab<bzo> bVN;
    private InterfaceC2682a bVO;

    /* renamed from: com.kingroot.kinguser.bzp$a */
    /* loaded from: classes.dex */
    public interface InterfaceC2682a {
        /* renamed from: a */
        void mo2650a(bzo bzoVar);

        /* renamed from: b */
        void mo2649b(bzo bzoVar);
    }

    /* renamed from: com.kingroot.kinguser.bzp$b */
    /* loaded from: classes.dex */
    public interface InterfaceC2683b {
        String getLocalName();

        String getUrl();
    }

    public bzp(Context context, String str, InterfaceC2682a interfaceC2682a) {
        super(context.getMainLooper());
        this.f2185a = context;
        this.f2186b = str;
        this.bVO = interfaceC2682a;
    }

    /* renamed from: a */
    public void m5118a(List<InterfaceC2683b> list) {
        if (list != null && list.size() > 0) {
            if (this.bVM == null) {
                this.bVM = new LinkedBlockingQueue<>();
            }
            for (int i = 0; i < list.size(); i++) {
                this.bVM.offer(list.get(i));
            }
        }
        sendEmptyMessage(1);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        switch (message.what) {
            case 1:
                m5120a();
                return;
            case 2:
                if (message.obj != null && (message.obj instanceof bzo) && this.bVO != null) {
                    this.bVO.mo2650a((bzo) message.obj);
                }
                m5120a();
                return;
            case 3:
                if (message.obj != null && (message.obj instanceof bzo) && this.bVO != null) {
                    this.bVO.mo2649b((bzo) message.obj);
                }
                m5120a();
                return;
            default:
                return;
        }
    }

    /* renamed from: a */
    private void m5120a() {
        InterfaceC2683b poll;
        if (this.bVM != null && this.bVN == null) {
            do {
                poll = this.bVM.poll();
                if (poll == null) {
                    return;
                }
            } while (!m5117aU(poll.getLocalName(), poll.getUrl()));
        }
    }

    /* renamed from: aU */
    private boolean m5117aU(String str, String str2) {
        if (str == null || str.length() <= 0 || str2 == null || str2.length() <= 0) {
            return false;
        }
        this.bVN = new cab<>(this.f2185a, new bzo(str, str2));
        this.bVN.m5089a(this.f2186b);
        this.bVN.m5090a(new bzq(this));
        this.bVN.m5092a();
        return true;
    }
}
