package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.os.Process;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
/* renamed from: com.kingroot.kinguser.ud */
/* loaded from: classes.dex */
public class C3688ud {

    /* renamed from: Ih */
    private Map<String, Queue<Intent>> f3616Ih;
    private Context mServiceContext;

    /* renamed from: Ij */
    private byte[] f3618Ij = new byte[0];

    /* renamed from: Ig */
    private C3689ue f3615Ig = new C3689ue();

    /* renamed from: Ii */
    private C3684ua f3617Ii = new C3684ua(this);

    public C3688ud(Context context) {
        this.mServiceContext = context;
    }

    public Context getContext() {
        return this.mServiceContext;
    }

    /* renamed from: ku */
    public synchronized int m2050ku() {
        return this.f3615Ig.size();
    }

    /* renamed from: f */
    public synchronized void m2052f(Intent intent) {
        if (this.mServiceContext != null && intent != null) {
            switch (intent.getIntExtra("task_key_action", 0)) {
                case 1:
                    m2055d(this.mServiceContext, intent);
                    break;
                case 2:
                    m2051g(intent);
                    break;
            }
        }
    }

    /* renamed from: d */
    public synchronized void m2054d(AbstractC3681ty abstractC3681ty) {
        AbstractC3681ty m2046kw = this.f3615Ig.m2046kw();
        if (m2046kw != null) {
            m2053d(m2046kw.mo2067kr(), m2046kw.m2071kp());
            C3671tw.m2100b(abstractC3681ty.mo2067kr(), abstractC3681ty.getStartTime(), Process.myPid());
        }
        String m2070kq = abstractC3681ty.m2070kq();
        this.f3615Ig.remove(m2070kq);
        m2056cU(m2070kq);
    }

    /* renamed from: d */
    private void m2055d(Context context, Intent intent) {
        try {
            String stringExtra = intent.getStringExtra("task_key_class_name");
            if (!TextUtils.isEmpty(stringExtra)) {
                String stringExtra2 = intent.getStringExtra("task_key_id");
                if (!TextUtils.isEmpty(stringExtra2)) {
                    if (this.f3615Ig.m2047cV(stringExtra2) != null) {
                        switch (intent.getIntExtra("key_action_on_same_id", 2)) {
                            case 1:
                                m2049p(stringExtra2, true);
                                break;
                            case 2:
                            default:
                                m2057a(stringExtra2, intent);
                                return;
                            case 3:
                                return;
                        }
                    }
                    AbstractC3681ty abstractC3681ty = (AbstractC3681ty) Class.forName(stringExtra).newInstance();
                    abstractC3681ty.m2079a(context, stringExtra2, this.f3617Ii);
                    abstractC3681ty.m2077e(intent);
                    this.f3615Ig.m2048a(stringExtra2, abstractC3681ty);
                }
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: g */
    private void m2051g(Intent intent) {
        m2049p(intent.getStringExtra("task_key_id"), intent.getBooleanExtra("key_is_force_cancel", false));
    }

    /* renamed from: p */
    private void m2049p(String str, boolean z) {
        AbstractC3681ty m2047cV;
        if (!TextUtils.isEmpty(str) && (m2047cV = this.f3615Ig.m2047cV(str)) != null) {
            m2054d(m2047cV);
            m2047cV.cancel(z);
        }
    }

    /* renamed from: d */
    private void m2053d(String str, long j) {
        C3671tw.m2099c(str, j);
    }

    /* renamed from: a */
    private void m2057a(String str, Intent intent) {
        if (!TextUtils.isEmpty(str) && intent != null) {
            synchronized (this.f3618Ij) {
                Queue<Intent> queue = null;
                if (this.f3616Ih == null) {
                    this.f3616Ih = new HashMap();
                } else {
                    queue = this.f3616Ih.get(str);
                }
                if (queue == null) {
                    queue = new LinkedList<>();
                    this.f3616Ih.put(str, queue);
                }
                queue.offer(intent);
            }
        }
    }

    /* renamed from: cU */
    private void m2056cU(String str) {
        synchronized (this.f3618Ij) {
            if (this.f3616Ih != null) {
                Queue<Intent> queue = this.f3616Ih.get(str);
                if (queue != null) {
                    Intent poll = queue.poll();
                    if (poll != null) {
                        m2055d(this.mServiceContext, poll);
                    }
                }
            }
        }
    }
}
